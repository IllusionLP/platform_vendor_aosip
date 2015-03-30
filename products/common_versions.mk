# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=LMY47I BUILD_ID=LMY47I BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=0

# Versioning System
PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = Beta-0.1

ROM_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)-$(CUSTOM_BUILD)-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.aosip.version=$(ROM_VERSION) \
  ro.modversion=$(ROM_VERSION)
