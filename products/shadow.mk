## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/BlackICE/configs/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shadow/shadow.mk)

# Inherit our vendor filez, yo.
$(call inherit-product, vendor/moto/shadow/shadow-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := BlackICE_shadow
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := shadow
PRODUCT_MODEL := Droid X
PRODUCT_MANUFACTURER := Motorola
PRODUCT_SFX := vzw

# Copy Boot Animation
PRODUCT_COPY_FILES +=  \
    vendor/BlackICE/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := DroidX

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
