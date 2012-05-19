# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IMM76I BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=travp624 \
    ro.blackice.version=$(TARGET_PRODUCT)_Kangorade-36.1

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=travp624 \
    ro.goo.rom=$(TARGET_PRODUCT) \
    ro.goo.version=6
