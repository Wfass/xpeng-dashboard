.class public final Landroid/provider/Settings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final ACCELEROMETER_ROTATION:Ljava/lang/String; = "accelerometer_rotation"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final ADAPTIVE_SLEEP:Ljava/lang/String; = "adaptive_sleep"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADVANCED_SETTINGS:Ljava/lang/String; = "advanced_settings"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final ADVANCED_SETTINGS_DEFAULT:I = 0x0

.field public static final AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_RADIOS:Ljava/lang/String; = "airplane_mode_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_TOGGLEABLE_RADIOS:Ljava/lang/String; = "airplane_mode_toggleable_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALARM_ALERT:Ljava/lang/String; = "alarm_alert"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final ALARM_ALERT_CACHE:Ljava/lang/String; = "alarm_alert_cache"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

.field public static final ALWAYS_FINISH_ACTIVITIES:Ljava/lang/String; = "always_finish_activities"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANIMATOR_DURATION_SCALE:Ljava/lang/String; = "animator_duration_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final APPEND_FOR_LAST_AUDIBLE:Ljava/lang/String; = "_last_audible"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final AUTO_TIME:Ljava/lang/String; = "auto_time"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTO_TIME_ZONE:Ljava/lang/String; = "auto_time_zone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BLUETOOTH_DISCOVERABILITY:Ljava/lang/String; = "bluetooth_discoverability"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final BLUETOOTH_DISCOVERABILITY_TIMEOUT:Ljava/lang/String; = "bluetooth_discoverability_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_DOCK_SOUND:Ljava/lang/String; = "car_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_UNDOCK_SOUND:Ljava/lang/String; = "car_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEBUG_APP:Ljava/lang/String; = "debug_app"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEBUG_ENABLE_ENHANCED_CALL_BLOCKING:Ljava/lang/String; = "debug.enable_enhanced_calling"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

.field private static final DEFAULT_FONT_SCALE:F = 1.0f

.field private static final DEFAULT_FONT_WEIGHT:I = 0x0

.field public static final DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_URI:Landroid/net/Uri;

.field public static final DESK_DOCK_SOUND:Ljava/lang/String; = "desk_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DESK_UNDOCK_SOUND:Ljava/lang/String; = "desk_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIM_SCREEN:Ljava/lang/String; = "dim_screen"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISPLAY_COLOR_MODE:Ljava/lang/String; = "display_color_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final DISPLAY_COLOR_MODE_VENDOR_HINT:Ljava/lang/String; = "display_color_mode_vendor_hint"

.field public static final DOCK_SOUNDS_ENABLED:Ljava/lang/String; = "dock_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DTMF_TONE_TYPE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone_type"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final DTMF_TONE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final EGG_MODE:Ljava/lang/String; = "egg_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final END_BUTTON_BEHAVIOR:Ljava/lang/String; = "end_button_behavior"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final END_BUTTON_BEHAVIOR_DEFAULT:I = 0x2

.field public static final END_BUTTON_BEHAVIOR_HOME:I = 0x1

.field public static final END_BUTTON_BEHAVIOR_SLEEP:I = 0x2

.field public static final FONT_SCALE:Ljava/lang/String; = "font_scale"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final HAPTIC_FEEDBACK_ENABLED:Ljava/lang/String; = "haptic_feedback_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final HAPTIC_FEEDBACK_INTENSITY:Ljava/lang/String; = "haptic_feedback_intensity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final HEARING_AID:Ljava/lang/String; = "hearing_aid"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY:Ljava/lang/String; = "hide_rotation_lock_toggle_for_accessibility"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICM_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode_2"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANT_APP_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_DISABLED:Ljava/lang/String; = "lockscreen.disabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SOUND:Ljava/lang/String; = "lock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_TO_APP_ENABLED:Ljava/lang/String; = "lock_to_app_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MASTER_BALANCE:Ljava/lang/String; = "master_balance"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final MASTER_MONO:Ljava/lang/String; = "master_mono"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final MEDIA_BUTTON_RECEIVER:Ljava/lang/String; = "media_button_receiver"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final MIN_REFRESH_RATE:Ljava/lang/String; = "min_refresh_rate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final MODE_RINGER:Ljava/lang/String; = "mode_ringer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_RINGER_STREAMS_AFFECTED:Ljava/lang/String; = "mode_ringer_streams_affected"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MULTI_AUDIO_FOCUS_ENABLED:Ljava/lang/String; = "multi_audio_focus_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final MUTE_STREAMS_AFFECTED:Ljava/lang/String; = "mute_streams_affected"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEXT_ALARM_FORMATTED:Ljava/lang/String; = "next_alarm_formatted"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NOTIFICATIONS_USE_RING_VOLUME:Ljava/lang/String; = "notifications_use_ring_volume"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final NOTIFICATION_SOUND_CACHE:Ljava/lang/String; = "notification_sound_cache"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

.field public static final NOTIFICATION_VIBRATION_INTENSITY:Ljava/lang/String; = "notification_vibration_intensity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PASSENGER_SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness_1"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final PASSENGER_SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode_1"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final PASSENGER_SCREEN_BRIGHTNESS_MODE_AUTO:I = 0x1

.field public static final PEAK_REFRESH_RATE:Ljava/lang/String; = "peak_refresh_rate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final POINTER_LOCATION:Ljava/lang/String; = "pointer_location"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final POINTER_SPEED:Ljava/lang/String; = "pointer_speed"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final POWER_SOUNDS_ENABLED:Ljava/lang/String; = "power_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVATE_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RADIO_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_CELL:Ljava/lang/String; = "cell"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_NFC:Ljava/lang/String; = "nfc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIFI:Ljava/lang/String; = "wifi"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIMAX:Ljava/lang/String; = "wimax"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final RINGTONE_CACHE:Ljava/lang/String; = "ringtone_cache"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final RINGTONE_CACHE_URI:Landroid/net/Uri;

.field public static final RING_VIBRATION_INTENSITY:Ljava/lang/String; = "ring_vibration_intensity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS_FLOAT:Ljava/lang/String; = "screen_brightness_float"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS_FOR_CIC:Ljava/lang/String; = "screen_brightness_6"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS_FOR_CNSL:Ljava/lang/String; = "screen_brightness_4"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS_FOR_ICM:Ljava/lang/String; = "screen_brightness_for_2"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS_FOR_REAR_MIDDLE:Ljava/lang/String; = "screen_brightness_3"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS_FOR_VR:Ljava/lang/String; = "screen_brightness_for_vr"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS_FOR_VR_FLOAT:Ljava/lang/String; = "screen_brightness_for_vr_float"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS_MODE_AUTO:I = 0x1

.field public static final SCREEN_BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field public static final SCREEN_DUTYCYCLE:Ljava/lang/String; = "screen_dutycycle"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "screen_off_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETUP_WIZARD_HAS_RUN:Ljava/lang/String; = "setup_wizard_has_run"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SHOW_BATTERY_PERCENT:Ljava/lang/String; = "status_bar_show_battery_percent"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SHOW_GTALK_SERVICE_STATUS:Ljava/lang/String; = "SHOW_GTALK_SERVICE_STATUS"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SHOW_PROCESSES:Ljava/lang/String; = "show_processes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_TOUCHES:Ljava/lang/String; = "show_touches"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SHOW_WEB_SUGGESTIONS:Ljava/lang/String; = "show_web_suggestions"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIP_ADDRESS_ONLY:Ljava/lang/String; = "SIP_ADDRESS_ONLY"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SIP_ALWAYS:Ljava/lang/String; = "SIP_ALWAYS"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SIP_ASK_ME_EACH_TIME:Ljava/lang/String; = "SIP_ASK_ME_EACH_TIME"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final SOUND_EFFECTS_ENABLED:Ljava/lang/String; = "sound_effects_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYSTEM_LOCALES:Ljava/lang/String; = "system_locales"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final TEXT_AUTO_CAPS:Ljava/lang/String; = "auto_caps"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final TEXT_AUTO_PUNCTUATE:Ljava/lang/String; = "auto_punctuate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final TEXT_AUTO_REPLACE:Ljava/lang/String; = "auto_replace"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final TEXT_SHOW_PASSWORD:Ljava/lang/String; = "show_password"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final TIME_12_24:Ljava/lang/String; = "time_12_24"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE:Ljava/lang/String; = "tty_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final TYPE_ICM:I = 0x2

.field public static final TYPE_PASSENGER:I = 0x1

.field public static final TYPE_SCREEN:I = 0x0

.field public static final UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_ROTATION:Ljava/lang/String; = "user_rotation"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIBRATE_INPUT_DEVICES:Ljava/lang/String; = "vibrate_input_devices"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VIBRATE_ON:Ljava/lang/String; = "vibrate_on"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VOLUME_ACCESSIBILITY:Ljava/lang/String; = "volume_a11y"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VOLUME_ALARM:Ljava/lang/String; = "volume_alarm"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VOLUME_ASSISTANT:Ljava/lang/String; = "volume_assistant"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VOLUME_BLUETOOTH_SCO:Ljava/lang/String; = "volume_bluetooth_sco"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VOLUME_MASTER:Ljava/lang/String; = "volume_master"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VOLUME_MUSIC:Ljava/lang/String; = "volume_music"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VOLUME_NOTIFICATION:Ljava/lang/String; = "volume_notification"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VOLUME_RING:Ljava/lang/String; = "volume_ring"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VOLUME_SETTINGS:[Ljava/lang/String;

.field public static final VOLUME_SETTINGS_INT:[Ljava/lang/String;

.field public static final VOLUME_SYSTEM:Ljava/lang/String; = "volume_system"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final VOLUME_VOICE:Ljava/lang/String; = "volume_voice"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final WAIT_FOR_DEBUGGER:Ljava/lang/String; = "wait_for_debugger"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WALLPAPER_ACTIVITY:Ljava/lang/String; = "wallpaper_activity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHEN_TO_MAKE_WIFI_CALLS:Ljava/lang/String; = "when_to_make_wifi_calls"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_DNS1:Ljava/lang/String; = "wifi_static_dns1"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_DNS2:Ljava/lang/String; = "wifi_static_dns2"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_GATEWAY:Ljava/lang/String; = "wifi_static_gateway"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_IP:Ljava/lang/String; = "wifi_static_ip"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_NETMASK:Ljava/lang/String; = "wifi_static_netmask"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_USE_STATIC_IP:Ljava/lang/String; = "wifi_use_static_ip"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "window_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ORIENTATION_LISTENER_LOG:Ljava/lang/String; = "window_orientation_listener_log"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const-string v0, "content://settings/system"

    .line 3364
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 3367
    new-instance v5, Landroid/provider/Settings$ContentProviderHolder;

    invoke-direct {v5, v2}, Landroid/provider/Settings$ContentProviderHolder;-><init>(Landroid/net/Uri;)V

    sput-object v5, Landroid/provider/Settings$System;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 3371
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    const-class v6, Landroid/provider/Settings$System;

    const-string v3, "GET_system"

    const-string v4, "PUT_system"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    sput-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 3381
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "adaptive_sleep"

    .line 3382
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "android_id"

    .line 3383
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "http_proxy"

    .line 3384
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "location_providers_allowed"

    .line 3385
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "lock_biometric_weak_flags"

    .line 3386
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "lock_pattern_autolock"

    .line 3387
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "lock_pattern_visible_pattern"

    .line 3388
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "lock_pattern_tactile_feedback_enabled"

    .line 3389
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "logging_id"

    .line 3390
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "parental_control_enabled"

    .line 3391
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "parental_control_last_update"

    .line 3392
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "parental_control_redirect_url"

    .line 3393
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "settings_classname"

    .line 3394
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "use_google_mail"

    .line 3395
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_networks_available_notification_on"

    .line 3396
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_networks_available_repeat_delay"

    .line 3397
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_num_open_networks_kept"

    .line 3398
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_on"

    .line 3399
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_watchdog_acceptable_packet_loss_percentage"

    .line 3400
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_watchdog_ap_count"

    .line 3401
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_watchdog_background_check_delay_ms"

    .line 3402
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_watchdog_background_check_enabled"

    .line 3403
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_watchdog_background_check_timeout_ms"

    .line 3404
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_watchdog_initial_ignored_ping_count"

    .line 3405
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_watchdog_max_ap_checks"

    .line 3406
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_watchdog_on"

    .line 3407
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_watchdog_ping_count"

    .line 3408
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_watchdog_ping_delay_ms"

    .line 3409
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "wifi_watchdog_ping_timeout_ms"

    .line 3410
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "install_non_market_apps"

    .line 3413
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3421
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 3422
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v3, "adb_enabled"

    .line 3426
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "bluetooth_on"

    .line 3427
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "data_roaming"

    .line 3428
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "device_provisioned"

    .line 3429
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3430
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "network_preference"

    .line 3431
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "usb_mass_storage_enabled"

    .line 3432
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "wifi_mobile_data_transition_wakelock_timeout_ms"

    .line 3433
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    .line 3434
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "airplane_mode_on"

    .line 3437
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "airplane_mode_radios"

    .line 3438
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "airplane_mode_toggleable_radios"

    .line 3439
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "auto_time"

    .line 3440
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "auto_time_zone"

    .line 3441
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "car_dock_sound"

    .line 3442
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "car_undock_sound"

    .line 3443
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "desk_dock_sound"

    .line 3444
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v4, "desk_undock_sound"

    .line 3445
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v5, "dock_sounds_enabled"

    .line 3446
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "lock_sound"

    .line 3447
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "unlock_sound"

    .line 3448
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v8, "low_battery_sound"

    .line 3449
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v9, "power_sounds_enabled"

    .line 3450
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "stay_on_while_plugged_in"

    .line 3451
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "wifi_sleep_policy"

    .line 3452
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "mode_ringer"

    .line 3453
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "window_animation_scale"

    .line 3454
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "transition_animation_scale"

    .line 3455
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "animator_duration_scale"

    .line 3456
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "fancy_ime_animations"

    .line 3457
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "compatibility_mode"

    .line 3458
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "emergency_tone"

    .line 3459
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "call_auto_retry"

    .line 3460
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "debug_app"

    .line 3461
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "wait_for_debugger"

    .line 3462
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "always_finish_activities"

    .line 3463
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "tzinfo_content_url"

    .line 3464
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "tzinfo_metadata_url"

    .line 3465
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "selinux_content_url"

    .line 3466
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "selinux_metadata_url"

    .line 3467
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "sms_short_codes_content_url"

    .line 3468
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "sms_short_codes_metadata_url"

    .line 3469
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "cert_pin_content_url"

    .line 3470
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "cert_pin_metadata_url"

    .line 3471
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "nfc"

    .line 3472
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "cell"

    .line 3473
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "wifi"

    .line 3474
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "bluetooth"

    .line 3475
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "wimax"

    .line 3476
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v10, "show_processes"

    .line 3477
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v11, "volume_voice"

    const-string/jumbo v12, "volume_system"

    const-string/jumbo v13, "volume_ring"

    const-string/jumbo v14, "volume_music"

    const-string/jumbo v15, "volume_alarm"

    const-string/jumbo v16, "volume_notification"

    const-string/jumbo v17, "volume_bluetooth_sco"

    .line 4775
    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    const-string/jumbo v10, "volume_voice"

    const-string/jumbo v11, "volume_system"

    const-string/jumbo v12, "volume_ring"

    const-string/jumbo v13, "volume_music"

    const-string/jumbo v14, "volume_alarm"

    const-string/jumbo v15, "volume_notification"

    const-string/jumbo v16, "volume_bluetooth_sco"

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    const-string/jumbo v20, "volume_a11y"

    const-string/jumbo v21, "volume_assistant"

    .line 4787
    filled-new-array/range {v10 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    const-string/jumbo v0, "ringtone"

    .line 4826
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    sput-object v10, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    const-string/jumbo v10, "ringtone_cache"

    .line 4832
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    sput-object v10, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    const-string v10, "notification_sound"

    .line 4849
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    sput-object v11, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const-string v11, "notification_sound_cache"

    .line 4855
    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    sput-object v11, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    const-string v11, "alarm_alert"

    .line 4872
    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sput-object v12, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    const-string v12, "alarm_alert_cache"

    .line 4878
    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sput-object v12, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    .line 5355
    sput-object v12, Landroid/provider/Settings$System;->LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

    .line 5364
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    sput-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v13, "end_button_behavior"

    .line 5366
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "wifi_use_static_ip"

    .line 5367
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "wifi_static_ip"

    .line 5368
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "wifi_static_gateway"

    .line 5369
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "wifi_static_netmask"

    .line 5370
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "wifi_static_dns1"

    .line 5371
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "wifi_static_dns2"

    .line 5372
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v15, "bluetooth_discoverability"

    .line 5373
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v15, "bluetooth_discoverability_timeout"

    .line 5374
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v15, "next_alarm_formatted"

    .line 5375
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v15, "font_scale"

    .line 5376
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v15

    const-string/jumbo v15, "system_locales"

    .line 5377
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v15, "dim_screen"

    .line 5378
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "screen_off_timeout"

    .line 5379
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "screen_brightness"

    .line 5380
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "screen_brightness_float"

    .line 5381
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "screen_brightness_for_vr"

    .line 5382
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "screen_brightness_for_vr_float"

    .line 5383
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "screen_brightness_mode"

    .line 5384
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v15, "mode_ringer_streams_affected"

    .line 5385
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v15, "mute_streams_affected"

    .line 5386
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "vibrate_on"

    .line 5387
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "volume_ring"

    .line 5388
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "volume_system"

    .line 5389
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "volume_voice"

    .line 5390
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "volume_music"

    .line 5391
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "volume_alarm"

    .line 5392
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "volume_notification"

    .line 5393
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "volume_bluetooth_sco"

    .line 5394
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "volume_assistant"

    .line 5395
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5396
    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5397
    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5398
    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v15, "auto_replace"

    .line 5399
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v15, "auto_caps"

    .line 5400
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v15, "auto_punctuate"

    .line 5401
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "show_password"

    .line 5402
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v11

    const-string v11, "SHOW_GTALK_SERVICE_STATUS"

    .line 5403
    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v11, "wallpaper_activity"

    .line 5404
    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v11, "time_12_24"

    .line 5405
    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v10

    const-string v10, "date_format"

    .line 5406
    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v0

    const-string/jumbo v0, "setup_wizard_has_run"

    .line 5407
    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "accelerometer_rotation"

    .line 5408
    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "user_rotation"

    .line 5409
    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "dtmf_tone"

    .line 5410
    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "sound_effects_enabled"

    .line 5411
    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v11

    const-string v11, "haptic_feedback_enabled"

    .line 5412
    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v15

    const-string/jumbo v15, "show_web_suggestions"

    .line 5413
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v15, "vibrate_when_ringing"

    .line 5414
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5423
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    sput-object v12, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    .line 5425
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5426
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v13, "advanced_settings"

    .line 5427
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v13, "screen_auto_brightness_adj"

    .line 5428
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v13, "vibrate_input_devices"

    .line 5429
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v13, "volume_master"

    .line 5430
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v13, "master_mono"

    .line 5431
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v13, "master_balance"

    .line 5432
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v13, "notifications_use_ring_volume"

    .line 5433
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v13, "vibrate_in_silent"

    .line 5434
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v13, "media_button_receiver"

    .line 5435
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v13, "hide_rotation_lock_toggle_for_accessibility"

    .line 5436
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v13, "dtmf_tone_type"

    .line 5437
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v13, "hearing_aid"

    .line 5438
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v13, "tty_mode"

    .line 5439
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v13, "notification_light_pulse"

    .line 5440
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v13, "pointer_location"

    .line 5441
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v13, "show_touches"

    .line 5442
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v13, "window_orientation_listener_log"

    .line 5443
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5444
    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5445
    invoke-interface {v12, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v5, "lockscreen_sounds_enabled"

    .line 5446
    invoke-interface {v12, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v5, "lockscreen.disabled"

    .line 5447
    invoke-interface {v12, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5448
    invoke-interface {v12, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5449
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5450
    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5451
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5452
    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5453
    invoke-interface {v12, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5454
    invoke-interface {v12, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sip_receive_calls"

    .line 5455
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "sip_call_options"

    .line 5456
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SIP_ALWAYS"

    .line 5457
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SIP_ADDRESS_ONLY"

    .line 5458
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SIP_ASK_ME_EACH_TIME"

    .line 5459
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "pointer_speed"

    .line 5460
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "lock_to_app_enabled"

    .line 5461
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "egg_mode"

    .line 5462
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "status_bar_show_battery_percent"

    .line 5463
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "display_color_mode"

    .line 5464
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "display_color_mode_vendor_hint"

    .line 5465
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5473
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    .line 5475
    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5476
    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5477
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v21

    .line 5478
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v20

    .line 5479
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5495
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/provider/Settings$System;->CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;

    const-string/jumbo v4, "sync_parent_sounds"

    move-object/from16 v5, v19

    .line 5497
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v18

    .line 5498
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    .line 5499
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5511
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v4, "auto_replace"

    .line 5513
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v4, "auto_caps"

    .line 5514
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v4, "auto_punctuate"

    .line 5515
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5516
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5517
    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v16

    .line 5518
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5519
    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5520
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5521
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "accelerometer_rotation"

    .line 5522
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3353
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static adjustConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;IZ)V
    .locals 3

    const-string v0, "font_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3960
    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 3962
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 3963
    iput v1, p1, Landroid/content/res/Configuration;->fontScale:F

    :cond_0
    const-string v0, "font_weight_adjustment"

    const/4 v1, 0x0

    .line 3965
    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const-string/jumbo v0, "system_locales"

    .line 3969
    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3971
    invoke-static {v2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 3982
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    .line 3981
    invoke-static {p0, v0, p1, p2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static canWrite(Landroid/content/Context;)Z
    .locals 3

    .line 5784
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 5785
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 5784
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->isCallingPackageAllowedToWriteSettings(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static clearConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    .line 3993
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 3994
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3995
    invoke-virtual {p0}, Landroid/content/res/Configuration;->clearLocales()V

    :cond_0
    const v0, 0x7fffffff

    .line 3997
    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    return-void
.end method

.method public static clearProviderForTest()V
    .locals 1

    .line 3498
    sget-object v0, Landroid/provider/Settings$System;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0}, Landroid/provider/Settings$ContentProviderHolder;->clearProviderForTest()V

    .line 3499
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->clearGenerationTrackerForTest()V

    return-void
.end method

.method public static getCloneFromParentOnValueSettings(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5504
    sget-object v0, Landroid/provider/Settings$System;->CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static getCloneToManagedProfileSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5484
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .locals 2

    .line 3953
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->adjustConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;IZ)V

    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 3904
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result p0

    return p0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1

    .line 3870
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 0

    .line 3876
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3878
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return p2
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 3910
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3915
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3917
    :catch_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3912
    :cond_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 3669
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_SHARED_DISPLAY_ENABLED:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "screen_brightness"

    .line 3670
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3671
    invoke-static {}, Landroid/provider/Settings$System;->isPrimaryId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3673
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result p1

    const-string/jumbo v0, "screen_brightness_1"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 3677
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    .line 3627
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_SHARED_DISPLAY_ENABLED:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "screen_brightness"

    .line 3628
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3629
    invoke-static {}, Landroid/provider/Settings$System;->isPrimaryId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3631
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result p1

    const-string/jumbo v0, "screen_brightness_1"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0

    .line 3635
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 3684
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 3686
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3688
    :catch_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 0

    .line 3641
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3643
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return p2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 3818
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 1

    .line 3783
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 3824
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 3826
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 3828
    :catch_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 0

    .line 3789
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3792
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide p2
.end method

.method public static getMovedToGlobalSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3482
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3483
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getMovedToSecureSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3488
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getNonLegacyMovedKeys(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3493
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static getPackageName(I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "activity"

    .line 3695
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3696
    invoke-static {v1}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    .line 3697
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 3698
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3699
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3700
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3702
    :try_start_1
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p0, :cond_0

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 3703
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object p0, v2, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 3707
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 3505
    const-class v0, Landroid/provider/Settings$System;

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings;->access$000(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static getShowGTalkServiceStatus(Landroid/content/ContentResolver;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4034
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z

    move-result p0

    return p0
.end method

.method public static getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SHOW_GTALK_SERVICE_STATUS"

    const/4 v1, 0x0

    .line 4044
    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3516
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 3523
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Setting "

    const-string v2, "Settings"

    if-eqz v0, :cond_0

    .line 3524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, returning read-only value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3528
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3534
    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3529
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.System to android.provider.Settings.Global, returning read-only value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 3599
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Setting "

    const-string v2, "Settings"

    if-eqz v0, :cond_0

    .line 3600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, returning Secure URI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 3604
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3609
    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 3605
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.System to android.provider.Settings.Global, returning read-only global URI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static hasInterestingConfigurationChanges(I)Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isPrimaryId()Z
    .locals 2

    .line 3716
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3717
    invoke-static {v0}, Landroid/provider/Settings$System;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3718
    invoke-static {v0, v1}, Landroid/provider/CompatScreenProvider;->getScreenId(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z
    .locals 1

    .line 4009
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    move-result p0

    return p0
.end method

.method public static putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z
    .locals 2

    .line 4015
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const-string v1, "font_scale"

    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4017
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "system_locales"

    .line 4016
    invoke-static {p0, v0, p1, p2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1

    .line 3935
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result p0

    return p0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 0

    .line 3941
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 4

    const-string/jumbo v0, "screen_brightness"

    .line 3736
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.xiaopeng.systemui"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3737
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3738
    invoke-static {v0}, Landroid/provider/Settings$System;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 3739
    invoke-static {v0, v2}, Landroid/provider/CompatScreenProvider;->getScreenId(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v3

    if-eqz v0, :cond_0

    .line 3740
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3741
    invoke-static {}, Landroid/provider/Settings$System;->isPrimaryId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3743
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "screen_brightness_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_0
    const-string/jumbo v0, "screen_brightness_mode"

    .line 3747
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3748
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3749
    invoke-static {v0}, Landroid/provider/Settings$System;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 3750
    invoke-static {v0, v2}, Landroid/provider/CompatScreenProvider;->getScreenId(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    if-eqz v0, :cond_1

    .line 3751
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3752
    invoke-static {}, Landroid/provider/Settings$System;->isPrimaryId()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3754
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "screen_brightness_mode_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0

    .line 3758
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 0

    .line 3765
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1

    .line 3846
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result p0

    return p0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 0

    .line 3852
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 3545
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3564
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 3572
    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method private static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 8

    .line 3578
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, "Setting "

    const-string v4, "Settings"

    if-eqz v0, :cond_0

    .line 3579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, value is unchanged."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3583
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3588
    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result v0

    return v0

    .line 3584
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has moved from android.provider.Settings.System to android.provider.Settings.Global, value is unchanged."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static setShowGTalkServiceStatus(Landroid/content/ContentResolver;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4050
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V

    return-void
.end method

.method public static setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SHOW_GTALK_SERVICE_STATUS"

    .line 4060
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
