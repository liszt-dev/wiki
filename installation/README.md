## How do I install LineageOS on my device?

### 1. You should have already [unlocked the bootloader](https://xdaforums.com/t/guide-unlock-bootlader-twrp-and-root-your-huawei-mediapad-m2-8-10.3322340/) of your device.
> [!WARNING]
> **Your warranty is now void.** <p></p>
> I am not responsible for bricked devices, dead SD cards, thermonuclear war, or you getting fired because the alarm app failed. Please do some research if you have any concerns about features included in this software before flashing it. **You** are choosing to make these modifications, and if you point the finger at me for messing up your device, I will laugh at you.
---

### 2. If you haven't done it already, install [TWRP recovery](https://github.com/liszt-dev/research/blob/master/twrp-3.1.1-liszt.img) right now.
**2.1.** Download the TWRP recovery to your local PC.
######
**2.2.** Ensure your device is charged enough and power it off completly.
######
**2.3.** Press **Volume Down** and connect it to your PC simultaneously.
######
**2.4.** Open your Terminal to check whether it recognizes the device.
```bash
fastboot devices
```

**2.5.** If it is listed by ADB, proceed with flashing the TWRP image.
```bash
fastboot flash recovery twrp-3.1.1-liszt.img
```

**2.6.** If everything was successful, you can reboot your device.
```bash
fastboot reboot
```
> **Note:** If you encounter touchscreen issues, wait until the display goes into standby and turn it on again.
---

### 3. Install LineageOS on your device.
**3.1.** Download the latest build on LineageOS from [here](https://github.com/liszt-dev/releases/releases) and move it to your sdcard.
######
**3.2.** Ensure your device is charged enough and power it off completly.
######
**3.3.** Press **Volume Up** and the **Power Button** simultaneously to boot into TWRP.
######
**3.4.** Choose **Wipe** and select the following partitions:
```bash
Dalvik / ART cache
Cache
Data
Internal Storage
System
```

**3.5.** Select _Install_, locate the LineageOS zip archive and swipe to install.
######
**3.6.** Optionally, you can proceed with installing [OpenGapps](https://opengapps.org/) afterwards.
######
**3.7.** If everything was successfull, you can reboot your device.
> **Note:** The first boot might take a few minutes, so don't freak out.
---

### 4. Done! [Return home](https://github.com/liszt-dev/wiki/blob/master/README.md)
