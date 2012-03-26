# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

CURRENT_VERSION=$(TARGET_PRODUCT)-Kangorade-28.99.28

ifneq ($(TARGET_PRODUCT),BlackICE_p999)
    ifeq ($(TARGET_PRODUCT),BlackICE_p990)
	    PRODUCT_PROPERTY_OVERRIDES += \
	        ro.cm.version=9.0.0-$(CURRENT_VERSION)
     else
         PRODUCT_PROPERTY_OVERRIDES += \
	        ro.modversion=$(CURRENT_VERSION)
    endif
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.cm.version=9.0.0-$(CURRENT_VERSION)
endif

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=Team ICEmods \

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=Team ICEmods \
    ro.goo.rom=$(TARGET_PRODUCT) \
    ro.goo.version=1


