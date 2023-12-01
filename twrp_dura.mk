#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from a03s device
$(call inherit-product, device/huawei/dura/device.mk)

PRODUCT_DEVICE := dura
PRODUCT_NAME := twrp_dura
PRODUCT_BRAND := huawei
PRODUCT_MODEL := dra-lx9
PRODUCT_MANUFACTURER := huawei
