#
# Copyright (C) 2017 The Android Open Source Project
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

LOCAL_PATH := device/bq/zangyapro

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := armv8-a

TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
TARGET_BOARD_SUFFIX := _64

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660
TARGET_NO_BOOTLOADER := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd

# Encryption
PLATFORM_SECURITY_PATCH := 2025-12-31

# GPT Utils
BOARD_PROVIDES_GPTUTILS := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=1 androidboot.configfs=true sched_enable_hmp=1 sched_enable_power_aware=1
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a800000.dwc3 firmware_class.path=/vendor/firmware_mnt/image
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x02000000
BOARD_RAMDISK_OFFSET := 0x02200000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/bq/sdm660
#TARGET_PREBUILT_KERNEL := device/bq/zangaypro/prebuilt/boot.img-zImage-1.7.2
TARGET_KERNEL_CONFIG := lineageos_zangyapro_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55087422464 # 25765059584 - 16384
BOARD_VENDORIMAGE_PARTITION_SIZE := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 0x40000
#BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true

# TWRP Configuration
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
#TW_INPUT_BLACKLIST := "hbtp_vm"
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_USE_TOOLBOX := true
