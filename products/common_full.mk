# Copy prebuilt files.
ifneq ($(filter solo_hammerhead,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
        vendor/solo/prebuilt/common/app/OmaDmclient.apk:system/app/OmaDmclient.apk
endif

# Apns
ifneq ($(filter solo_shamu solo_hammerhead solo_mako,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml
endif

# Backup Tool
ifneq ($(WITH_GMS),true)
PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/common/bin/50-solo.sh:system/addon.d/50-solo.sh \
    vendor/solo/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/solo/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions
endif

#Root by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

#extras
PRODUCT_COPY_FILES += \
    vendor/solo/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/solo/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon 

# Google apps
PRODUCT_COPY_FILES += \
    vendor/solo/overlay/common/packages/apps/Messenger.apk:system/priv-app/Messenger.apk \
    vendor/solo/overlay/common/packages/apps/Callendar.apk:system/app/Google_Callendar.apk \
    vendor/solo/overlay/common/packages/apps/NovaLauncher.apk:system/app/NovaLauncher.apk \

# Keyboard Wallpaper Picker
PRODUCT_PACKAGES += \
    AudioFX \
    Eleven \
    LockClock

# Inherit common product build prop overrides
-include vendor/solo/products/common_versions.mk
