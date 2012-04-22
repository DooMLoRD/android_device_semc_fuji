$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/fuji/fuji-vendor.mk)


# Discard inherited values and use our own instead.
PRODUCT_NAME := fuji
PRODUCT_DEVICE := fuji
PRODUCT_MODEL := fuji
PRODUCT_BRAND := semc

# semc fuji uses high-density artwork where available
PRODUCT_LOCALES += hdpi

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/semc/fuji/overlay

BOARD_BATTERY_CAPACITY_FILE := /sys/devices/i2c-3/3-0055/power_supply/bq27520/capacity
