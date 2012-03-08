$(call inherit-product, vendor/BlackICE/configs/common.mk)
     
PRODUCT_PACKAGES += \
    MasturModsSettings   

PRODUCT_COPY_FILES += \
    vendor/BlackICE/prebuilt/common/app/NovaLauncher.apk:system/app/NovaLauncher.apk \
    vendor/BlackICE/prebuilt/common/app/ApexLauncher.apk:system/app/ApexLauncher    
