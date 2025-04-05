#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/fts_ts.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/fts_ts.idc

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.lineage

# Overlay
PRODUCT_PACKAGES += \
    Frameworks-Odin3-Overlay \
    LineageSDK-Odin3-Overlay \
    Settings-Odin3-Overlay \
    SettingsProvider-Odin3-Overlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/ayn/cq8725s-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/ayn/odin3/odin3-vendor.mk)
