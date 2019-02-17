#
# Copyright 2018 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true
BOARD_PROVIDES_GPTUTILS := true

# GPT Utils
BOARD_PROVIDES_GPTUTILS := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=1 androidboot.configfs=true sched_enable_hmp=1 sched_enable_power_aware=1
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a800000.dwc3
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x02000000
BOARD_RAMDISK_OFFSET := 0x02200000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/bq/sdm660
#TARGET_PREBUILT_KERNEL := device/bq/zangaypro/prebuilt/boot.img-zImage-1.7.2
TARGET_KERNEL_CONFIG := lineageos_zangyapro_defconfig

# Platform
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno512
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_VENDORIMAGE_PARTITION_SIZE := 536870912
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_FLASH_BLOCK_SIZE := 0x40000
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_NO_RECOVERY := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_OTA_ASSERT_DEVICE := zangyapro
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true

# Android Verified Boot
BOARD_AVB_ENABLE := false
BOARD_BUILD_DISABLED_VBMETAIMAGE := true

TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# Crypto
#TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_FBE := true
PLATFORM_SECURITY_PATCH := 2025-12-31

# TWRP specific build flags
TW_USE_LEDS_HAPTICS := true
TW_Y_OFFSET = 85
TW_H_OFFSET = -85
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 2000
TW_MAX_BRIGHTNESS := 4095

TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en_EN
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_QCOM_HAPTICS_VIBRATOR := true

#TW_NO_SCREEN_TIMEOUT := true

# Extras
TW_IGNORE_MISC_WIPE_DATA := true
BOARD_SUPPRESS_SECURE_ERASE := true
# Stock kernel sometimes crashes when we toggle MTP
#TW_EXCLUDE_MTP := true
