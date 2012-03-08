# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=StyGian Studios(travp624) \
    ro.modversion=$(TARGET_PRODUCT)-Kangorade-28.29

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=StyGian Studios(travp624) \
    ro.goo.board=$(TARGET_PRODUCT) \
    ro.goo.rom=BlackICE_$(TARGET_PRODUCT) \
    ro.goo.version=1


