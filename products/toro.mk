# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/BlackICE/configs/common_phone.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/BlackICE/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/BlackICE/overlay/toro

# Make toro respect verizon why I don't know
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-verizon 

# Setup device specific product configuration.
PRODUCT_NAME := BlackICE_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=ICL53F BUILD_FINGERPRINT=google/mysid/toro:4.0.2/ICL53F/235179:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.2 ICL53F 235179 release-keys" BUILD_NUMBER=235179

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
	vendor/BlackICE/prebuilt/tuna/Thinkfree.apk:system/app/Thinkfree.apk \
	vendor/BlackICE/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip \
	vendor/BlackICE/prebuilt/tuna/vold.fstab:system/etc/vold.fstab


