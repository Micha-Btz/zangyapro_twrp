# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, build/target/product/embedded.mk)

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script

# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.sdm660 \

PRODUCT_PACKAGES_DEBUG += \
    bootctl

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.sdm660 \
    libgptutils \
    libz

# Update engine
PRODUCT_PACKAGES += \
    brillo_update_payload \
    update_engine \
#    update_engine_sideload \
    update_verifier

#PRODUCT_PACKAGES_DEBUG += \
#    update_engine_client


# Verity
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/soc/c0c4000.sdhci/by-name/system
PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/platform/soc/c0c4000.sdhci/by-name/vendor
$(call inherit-product, build/target/product/verity.mk)




# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    system/timezone/output_data/iana/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata \
	$(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
	$(LOCAL_PATH)/recovery/root/init.recovery.zangya.usb.rc:root/init.recovery.zangya.usb.rc \

	# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_zangyapro
PRODUCT_DEVICE := zangyapro
PRODUCT_BRAND := BQ
PRODUCT_MODEL := X 2 Pro
PRODUCT_MANUFACTURER := BQ

# If needed to overide these props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="bq/zangyapro_bq/zangyapro_sprout:8.1.0/OPM1.171019.026/1050:user/release-keys" \
    PRIVATE_BUILD_DESC="zangyapro_bq-user 8.1.0 OPM1.171019.026 1050 release-keys"

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    sys.usb.controller=a800000.dwc3 \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1

TARGET_VENDOR_PRODUCT_NAME := zangyapro
TARGET_VENDOR_DEVICE_NAME := zangyapro
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=zangyapro PRODUCT_NAME=zangyapro
