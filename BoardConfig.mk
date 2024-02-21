#
# Copyright (C) 2021-2022 The LineageOS Project
# Copyright (C) 2022-2023 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/psyche

BUILD_BROKEN_DUP_RULES := true

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 440

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/configs/hidl/xiaomi_framework_compatibility_matrix.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/hidl/xiaomi_manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_psyche
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_psyche

# Kernel
TARGET_KERNEL_CONFIG := psyche_defconfig

# OTA assert
TARGET_OTA_ASSERT_DEVICE := psyche

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/psyche/BoardConfigVendor.mk
