# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from common CraftRomOS configuration
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# CraftRomOS specific flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_USES_AOSP_RECOVERY := true

# CraftRom specific flags
CUSTOM_MAINTAINER  := GuidixX

# Device identifier
PRODUCT_NAME := aosp_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi