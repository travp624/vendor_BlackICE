# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/BlackICE/overlay/common

PRODUCT_PACKAGES += \
    AppWidgetPicker \
    DSPManager \
    FileManager \
    MusicFX \
    MusicVisualization \
    NoiseField \
    PhaseBeam \
    ROMControl \
    Trebuchet \
    libcyanogen-dsp \
    su

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0

# boot animation
PRODUCT_COPY_FILES += \
# vendor/BlackICE/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/BlackICE/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/BlackICE/prebuilt/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/BlackICE/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf  \
    vendor/BlackICE/prebuilt/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/BlackICE/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/BlackICE/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/BlackICE/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/BlackICE/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf 
    
# init.d
PRODUCT_COPY_FILES += \
    vendor/BlackICE/prebuilt/common/etc/init.d/91zipalign:system/etc/init.d/91zipalign \
    vendor/BlackICE/prebuilt/common/etc/init.d/99gofasterth3ory:system/etc/init.d/99gofasterth3ory
    
# Adding files needed for extra camera features
PRODUCT_COPY_FILES += \
    vendor/BlackICE/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/BlackICE/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/BlackICE/prebuilt/common/media/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/BlackICE/prebuilt/common/media/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/BlackICE/prebuilt/common/media/video/Disco.240p.mp4:system/media/video/Disco.240p.mp4 \
    vendor/BlackICE/prebuilt/common/media/video/Disco.480p.mp4:system/media/video/Disco.480p.mp4 \
    vendor/BlackICE/prebuilt/common/media/video/Sunset.240p.mp4:system/media/video/Sunset.240p.mp4 \
    vendor/BlackICE/prebuilt/common/media/video/Sunset.480p.mp4:system/media/video/Sunset.480p.mp4 

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Inherit common build.prop overrides
-include vendor/BlackICE/configs/common_versions.mk
