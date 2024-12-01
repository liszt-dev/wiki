#!/bin/bash
ORG="https://github.com/liszt-dev"
BRANCH="-b cm-13.0"

# Device-specific repositories
git clone $ORG/android_device_huawei_liszt $BRANCH device/huawei/liszt
git clone $ORG/android_kernel_huawei_liszt $BRANCH kernel/huawei/liszt
git clone $ORG/android_vendor_huawei_liszt $BRANCH vendor/huawei/liszt

# Device-specific patches
git clone $ORG/patches $BRANCH patches

# Hardware repositories
git clone $ORG/android_hardware_huawei $BRANCH hardware/huawei
