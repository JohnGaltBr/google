PRODUCT_PACKAGES += \
			GoogleOneTimeInitializer\
			GoogleTTS\
			GoogleGmsCore\
			GoogleGmsCoreSetup\
			GoogleExtServices\
			GoogleExtShared\
			GooglePhonesky\
			GoogleBackupTransport\
			GoogleLoginService\
			GoogleCalendarSyncAdapter\
			GoogleContactsSyncAdapter\
			GoogleServicesFramework\
			GoogleFeedback\
			GooglePartnerSetup\
			ConfigUpdater

PRODUCT_PROPERTY_OVERRIDES += \
			ro.addon.type=gapps\
			ro.addon.arch=arm64\
			ro.addon.sdk=25\
			ro.addon.platform=7.1\
			ro.addon.open_type=pico\
			ro.addon.open_version=20181215

ifeq ($(PRODUCT_MODEL) , Edge)
LOCAL_PATH:= vendor/rockchip/google
else
LOCAL_PATH:= vendor/amlogic/google
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar\
	$(LOCAL_PATH)/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar\
	$(LOCAL_PATH)/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar\
	$(LOCAL_PATH)/framework/com.google.android.dialer.support.jar:system/framework/com.google.android.dialer.support.jar\
	$(LOCAL_PATH)/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml\
	$(LOCAL_PATH)/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml\
	$(LOCAL_PATH)/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml\
	$(LOCAL_PATH)/etc/permissions/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml\
	$(LOCAL_PATH)/etc/default-permissions/default-permissions.xml:system/etc/default-permissions/default-permissions.xml\
	$(LOCAL_PATH)/etc/default-permissions/opengapps-permissions.xml:system/etc/default-permissions/opengapps-permissions.xml\
	$(LOCAL_PATH)/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml\
	$(LOCAL_PATH)/etc/sysconfig/google_exclusives_enable.xml:system/etc/sysconfig/google_exclusives_enable.xml\
	$(LOCAL_PATH)/etc/sysconfig/google_build.xml:system/etc/sysconfig/google_build.xml\
	$(LOCAL_PATH)/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml\
	$(LOCAL_PATH)/etc/sysconfig/framework-sysconfig.xml:system/etc/sysconfig/framework-sysconfig.xml\
	$(LOCAL_PATH)/etc/sysconfig/whitelist_com.android.omadm.service.xml:system/etc/sysconfig/whitelist_com.android.omadm.service.xml\
	$(LOCAL_PATH)/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml\
	$(LOCAL_PATH)/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinimegoogle.so
