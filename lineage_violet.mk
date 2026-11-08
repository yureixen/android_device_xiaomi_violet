#
# Copyright (C) 2018-2024 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Lunaris AOSP stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
WITH_GMS := true
WITH_PIXEL_LAUNCHER := false
TARGET_USE_WALLPAPERS := false
# TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_OPTIMIZED_DEXOPT := true
USE_ADVANCED_DISPLAY_COLOR := true
USE_REALITY_ENGINE := true
SURFACE_FLINGER_BOOST := true
WITH_BCR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="violet-user 10 QKQ1.190915.002 V12.5.1.0.QFHINXM release-keys" \
    BuildFingerprint="xiaomi/violet/violet:10/QKQ1.190915.002/V12.5.1.0.QFHINXM:user/release-keys" \
    DeviceName=violet \
    DeviceProduct=violet \
    SystemDevice=violet \
    SystemName=violet

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
