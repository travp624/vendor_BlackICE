$(call inherit-product, device/samsung/p4wifi/p4wifi.mk)

# Inherit common product files.
$(call inherit-product, vendor/BlackICE/configs/common_tablet.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/BlackICE/overlay/p4-common

PRODUCT_NAME := BlackICE_p4wifi
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4wifi
PRODUCT_MODEL := GT-P7510
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P7510 BUILD_ID=IML74K BUILD_FINGERPRINT=samsung/GT-P7510/GT-P7510:3.2/HTJ85B/UEKMM:user/release-keys PRIVATE_BUILD_DESC="GT-P7510-user 3.2 HTJ85B UEKMM release-keys"

PRODUCT_COPY_FILES +=  \
    vendor/BlackICE/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
