#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from odin3 device
$(call inherit-product, device/ayn/odin3/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_odin3
PRODUCT_DEVICE := odin3
PRODUCT_MANUFACTURER := AYN
PRODUCT_BRAND := AYN
PRODUCT_MODEL := Odin3

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=odin3
