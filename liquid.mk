#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/motorola/triumph/device_triumph.mk)

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Inherit some common Liquid stuff.
#$(call inherit-product, vendor/liquid/config/common_gsm.mk)

PRODUCT_NAME := liquid_triumph
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := triumph
PRODUCT_MODEL := WX435
PRODUCT_MANUFACTURER := Motorola
PRODUCT_PROPERTY_OVERRIDES += ro.modversion=liquid.triumph.$(shell date +%m%d%y).$(shell date +%H%M%S)



# Release name and versioning
PRODUCT_RELEASE_NAME := Triumph

UTC_DATE := $(shell date +%s)
DATE     := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=IML77 \
    PRODUCT_NAME=liquid_triumph \
    TARGET_DEVICE=triumph \
    BUILD_DISPLAY_ID="Liquid ICS v1.4" \
    BUILD_FINGERPRINT=motorola/motorola_triumph/triumph:4.0.4/IML77/223971:user/release-keys \
    PRIVATE_BUILD_DESC="triumph-user 4.0.4 IML77 223971 release-keys" \
    BUILD_NUMBER=${DATE} \
    BUILD_VERSION_TAGS=release-keys \
    TARGET_BUILD_TYPE=user

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/hdpi/bootanimation.zip:system/media/bootanimation.zip