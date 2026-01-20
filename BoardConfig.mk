#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/ayn/odin3

# Include the common OEM chipset BoardConfig.
include device/ayn/cq8725s-common/BoardConfigCommon.mk

# Include the proprietary files BoardConfig.
include vendor/ayn/odin3/BoardConfigVendor.mk
