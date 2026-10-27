.class public final Landroid/provider/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$AddWifiResult;,
        Landroid/provider/Settings$Panel;,
        Landroid/provider/Settings$Bookmarks;,
        Landroid/provider/Settings$Config;,
        Landroid/provider/Settings$Global;,
        Landroid/provider/Settings$Secure;,
        Landroid/provider/Settings$System;,
        Landroid/provider/Settings$Readable;,
        Landroid/provider/Settings$NameValueCache;,
        Landroid/provider/Settings$ContentProviderHolder;,
        Landroid/provider/Settings$GenerationTracker;,
        Landroid/provider/Settings$NameValueTable;,
        Landroid/provider/Settings$SettingNotFoundException;,
        Landroid/provider/Settings$ResetMode;,
        Landroid/provider/Settings$EnableMmsDataReason;,
        Landroid/provider/Settings$SetAllResult;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_DETAILS_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_SETTINGS"

.field public static final ACTION_ADD_ACCOUNT:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field public static final ACTION_AIRPLANE_MODE_SETTINGS:Ljava/lang/String; = "android.settings.AIRPLANE_MODE_SETTINGS"

.field public static final ACTION_ALL_APPS_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.ALL_APPS_NOTIFICATION_SETTINGS"

.field public static final ACTION_APN_SETTINGS:Ljava/lang/String; = "android.settings.APN_SETTINGS"

.field public static final ACTION_APPLICATION_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field public static final ACTION_APPLICATION_DEVELOPMENT_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

.field public static final ACTION_APPLICATION_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_SETTINGS"

.field public static final ACTION_APP_NOTIFICATION_BUBBLE_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

.field public static final ACTION_APP_NOTIFICATION_REDACTION:Ljava/lang/String; = "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

.field public static final ACTION_APP_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_SETTINGS"

.field public static final ACTION_APP_OPEN_BY_DEFAULT_SETTINGS:Ljava/lang/String; = "android.settings.APP_OPEN_BY_DEFAULT_SETTINGS"

.field public static final ACTION_APP_OPS_SETTINGS:Ljava/lang/String; = "android.settings.APP_OPS_SETTINGS"

.field public static final ACTION_APP_SEARCH_SETTINGS:Ljava/lang/String; = "android.settings.APP_SEARCH_SETTINGS"

.field public static final ACTION_APP_USAGE_SETTINGS:Ljava/lang/String; = "android.settings.action.APP_USAGE_SETTINGS"

.field public static final ACTION_ASSIST_GESTURE_SETTINGS:Ljava/lang/String; = "android.settings.ASSIST_GESTURE_SETTINGS"

.field public static final ACTION_AUTO_ROTATE_SETTINGS:Ljava/lang/String; = "android.settings.AUTO_ROTATE_SETTINGS"

.field public static final ACTION_BATTERY_SAVER_SETTINGS:Ljava/lang/String; = "android.settings.BATTERY_SAVER_SETTINGS"

.field public static final ACTION_BIOMETRIC_ENROLL:Ljava/lang/String; = "android.settings.BIOMETRIC_ENROLL"

.field public static final ACTION_BLUETOOTH_PAIRING_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_PAIRING_SETTINGS"

.field public static final ACTION_BLUETOOTH_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_SETTINGS"

.field public static final ACTION_BUGREPORT_HANDLER_SETTINGS:Ljava/lang/String; = "android.settings.BUGREPORT_HANDLER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_CAPTIONING_SETTINGS:Ljava/lang/String; = "android.settings.CAPTIONING_SETTINGS"

.field public static final ACTION_CAST_SETTINGS:Ljava/lang/String; = "android.settings.CAST_SETTINGS"

.field public static final ACTION_CHANNEL_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

.field public static final ACTION_COLOR_INVERSION_SETTINGS:Ljava/lang/String; = "android.settings.COLOR_INVERSION_SETTINGS"

.field public static final ACTION_CONDITION_PROVIDER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

.field public static final ACTION_CONVERSATION_SETTINGS:Ljava/lang/String; = "android.settings.CONVERSATION_SETTINGS"

.field public static final ACTION_DARK_THEME_SETTINGS:Ljava/lang/String; = "android.settings.DARK_THEME_SETTINGS"

.field public static final ACTION_DATA_ROAMING_SETTINGS:Ljava/lang/String; = "android.settings.DATA_ROAMING_SETTINGS"

.field public static final ACTION_DATA_SAVER_SETTINGS:Ljava/lang/String; = "android.settings.DATA_SAVER_SETTINGS"

.field public static final ACTION_DATA_USAGE_SETTINGS:Ljava/lang/String; = "android.settings.DATA_USAGE_SETTINGS"

.field public static final ACTION_DATE_SETTINGS:Ljava/lang/String; = "android.settings.DATE_SETTINGS"

.field public static final ACTION_DEVICE_CONTROLS_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_DEVICE_CONTROLS_SETTINGS"

.field public static final ACTION_DEVICE_INFO_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_INFO_SETTINGS"

.field public static final ACTION_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.DISPLAY_SETTINGS"

.field public static final ACTION_DREAM_SETTINGS:Ljava/lang/String; = "android.settings.DREAM_SETTINGS"

.field public static final ACTION_ENABLE_MMS_DATA_REQUEST:Ljava/lang/String; = "android.settings.ENABLE_MMS_DATA_REQUEST"

.field public static final ACTION_ENTERPRISE_PRIVACY_SETTINGS:Ljava/lang/String; = "android.settings.ENTERPRISE_PRIVACY_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_FINGERPRINT_ENROLL:Ljava/lang/String; = "android.settings.FINGERPRINT_ENROLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_FOREGROUND_SERVICES_SETTINGS:Ljava/lang/String; = "android.settings.FOREGROUND_SERVICES_SETTINGS"

.field public static final ACTION_HARD_KEYBOARD_SETTINGS:Ljava/lang/String; = "android.settings.HARD_KEYBOARD_SETTINGS"

.field public static final ACTION_HOME_SETTINGS:Ljava/lang/String; = "android.settings.HOME_SETTINGS"

.field public static final ACTION_IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS:Ljava/lang/String; = "android.settings.IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS"

.field public static final ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS:Ljava/lang/String; = "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

.field public static final ACTION_INPUT_METHOD_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SETTINGS"

.field public static final ACTION_INPUT_METHOD_SUBTYPE_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

.field public static final ACTION_INTERNAL_STORAGE_SETTINGS:Ljava/lang/String; = "android.settings.INTERNAL_STORAGE_SETTINGS"

.field public static final ACTION_LOCALE_SETTINGS:Ljava/lang/String; = "android.settings.LOCALE_SETTINGS"

.field public static final ACTION_LOCATION_CONTROLLER_EXTRA_PACKAGE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_CONTROLLER_EXTRA_PACKAGE_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_LOCATION_SCANNING_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SCANNING_SETTINGS"

.field public static final ACTION_LOCATION_SOURCE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SOURCE_SETTINGS"

.field public static final ACTION_LOCKSCREEN_SETTINGS:Ljava/lang/String; = "android.settings.LOCK_SCREEN_SETTINGS"

.field public static final ACTION_MANAGED_PROFILE_SETTINGS:Ljava/lang/String; = "android.settings.MANAGED_PROFILE_SETTINGS"

.field public static final ACTION_MANAGE_ALL_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

.field public static final ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION:Ljava/lang/String; = "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

.field public static final ACTION_MANAGE_ALL_SIM_PROFILES_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_ALL_SIM_PROFILES_SETTINGS"

.field public static final ACTION_MANAGE_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_APPLICATIONS_SETTINGS"

.field public static final ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION:Ljava/lang/String; = "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

.field public static final ACTION_MANAGE_APP_OVERLAY_PERMISSION:Ljava/lang/String; = "android.settings.MANAGE_APP_OVERLAY_PERMISSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_MANAGE_CROSS_PROFILE_ACCESS:Ljava/lang/String; = "android.settings.MANAGE_CROSS_PROFILE_ACCESS"

.field public static final ACTION_MANAGE_DEFAULT_APPS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

.field public static final ACTION_MANAGE_DOMAIN_URLS:Ljava/lang/String; = "android.settings.MANAGE_DOMAIN_URLS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_MANAGE_MORE_DEFAULT_APPS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_MORE_DEFAULT_APPS_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_MANAGE_OVERLAY_PERMISSION:Ljava/lang/String; = "android.settings.action.MANAGE_OVERLAY_PERMISSION"

.field public static final ACTION_MANAGE_UNKNOWN_APP_SOURCES:Ljava/lang/String; = "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

.field public static final ACTION_MANAGE_WRITE_SETTINGS:Ljava/lang/String; = "android.settings.action.MANAGE_WRITE_SETTINGS"

.field public static final ACTION_MEDIA_CONTROLS_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

.field public static final ACTION_MEMORY_CARD_SETTINGS:Ljava/lang/String; = "android.settings.MEMORY_CARD_SETTINGS"

.field public static final ACTION_MMS_MESSAGE_SETTING:Ljava/lang/String; = "android.settings.MMS_MESSAGE_SETTING"

.field public static final ACTION_MOBILE_DATA_USAGE:Ljava/lang/String; = "android.settings.MOBILE_DATA_USAGE"

.field public static final ACTION_MONITORING_CERT_INFO:Ljava/lang/String; = "com.android.settings.MONITORING_CERT_INFO"

.field public static final ACTION_NETWORK_OPERATOR_SETTINGS:Ljava/lang/String; = "android.settings.NETWORK_OPERATOR_SETTINGS"

.field public static final ACTION_NFCSHARING_SETTINGS:Ljava/lang/String; = "android.settings.NFCSHARING_SETTINGS"

.field public static final ACTION_NFC_PAYMENT_SETTINGS:Ljava/lang/String; = "android.settings.NFC_PAYMENT_SETTINGS"

.field public static final ACTION_NFC_SETTINGS:Ljava/lang/String; = "android.settings.NFC_SETTINGS"

.field public static final ACTION_NIGHT_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.NIGHT_DISPLAY_SETTINGS"

.field public static final ACTION_NOTIFICATION_ASSISTANT_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_ASSISTANT_SETTINGS"

.field public static final ACTION_NOTIFICATION_HISTORY:Ljava/lang/String; = "android.settings.NOTIFICATION_HISTORY"

.field public static final ACTION_NOTIFICATION_LISTENER_DETAIL_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_LISTENER_DETAIL_SETTINGS"

.field public static final ACTION_NOTIFICATION_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

.field public static final ACTION_NOTIFICATION_POLICY_ACCESS_DETAIL_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_POLICY_ACCESS_DETAIL_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_NOTIFICATION_POLICY_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

.field public static final ACTION_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.NOTIFICATION_SETTINGS"

.field public static final ACTION_PAIRING_SETTINGS:Ljava/lang/String; = "android.settings.PAIRING_SETTINGS"

.field public static final ACTION_PICTURE_IN_PICTURE_SETTINGS:Ljava/lang/String; = "android.settings.PICTURE_IN_PICTURE_SETTINGS"

.field public static final ACTION_POWER_MENU_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_POWER_MENU_SETTINGS"

.field public static final ACTION_PRINT_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_PRINT_SETTINGS"

.field public static final ACTION_PRIVACY_SETTINGS:Ljava/lang/String; = "android.settings.PRIVACY_SETTINGS"

.field public static final ACTION_PROCESS_WIFI_EASY_CONNECT_URI:Ljava/lang/String; = "android.settings.PROCESS_WIFI_EASY_CONNECT_URI"

.field public static final ACTION_QUICK_ACCESS_WALLET_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_ACCESS_WALLET_SETTINGS"

.field public static final ACTION_QUICK_LAUNCH_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_LAUNCH_SETTINGS"

.field public static final ACTION_REDUCE_BRIGHT_COLORS_SETTINGS:Ljava/lang/String; = "android.settings.REDUCE_BRIGHT_COLORS_SETTINGS"

.field public static final ACTION_REQUEST_ENABLE_CONTENT_CAPTURE:Ljava/lang/String; = "android.settings.REQUEST_ENABLE_CONTENT_CAPTURE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS:Ljava/lang/String; = "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

.field public static final ACTION_REQUEST_MANAGE_MEDIA:Ljava/lang/String; = "android.settings.REQUEST_MANAGE_MEDIA"

.field public static final ACTION_REQUEST_SCHEDULE_EXACT_ALARM:Ljava/lang/String; = "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

.field public static final ACTION_REQUEST_SET_AUTOFILL_SERVICE:Ljava/lang/String; = "android.settings.REQUEST_SET_AUTOFILL_SERVICE"

.field public static final ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final ACTION_SECURITY_SETTINGS:Ljava/lang/String; = "android.settings.SECURITY_SETTINGS"

.field public static final ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field public static final ACTION_SETTINGS_EMBED_DEEP_LINK_ACTIVITY:Ljava/lang/String; = "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

.field public static final ACTION_SHOW_ADMIN_SUPPORT_DETAILS:Ljava/lang/String; = "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SHOW_REGULATORY_INFO:Ljava/lang/String; = "android.settings.SHOW_REGULATORY_INFO"

.field public static final ACTION_SHOW_REMOTE_BUGREPORT_DIALOG:Ljava/lang/String; = "android.settings.SHOW_REMOTE_BUGREPORT_DIALOG"

.field public static final ACTION_SHOW_WORK_POLICY_INFO:Ljava/lang/String; = "android.settings.SHOW_WORK_POLICY_INFO"

.field public static final ACTION_SOUND_SETTINGS:Ljava/lang/String; = "android.settings.SOUND_SETTINGS"

.field public static final ACTION_STORAGE_MANAGER_SETTINGS:Ljava/lang/String; = "android.settings.STORAGE_MANAGER_SETTINGS"

.field public static final ACTION_STORAGE_VOLUME_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.STORAGE_VOLUME_ACCESS_SETTINGS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SYNC_SETTINGS:Ljava/lang/String; = "android.settings.SYNC_SETTINGS"

.field public static final ACTION_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "android.settings.SYSTEM_UPDATE_SETTINGS"

.field public static final ACTION_TETHER_PROVISIONING_UI:Ljava/lang/String; = "android.settings.TETHER_PROVISIONING_UI"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_TETHER_SETTINGS:Ljava/lang/String; = "android.settings.TETHER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_TRUSTED_CREDENTIALS_USER:Ljava/lang/String; = "com.android.settings.TRUSTED_CREDENTIALS_USER"

.field public static final ACTION_USAGE_ACCESS_SETTINGS:Ljava/lang/String; = "android.settings.USAGE_ACCESS_SETTINGS"

.field public static final ACTION_USER_DICTIONARY_INSERT:Ljava/lang/String; = "com.android.settings.USER_DICTIONARY_INSERT"

.field public static final ACTION_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "android.settings.USER_DICTIONARY_SETTINGS"

.field public static final ACTION_USER_SETTINGS:Ljava/lang/String; = "android.settings.USER_SETTINGS"

.field public static final ACTION_VIEW_ADVANCED_POWER_USAGE_DETAIL:Ljava/lang/String; = "android.settings.VIEW_ADVANCED_POWER_USAGE_DETAIL"

.field public static final ACTION_VOICE_CONTROL_AIRPLANE_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_AIRPLANE_MODE"

.field public static final ACTION_VOICE_CONTROL_BATTERY_SAVER_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_BATTERY_SAVER_MODE"

.field public static final ACTION_VOICE_CONTROL_DO_NOT_DISTURB_MODE:Ljava/lang/String; = "android.settings.VOICE_CONTROL_DO_NOT_DISTURB_MODE"

.field public static final ACTION_VOICE_INPUT_SETTINGS:Ljava/lang/String; = "android.settings.VOICE_INPUT_SETTINGS"

.field public static final ACTION_VPN_SETTINGS:Ljava/lang/String; = "android.settings.VPN_SETTINGS"

.field public static final ACTION_VR_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.VR_LISTENER_SETTINGS"

.field public static final ACTION_WEBVIEW_SETTINGS:Ljava/lang/String; = "android.settings.WEBVIEW_SETTINGS"

.field public static final ACTION_WIFI_ADD_NETWORKS:Ljava/lang/String; = "android.settings.WIFI_ADD_NETWORKS"

.field public static final ACTION_WIFI_IP_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_IP_SETTINGS"

.field public static final ACTION_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static final ACTION_WIFI_TETHER_SETTING:Ljava/lang/String; = "com.android.settings.WIFI_TETHER_SETTINGS"

.field public static final ACTION_WIRELESS_SETTINGS:Ljava/lang/String; = "android.settings.WIRELESS_SETTINGS"

.field public static final ACTION_ZEN_MODE_AUTOMATION_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_AUTOMATION_SETTINGS"

.field public static final ACTION_ZEN_MODE_EVENT_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

.field public static final ACTION_ZEN_MODE_EXTERNAL_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

.field public static final ACTION_ZEN_MODE_PRIORITY_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

.field public static final ACTION_ZEN_MODE_SCHEDULE_RULE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

.field public static final ACTION_ZEN_MODE_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_SETTINGS"

.field public static final ADD_WIFI_RESULT_ADD_OR_UPDATE_FAILED:I = 0x1

.field public static final ADD_WIFI_RESULT_ALREADY_EXISTS:I = 0x2

.field public static final ADD_WIFI_RESULT_SUCCESS:I = 0x0

.field public static final AUTHORITY:Ljava/lang/String; = "settings"

.field public static final CALL_METHOD_DELETE_CONFIG:Ljava/lang/String; = "DELETE_config"

.field public static final CALL_METHOD_DELETE_GLOBAL:Ljava/lang/String; = "DELETE_global"

.field public static final CALL_METHOD_DELETE_SECURE:Ljava/lang/String; = "DELETE_secure"

.field public static final CALL_METHOD_DELETE_SYSTEM:Ljava/lang/String; = "DELETE_system"

.field public static final CALL_METHOD_FLAGS_KEY:Ljava/lang/String; = "_flags"

.field public static final CALL_METHOD_GENERATION_INDEX_KEY:Ljava/lang/String; = "_generation_index"

.field public static final CALL_METHOD_GENERATION_KEY:Ljava/lang/String; = "_generation"

.field public static final CALL_METHOD_GET_CONFIG:Ljava/lang/String; = "GET_config"

.field public static final CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final CALL_METHOD_IS_SYNC_DISABLED_CONFIG:Ljava/lang/String; = "IS_SYNC_DISABLED_config"

.field public static final CALL_METHOD_LIST_CONFIG:Ljava/lang/String; = "LIST_config"

.field public static final CALL_METHOD_LIST_GLOBAL:Ljava/lang/String; = "LIST_global"

.field public static final CALL_METHOD_LIST_SECURE:Ljava/lang/String; = "LIST_secure"

.field public static final CALL_METHOD_LIST_SYSTEM:Ljava/lang/String; = "LIST_system"

.field public static final CALL_METHOD_MAKE_DEFAULT_KEY:Ljava/lang/String; = "_make_default"

.field public static final CALL_METHOD_MONITOR_CALLBACK_KEY:Ljava/lang/String; = "_monitor_callback_key"

.field public static final CALL_METHOD_OVERRIDEABLE_BY_RESTORE_KEY:Ljava/lang/String; = "_overrideable_by_restore"

.field public static final CALL_METHOD_PREFIX_KEY:Ljava/lang/String; = "_prefix"

.field public static final CALL_METHOD_PUT_CONFIG:Ljava/lang/String; = "PUT_config"

.field public static final CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final CALL_METHOD_REGISTER_MONITOR_CALLBACK_CONFIG:Ljava/lang/String; = "REGISTER_MONITOR_CALLBACK_config"

.field public static final CALL_METHOD_RESET_CONFIG:Ljava/lang/String; = "RESET_config"

.field public static final CALL_METHOD_RESET_GLOBAL:Ljava/lang/String; = "RESET_global"

.field public static final CALL_METHOD_RESET_MODE_KEY:Ljava/lang/String; = "_reset_mode"

.field public static final CALL_METHOD_RESET_SECURE:Ljava/lang/String; = "RESET_secure"

.field public static final CALL_METHOD_SET_ALL_CONFIG:Ljava/lang/String; = "SET_ALL_config"

.field public static final CALL_METHOD_SET_SYNC_DISABLED_CONFIG:Ljava/lang/String; = "SET_SYNC_DISABLED_config"

.field public static final CALL_METHOD_SYNC_DISABLED_MODE_KEY:Ljava/lang/String; = "_disabled_mode"

.field public static final CALL_METHOD_TAG_KEY:Ljava/lang/String; = "_tag"

.field public static final CALL_METHOD_TRACK_GENERATION_KEY:Ljava/lang/String; = "_track_generation"

.field public static final CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field public static final DEFAULT_OVERRIDEABLE_BY_RESTORE:Z = false

.field public static final DEVICE_NAME_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_NAME"

.field public static final ENABLE_MMS_DATA_REQUEST_REASON_INCOMING_MMS:I = 0x0

.field public static final ENABLE_MMS_DATA_REQUEST_REASON_OUTGOING_MMS:I = 0x1

.field public static final EXTRA_ACCESS_CALLBACK:Ljava/lang/String; = "access_callback"

.field public static final EXTRA_ACCOUNT_TYPES:Ljava/lang/String; = "account_types"

.field public static final EXTRA_AIRPLANE_MODE_ENABLED:Ljava/lang/String; = "airplane_mode_enabled"

.field public static final EXTRA_APP_PACKAGE:Ljava/lang/String; = "android.provider.extra.APP_PACKAGE"

.field public static final EXTRA_APP_UID:Ljava/lang/String; = "app_uid"

.field public static final EXTRA_AUTHORITIES:Ljava/lang/String; = "authorities"

.field public static final EXTRA_BATTERY_SAVER_MODE_ENABLED:Ljava/lang/String; = "android.settings.extra.battery_saver_mode_enabled"

.field public static final EXTRA_BIOMETRIC_AUTHENTICATORS_ALLOWED:Ljava/lang/String; = "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field public static final EXTRA_CHANNEL_FILTER_LIST:Ljava/lang/String; = "android.provider.extra.CHANNEL_FILTER_LIST"

.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.provider.extra.CHANNEL_ID"

.field public static final EXTRA_CONVERSATION_ID:Ljava/lang/String; = "android.provider.extra.CONVERSATION_ID"

.field public static final EXTRA_DO_NOT_DISTURB_MODE_ENABLED:Ljava/lang/String; = "android.settings.extra.do_not_disturb_mode_enabled"

.field public static final EXTRA_DO_NOT_DISTURB_MODE_MINUTES:Ljava/lang/String; = "android.settings.extra.do_not_disturb_mode_minutes"

.field public static final EXTRA_EASY_CONNECT_ATTEMPTED_SSID:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_ATTEMPTED_SSID"

.field public static final EXTRA_EASY_CONNECT_BAND_LIST:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_BAND_LIST"

.field public static final EXTRA_EASY_CONNECT_CHANNEL_LIST:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_CHANNEL_LIST"

.field public static final EXTRA_EASY_CONNECT_ERROR_CODE:Ljava/lang/String; = "android.provider.extra.EASY_CONNECT_ERROR_CODE"

.field public static final EXTRA_ENABLE_MMS_DATA_REQUEST_REASON:Ljava/lang/String; = "android.settings.extra.ENABLE_MMS_DATA_REQUEST_REASON"

.field public static final EXTRA_INPUT_DEVICE_IDENTIFIER:Ljava/lang/String; = "input_device_identifier"

.field public static final EXTRA_INPUT_METHOD_ID:Ljava/lang/String; = "input_method_id"

.field public static final EXTRA_MONITOR_CALLBACK_TYPE:Ljava/lang/String; = "monitor_callback_type"

.field public static final EXTRA_NAMESPACE:Ljava/lang/String; = "namespace"

.field public static final EXTRA_NAMESPACE_UPDATED_CALLBACK:Ljava/lang/String; = "namespace_updated_callback"

.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "network_template"

.field public static final EXTRA_NOTIFICATION_LISTENER_COMPONENT_NAME:Ljava/lang/String; = "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME"

.field public static final EXTRA_NUMBER_OF_CERTIFICATES:Ljava/lang/String; = "android.settings.extra.number_of_certificates"

.field public static final EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY:Ljava/lang/String; = "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

.field public static final EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI:Ljava/lang/String; = "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

.field public static final EXTRA_SUB_ID:Ljava/lang/String; = "android.provider.extra.SUB_ID"

.field public static final EXTRA_WIFI_NETWORK_LIST:Ljava/lang/String; = "android.provider.extra.WIFI_NETWORK_LIST"

.field public static final EXTRA_WIFI_NETWORK_RESULT_LIST:Ljava/lang/String; = "android.provider.extra.WIFI_NETWORK_RESULT_LIST"

.field public static final INTENT_CATEGORY_USAGE_ACCESS_CONFIG:Ljava/lang/String; = "android.intent.category.USAGE_ACCESS_CONFIG"

.field public static final KEY_CONFIG_IS_SYNC_DISABLED_RETURN:Ljava/lang/String; = "config_is_sync_disabled_return"

.field public static final KEY_CONFIG_SET_ALL_RETURN:Ljava/lang/String; = "config_set_all_return"

.field private static final LOCAL_LOGV:Z = false

.field public static final METADATA_USAGE_ACCESS_REASON:Ljava/lang/String; = "android.settings.metadata.USAGE_ACCESS_REASON"

.field private static final PM_CHANGE_NETWORK_STATE:[Ljava/lang/String;

.field private static final PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

.field private static final PM_WRITE_SETTINGS:[Ljava/lang/String;

.field public static final RESET_MODE_PACKAGE_DEFAULTS:I = 0x1

.field public static final RESET_MODE_TRUSTED_DEFAULTS:I = 0x4

.field public static final RESET_MODE_UNTRUSTED_CHANGES:I = 0x3

.field public static final RESET_MODE_UNTRUSTED_DEFAULTS:I = 0x2

.field public static final SET_ALL_RESULT_DISABLED:I = 0x2

.field public static final SET_ALL_RESULT_FAILURE:I = 0x0

.field public static final SET_ALL_RESULT_SUCCESS:I = 0x1

.field private static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "Settings"

.field public static final ZEN_MODE_BLOCKED_EFFECTS_SETTINGS:Ljava/lang/String; = "android.settings.ZEN_MODE_BLOCKED_EFFECTS_SETTINGS"

.field public static final ZEN_MODE_ONBOARDING:Ljava/lang/String; = "android.settings.ZEN_MODE_ONBOARDING"

.field private static sInSystemServer:Z = false

.field private static final sInSystemServerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2675
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/Settings;->sInSystemServerLock:Ljava/lang/Object;

    const-string v0, "android.permission.WRITE_SETTINGS"

    .line 17189
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    .line 17192
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings;->PM_CHANGE_NETWORK_STATE:[Ljava/lang/String;

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 17196
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V
    .locals 0

    .line 124
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings;->getPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static canDrawOverlays(Landroid/content/Context;)Z
    .locals 3

    .line 3300
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 3301
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3300
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->isCallingPackageAllowedToDrawOverlays(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    .line 3301
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static checkAndNoteDrawOverlaysOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 8

    .line 17352
    sget-object v6, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    const/16 v5, 0x18

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 17319
    sget-object v6, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    const/16 v5, 0x17

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 17300
    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 17442
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 17446
    aget-object p0, p0, p1

    return-object p0
.end method

.method private static getPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3321
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 3323
    :goto_0
    :try_start_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 3324
    aget-object v2, v0, v1

    .line 3325
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 3328
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3329
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 3332
    :cond_1
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3333
    const-class v4, Landroid/provider/Settings$Readable;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Landroid/provider/Settings$Readable;

    if-eqz v2, :cond_2

    .line 3336
    check-cast v3, Ljava/lang/String;

    .line 3337
    invoke-interface {v2}, Landroid/provider/Settings$Readable;->maxTargetSdk()I

    move-result v2

    .line 3338
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    .line 3340
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return-void
.end method

.method public static isCallingPackageAllowedToDrawOverlays(Landroid/content/Context;ILjava/lang/String;Z)Z
    .locals 8

    .line 17334
    sget-object v6, Landroid/provider/Settings;->PM_SYSTEM_ALERT_WINDOW:[Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v5, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string v1, "appops"

    .line 17385
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/AppOpsManager;

    if-eqz p7, :cond_1

    const/4 v7, 0x0

    move v3, p5

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 17388
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 17391
    :cond_1
    invoke-virtual {v2, p5, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    :goto_0
    const/4 p3, 0x1

    if-eqz p1, :cond_9

    const/4 p5, 0x3

    if-eq p1, p5, :cond_2

    goto :goto_2

    .line 17402
    :cond_2
    array-length p1, p6

    move p5, v0

    :goto_1
    if-ge p5, p1, :cond_4

    aget-object p7, p6, p5

    .line 17403
    invoke-virtual {p0, p7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p7

    if-nez p7, :cond_3

    return p3

    :cond_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez p4, :cond_5

    return v0

    .line 17418
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17419
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not granted "

    .line 17420
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17421
    array-length p1, p6

    if-le p1, p3, :cond_6

    const-string p1, " either of these permissions: "

    .line 17422
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string p1, " this permission: "

    .line 17424
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17426
    :goto_3
    array-length p1, p6

    if-ge v0, p1, :cond_8

    .line 17427
    aget-object p1, p6, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17428
    array-length p1, p6

    sub-int/2addr p1, p3

    if-ne v0, p1, :cond_7

    const-string p1, "."

    goto :goto_4

    :cond_7
    const-string p1, ", "

    :goto_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 17431
    :cond_8
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return p3
.end method

.method public static isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;ZI[Ljava/lang/String;Z)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    .line 17368
    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isCallingPackageAllowedToWriteSettings(Landroid/content/Context;ILjava/lang/String;Z)Z
    .locals 8

    .line 17284
    sget-object v6, Landroid/provider/Settings;->PM_WRITE_SETTINGS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v5, 0x17

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Landroid/provider/Settings;->isCallingPackageAllowedToPerformAppOpsProtectedOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isInSystemServer()Z
    .locals 2

    .line 2686
    sget-object v0, Landroid/provider/Settings;->sInSystemServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2687
    :try_start_0
    sget-boolean v1, Landroid/provider/Settings;->sInSystemServer:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2688
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setInSystemServer()V
    .locals 2

    .line 2679
    sget-object v0, Landroid/provider/Settings;->sInSystemServerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2680
    :try_start_0
    sput-boolean v1, Landroid/provider/Settings;->sInSystemServer:Z

    .line 2681
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
