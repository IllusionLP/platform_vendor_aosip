# Copy prebuilt files.
ifneq ($(filter felix_hammerhead,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/felix/prebuilt/common/bootanimations/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip \
        vendor/felix/prebuilt/common/app/OmaDmclient.apk:system/app/OmaDmclient.apk
endif

ifneq ($(filter felix_mako felix_grouper felix_flo,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/felix/prebuilt/common/bootanimations/BOOTANIMATION-768x480.zip:system/media/bootanimation.zip
endif

ifneq ($(filter felix_shamu felix_manta,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/felix/prebuilt/common/bootanimations/BOOTANIMATION-1440x2560.zip:system/media/bootanimation.zip
endif

# Apns
ifneq ($(filter felix_shamu felix_hammerhead felix_mako,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/felix/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml
endif

# Backup Tool
ifneq ($(WITH_GMS),true)
PRODUCT_COPY_FILES += \
    vendor/felix/prebuilt/common/bin/50-felix.sh:system/addon.d/50-felix.sh \
    vendor/felix/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/felix/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions
endif

#Root by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

#extras
PRODUCT_COPY_FILES += \
    vendor/felix/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/felix/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon 

# Google apps
PRODUCT_COPY_FILES += \
    vendor/felix/overlay/common/packages/apps/Messenger.apk:system/priv-app/Messenger.apk \
    vendor/felix/overlay/common/packages/apps/Callendar.apk:system/app/Google_Callendar.apk \
    vendor/felix/overlay/common/packages/apps/NovaLauncher.apk:system/app/NovaLauncher.apk \

# Default theme
PRODUCT_COPY_FILES += \
    vendor/felix/system/overlay/Aoisp_Settings.apk:system/vendor/overlay/Aosip_Settings.apk \
    vendor/felix/system/overlay/Aosip_Contacts.apk:system/vendor/overlay/felix_Contacts.apk \
    vendor/felix/system/overlay/Aosip_Dialer.apk:system/vendor/overlay/felix_Dialer.apk \
    vendor/felix/system/overlay/Aosip_Frameworks.apk:system/vendor/overlay/felix_Frameworks.apk \
    vendor/felix/system/overlay/Aosip_Phone.apk:system/vendor/overlay/felix_Phone.apk \
    vendor/felix/system/overlay/Aosip_SystemUI.apk:system/vendor/overlay/felix_SystemUI.apk \
    vendor/felix/system/overlay/Aosip_Telecom.apk:system/vendor/overlay/felix_Telecom.apk \
    vendor/felix/system/overlay/Aosip_theme.zip:system/app/felix_theme.zip

# Keyboard Wallpaper Picker
PRODUCT_PACKAGES += \
    WallpaperPicker \
    LockClock

# Inherit common product build prop overrides
-include vendor/felix/products/common_versions.mk
