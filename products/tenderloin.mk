$(call inherit-product, device/hp/tenderloin/device_tenderloin.mk)

PRODUCT_RELEASE_NAME := Touchpad

$(call inherit-product, vendor/BlackICE/configs/common_tablet.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=touchpad BUILD_ID=IML74K BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41D/223971:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41D 223971 release-keys" BUILD_NUMBER=189904

PRODUCT_NAME := BlackICE_tenderloin
PRODUCT_DEVICE := tenderloin

# boot animation
PRODUCT_COPY_FILES += \
	vendor/BlackICE/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
