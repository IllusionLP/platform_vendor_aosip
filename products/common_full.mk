# Copy prebuilt files.
ifneq ($(filter aosip_hammerhead,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/bootanimations/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip \
        vendor/aosip/prebuilt/common/app/OmaDmclient.apk:system/app/OmaDmclient.apk
endif

ifneq ($(filter aosip_mako aosip_grouper aosip_flo,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/bootanimations/BOOTANIMATION-768x480.zip:system/media/bootanimation.zip
endif

ifneq ($(filter aosip_shamu aosip_manta,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/bootanimations/BOOTANIMATION-1440x2560.zip:system/media/bootanimation.zip
endif

# Apns
ifneq ($(filter aosip_shamu aosip_hammerhead aosip_mako,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml
endif

# Backup Tool
ifneq ($(WITH_GMS),true)
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/bin/50-aosip.sh:system/addon.d/50-aosip.sh \
    vendor/aosip/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/aosip/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions
endif

#Root by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

#extras
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/aosip/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon 

# Google apps
PRODUCT_COPY_FILES += \
    vendor/aosip/overlay/common/packages/apps/Messenger.apk:system/priv-app/Messenger.apk \
    vendor/aosip/overlay/common/packages/apps/Callendar.apk:system/app/Google_Callendar.apk \

# Default theme
PRODUCT_COPY_FILES += \
    vendor/aosip/system/overlay/Aoisp_Settings.apk:system/vendor/overlay/Aoisp_Settings.apk \
    vendor/aosip/system/overlay/Aosip_Contacts.apk:system/vendor/overlay/Aosip_Contacts.apk \
    vendor/aosip/system/overlay/Aosip_Dialer.apk:system/vendor/overlay/Aosip_Dialer.apk \
    vendor/aosip/system/overlay/Aosip_Frameworks.apk:system/vendor/overlay/Aosip_Frameworks.apk \
    vendor/aosip/system/overlay/Aosip_Phone.apk:system/vendor/overlay/Aosip_Phone.apk \
    vendor/aosip/system/overlay/Aosip_SystemUI.apk:system/vendor/overlay/Aosip_SystemUI.apk \
    vendor/aosip/system/overlay/Aosip_Telecom.apk:system/vendor/overlay/Aosip_Telecom.apk \
    vendor/aosip/system/overlay/Aosip_theme.zip:system/app/Aosip_theme.zip

# Keyboard Wallpaper Picker
PRODUCT_PACKAGES += \
    WallpaperPicker \
    SlimLauncher \
    LockClock

# Inherit common product build prop overrides
-include vendor/aosip/products/common_versions.mk
