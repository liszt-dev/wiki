## How do I build LineageOS from scratch?

### 1. You need Linux to be able to build Android from source. Here, I use Ubuntu 20.04 LTS to build.
---

### 2. Now, read [this manual](http://source.android.com/source/initializing.html) on how to set up your build environment and go through the steps.
---

### 3. Download the LineageOS source code by executing the following commands in your terminal.
```bash
mkdir los13 && cd los13
repo init -u https://github.com/LineageOS/android.git -b cm-13.0
repo sync -f --force-sync --no-clone-bundle --no-tags -j$(nproc --all)
```
---

### 4. Set up the device-specific repositories.
```bash
git clone https://github.com/liszt-dev/patches -b cm-13.0 patches
git clone https://github.com/liszt-dev/android_external_stlport -b cm-13.0 external/stlport
git clone https://github.com/liszt-dev/android_hardware_huawei -b cm-13.0 hardware/huawei
git clone https://github.com/liszt-dev/android_device_huawei_liszt -b cm-13.0 device/huawei/liszt
git clone https://github.com/liszt-dev/android_kernel_huawei_liszt -b cm-13.0 kernel/huawei/liszt
git clone https://github.com/liszt-dev/android_vendor_huawei_liszt -b cm-13.0 vendor/huawei/liszt
```
---

### 5. Apply the device-specific ROM code patches.
```bash
cd patches && ./install.sh
```
---

### 6. Bake debug tools into the ROM build.
```bash
export ENABLE_DEBUG=true
```
> **Note:** If not needed, you can skip this step.
---

### 7. Bake root access into the ROM build.
```bash
export WITH_SU=true
```
> **Note:** If not wanted, you can skip this step.
---

### 8. Kick off the ROM build process.
```bash
. build/envsetup.sh
lunch lineage_liszt-userdebug
export ANDROID_JACK_VM_ARGS="-Xmx32g -Dfile.encoding=UTF-8 -XX:+TieredCompilation"
export LC_ALL=C
export USE_CCACHE=1
ccache -M 100G
mka bacon
```
> **Note:** You might have to adjust the memory assignments depending on your hardware specifications.
---

### 9. Done! [Return home](https://github.com/liszt-dev/wiki/blob/master/README.md)
