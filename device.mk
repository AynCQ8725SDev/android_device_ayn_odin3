#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Charger
PRODUCT_PACKAGES += \
    charger_rgb

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint-service.lineage

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/fts_ts.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/fts_ts.idc

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.lineage

# MCU
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mcu/mcuapp_firmware.txt:$(TARGET_COPY_OUT_VENDOR)/firmware/mcuapp_firmware.txt

# Overlay
PRODUCT_PACKAGES += \
    Frameworks-Odin3-Overlay \
    LineageSDK-Odin3-Overlay \
    Settings-Odin3-Overlay \
    SettingsProvider-Odin3-Overlay

# Recovery
PRODUCT_PACKAGES += \
    recovery_rgb

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/ayn/cq8725s-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/ayn/odin3/odin3-vendor.mk)
