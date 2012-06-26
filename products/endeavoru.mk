# Inherit AOSP device configuration for inc.
#$(call inherit-product, device/htc/endeavoru/full_endeavor.mk)
$(call inherit-product, device/htc/endeavoru/full_endeavoru.mk)

# Inherit some common aokp stuff.
$(call inherit-product, vendor/BlackICE/configs/common_phone.mk)
$(call inherit-product, vendor/BlackICE/configs/gsm.mk)

# Setup device specific product configuration.

PRODUCT_NAME := BlackICE_endeavoru
PRODUCT_BRAND := htc
PRODUCT_DEVICE := endeavoru
PRODUCT_MODEL := HTC One X
PRODUCT_MANUFACTURER := HTC

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=endeavoru BUILD_FINGERPRINT="htc_europe/endeavoru/endeavoru:4.0.3/IML74K/62864.11:user/release-keys" PRIVATE_BUILD_DESC="1.29.401.11 CL62864 release-keys"

DEVICE_PACKAGE_OVERLAYS += vendor/BlackICE/overlay/endeavoru
