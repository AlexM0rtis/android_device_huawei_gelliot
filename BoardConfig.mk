#
# Copyright (C) 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Platform
TARGET_BOOTLOADER_BOARD_NAME := MSM8610
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := msm8610
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x3E800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x3E800000
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00BB8000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00FA0000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/huawei/gelliot/kernel
TARGET_CUSTOM_KERNEL_HEADERS := device/huawei/gelliot/include
BOARD_MKBOOTIMG_ARGS := --dt device/huawei/gelliot/dt.img --ramdisk_offset 0x02000000 --tags_offset 0x01e00000

# USB Mounting
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Recovery
RECOVERY_VARIANT := twrp
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_RECOVERY_SWIPE := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_INITRC := device/huawei/gelliot/init.rc
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/gelliot/kernel
TARGET_RECOVERY_FSTAB := device/huawei/gelliot/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 720x1280
TW_INTERNAL_STORAGE_PATH := "/HWUserData"
TW_INTERNAL_STORAGE_MOUNT_POINT := "Internal Memory"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_FLASH_FROM_STORAGE := true
TW_THEME := portrait_hdpi
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_OTA_ASSERT_DEVICE := G630,G630-U00,G630-U10,G630-U20,gelliot
