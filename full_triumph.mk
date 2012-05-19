# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from maguro device
$(call inherit-product, device/motorola/triumph/device_triumph.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_triumph
PRODUCT_DEVICE := triumph
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Motorola Triumph
PRODUCT_MANUFACTURER := Motorola



