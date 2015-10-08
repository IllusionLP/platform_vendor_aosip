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

#Root by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

# Inherit common product build prop overrides
-include vendor/solo/products/common_versions.mk
