#!/bin/bash

# Device-specific repositories
cd ../../device/huawei/liszt && git status && cd ../../../ &&
cd kernel/huawei/liszt && git status && cd ../../../ &&
cd vendor/huawei/liszt && git status && cd ../../../ &&

# Device-specific patches
cd patches && git status && cd ../ &&

# Hardware repositories
cd hardware/debugging && git status && cd ../../
