# Inherit device configuration
$(call inherit-product, device/samsung/espressowifi/full_espressowifi.mk)

# Inherit common product files.
$(call inherit-product, vendor/BlackICE/configs/common_tablet.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/BlackICE/overlay/espressowifi

PRODUCT_DEVICE := espressowifi
PRODUCT_NAME := BlackICE_espressowifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-P3113
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P3113 BUILD_FINGERPRINT=samsung/espressowifiue/espressowifi:4.0.3/IML74K/P3113UEALD3:user/release-keys PRIVATE_BUILD_DESC="espressowifiue-user 4.0.3 IML74K P3113UEALD3 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := espressowifi

PRODUCT_COPY_FILES +=  \
    vendor/BlackICE/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
