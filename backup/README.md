## How do I backup and restore my stock firmware?

### 1. Since the device is very old, most of the options to aquire stock firmware images are either dead, outdated or behind a paywall.
---

### 2. It is therefore highly recommended to backup your stock firmware before flashing any Custom ROM. 
---

### 3. If you haven't done it already, install [TWRP recovery](https://github.com/liszt-dev/research/blob/master/twrp-3.1.1-liszt.img) right now.
**3.1.** Download the TWRP recovery to your local PC.
######
**3.2.** Ensure your device is charged enough and power it off completly.
######
**3.3.** Press **Volume Down** and connect it to your PC simultaneously.
######
**3.4.** Open your Terminal to check whether it recognizes the device.
```bash
fastboot devices
```
**3.5.** If it is listed by ADB, proceed with flashing the TWRP image.
```bash
fastboot flash recovery twrp-3.1.1-liszt.img
```
**3.6.** If everything was successful, you can reboot your device.
```bash
fastboot reboot
```
> **Note:** If you encounter touchscreen issues, wait until the display goes into standby and turn it on again.
---

### 4. Create a stock firmware backup
**4.1.** Ensure your device is charged enough and power it off completly.
######
**4.2.** Press **Volume Up** and the **Power Button** simultaneously to boot into TWRP.
######
**4.3.** Choose **Backup**, select a storage and the following partitions:
```bash
Boot
Data
System
```
**4.4.** Swipe to start the backup process and wait until it is finshed.
######
---

### 5. Restore the stock firmware backup
**5.1.** Ensure your device is charged enough and power it off completly.
######
**5.2.** Press **Volume Up** and the **Power Button** simultaneously to boot into TWRP.
######
**5.3.** Choose **Restore**, select a storage and the corresponding backup file.
######
**5.4.** Swipe to start the restoration process and wait until it is finshed.
######
**5.5.** Choose **Wipe** and select the following partitions:
```bash
Dalvik / ART cache
Cache
```
**5.6.** If everything was successfull, you can reboot your device.
> **Note:** The first boot might take a few minutes, so don't freak out.
---

### 6. Done! [Return home](https://github.com/liszt-dev/wiki/blob/master/README.md)
