.class public Landroid/content/Intent;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$FilterComparison;,
        Landroid/content/Intent$FillInFlags;,
        Landroid/content/Intent$CommandOptionHandler;,
        Landroid/content/Intent$CopyMode;,
        Landroid/content/Intent$UriFlags;,
        Landroid/content/Intent$MutableFlags;,
        Landroid/content/Intent$Flags;,
        Landroid/content/Intent$AccessUriMode;,
        Landroid/content/Intent$GrantUriMode;,
        Landroid/content/Intent$ShortcutIconResource;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVITY_RECOGNIZER:Ljava/lang/String; = "android.intent.action.ACTIVITY_RECOGNIZER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String; = "android.intent.action.ADVANCED_SETTINGS"

.field public static final ACTION_AIRPLANE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field public static final ACTION_ALARM_CHANGED:Ljava/lang/String; = "android.intent.action.ALARM_CHANGED"

.field public static final ACTION_ALL_APPS:Ljava/lang/String; = "android.intent.action.ALL_APPS"

.field public static final ACTION_ANSWER:Ljava/lang/String; = "android.intent.action.ANSWER"

.field public static final ACTION_APPLICATION_PREFERENCES:Ljava/lang/String; = "android.intent.action.APPLICATION_PREFERENCES"

.field public static final ACTION_APPLICATION_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

.field public static final ACTION_APP_ERROR:Ljava/lang/String; = "android.intent.action.APP_ERROR"

.field public static final ACTION_ASSIST:Ljava/lang/String; = "android.intent.action.ASSIST"

.field public static final ACTION_ATTACH_DATA:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final ACTION_AUTO_REVOKE_PERMISSIONS:Ljava/lang/String; = "android.intent.action.AUTO_REVOKE_PERMISSIONS"

.field public static final ACTION_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_CHANGED"

.field public static final ACTION_BATTERY_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_LEVEL_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_BATTERY_LOW:Ljava/lang/String; = "android.intent.action.BATTERY_LOW"

.field public static final ACTION_BATTERY_OKAY:Ljava/lang/String; = "android.intent.action.BATTERY_OKAY"

.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_BUG_REPORT:Ljava/lang/String; = "android.intent.action.BUG_REPORT"

.field public static final ACTION_CALL:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final ACTION_CALL_BUTTON:Ljava/lang/String; = "android.intent.action.CALL_BUTTON"

.field public static final ACTION_CALL_EMERGENCY:Ljava/lang/String; = "android.intent.action.CALL_EMERGENCY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_CALL_PRIVILEGED:Ljava/lang/String; = "android.intent.action.CALL_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_CAMERA_BUTTON:Ljava/lang/String; = "android.intent.action.CAMERA_BUTTON"

.field public static final ACTION_CANCEL_ENABLE_ROLLBACK:Ljava/lang/String; = "android.intent.action.CANCEL_ENABLE_ROLLBACK"

.field public static final ACTION_CARRIER_SETUP:Ljava/lang/String; = "android.intent.action.CARRIER_SETUP"

.field public static final ACTION_CHOOSER:Ljava/lang/String; = "android.intent.action.CHOOSER"

.field public static final ACTION_CLOSE_SYSTEM_DIALOGS:Ljava/lang/String; = "android.intent.action.CLOSE_SYSTEM_DIALOGS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final ACTION_CREATE_DOCUMENT:Ljava/lang/String; = "android.intent.action.CREATE_DOCUMENT"

.field public static final ACTION_CREATE_REMINDER:Ljava/lang/String; = "android.intent.action.CREATE_REMINDER"

.field public static final ACTION_CREATE_SHORTCUT:Ljava/lang/String; = "android.intent.action.CREATE_SHORTCUT"

.field public static final ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field public static final ACTION_DEFAULT:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_DEFINE:Ljava/lang/String; = "android.intent.action.DEFINE"

.field public static final ACTION_DELETE:Ljava/lang/String; = "android.intent.action.DELETE"

.field public static final ACTION_DEVICE_CUSTOMIZATION_READY:Ljava/lang/String; = "android.intent.action.DEVICE_CUSTOMIZATION_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_DEVICE_INITIALIZATION_WIZARD:Ljava/lang/String; = "android.intent.action.DEVICE_INITIALIZATION_WIZARD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEVICE_LOCKED_CHANGED:Ljava/lang/String; = "android.intent.action.DEVICE_LOCKED_CHANGED"

.field public static final ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEVICE_STORAGE_LOW:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_LOW"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_NOT_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEVICE_STORAGE_OK:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_OK"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DIAL:Ljava/lang/String; = "android.intent.action.DIAL"

.field public static final ACTION_DIAL_EMERGENCY:Ljava/lang/String; = "android.intent.action.DIAL_EMERGENCY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_DISMISS_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

.field public static final ACTION_DISTRACTING_PACKAGES_CHANGED:Ljava/lang/String; = "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

.field public static final ACTION_DOCK_ACTIVE:Ljava/lang/String; = "android.intent.action.DOCK_ACTIVE"

.field public static final ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field public static final ACTION_DOCK_IDLE:Ljava/lang/String; = "android.intent.action.DOCK_IDLE"

.field public static final ACTION_DOMAINS_NEED_VERIFICATION:Ljava/lang/String; = "android.intent.action.DOMAINS_NEED_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_DREAMING_STARTED:Ljava/lang/String; = "android.intent.action.DREAMING_STARTED"

.field public static final ACTION_DREAMING_STOPPED:Ljava/lang/String; = "android.intent.action.DREAMING_STOPPED"

.field public static final ACTION_DYNAMIC_SENSOR_CHANGED:Ljava/lang/String; = "android.intent.action.DYNAMIC_SENSOR_CHANGED"

.field public static final ACTION_EDIT:Ljava/lang/String; = "android.intent.action.EDIT"

.field public static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final ACTION_FACTORY_RESET:Ljava/lang/String; = "android.intent.action.FACTORY_RESET"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_FACTORY_TEST:Ljava/lang/String; = "android.intent.action.FACTORY_TEST"

.field public static final ACTION_GET_CONTENT:Ljava/lang/String; = "android.intent.action.GET_CONTENT"

.field public static final ACTION_GET_RESTRICTION_ENTRIES:Ljava/lang/String; = "android.intent.action.GET_RESTRICTION_ENTRIES"

.field public static final ACTION_GLOBAL_BUTTON:Ljava/lang/String; = "android.intent.action.GLOBAL_BUTTON"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_GTALK_SERVICE_CONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_CONNECTED"

.field public static final ACTION_GTALK_SERVICE_DISCONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_DISCONNECTED"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_IDLE_MAINTENANCE_END:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

.field public static final ACTION_IDLE_MAINTENANCE_START:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

.field public static final ACTION_INCIDENT_REPORT_READY:Ljava/lang/String; = "android.intent.action.INCIDENT_REPORT_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_INPUT_METHOD_CHANGED:Ljava/lang/String; = "android.intent.action.INPUT_METHOD_CHANGED"

.field public static final ACTION_INSERT:Ljava/lang/String; = "android.intent.action.INSERT"

.field public static final ACTION_INSERT_OR_EDIT:Ljava/lang/String; = "android.intent.action.INSERT_OR_EDIT"

.field public static final ACTION_INSTALL_FAILURE:Ljava/lang/String; = "android.intent.action.INSTALL_FAILURE"

.field public static final ACTION_INSTALL_INSTANT_APP_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_INSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_PACKAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_INSTANT_APP_RESOLVER_SETTINGS:Ljava/lang/String; = "android.intent.action.INSTANT_APP_RESOLVER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_INTENT_FILTER_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_LOAD_DATA:Ljava/lang/String; = "android.intent.action.LOAD_DATA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final ACTION_LOCKED_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.LOCKED_BOOT_COMPLETED"

.field public static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final ACTION_MANAGED_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_AVAILABLE"

.field public static final ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final ACTION_MANAGED_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

.field public static final ACTION_MANAGED_PROFILE_UNLOCKED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNLOCKED"

.field public static final ACTION_MANAGE_APP_PERMISSION:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_MANAGE_APP_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_MANAGE_DEFAULT_APP:Ljava/lang/String; = "android.intent.action.MANAGE_DEFAULT_APP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_MANAGE_NETWORK_USAGE:Ljava/lang/String; = "android.intent.action.MANAGE_NETWORK_USAGE"

.field public static final ACTION_MANAGE_PACKAGE_STORAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PACKAGE_STORAGE"

.field public static final ACTION_MANAGE_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_MANAGE_PERMISSION_APPS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSION_APPS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_MANAGE_SPECIAL_APP_ACCESSES:Ljava/lang/String; = "android.intent.action.MANAGE_SPECIAL_APP_ACCESSES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_MANAGE_UNUSED_APPS:Ljava/lang/String; = "android.intent.action.MANAGE_UNUSED_APPS"

.field public static final ACTION_MASTER_CLEAR:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_MASTER_CLEAR_NOTIFICATION:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR_NOTIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_MEDIA_BAD_REMOVAL:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field public static final ACTION_MEDIA_BUTTON:Ljava/lang/String; = "android.intent.action.MEDIA_BUTTON"

.field public static final ACTION_MEDIA_CHECKING:Ljava/lang/String; = "android.intent.action.MEDIA_CHECKING"

.field public static final ACTION_MEDIA_EJECT:Ljava/lang/String; = "android.intent.action.MEDIA_EJECT"

.field public static final ACTION_MEDIA_MOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_MOUNTED"

.field public static final ACTION_MEDIA_NOFS:Ljava/lang/String; = "android.intent.action.MEDIA_NOFS"

.field public static final ACTION_MEDIA_REMOVED:Ljava/lang/String; = "android.intent.action.MEDIA_REMOVED"

.field public static final ACTION_MEDIA_RESOURCE_GRANTED:Ljava/lang/String; = "android.intent.action.MEDIA_RESOURCE_GRANTED"

.field public static final ACTION_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field public static final ACTION_MEDIA_SCANNER_SCAN_FILE:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_STARTED"

.field public static final ACTION_MEDIA_SHARED:Ljava/lang/String; = "android.intent.action.MEDIA_SHARED"

.field public static final ACTION_MEDIA_UNMOUNTABLE:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTABLE"

.field public static final ACTION_MEDIA_UNMOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTED"

.field public static final ACTION_MEDIA_UNSHARED:Ljava/lang/String; = "android.intent.action.MEDIA_UNSHARED"

.field public static final ACTION_MY_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_REPLACED"

.field public static final ACTION_MY_PACKAGE_SUSPENDED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_SUSPENDED"

.field public static final ACTION_MY_PACKAGE_UNSUSPENDED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_UNSUSPENDED"

.field public static final ACTION_NEW_OUTGOING_CALL:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_OPEN_DOCUMENT:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT"

.field public static final ACTION_OPEN_DOCUMENT_TREE:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT_TREE"

.field public static final ACTION_OVERLAY_CHANGED:Ljava/lang/String; = "android.intent.action.OVERLAY_CHANGED"

.field public static final ACTION_PACKAGES_SUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_SUSPENDED"

.field public static final ACTION_PACKAGES_SUSPENSION_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

.field public static final ACTION_PACKAGES_UNSUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_UNSUSPENDED"

.field public static final ACTION_PACKAGE_ADDED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGE_CHANGED"

.field public static final ACTION_PACKAGE_DATA_CLEARED:Ljava/lang/String; = "android.intent.action.PACKAGE_DATA_CLEARED"

.field public static final ACTION_PACKAGE_ENABLE_ROLLBACK:Ljava/lang/String; = "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

.field public static final ACTION_PACKAGE_FIRST_LAUNCH:Ljava/lang/String; = "android.intent.action.PACKAGE_FIRST_LAUNCH"

.field public static final ACTION_PACKAGE_FULLY_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_FULLY_REMOVED"

.field public static final ACTION_PACKAGE_INSTALL:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PACKAGE_NEEDS_INTEGRITY_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_PACKAGE_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

.field public static final ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final ACTION_PACKAGE_REMOVED_INTERNAL:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED_INTERNAL"

.field public static final ACTION_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final ACTION_PACKAGE_RESTARTED:Ljava/lang/String; = "android.intent.action.PACKAGE_RESTARTED"

.field public static final ACTION_PACKAGE_UNSUSPENDED_MANUALLY:Ljava/lang/String; = "android.intent.action.PACKAGE_UNSUSPENDED_MANUALLY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_PACKAGE_VERIFIED:Ljava/lang/String; = "android.intent.action.PACKAGE_VERIFIED"

.field public static final ACTION_PASTE:Ljava/lang/String; = "android.intent.action.PASTE"

.field public static final ACTION_PENDING_INCIDENT_REPORTS_CHANGED:Ljava/lang/String; = "android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_PICK:Ljava/lang/String; = "android.intent.action.PICK"

.field public static final ACTION_PICK_ACTIVITY:Ljava/lang/String; = "android.intent.action.PICK_ACTIVITY"

.field public static final ACTION_POWER_CONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field public static final ACTION_POWER_DISCONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field public static final ACTION_POWER_USAGE_SUMMARY:Ljava/lang/String; = "android.intent.action.POWER_USAGE_SUMMARY"

.field public static final ACTION_PREFERRED_ACTIVITY_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

.field public static final ACTION_PRE_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.PRE_BOOT_COMPLETED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_PROCESS_TEXT:Ljava/lang/String; = "android.intent.action.PROCESS_TEXT"

.field public static final ACTION_PROFILE_ACCESSIBLE:Ljava/lang/String; = "android.intent.action.PROFILE_ACCESSIBLE"

.field public static final ACTION_PROFILE_INACCESSIBLE:Ljava/lang/String; = "android.intent.action.PROFILE_INACCESSIBLE"

.field public static final ACTION_PROVIDER_CHANGED:Ljava/lang/String; = "android.intent.action.PROVIDER_CHANGED"

.field public static final ACTION_QUERY_PACKAGE_RESTART:Ljava/lang/String; = "android.intent.action.QUERY_PACKAGE_RESTART"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_QUICK_CLOCK:Ljava/lang/String; = "android.intent.action.QUICK_CLOCK"

.field public static final ACTION_QUICK_VIEW:Ljava/lang/String; = "android.intent.action.QUICK_VIEW"

.field public static final ACTION_REBOOT:Ljava/lang/String; = "android.intent.action.REBOOT"

.field public static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final ACTION_REQUEST_SHUTDOWN:Ljava/lang/String; = "com.android.internal.intent.action.REQUEST_SHUTDOWN"

.field public static final ACTION_RESOLVE_INSTANT_APP_PACKAGE:Ljava/lang/String; = "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_REVIEW_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "android.intent.action.REVIEW_ACCESSIBILITY_SERVICES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_REVIEW_ONGOING_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.REVIEW_ONGOING_PERMISSION_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_REVIEW_PERMISSIONS:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_REVIEW_PERMISSION_HISTORY:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSION_HISTORY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_REVIEW_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSION_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_ROLLBACK_COMMITTED:Ljava/lang/String; = "android.intent.action.ROLLBACK_COMMITTED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_RUN:Ljava/lang/String; = "android.intent.action.RUN"

.field public static final ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field public static final ACTION_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field public static final ACTION_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field public static final ACTION_SEARCH_LONG_PRESS:Ljava/lang/String; = "android.intent.action.SEARCH_LONG_PRESS"

.field public static final ACTION_SEND:Ljava/lang/String; = "android.intent.action.SEND"

.field public static final ACTION_SENDTO:Ljava/lang/String; = "android.intent.action.SENDTO"

.field public static final ACTION_SEND_MULTIPLE:Ljava/lang/String; = "android.intent.action.SEND_MULTIPLE"

.field public static final ACTION_SERVICE_STATE:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SETTING_RESTORED:Ljava/lang/String; = "android.os.action.SETTING_RESTORED"

.field public static final ACTION_SET_WALLPAPER:Ljava/lang/String; = "android.intent.action.SET_WALLPAPER"

.field public static final ACTION_SHOW_APP_INFO:Ljava/lang/String; = "android.intent.action.SHOW_APP_INFO"

.field public static final ACTION_SHOW_BRIGHTNESS_DIALOG:Ljava/lang/String; = "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

.field public static final ACTION_SHOW_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

.field public static final ACTION_SHOW_SUSPENDED_APP_DETAILS:Ljava/lang/String; = "android.intent.action.SHOW_SUSPENDED_APP_DETAILS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SPLIT_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.SPLIT_CONFIGURATION_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SYNC:Ljava/lang/String; = "android.intent.action.SYNC"

.field public static final ACTION_SYSTEM_TUTORIAL:Ljava/lang/String; = "android.intent.action.SYSTEM_TUTORIAL"

.field public static final ACTION_THERMAL_EVENT:Ljava/lang/String; = "android.intent.action.THERMAL_EVENT"

.field public static final ACTION_TIMEZONE_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"

.field public static final ACTION_TIME_CHANGED:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field public static final ACTION_TIME_TICK:Ljava/lang/String; = "android.intent.action.TIME_TICK"

.field public static final ACTION_TRANSLATE:Ljava/lang/String; = "android.intent.action.TRANSLATE"

.field public static final ACTION_UID_REMOVED:Ljava/lang/String; = "android.intent.action.UID_REMOVED"

.field public static final ACTION_UMS_CONNECTED:Ljava/lang/String; = "android.intent.action.UMS_CONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UMS_DISCONNECTED:Ljava/lang/String; = "android.intent.action.UMS_DISCONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UNINSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.UNINSTALL_PACKAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UPGRADE_SETUP:Ljava/lang/String; = "android.intent.action.UPGRADE_SETUP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_USER_ADDED:Ljava/lang/String; = "android.intent.action.USER_ADDED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_USER_BACKGROUND:Ljava/lang/String; = "android.intent.action.USER_BACKGROUND"

.field public static final ACTION_USER_FOREGROUND:Ljava/lang/String; = "android.intent.action.USER_FOREGROUND"

.field public static final ACTION_USER_INFO_CHANGED:Ljava/lang/String; = "android.intent.action.USER_INFO_CHANGED"

.field public static final ACTION_USER_INITIALIZE:Ljava/lang/String; = "android.intent.action.USER_INITIALIZE"

.field public static final ACTION_USER_PRESENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field public static final ACTION_USER_REMOVED:Ljava/lang/String; = "android.intent.action.USER_REMOVED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_USER_STARTED:Ljava/lang/String; = "android.intent.action.USER_STARTED"

.field public static final ACTION_USER_STARTING:Ljava/lang/String; = "android.intent.action.USER_STARTING"

.field public static final ACTION_USER_STOPPED:Ljava/lang/String; = "android.intent.action.USER_STOPPED"

.field public static final ACTION_USER_STOPPING:Ljava/lang/String; = "android.intent.action.USER_STOPPING"

.field public static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field public static final ACTION_USER_UNLOCKED:Ljava/lang/String; = "android.intent.action.USER_UNLOCKED"

.field public static final ACTION_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_VIEW_LOCUS:Ljava/lang/String; = "android.intent.action.VIEW_LOCUS"

.field public static final ACTION_VIEW_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.VIEW_PERMISSION_USAGE"

.field public static final ACTION_VIEW_PERMISSION_USAGE_FOR_PERIOD:Ljava/lang/String; = "android.intent.action.VIEW_PERMISSION_USAGE_FOR_PERIOD"

.field public static final ACTION_VOICE_ASSIST:Ljava/lang/String; = "android.intent.action.VOICE_ASSIST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_VOICE_COMMAND:Ljava/lang/String; = "android.intent.action.VOICE_COMMAND"

.field public static final ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.WALLPAPER_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_WEB_SEARCH:Ljava/lang/String; = "android.intent.action.WEB_SEARCH"

.field private static final ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_DATA:Ljava/lang/String; = "data"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_IDENTIFIER:Ljava/lang/String; = "ident"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final CATEGORY_ACCESSIBILITY_SHORTCUT_TARGET:Ljava/lang/String; = "android.intent.category.ACCESSIBILITY_SHORTCUT_TARGET"

.field public static final CATEGORY_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.ALTERNATIVE"

.field public static final CATEGORY_APP_BROWSER:Ljava/lang/String; = "android.intent.category.APP_BROWSER"

.field public static final CATEGORY_APP_CALCULATOR:Ljava/lang/String; = "android.intent.category.APP_CALCULATOR"

.field public static final CATEGORY_APP_CALENDAR:Ljava/lang/String; = "android.intent.category.APP_CALENDAR"

.field public static final CATEGORY_APP_CONTACTS:Ljava/lang/String; = "android.intent.category.APP_CONTACTS"

.field public static final CATEGORY_APP_EMAIL:Ljava/lang/String; = "android.intent.category.APP_EMAIL"

.field public static final CATEGORY_APP_FILES:Ljava/lang/String; = "android.intent.category.APP_FILES"

.field public static final CATEGORY_APP_GALLERY:Ljava/lang/String; = "android.intent.category.APP_GALLERY"

.field public static final CATEGORY_APP_MAPS:Ljava/lang/String; = "android.intent.category.APP_MAPS"

.field public static final CATEGORY_APP_MARKET:Ljava/lang/String; = "android.intent.category.APP_MARKET"

.field public static final CATEGORY_APP_MESSAGING:Ljava/lang/String; = "android.intent.category.APP_MESSAGING"

.field public static final CATEGORY_APP_MUSIC:Ljava/lang/String; = "android.intent.category.APP_MUSIC"

.field public static final CATEGORY_BROWSABLE:Ljava/lang/String; = "android.intent.category.BROWSABLE"

.field public static final CATEGORY_CAR_DOCK:Ljava/lang/String; = "android.intent.category.CAR_DOCK"

.field public static final CATEGORY_CAR_LAUNCHER:Ljava/lang/String; = "android.intent.category.CAR_LAUNCHER"

.field public static final CATEGORY_CAR_MODE:Ljava/lang/String; = "android.intent.category.CAR_MODE"

.field public static final CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final CATEGORY_DESK_DOCK:Ljava/lang/String; = "android.intent.category.DESK_DOCK"

.field public static final CATEGORY_DEVELOPMENT_PREFERENCE:Ljava/lang/String; = "android.intent.category.DEVELOPMENT_PREFERENCE"

.field public static final CATEGORY_EMBED:Ljava/lang/String; = "android.intent.category.EMBED"

.field public static final CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST:Ljava/lang/String; = "android.intent.category.FRAMEWORK_INSTRUMENTATION_TEST"

.field public static final CATEGORY_HE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.HE_DESK_DOCK"

.field public static final CATEGORY_HOME:Ljava/lang/String; = "android.intent.category.HOME"

.field public static final CATEGORY_HOME_MAIN:Ljava/lang/String; = "android.intent.category.HOME_MAIN"

.field public static final CATEGORY_INFO:Ljava/lang/String; = "android.intent.category.INFO"

.field public static final CATEGORY_LAUNCHER:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field public static final CATEGORY_LAUNCHER_APP:Ljava/lang/String; = "android.intent.category.LAUNCHER_APP"

.field public static final CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final CATEGORY_LEANBACK_SETTINGS:Ljava/lang/String; = "android.intent.category.LEANBACK_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CATEGORY_LE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.LE_DESK_DOCK"

.field public static final CATEGORY_MONKEY:Ljava/lang/String; = "android.intent.category.MONKEY"

.field public static final CATEGORY_OPENABLE:Ljava/lang/String; = "android.intent.category.OPENABLE"

.field public static final CATEGORY_PREFERENCE:Ljava/lang/String; = "android.intent.category.PREFERENCE"

.field public static final CATEGORY_SAMPLE_CODE:Ljava/lang/String; = "android.intent.category.SAMPLE_CODE"

.field public static final CATEGORY_SECONDARY_HOME:Ljava/lang/String; = "android.intent.category.SECONDARY_HOME"

.field public static final CATEGORY_SELECTED_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.SELECTED_ALTERNATIVE"

.field public static final CATEGORY_SETUP_WIZARD:Ljava/lang/String; = "android.intent.category.SETUP_WIZARD"

.field public static final CATEGORY_TAB:Ljava/lang/String; = "android.intent.category.TAB"

.field public static final CATEGORY_TEST:Ljava/lang/String; = "android.intent.category.TEST"

.field public static final CATEGORY_TYPED_OPENABLE:Ljava/lang/String; = "android.intent.category.TYPED_OPENABLE"

.field public static final CATEGORY_UNIT_TEST:Ljava/lang/String; = "android.intent.category.UNIT_TEST"

.field public static final CATEGORY_VOICE:Ljava/lang/String; = "android.intent.category.VOICE"

.field public static final CATEGORY_VR_HOME:Ljava/lang/String; = "android.intent.category.VR_HOME"

.field private static final COPY_MODE_ALL:I = 0x0

.field private static final COPY_MODE_FILTER:I = 0x1

.field private static final COPY_MODE_HISTORY:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ALARM_COUNT:Ljava/lang/String; = "android.intent.extra.ALARM_COUNT"

.field public static final EXTRA_ALLOW_MULTIPLE:Ljava/lang/String; = "android.intent.extra.ALLOW_MULTIPLE"

.field public static final EXTRA_ALLOW_REPLACE:Ljava/lang/String; = "android.intent.extra.ALLOW_REPLACE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_ALTERNATE_INTENTS:Ljava/lang/String; = "android.intent.extra.ALTERNATE_INTENTS"

.field public static final EXTRA_ASSIST_CONTEXT:Ljava/lang/String; = "android.intent.extra.ASSIST_CONTEXT"

.field public static final EXTRA_ASSIST_INPUT_DEVICE_ID:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

.field public static final EXTRA_ASSIST_INPUT_HINT_KEYBOARD:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

.field public static final EXTRA_ASSIST_PACKAGE:Ljava/lang/String; = "android.intent.extra.ASSIST_PACKAGE"

.field public static final EXTRA_ASSIST_UID:Ljava/lang/String; = "android.intent.extra.ASSIST_UID"

.field public static final EXTRA_ATTRIBUTION_TAGS:Ljava/lang/String; = "android.intent.extra.ATTRIBUTION_TAGS"

.field public static final EXTRA_AUTO_LAUNCH_SINGLE_CHOICE:Ljava/lang/String; = "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

.field public static final EXTRA_BCC:Ljava/lang/String; = "android.intent.extra.BCC"

.field public static final EXTRA_BUG_REPORT:Ljava/lang/String; = "android.intent.extra.BUG_REPORT"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.intent.extra.CALLING_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_CC:Ljava/lang/String; = "android.intent.extra.CC"

.field public static final EXTRA_CDMA_DEFAULT_ROAMING_INDICATOR:Ljava/lang/String; = "cdmaDefaultRoamingIndicator"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CDMA_ROAMING_INDICATOR:Ljava/lang/String; = "cdmaRoamingIndicator"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CHANGED_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.changed_component_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CHANGED_COMPONENT_NAME_LIST:Ljava/lang/String; = "android.intent.extra.changed_component_name_list"

.field public static final EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final EXTRA_CHOOSER_REFINEMENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

.field public static final EXTRA_CHOOSER_TARGETS:Ljava/lang/String; = "android.intent.extra.CHOOSER_TARGETS"

.field public static final EXTRA_CHOSEN_COMPONENT:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT"

.field public static final EXTRA_CHOSEN_COMPONENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

.field public static final EXTRA_CLIENT_INTENT:Ljava/lang/String; = "android.intent.extra.client_intent"

.field public static final EXTRA_CLIENT_LABEL:Ljava/lang/String; = "android.intent.extra.client_label"

.field public static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.COMPONENT_NAME"

.field public static final EXTRA_CONTENT_ANNOTATIONS:Ljava/lang/String; = "android.intent.extra.CONTENT_ANNOTATIONS"

.field public static final EXTRA_CONTENT_QUERY:Ljava/lang/String; = "android.intent.extra.CONTENT_QUERY"

.field public static final EXTRA_CSS_INDICATOR:Ljava/lang/String; = "cssIndicator"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "data-operator-alpha-long"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "data-operator-alpha-short"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_OPERATOR_NUMERIC:Ljava/lang/String; = "data-operator-numeric"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_RADIO_TECH:Ljava/lang/String; = "dataRadioTechnology"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_REG_STATE:Ljava/lang/String; = "dataRegState"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_REMOVED:Ljava/lang/String; = "android.intent.extra.DATA_REMOVED"

.field public static final EXTRA_DATA_ROAMING_TYPE:Ljava/lang/String; = "dataRoamingType"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DISTRACTION_RESTRICTIONS:Ljava/lang/String; = "android.intent.extra.distraction_restrictions"

.field public static final EXTRA_DOCK_STATE:Ljava/lang/String; = "android.intent.extra.DOCK_STATE"

.field public static final EXTRA_DOCK_STATE_CAR:I = 0x2

.field public static final EXTRA_DOCK_STATE_DESK:I = 0x1

.field public static final EXTRA_DOCK_STATE_HE_DESK:I = 0x4

.field public static final EXTRA_DOCK_STATE_LE_DESK:I = 0x3

.field public static final EXTRA_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final EXTRA_DONT_KILL_APP:Ljava/lang/String; = "android.intent.extra.DONT_KILL_APP"

.field public static final EXTRA_DURATION_MILLIS:Ljava/lang/String; = "android.intent.extra.DURATION_MILLIS"

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "android.intent.extra.EMAIL"

.field public static final EXTRA_EMERGENCY_ONLY:Ljava/lang/String; = "emergencyOnly"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_END_TIME:Ljava/lang/String; = "android.intent.extra.END_TIME"

.field public static final EXTRA_EXCLUDE_COMPONENTS:Ljava/lang/String; = "android.intent.extra.EXCLUDE_COMPONENTS"

.field public static final EXTRA_FORCE_FACTORY_RESET:Ljava/lang/String; = "android.intent.extra.FORCE_FACTORY_RESET"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_FORCE_MASTER_CLEAR:Ljava/lang/String; = "android.intent.extra.FORCE_MASTER_CLEAR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_FROM_STORAGE:Ljava/lang/String; = "android.intent.extra.FROM_STORAGE"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final EXTRA_INDEX:Ljava/lang/String; = "android.intent.extra.INDEX"

.field public static final EXTRA_INITIAL_INTENTS:Ljava/lang/String; = "android.intent.extra.INITIAL_INTENTS"

.field public static final EXTRA_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.INSTALLER_PACKAGE_NAME"

.field public static final EXTRA_INSTALL_RESULT:Ljava/lang/String; = "android.intent.extra.INSTALL_RESULT"

.field public static final EXTRA_INSTANT_APP_ACTION:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_ACTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_INSTANT_APP_BUNDLES:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_BUNDLES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_INSTANT_APP_EXTRAS:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_EXTRAS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_INSTANT_APP_FAILURE:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_FAILURE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_INSTANT_APP_HOSTNAME:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_HOSTNAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_INSTANT_APP_SUCCESS:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_SUCCESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_INSTANT_APP_TOKEN:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_TOKEN"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_INTENT:Ljava/lang/String; = "android.intent.extra.INTENT"

.field public static final EXTRA_IS_DATA_ROAMING_FROM_REGISTRATION:Ljava/lang/String; = "isDataRoamingFromRegistration"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_IS_USING_CARRIER_AGGREGATION:Ljava/lang/String; = "isUsingCarrierAggregation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_KEY_CONFIRM:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final EXTRA_KEY_EVENT:Ljava/lang/String; = "android.intent.extra.KEY_EVENT"

.field public static final EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.intent.extra.LOCAL_ONLY"

.field public static final EXTRA_LOCUS_ID:Ljava/lang/String; = "android.intent.extra.LOCUS_ID"

.field public static final EXTRA_LONG_VERSION_CODE:Ljava/lang/String; = "android.intent.extra.LONG_VERSION_CODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_LTE_EARFCN_RSRP_BOOST:Ljava/lang/String; = "LteEarfcnRsrpBoost"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_MANUAL:Ljava/lang/String; = "manual"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_MEDIA_RESOURCE_TYPE:Ljava/lang/String; = "android.intent.extra.MEDIA_RESOURCE_TYPE"

.field public static final EXTRA_MEDIA_RESOURCE_TYPE_AUDIO_CODEC:I = 0x1

.field public static final EXTRA_MEDIA_RESOURCE_TYPE_VIDEO_CODEC:I = 0x0

.field public static final EXTRA_MIME_TYPES:Ljava/lang/String; = "android.intent.extra.MIME_TYPES"

.field public static final EXTRA_NETWORK_ID:Ljava/lang/String; = "networkId"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NOT_UNKNOWN_SOURCE:Ljava/lang/String; = "android.intent.extra.NOT_UNKNOWN_SOURCE"

.field public static final EXTRA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "operator-alpha-long"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "operator-alpha-short"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_OPERATOR_NUMERIC:Ljava/lang/String; = "operator-numeric"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_ORIGINATING_UID:Ljava/lang/String; = "android.intent.extra.ORIGINATING_UID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_ORIGINATING_URI:Ljava/lang/String; = "android.intent.extra.ORIGINATING_URI"

.field public static final EXTRA_PACKAGES:Ljava/lang/String; = "android.intent.extra.PACKAGES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field public static final EXTRA_PERMISSION_GROUP_NAME:Ljava/lang/String; = "android.intent.extra.PERMISSION_GROUP_NAME"

.field public static final EXTRA_PERMISSION_NAME:Ljava/lang/String; = "android.intent.extra.PERMISSION_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "android.intent.extra.PHONE_NUMBER"

.field public static final EXTRA_PROCESS_TEXT:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT"

.field public static final EXTRA_PROCESS_TEXT_READONLY:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT_READONLY"

.field public static final EXTRA_QUICK_VIEW_ADVANCED:Ljava/lang/String; = "android.intent.extra.QUICK_VIEW_ADVANCED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_QUICK_VIEW_FEATURES:Ljava/lang/String; = "android.intent.extra.QUICK_VIEW_FEATURES"

.field public static final EXTRA_QUIET_MODE:Ljava/lang/String; = "android.intent.extra.QUIET_MODE"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.intent.extra.REASON"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_REBROADCAST_ON_UNLOCK:Ljava/lang/String; = "rebroadcastOnUnlock"

.field public static final EXTRA_REFERRER:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field public static final EXTRA_REFERRER_NAME:Ljava/lang/String; = "android.intent.extra.REFERRER_NAME"

.field public static final EXTRA_REMOTE_CALLBACK:Ljava/lang/String; = "android.intent.extra.REMOTE_CALLBACK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field public static final EXTRA_REMOVED_FOR_ALL_USERS:Ljava/lang/String; = "android.intent.extra.REMOVED_FOR_ALL_USERS"

.field public static final EXTRA_REPLACEMENT_EXTRAS:Ljava/lang/String; = "android.intent.extra.REPLACEMENT_EXTRAS"

.field public static final EXTRA_REPLACING:Ljava/lang/String; = "android.intent.extra.REPLACING"

.field public static final EXTRA_RESTRICTIONS_BUNDLE:Ljava/lang/String; = "android.intent.extra.restrictions_bundle"

.field public static final EXTRA_RESTRICTIONS_INTENT:Ljava/lang/String; = "android.intent.extra.restrictions_intent"

.field public static final EXTRA_RESTRICTIONS_LIST:Ljava/lang/String; = "android.intent.extra.restrictions_list"

.field public static final EXTRA_RESULT_NEEDED:Ljava/lang/String; = "android.intent.extra.RESULT_NEEDED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "android.intent.extra.RESULT_RECEIVER"

.field public static final EXTRA_RETURN_RESULT:Ljava/lang/String; = "android.intent.extra.RETURN_RESULT"

.field public static final EXTRA_ROLE_NAME:Ljava/lang/String; = "android.intent.extra.ROLE_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_SETTING_NAME:Ljava/lang/String; = "setting_name"

.field public static final EXTRA_SETTING_NEW_VALUE:Ljava/lang/String; = "new_value"

.field public static final EXTRA_SETTING_PREVIOUS_VALUE:Ljava/lang/String; = "previous_value"

.field public static final EXTRA_SETTING_RESTORED_FROM_SDK_INT:Ljava/lang/String; = "restored_from_sdk_int"

.field public static final EXTRA_SHORTCUT_ICON:Ljava/lang/String; = "android.intent.extra.shortcut.ICON"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SHORTCUT_ICON_RESOURCE:Ljava/lang/String; = "android.intent.extra.shortcut.ICON_RESOURCE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SHORTCUT_ID:Ljava/lang/String; = "android.intent.extra.shortcut.ID"

.field public static final EXTRA_SHORTCUT_INTENT:Ljava/lang/String; = "android.intent.extra.shortcut.INTENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SHORTCUT_NAME:Ljava/lang/String; = "android.intent.extra.shortcut.NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SHUTDOWN_USERSPACE_ONLY:Ljava/lang/String; = "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

.field public static final EXTRA_SIM_ACTIVATION_RESPONSE:Ljava/lang/String; = "android.intent.extra.SIM_ACTIVATION_RESPONSE"

.field public static final EXTRA_SIM_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_SIM_STATE:Ljava/lang/String; = "ss"

.field public static final EXTRA_SPLIT_NAME:Ljava/lang/String; = "android.intent.extra.SPLIT_NAME"

.field public static final EXTRA_START_TIME:Ljava/lang/String; = "android.intent.extra.START_TIME"

.field public static final EXTRA_STREAM:Ljava/lang/String; = "android.intent.extra.STREAM"

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "android.intent.extra.SUBJECT"

.field public static final EXTRA_SUSPENDED_PACKAGE_EXTRAS:Ljava/lang/String; = "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS"

.field public static final EXTRA_SYSTEM_ID:Ljava/lang/String; = "systemId"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_TASK_ID:Ljava/lang/String; = "android.intent.extra.TASK_ID"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.intent.extra.TEMPLATE"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.intent.extra.TEXT"

.field public static final EXTRA_THERMAL_STATE:Ljava/lang/String; = "android.intent.extra.THERMAL_STATE"

.field public static final EXTRA_THERMAL_STATE_EXCEEDED:I = 0x2

.field public static final EXTRA_THERMAL_STATE_NORMAL:I = 0x0

.field public static final EXTRA_THERMAL_STATE_WARNING:I = 0x1

.field public static final EXTRA_TIME:Ljava/lang/String; = "android.intent.extra.TIME"

.field public static final EXTRA_TIMEZONE:Ljava/lang/String; = "time-zone"

.field public static final EXTRA_TIME_PREF_24_HOUR_FORMAT:Ljava/lang/String; = "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

.field public static final EXTRA_TIME_PREF_VALUE_USE_12_HOUR:I = 0x0

.field public static final EXTRA_TIME_PREF_VALUE_USE_24_HOUR:I = 0x1

.field public static final EXTRA_TIME_PREF_VALUE_USE_LOCALE_DEFAULT:I = 0x2

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.intent.extra.TITLE"

.field public static final EXTRA_UID:Ljava/lang/String; = "android.intent.extra.UID"

.field public static final EXTRA_UNINSTALL_ALL_USERS:Ljava/lang/String; = "android.intent.extra.UNINSTALL_ALL_USERS"

.field public static final EXTRA_UNKNOWN_INSTANT_APP:Ljava/lang/String; = "android.intent.extra.UNKNOWN_INSTANT_APP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_USER:Ljava/lang/String; = "android.intent.extra.USER"

.field public static final EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "android.intent.extra.USER_ID"

.field public static final EXTRA_USER_INITIATED:Ljava/lang/String; = "android.intent.extra.USER_INITIATED"

.field public static final EXTRA_USER_REQUESTED_SHUTDOWN:Ljava/lang/String; = "android.intent.extra.USER_REQUESTED_SHUTDOWN"

.field public static final EXTRA_VERIFICATION_BUNDLE:Ljava/lang/String; = "android.intent.extra.VERIFICATION_BUNDLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_VERSION_CODE:Ljava/lang/String; = "android.intent.extra.VERSION_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_VISIBILITY_ALLOW_LIST:Ljava/lang/String; = "android.intent.extra.VISIBILITY_ALLOW_LIST"

.field public static final EXTRA_VOICE_RADIO_TECH:Ljava/lang/String; = "radioTechnology"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_VOICE_REG_STATE:Ljava/lang/String; = "voiceRegState"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_VOICE_ROAMING_TYPE:Ljava/lang/String; = "voiceRoamingType"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_WIPE_ESIMS:Ljava/lang/String; = "com.android.internal.intent.extra.WIPE_ESIMS"

.field public static final EXTRA_WIPE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.intent.extra.WIPE_EXTERNAL_STORAGE"

.field public static final FILL_IN_ACTION:I = 0x1

.field public static final FILL_IN_CATEGORIES:I = 0x4

.field public static final FILL_IN_CLIP_DATA:I = 0x80

.field public static final FILL_IN_COMPONENT:I = 0x8

.field public static final FILL_IN_DATA:I = 0x2

.field public static final FILL_IN_IDENTIFIER:I = 0x100

.field public static final FILL_IN_PACKAGE:I = 0x10

.field public static final FILL_IN_SELECTOR:I = 0x40

.field public static final FILL_IN_SOURCE_BOUNDS:I = 0x20

.field public static final FLAG_ACTIVITY_BROUGHT_TO_FRONT:I = 0x400000

.field public static final FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final FLAG_ACTIVITY_CLEAR_TASK_ON_HOME:I = 0x8

.field public static final FLAG_ACTIVITY_CLEAR_TOP:I = 0x4000000

.field public static final FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS:I = 0x800000

.field public static final FLAG_ACTIVITY_FORWARD_RESULT:I = 0x2000000

.field public static final FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY:I = 0x100000

.field public static final FLAG_ACTIVITY_LAUNCH_ADJACENT:I = 0x1000

.field public static final FLAG_ACTIVITY_MATCH_EXTERNAL:I = 0x800

.field public static final FLAG_ACTIVITY_MULTIPLE_TASK:I = 0x8000000

.field public static final FLAG_ACTIVITY_NEW_DOCUMENT:I = 0x80000

.field public static final FLAG_ACTIVITY_NEW_TASK:I = 0x10000000

.field public static final FLAG_ACTIVITY_NO_ANIMATION:I = 0x10000

.field public static final FLAG_ACTIVITY_NO_HISTORY:I = 0x40000000

.field public static final FLAG_ACTIVITY_NO_USER_ACTION:I = 0x40000

.field public static final FLAG_ACTIVITY_PREVIOUS_IS_TOP:I = 0x1000000

.field public static final FLAG_ACTIVITY_REORDER_TO_FRONT:I = 0x20000

.field public static final FLAG_ACTIVITY_REQUIRE_DEFAULT:I = 0x200

.field public static final FLAG_ACTIVITY_REQUIRE_NON_BROWSER:I = 0x400

.field public static final FLAG_ACTIVITY_RESET_TASK_IF_NEEDED:I = 0x200000

.field public static final FLAG_ACTIVITY_RETAIN_IN_RECENTS:I = 0x2000

.field public static final FLAG_ACTIVITY_SINGLE_TOP:I = 0x20000000

.field public static final FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field public static final FLAG_DEBUG_LOG_RESOLUTION:I = 0x8

.field public static final FLAG_DEBUG_TRIAGED_MISSING:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DIRECT_BOOT_AUTO:I = 0x100

.field public static final FLAG_EXCLUDE_STOPPED_PACKAGES:I = 0x10

.field public static final FLAG_FROM_BACKGROUND:I = 0x4

.field public static final FLAG_GRANT_PERSISTABLE_URI_PERMISSION:I = 0x40

.field public static final FLAG_GRANT_PREFIX_URI_PERMISSION:I = 0x80

.field public static final FLAG_GRANT_READ_URI_PERMISSION:I = 0x1

.field public static final FLAG_GRANT_WRITE_URI_PERMISSION:I = 0x2

.field public static final FLAG_IGNORE_EPHEMERAL:I = 0x200

.field public static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field public static final FLAG_RECEIVER_BOOT_UPGRADE:I = 0x2000000

.field public static final FLAG_RECEIVER_EXCLUDE_BACKGROUND:I = 0x800000

.field public static final FLAG_RECEIVER_FOREGROUND:I = 0x10000000

.field public static final FLAG_RECEIVER_FROM_SHELL:I = 0x400000

.field public static final FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000

.field public static final FLAG_RECEIVER_NO_ABORT:I = 0x8000000

.field public static final FLAG_RECEIVER_OFFLOAD:I = -0x80000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY:I = 0x40000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_RECEIVER_REPLACE_PENDING:I = 0x20000000

.field public static final FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS:I = 0x200000

.field public static final IMMUTABLE_FLAGS:I = 0xc3

.field private static final LOCAL_FLAG_FROM_COPY:I = 0x1

.field private static final LOCAL_FLAG_FROM_PARCEL:I = 0x2

.field private static final LOCAL_FLAG_FROM_PROTECTED_COMPONENT:I = 0x4

.field private static final LOCAL_FLAG_FROM_URI:I = 0x10

.field private static final LOCAL_FLAG_UNFILTERED_EXTRAS:I = 0x8

.field public static final METADATA_DOCK_HOME:Ljava/lang/String; = "android.dock_home"

.field public static final METADATA_SETUP_VERSION:Ljava/lang/String; = "android.SETUP_VERSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SIM_ABSENT_ON_PERM_DISABLED:Ljava/lang/String; = "PERM_DISABLED"

.field public static final SIM_LOCKED_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final SIM_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final SIM_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final SIM_STATE_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final SIM_STATE_CARD_IO_ERROR:Ljava/lang/String; = "CARD_IO_ERROR"

.field public static final SIM_STATE_CARD_RESTRICTED:Ljava/lang/String; = "CARD_RESTRICTED"

.field public static final SIM_STATE_IMSI:Ljava/lang/String; = "IMSI"

.field public static final SIM_STATE_LOADED:Ljava/lang/String; = "LOADED"

.field public static final SIM_STATE_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final SIM_STATE_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final SIM_STATE_PRESENT:Ljava/lang/String; = "PRESENT"

.field public static final SIM_STATE_READY:Ljava/lang/String; = "READY"

.field public static final SIM_STATE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final TAG:Ljava/lang/String; = "Intent"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field public static final URI_ALLOW_UNSAFE:I = 0x4

.field public static final URI_ANDROID_APP_SCHEME:I = 0x2

.field public static final URI_INTENT_SCHEME:I = 0x1


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipData:Landroid/content/ClipData;

.field private mComponent:Landroid/content/ComponentName;

.field private mContentUserHint:I

.field private mData:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mHookIntent:Landroid/content/HookIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/HookIntent<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentifier:Ljava/lang/String;

.field private mLaunchToken:Ljava/lang/String;

.field private mLocalFlags:I

.field private mPackage:Ljava/lang/String;

.field private mSelector:Landroid/content/Intent;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11166
    new-instance v0, Landroid/content/Intent$1;

    invoke-direct {v0}, Landroid/content/Intent$1;-><init>()V

    sput-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6973
    const-class v0, Landroid/content/HookIntent;

    invoke-static {v0, p0}, Landroid/os/HookManager;->create(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/HookTemplate;

    move-result-object v0

    check-cast v0, Landroid/content/HookIntent;

    iput-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    const/4 v0, -0x2

    .line 6983
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 7128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6973
    const-class v0, Landroid/content/HookIntent;

    invoke-static {v0, p0}, Landroid/os/HookManager;->create(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/HookTemplate;

    move-result-object v0

    check-cast v0, Landroid/content/HookIntent;

    iput-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    const/4 v0, -0x2

    .line 6983
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7129
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 7012
    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;I)V
    .locals 2

    .line 7015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6973
    const-class v0, Landroid/content/HookIntent;

    invoke-static {v0, p0}, Landroid/os/HookManager;->create(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/HookTemplate;

    move-result-object v0

    check-cast v0, Landroid/content/HookIntent;

    iput-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    const/4 v0, -0x2

    .line 6983
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7016
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 7017
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 7018
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 7019
    iget-object v0, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    .line 7020
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 7021
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 7023
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 7024
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 7029
    :cond_0
    iget v0, p1, Landroid/content/Intent;->mLocalFlags:I

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    .line 7030
    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    if-eq p2, v1, :cond_5

    .line 7033
    iget v0, p1, Landroid/content/Intent;->mFlags:I

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 7035
    iget-object v0, p1, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    iput-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    .line 7037
    iget v0, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7038
    iget-object v0, p1, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    .line 7039
    iget-object v0, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 7040
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 7042
    :cond_1
    iget-object v0, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 7043
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    :cond_2
    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    .line 7047
    iget-object p2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_3

    .line 7048
    new-instance p2, Landroid/os/Bundle;

    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {p2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 7050
    :cond_3
    iget-object p2, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz p2, :cond_5

    .line 7051
    new-instance p2, Landroid/content/ClipData;

    iget-object p1, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-direct {p2, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    iput-object p2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    goto :goto_0

    .line 7054
    :cond_4
    iget-object p1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 7055
    sget-object p1, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_5
    :goto_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6973
    const-class v0, Landroid/content/HookIntent;

    invoke-static {v0, p0}, Landroid/os/HookManager;->create(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/HookTemplate;

    move-result-object v0

    check-cast v0, Landroid/content/HookIntent;

    iput-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    const/4 v0, -0x2

    .line 6983
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v0, 0x2

    .line 11180
    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 11181
    invoke-virtual {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 7087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6973
    const-class v0, Landroid/content/HookIntent;

    invoke-static {v0, p0}, Landroid/os/HookManager;->create(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/HookTemplate;

    move-result-object v0

    check-cast v0, Landroid/content/HookIntent;

    iput-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    const/4 v0, -0x2

    .line 6983
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7088
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 7107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6973
    const-class v0, Landroid/content/HookIntent;

    invoke-static {v0, p0}, Landroid/os/HookManager;->create(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/HookTemplate;

    move-result-object v0

    check-cast v0, Landroid/content/HookIntent;

    iput-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    const/4 v0, -0x2

    .line 6983
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7108
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7109
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 7156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6973
    const-class v0, Landroid/content/HookIntent;

    invoke-static {v0, p0}, Landroid/os/HookManager;->create(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/HookTemplate;

    move-result-object v0

    check-cast v0, Landroid/content/HookIntent;

    iput-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    const/4 v0, -0x2

    .line 6983
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7157
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7158
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 7159
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p3, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 1009
    invoke-static {p0, p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;
    .locals 3

    .line 1038
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    .line 1039
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "android.intent.extra.TITLE"

    .line 1041
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    .line 1045
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1049
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0xc3

    if-eqz p1, :cond_4

    .line 1053
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1054
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1055
    new-instance p2, Landroid/content/ClipData$Item;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 1057
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 1058
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    goto :goto_0

    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    .line 1062
    :goto_0
    new-instance p0, Landroid/content/ClipData;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, p2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object p2, p0

    :cond_3
    if-eqz p2, :cond_4

    .line 1065
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1066
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    return-object v0
.end method

.method public static dockStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 11785
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "EXTRA_DOCK_STATE_HE_DESK"

    return-object p0

    :cond_1
    const-string p0, "EXTRA_DOCK_STATE_LE_DESK"

    return-object p0

    :cond_2
    const-string p0, "EXTRA_DOCK_STATE_CAR"

    return-object p0

    :cond_3
    const-string p0, "EXTRA_DOCK_STATE_DESK"

    return-object p0

    :cond_4
    const-string p0, "EXTRA_DOCK_STATE_UNDOCKED"

    return-object p0
.end method

.method private dumpDebugWithoutFieldId(Landroid/util/proto/ProtoOutputStream;ZZZZ)V
    .locals 4

    .line 10885
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-wide v1, 0x10900000001L

    .line 10886
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10888
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 10889
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x20900000002L

    .line 10890
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    .line 10893
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_3

    const-wide v1, 0x10900000003L

    if-eqz p2, :cond_2

    .line 10894
    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10896
    :cond_3
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-wide v1, 0x10900000004L

    .line 10897
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10899
    :cond_4
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-wide v1, 0x1090000000dL

    .line 10900
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10902
    :cond_5
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v0, :cond_6

    const-wide v0, 0x10900000005L

    .line 10903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10905
    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-wide v1, 0x10900000006L

    .line 10906
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_7
    if-eqz p3, :cond_8

    .line 10908
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_8

    const-wide v1, 0x10b00000007L

    .line 10909
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 10911
    :cond_8
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    const-wide v1, 0x10900000008L

    .line 10912
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10914
    :cond_9
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_c

    .line 10915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10916
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz p5, :cond_b

    if-eqz p2, :cond_a

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v1, v0, v2}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;Z)V

    const-wide v1, 0x10900000009L

    .line 10917
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_c
    if-eqz p4, :cond_d

    .line 10919
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    const-wide v1, 0x1090000000aL

    .line 10920
    invoke-virtual {v0}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10922
    :cond_d
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    if-eqz v0, :cond_e

    const-wide v1, 0x1050000000bL

    .line 10923
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10925
    :cond_e
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_f

    const-wide v1, 0x1090000000cL

    .line 10926
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 7249
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getIntentOld(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7502
    invoke-static {p0, v0}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 7503
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    return-object p0
.end method

.method private static getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x23

    .line 7510
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const-string v2, "android.intent.action.VIEW"

    if-ltz v1, :cond_1c

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    const-string v5, "action("

    const/4 v6, 0x0

    const/4 v7, 0x7

    .line 7518
    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    const/16 v8, 0x29

    const/4 v9, 0x1

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x7

    .line 7521
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 7522
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v3, v9

    move v5, v9

    move-object/from16 v16, v4

    move v4, v3

    move-object/from16 v3, v16

    goto :goto_0

    :cond_0
    move v5, v6

    .line 7526
    :goto_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "categories("

    const/16 v11, 0xb

    .line 7528
    invoke-virtual {v0, v4, v3, v6, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    const/16 v11, 0x21

    if-eqz v3, :cond_5

    add-int/lit8 v4, v4, 0xb

    .line 7531
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    :goto_1
    if-ge v4, v3, :cond_4

    .line 7533
    invoke-virtual {v0, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_1

    if-le v5, v3, :cond_2

    :cond_1
    move v5, v3

    :cond_2
    if-ge v4, v5, :cond_3

    .line 7536
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    add-int/lit8 v4, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v3, 0x1

    move v5, v9

    :cond_5
    const-string/jumbo v3, "type("

    const/4 v12, 0x5

    .line 7543
    invoke-virtual {v0, v4, v3, v6, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v4, v4, 0x5

    .line 7546
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 7547
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Landroid/content/Intent;->mType:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    move v5, v9

    :cond_6
    const-string v3, "launchFlags("

    const/16 v12, 0xc

    .line 7551
    invoke-virtual {v0, v4, v3, v6, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v4, v4, 0xc

    .line 7554
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 7555
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v10, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v5, p1, 0x4

    if-nez v5, :cond_7

    and-int/lit16 v4, v4, -0xc4

    .line 7557
    iput v4, v10, Landroid/content/Intent;->mFlags:I

    :cond_7
    add-int/lit8 v4, v3, 0x1

    move v5, v9

    :cond_8
    const-string v3, "component("

    const/16 v12, 0xa

    .line 7562
    invoke-virtual {v0, v4, v3, v6, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v4, v4, 0xa

    .line 7565
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 7566
    invoke-virtual {v0, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_9

    if-ge v5, v3, :cond_9

    .line 7568
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v5, v9

    .line 7569
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 7570
    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v10, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    :cond_9
    add-int/lit8 v4, v3, 0x1

    move v5, v9

    :cond_a
    const-string v3, "extras("

    .line 7575
    invoke-virtual {v0, v4, v3, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1a

    add-int/2addr v4, v7

    .line 7579
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_19

    :goto_2
    if-ge v4, v3, :cond_18

    const/16 v7, 0x3d

    .line 7585
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    add-int/lit8 v12, v4, 0x1

    if-le v7, v12, :cond_17

    if-ge v4, v3, :cond_17

    .line 7589
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 7591
    invoke-virtual {v0, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v7, v7, 0x1

    .line 7595
    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-eq v13, v5, :cond_b

    if-lt v13, v3, :cond_c

    :cond_b
    move v13, v3

    :cond_c
    const-string v14, "EXTRA missing \'!\'"

    if-ge v7, v13, :cond_16

    .line 7598
    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 7602
    iget-object v15, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v15, :cond_d

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    iput-object v15, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_d
    const/16 v15, 0x42

    if-eq v4, v15, :cond_13

    const/16 v15, 0x53

    if-eq v4, v15, :cond_12

    const/16 v15, 0x66

    if-eq v4, v15, :cond_11

    const/16 v15, 0x69

    if-eq v4, v15, :cond_10

    const/16 v15, 0x6c

    if-eq v4, v15, :cond_f

    const/16 v15, 0x73

    if-eq v4, v15, :cond_e

    packed-switch v4, :pswitch_data_0

    .line 7635
    :try_start_0
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "EXTRA has unknown type"

    invoke-direct {v1, v0, v2, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 7620
    :pswitch_0
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v4, v12, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_3

    .line 7617
    :pswitch_1
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v12, v7}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_3

    .line 7614
    :pswitch_2
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v7

    invoke-virtual {v4, v12, v7}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_3

    .line 7632
    :cond_e
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v7}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v7

    invoke-virtual {v4, v12, v7}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_3

    .line 7629
    :cond_f
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v12, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    .line 7626
    :cond_10
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v12, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 7623
    :cond_11
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v4, v12, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_3

    .line 7608
    :cond_12
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v12, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 7611
    :cond_13
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v12, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7641
    :goto_3
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x29

    if-ne v4, v7, :cond_14

    goto :goto_4

    :cond_14
    if-ne v4, v11, :cond_15

    add-int/lit8 v4, v13, 0x1

    move v8, v7

    const/4 v9, 0x1

    goto/16 :goto_2

    .line 7643
    :cond_15
    new-instance v1, Ljava/net/URISyntaxException;

    invoke-direct {v1, v0, v14, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 7638
    :catch_0
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "EXTRA value can\'t be parsed"

    invoke-direct {v1, v0, v2, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 7597
    :cond_16
    new-instance v1, Ljava/net/URISyntaxException;

    invoke-direct {v1, v0, v14, v7}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 7587
    :cond_17
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "EXTRA missing \'=\'"

    invoke-direct {v1, v0, v2, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_18
    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    .line 7580
    :cond_19
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "EXTRA missing trailing \')\'"

    invoke-direct {v1, v0, v2, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_1a
    move v9, v5

    :goto_5
    if-eqz v9, :cond_1b

    .line 7649
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto :goto_6

    .line 7651
    :cond_1b
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 7654
    :goto_6
    iget-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 7656
    iput-object v2, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    goto :goto_7

    .line 7660
    :cond_1c
    new-instance v10, Landroid/content/Intent;

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v10, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_1d
    :goto_7
    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasPackageEquivalentComponent()Z
    .locals 2

    .line 10681
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10682
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAccessUriMode(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .line 11575
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 11576
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    .line 11577
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/ClipData$Item;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 11791
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 11792
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p2, :cond_2

    .line 11793
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object p2, v0

    .line 11794
    :goto_2
    new-instance p3, Landroid/content/ClipData$Item;

    invoke-direct {p3, p1, p2, v0, p0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    return-object p3
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    .line 7184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7185
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p0, "android.intent.category.LAUNCHER"

    .line 7186
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 7214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 7215
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7216
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 7217
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7218
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7219
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    return-object v0
.end method

.method public static makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    .line 7237
    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const v0, 0x10008000

    .line 7238
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method private maybeConvertFileToContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 11752
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11753
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 11754
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11756
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 11757
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    return-object p2

    :catch_0
    move-exception p1

    .line 11762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring failure to create file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Intent"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object p2
.end method

.method public static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11403
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3b

    .line 11405
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 11407
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 7676
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7684
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    const/4 v10, 0x7

    const/4 v11, 0x1

    if-eqz v8, :cond_48

    .line 7685
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0x20

    const/4 v12, 0x2

    sparse-switch v13, :sswitch_data_0

    :goto_1
    const/4 v9, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v9, "--grant-write-uri-permission"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const/16 v9, 0x38

    goto/16 :goto_2

    :sswitch_1
    const-string v9, "--activity-multiple-task"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/16 v9, 0x37

    goto/16 :goto_2

    :sswitch_2
    const-string v9, "--grant-read-uri-permission"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    const/16 v9, 0x36

    goto/16 :goto_2

    :sswitch_3
    const-string v9, "--receiver-foreground"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/16 v9, 0x35

    goto/16 :goto_2

    :sswitch_4
    const-string v9, "--userId"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    const/16 v9, 0x34

    goto/16 :goto_2

    :sswitch_5
    const-string v9, "--receiver-no-abort"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    const/16 v9, 0x33

    goto/16 :goto_2

    :sswitch_6
    const-string v9, "--activity-launched-from-history"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_1

    :cond_7
    const/16 v9, 0x32

    goto/16 :goto_2

    :sswitch_7
    const-string v9, "--activity-clear-when-task-reset"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_1

    :cond_8
    const/16 v9, 0x31

    goto/16 :goto_2

    :sswitch_8
    const-string v9, "--esal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_1

    :cond_9
    const/16 v9, 0x30

    goto/16 :goto_2

    :sswitch_9
    const-string v10, "--elal"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_39

    goto/16 :goto_1

    :sswitch_a
    const-string v9, "--eial"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v9, 0x2e

    goto/16 :goto_2

    :sswitch_b
    const-string v9, "--efal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v9, 0x2d

    goto/16 :goto_2

    :sswitch_c
    const-string v9, "--selector"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v9, 0x2c

    goto/16 :goto_2

    :sswitch_d
    const-string v9, "--activity-match-external"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v9, 0x2b

    goto/16 :goto_2

    :sswitch_e
    const-string v9, "--receiver-replace-pending"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v9, 0x2a

    goto/16 :goto_2

    :sswitch_f
    const-string v9, "--include-stopped-packages"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v9, 0x29

    goto/16 :goto_2

    :sswitch_10
    const-string v9, "--exclude-stopped-packages"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v9, 0x28

    goto/16 :goto_2

    :sswitch_11
    const-string v9, "--grant-persistable-uri-permission"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v9, 0x27

    goto/16 :goto_2

    :sswitch_12
    const-string v9, "--activity-single-top"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v9, 0x26

    goto/16 :goto_2

    :sswitch_13
    const-string v9, "--receiver-registered-only"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v9, 0x25

    goto/16 :goto_2

    :sswitch_14
    const-string v9, "--activity-no-user-action"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v9, 0x24

    goto/16 :goto_2

    :sswitch_15
    const-string v9, "--activity-clear-top"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v9, 0x23

    goto/16 :goto_2

    :sswitch_16
    const-string v9, "--activity-reset-task-if-needed"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v9, 0x22

    goto/16 :goto_2

    :sswitch_17
    const-string v9, "--activity-no-animation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v9, 0x21

    goto/16 :goto_2

    :sswitch_18
    const-string v9, "--activity-exclude-from-recents"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    goto/16 :goto_1

    :cond_18
    move v9, v14

    goto/16 :goto_2

    :sswitch_19
    const-string v9, "--esn"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v9, 0x1f

    goto/16 :goto_2

    :sswitch_1a
    const-string v9, "--esa"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v9, 0x1e

    goto/16 :goto_2

    :sswitch_1b
    const-string v9, "--ela"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v9, 0x1d

    goto/16 :goto_2

    :sswitch_1c
    const-string v9, "--eia"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v9, 0x1c

    goto/16 :goto_2

    :sswitch_1d
    const-string v9, "--efa"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v9, 0x1b

    goto/16 :goto_2

    :sswitch_1e
    const-string v9, "--ecn"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v9, 0x1a

    goto/16 :goto_2

    :sswitch_1f
    const-string v9, "--ez"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v9, 0x19

    goto/16 :goto_2

    :sswitch_20
    const-string v9, "--eu"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v9, 0x18

    goto/16 :goto_2

    :sswitch_21
    const-string v9, "--es"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v9, 0x17

    goto/16 :goto_2

    :sswitch_22
    const-string v9, "--el"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    goto/16 :goto_1

    :cond_22
    const/16 v9, 0x16

    goto/16 :goto_2

    :sswitch_23
    const-string v9, "--ei"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    goto/16 :goto_1

    :cond_23
    const/16 v9, 0x15

    goto/16 :goto_2

    :sswitch_24
    const-string v9, "--ef"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    goto/16 :goto_1

    :cond_24
    const/16 v9, 0x14

    goto/16 :goto_2

    :sswitch_25
    const-string v9, "-t"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    goto/16 :goto_1

    :cond_25
    const/16 v9, 0x13

    goto/16 :goto_2

    :sswitch_26
    const-string v9, "-p"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26

    goto/16 :goto_1

    :cond_26
    const/16 v9, 0x12

    goto/16 :goto_2

    :sswitch_27
    const-string v9, "-n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    goto/16 :goto_1

    :cond_27
    const/16 v9, 0x11

    goto/16 :goto_2

    :sswitch_28
    const-string v9, "-i"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    goto/16 :goto_1

    :cond_28
    const/16 v9, 0x10

    goto/16 :goto_2

    :sswitch_29
    const-string v9, "-f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_29

    goto/16 :goto_1

    :cond_29
    const/16 v9, 0xf

    goto/16 :goto_2

    :sswitch_2a
    const-string v9, "-e"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a

    goto/16 :goto_1

    :cond_2a
    const/16 v9, 0xe

    goto/16 :goto_2

    :sswitch_2b
    const-string v9, "-d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    goto/16 :goto_1

    :cond_2b
    const/16 v9, 0xd

    goto/16 :goto_2

    :sswitch_2c
    const-string v9, "-c"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2c

    goto/16 :goto_1

    :cond_2c
    const/16 v9, 0xc

    goto/16 :goto_2

    :sswitch_2d
    const-string v9, "-a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2d

    goto/16 :goto_1

    :cond_2d
    const/16 v9, 0xb

    goto/16 :goto_2

    :sswitch_2e
    const-string v9, "--screenId"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e

    goto/16 :goto_1

    :cond_2e
    const/16 v9, 0xa

    goto/16 :goto_2

    :sswitch_2f
    const-string v9, "--receiver-include-background"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    goto/16 :goto_1

    :cond_2f
    const/16 v9, 0x9

    goto/16 :goto_2

    :sswitch_30
    const-string v9, "--activity-previous-is-top"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_30

    goto/16 :goto_1

    :cond_30
    const/16 v9, 0x8

    goto/16 :goto_2

    :sswitch_31
    const-string v9, "--activity-brought-to-front"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31

    goto/16 :goto_1

    :cond_31
    move v9, v10

    goto :goto_2

    :sswitch_32
    const-string v9, "--activity-reorder-to-front"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    goto/16 :goto_1

    :cond_32
    const/4 v9, 0x6

    goto :goto_2

    :sswitch_33
    const-string v9, "--debug-log-resolution"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_33

    goto/16 :goto_1

    :cond_33
    const/4 v9, 0x5

    goto :goto_2

    :sswitch_34
    const-string v9, "--activity-clear-task"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34

    goto/16 :goto_1

    :cond_34
    const/4 v9, 0x4

    goto :goto_2

    :sswitch_35
    const-string v9, "--activity-no-history"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    goto/16 :goto_1

    :cond_35
    const/4 v9, 0x3

    goto :goto_2

    :sswitch_36
    const-string v9, "--areaType"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_36

    goto/16 :goto_1

    :cond_36
    move v9, v12

    goto :goto_2

    :sswitch_37
    const-string v9, "--activity-task-on-home"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_37

    goto/16 :goto_1

    :cond_37
    move v9, v11

    goto :goto_2

    :sswitch_38
    const-string v9, "--grant-prefix-uri-permission"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_38

    goto/16 :goto_1

    :cond_38
    const/4 v9, 0x0

    :cond_39
    :goto_2
    const-string v10, "Bad component name: "

    const/high16 v13, 0x20000000

    const/high16 v2, 0x8000000

    const-string v3, "(?<!\\\\),"

    const-string v15, ","

    packed-switch v9, :pswitch_data_0

    if-eqz v0, :cond_3a

    move-object/from16 v9, p0

    .line 8005
    invoke-interface {v0, v8, v9}, Landroid/content/Intent$CommandOptionHandler;->handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto/16 :goto_0

    .line 8008
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v9, p0

    .line 7906
    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v9, p0

    .line 7939
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v9, p0

    .line 7903
    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v9, p0

    const/high16 v2, 0x10000000

    .line 7978
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v9, p0

    .line 7996
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7997
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setUserId(I)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v9, p0

    .line 7981
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v9, p0

    const/high16 v2, 0x100000

    .line 7936
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v9, p0

    const/high16 v2, 0x80000

    .line 7930
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v9, p0

    .line 7844
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7845
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 7849
    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7850
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    .line 7851
    :goto_3
    array-length v10, v3

    if-ge v8, v10, :cond_3b

    .line 7852
    aget-object v10, v3, v8

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 7854
    :cond_3b
    invoke-virtual {v4, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_c

    :pswitch_9
    move-object/from16 v9, p0

    .line 7790
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7791
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7792
    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7793
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    .line 7794
    :goto_4
    array-length v10, v3

    if-ge v8, v10, :cond_3c

    .line 7795
    aget-object v10, v3, v8

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 7797
    :cond_3c
    invoke-virtual {v4, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_c

    :pswitch_a
    move-object/from16 v9, p0

    .line 7761
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7762
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7763
    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7764
    new-instance v8, Ljava/util/ArrayList;

    array-length v10, v3

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    .line 7765
    :goto_5
    array-length v11, v3

    if-ge v10, v11, :cond_3d

    .line 7766
    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 7768
    :cond_3d
    invoke-virtual {v4, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v9, p0

    .line 7821
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7822
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7823
    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7824
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    .line 7825
    :goto_6
    array-length v10, v3

    if-ge v8, v10, :cond_3e

    .line 7826
    aget-object v10, v3, v8

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 7828
    :cond_3e
    invoke-virtual {v4, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_c

    :pswitch_c
    move-object/from16 v9, p0

    .line 7987
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 7988
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v9, p0

    const/16 v2, 0x800

    .line 7969
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v9, p0

    .line 7975
    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v9, p0

    .line 7918
    invoke-virtual {v4, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_10
    const/16 v2, 0x10

    move-object/from16 v9, p0

    .line 7915
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v9, p0

    const/16 v2, 0x40

    .line 7909
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v9, p0

    .line 7960
    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_13
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v9, p0

    .line 7972
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v9, p0

    const/high16 v2, 0x40000

    .line 7948
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v9, p0

    const/high16 v2, 0x4000000

    .line 7927
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v9, p0

    const/high16 v2, 0x200000

    .line 7957
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_17
    move-object/from16 v9, p0

    const/high16 v2, 0x10000

    .line 7942
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v9, p0

    const/high16 v2, 0x800000

    .line 7933
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_19
    move-object/from16 v9, p0

    .line 7724
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 7725
    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v9, p0

    .line 7833
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7834
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 7838
    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7839
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_c

    :pswitch_1b
    move-object/from16 v9, p0

    .line 7778
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7779
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7780
    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7781
    array-length v7, v3

    new-array v7, v7, [J

    const/4 v8, 0x0

    .line 7782
    :goto_7
    array-length v10, v3

    if-ge v8, v10, :cond_3f

    .line 7783
    aget-object v10, v3, v8

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    aput-wide v12, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 7785
    :cond_3f
    invoke-virtual {v4, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto/16 :goto_c

    :pswitch_1c
    move-object/from16 v9, p0

    .line 7750
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7751
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7752
    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7753
    array-length v8, v3

    new-array v8, v8, [I

    const/4 v10, 0x0

    .line 7754
    :goto_8
    array-length v11, v3

    if-ge v10, v11, :cond_40

    .line 7755
    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 7757
    :cond_40
    invoke-virtual {v4, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_1d
    move-object/from16 v9, p0

    .line 7809
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7810
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7811
    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7812
    array-length v7, v3

    new-array v7, v7, [F

    const/4 v8, 0x0

    .line 7813
    :goto_9
    array-length v10, v3

    if-ge v8, v10, :cond_41

    .line 7814
    aget-object v10, v3, v8

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 7816
    :cond_41
    invoke-virtual {v4, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    goto/16 :goto_c

    :pswitch_1e
    move-object/from16 v9, p0

    .line 7741
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7742
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7743
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_42

    .line 7746
    invoke-virtual {v4, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 7745
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f
    move-object/from16 v9, p0

    .line 7859
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7860
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "true"

    .line 7864
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    const-string/jumbo v8, "t"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    goto :goto_b

    :cond_43
    const-string v8, "false"

    .line 7866
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    const-string v8, "f"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    goto :goto_a

    .line 7870
    :cond_44
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_45

    goto :goto_b

    .line 7872
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid boolean value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    :goto_a
    const/4 v11, 0x0

    .line 7876
    :cond_46
    :goto_b
    invoke-virtual {v4, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_20
    move-object/from16 v9, p0

    .line 7735
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7736
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7737
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_21
    move-object/from16 v9, p0

    .line 7772
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7773
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7774
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_22
    move-object/from16 v9, p0

    .line 7729
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7730
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7731
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_23
    move-object/from16 v9, p0

    .line 7802
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7803
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7804
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_c

    :pswitch_24
    move-object/from16 v9, p0

    .line 7699
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    if-ne v4, v1, :cond_0

    goto :goto_c

    :pswitch_25
    move-object/from16 v9, p0

    .line 7891
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7892
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v4, v1, :cond_0

    :goto_c
    move v7, v11

    goto/16 :goto_0

    :pswitch_26
    move-object/from16 v9, p0

    .line 7880
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7881
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 7884
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-ne v4, v1, :cond_0

    goto :goto_c

    .line 7883
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    move-object/from16 v9, p0

    .line 7705
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v4, v1, :cond_0

    goto :goto_c

    :pswitch_28
    move-object/from16 v9, p0

    .line 7899
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7900
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_29
    move-object/from16 v9, p0

    .line 7718
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7719
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 7720
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_2a
    move-object/from16 v9, p0

    .line 7693
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-ne v4, v1, :cond_0

    goto :goto_c

    :pswitch_2b
    move-object/from16 v9, p0

    .line 7711
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v4, v1, :cond_0

    goto :goto_c

    :pswitch_2c
    move-object/from16 v9, p0

    .line 7687
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v4, v1, :cond_0

    goto :goto_c

    :pswitch_2d
    move-object/from16 v9, p0

    .line 7992
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 7993
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setScreenId(I)V

    goto/16 :goto_0

    :pswitch_2e
    const/high16 v2, 0x1000000

    move-object/from16 v9, p0

    .line 7984
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_2f
    const/high16 v2, 0x1000000

    move-object/from16 v9, p0

    .line 7951
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_30
    move-object/from16 v9, p0

    const/high16 v2, 0x400000

    .line 7924
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_31
    move-object/from16 v9, p0

    const/high16 v2, 0x20000

    .line 7954
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_32
    const/16 v2, 0x8

    move-object/from16 v9, p0

    .line 7921
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_33
    move-object/from16 v9, p0

    const v2, 0x8000

    .line 7963
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_34
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v9, p0

    .line 7945
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_35
    move-object/from16 v9, p0

    .line 8000
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 8001
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAreaType(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_36
    move-object/from16 v9, p0

    const/16 v2, 0x4000

    .line 7966
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_37
    move-object/from16 v9, p0

    const/16 v2, 0x80

    .line 7912
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 8013
    :cond_48
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-eq v4, v1, :cond_49

    move v3, v11

    goto :goto_d

    :cond_49
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_4a

    .line 8018
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    goto :goto_e

    :cond_4a
    move-object v1, v4

    .line 8022
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.category.LAUNCHER"

    const-string v4, "android.intent.action.MAIN"

    if-nez v0, :cond_4c

    if-eqz v3, :cond_4b

    .line 8031
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8032
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_f

    :cond_4b
    const/4 v3, 0x0

    goto :goto_f

    :cond_4c
    const/16 v3, 0x3a

    .line 8034
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4d

    .line 8037
    invoke-static {v0, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    goto :goto_f

    .line 8039
    :cond_4d
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4e

    .line 8042
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8043
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8044
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_f

    .line 8047
    :cond_4e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8048
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8049
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_f
    if-eqz v3, :cond_52

    .line 8052
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    .line 8053
    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8054
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 8055
    invoke-virtual {v3, v2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8056
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 8057
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8058
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8059
    invoke-virtual {v3, v5}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    goto :goto_10

    :cond_4f
    const/16 v2, 0x48

    .line 8062
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    if-nez v0, :cond_50

    goto :goto_11

    :cond_50
    if-eqz v4, :cond_51

    .line 8066
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_11
    move-object v0, v4

    .line 8069
    :cond_51
    invoke-virtual {v1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move v7, v11

    :cond_52
    if-eqz v7, :cond_53

    return-object v1

    .line 8073
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No intent supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7ffea226 -> :sswitch_38
        -0x7e40bfdd -> :sswitch_37
        -0x625ed4f9 -> :sswitch_36
        -0x61305b9a -> :sswitch_35
        -0x4aae571d -> :sswitch_34
        -0x3fbe74d1 -> :sswitch_33
        -0x328eb9b9 -> :sswitch_32
        -0x31a9343b -> :sswitch_31
        -0x2f378b56 -> :sswitch_30
        -0x2e804d8f -> :sswitch_2f
        -0x17983bb9 -> :sswitch_2e
        0x5d4 -> :sswitch_2d
        0x5d6 -> :sswitch_2c
        0x5d7 -> :sswitch_2b
        0x5d8 -> :sswitch_2a
        0x5d9 -> :sswitch_29
        0x5dc -> :sswitch_28
        0x5e1 -> :sswitch_27
        0x5e3 -> :sswitch_26
        0x5e7 -> :sswitch_25
        0x152a41 -> :sswitch_24
        0x152a44 -> :sswitch_23
        0x152a47 -> :sswitch_22
        0x152a4e -> :sswitch_21
        0x152a50 -> :sswitch_20
        0x152a55 -> :sswitch_1f
        0x2901df0 -> :sswitch_1e
        0x2901e40 -> :sswitch_1d
        0x2901e9d -> :sswitch_1c
        0x2901efa -> :sswitch_1b
        0x2901fd3 -> :sswitch_1a
        0x2901fe0 -> :sswitch_19
        0x41eb1c6 -> :sswitch_18
        0x54a2ed6 -> :sswitch_17
        0xb611ab9 -> :sswitch_16
        0xe1b6a37 -> :sswitch_15
        0x1998b94a -> :sswitch_14
        0x1a0135d9 -> :sswitch_13
        0x1a23762e -> :sswitch_12
        0x1f699c40 -> :sswitch_11
        0x22987a20 -> :sswitch_10
        0x2caeb912 -> :sswitch_f
        0x2e337d40 -> :sswitch_e
        0x422c3bb1 -> :sswitch_d
        0x47f6597f -> :sswitch_c
        0x4f73aa2c -> :sswitch_b
        0x4f73b56f -> :sswitch_a
        0x4f73c0b2 -> :sswitch_9
        0x4f73daf9 -> :sswitch_8
        0x50b32d5c -> :sswitch_7
        0x5359f12e -> :sswitch_6
        0x569e74a2 -> :sswitch_5
        0x5d387be6 -> :sswitch_4
        0x62838641 -> :sswitch_3
        0x67da9e16 -> :sswitch_2
        0x69396684 -> :sswitch_1
        0x6c467a2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_29
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 11246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11248
    sget-object v1, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x2

    .line 11251
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x3

    .line 11253
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 11254
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_0

    .line 11255
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x5

    .line 11257
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 11259
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    .line 11260
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    .line 11262
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11265
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11267
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 11269
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v4, :cond_9

    if-ne v5, v2, :cond_3

    .line 11270
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_9

    :cond_3
    if-eq v5, v2, :cond_2

    if-ne v5, v6, :cond_4

    goto :goto_1

    .line 11275
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "categories"

    .line 11276
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 11277
    sget-object v5, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {p0, p2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 11279
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 11280
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v7, :cond_5

    .line 11283
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11285
    :cond_5
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_6
    const-string v7, "extra"

    .line 11287
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 11288
    iget-object v5, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v5, :cond_7

    .line 11289
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11291
    :cond_7
    iget-object v5, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v7, p2, v5}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 11292
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 11295
    :cond_8
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_9
    return-object v0
.end method

.method public static parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 7273
    invoke-static {p0, p1}, Landroid/content/Intent;->parseUriInternal(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 7274
    iget p1, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/content/Intent;->mLocalFlags:I

    return-object p0
.end method

.method private static parseUriInternal(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "android-app:"

    const/4 v2, 0x0

    .line 7285
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    and-int/lit8 v4, p1, 0x3

    const-string v5, "intent:"

    const-string v6, "android.intent.action.VIEW"

    if-eqz v4, :cond_0

    .line 7289
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 7290
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    .line 7292
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v0

    :catch_0
    move-exception v0

    .line 7294
    :try_start_3
    new-instance v3, Ljava/net/URISyntaxException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string v4, "#"

    .line 7300
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    if-nez v3, :cond_3

    .line 7304
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    :cond_1
    const-string v8, "#Intent;"

    .line 7308
    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_3

    if-nez v3, :cond_2

    .line 7310
    invoke-static/range {p0 .. p1}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_2
    move v4, v7

    .line 7317
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-ltz v4, :cond_4

    .line 7326
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 v4, v4, 0x8

    goto :goto_0

    :cond_4
    move-object v7, v1

    :goto_0
    move v9, v2

    move v11, v9

    move-object v8, v3

    const/4 v10, 0x0

    :goto_1
    const-string v12, ":"

    const-string v13, ""

    if-ltz v4, :cond_1d

    :try_start_5
    const-string v14, "end"

    .line 7333
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_1d

    const/16 v14, 0x3d

    .line 7334
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    if-gez v14, :cond_5

    add-int/lit8 v14, v4, -0x1

    :cond_5
    const/16 v15, 0x3b

    .line 7336
    invoke-virtual {v1, v15, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    if-ge v14, v15, :cond_6

    add-int/lit8 v13, v14, 0x1

    .line 7337
    invoke-virtual {v1, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_6
    const-string v6, "action="

    .line 7340
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    const/16 v16, 0x1

    if-eqz v6, :cond_7

    .line 7341
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-nez v9, :cond_1b

    move/from16 v11, v16

    goto/16 :goto_2

    :cond_7
    const-string v6, "category="

    .line 7348
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 7349
    invoke-virtual {v8, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v6, "type="

    .line 7353
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 7354
    iput-object v13, v8, Landroid/content/Intent;->mType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const-string v6, "identifier="

    .line 7358
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 7359
    iput-object v13, v8, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const-string v6, "launchFlags="

    .line 7363
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 7364
    invoke-static {v13}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v8, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v12, p1, 0x4

    if-nez v12, :cond_1b

    and-int/lit16 v6, v6, -0xc4

    .line 7366
    iput v6, v8, Landroid/content/Intent;->mFlags:I

    goto/16 :goto_2

    :cond_b
    const-string v6, "package="

    .line 7371
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 7372
    iput-object v13, v8, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    const-string v6, "component="

    .line 7376
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 7377
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v8, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v6, "scheme="

    .line 7381
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_f

    if-eqz v9, :cond_e

    .line 7383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v8, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto/16 :goto_2

    :cond_e
    move-object v10, v13

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v6, "sourceBounds="

    .line 7390
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 7391
    invoke-static {v13}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v6

    iput-object v6, v8, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto/16 :goto_2

    :cond_10
    add-int/lit8 v6, v4, 0x3

    if-ne v15, v6, :cond_11

    const-string v6, "SEL"

    .line 7395
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 7396
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    move/from16 v9, v16

    goto/16 :goto_2

    :cond_11
    add-int/lit8 v6, v4, 0x2

    .line 7402
    invoke-virtual {v1, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7404
    iget-object v12, v8, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v12, :cond_12

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    iput-object v12, v8, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 7405
    :cond_12
    iget-object v12, v8, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const-string v14, "S."

    .line 7407
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const-string v14, "B."

    .line 7408
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_14
    const-string v14, "b."

    .line 7409
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-static {v13}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_2

    :cond_15
    const-string v14, "c."

    .line 7410
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_2

    :cond_16
    const-string v14, "d."

    .line 7411
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v12, v6, v13, v14}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    :cond_17
    const-string v14, "f."

    .line 7412
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_2

    :cond_18
    const-string v14, "i."

    .line 7413
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_19
    const-string v14, "l."

    .line 7414
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v12, v6, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    :cond_1a
    const-string/jumbo v14, "s."

    .line 7415
    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-static {v13}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    :cond_1b
    :goto_2
    add-int/lit8 v4, v15, 0x1

    goto/16 :goto_1

    .line 7416
    :cond_1c
    new-instance v0, Ljava/net/URISyntaxException;

    const-string/jumbo v2, "unknown EXTRA type"

    invoke-direct {v0, v1, v2, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_1d
    if-eqz v9, :cond_1e

    .line 7425
    iget-object v2, v3, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 7426
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    goto :goto_3

    :cond_1e
    move-object v3, v8

    :cond_1f
    :goto_3
    if-eqz v7, :cond_29

    .line 7432
    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v0, 0x7

    .line 7433
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v10, :cond_28

    .line 7435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_8

    .line 7437
    :cond_20
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0xc

    .line 7438
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_27

    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_27

    const/16 v0, 0xe

    .line 7440
    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    const-string v6, "android.intent.action.MAIN"

    if-gez v5, :cond_21

    .line 7443
    :try_start_6
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v11, :cond_27

    .line 7445
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_7

    .line 7451
    :cond_21
    invoke-virtual {v7, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    add-int/lit8 v0, v5, 0x1

    .line 7453
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_24

    .line 7454
    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ltz v8, :cond_23

    .line 7456
    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 7458
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_22

    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_22

    .line 7460
    invoke-virtual {v7, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_22
    move v5, v8

    goto :goto_4

    .line 7465
    :cond_23
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_24
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-nez v10, :cond_25

    if-nez v11, :cond_27

    .line 7471
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    :cond_25
    if-nez v0, :cond_26

    .line 7475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v7, v0

    goto :goto_8

    .line 7477
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "://"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_27
    :goto_7
    move-object v7, v13

    .line 7485
    :cond_28
    :goto_8
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2

    if-lez v0, :cond_29

    .line 7487
    :try_start_7
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Landroid/content/Intent;->mData:Landroid/net/Uri;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_9

    :catch_1
    move-exception v0

    .line 7489
    :try_start_8
    new-instance v2, Ljava/net/URISyntaxException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_29
    :goto_9
    return-object v3

    :catch_2
    move v2, v4

    .line 7497
    :catch_3
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v3, "illegal Intent URI format"

    invoke-direct {v0, v1, v3, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public static printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 48

    const-string v0, "<INTENT> specifications include these flags and arguments:"

    const-string v1, "    [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>] [-i <IDENTIFIER>]"

    const-string v2, "    [-c <CATEGORY> [-c <CATEGORY>] ...]"

    const-string v3, "    [-n <COMPONENT_NAME>]"

    const-string v4, "    [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]"

    const-string v5, "    [--esn <EXTRA_KEY> ...]"

    const-string v6, "    [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]"

    const-string v7, "    [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]"

    const-string v8, "    [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]"

    const-string v9, "    [--ef <EXTRA_KEY> <EXTRA_FLOAT_VALUE> ...]"

    const-string v10, "    [--eu <EXTRA_KEY> <EXTRA_URI_VALUE> ...]"

    const-string v11, "    [--ecn <EXTRA_KEY> <EXTRA_COMPONENT_NAME_VALUE>]"

    const-string v12, "    [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    const-string v13, "        (mutiple extras passed as Integer[])"

    const-string v14, "    [--eial <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    const-string v15, "        (mutiple extras passed as List<Integer>)"

    const-string v16, "    [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    const-string v17, "        (mutiple extras passed as Long[])"

    const-string v18, "    [--elal <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    const-string v19, "        (mutiple extras passed as List<Long>)"

    const-string v20, "    [--efa <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    const-string v21, "        (mutiple extras passed as Float[])"

    const-string v22, "    [--efal <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    const-string v23, "        (mutiple extras passed as List<Float>)"

    const-string v24, "    [--esa <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    const-string v25, "        (mutiple extras passed as String[]; to embed a comma into a string,"

    const-string v26, "         escape it using \"\\,\")"

    const-string v27, "    [--esal <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    const-string v28, "        (mutiple extras passed as List<String>; to embed a comma into a string,"

    const-string v29, "         escape it using \"\\,\")"

    const-string v30, "    [-f <FLAG>]"

    const-string v31, "    [--grant-read-uri-permission] [--grant-write-uri-permission]"

    const-string v32, "    [--grant-persistable-uri-permission] [--grant-prefix-uri-permission]"

    const-string v33, "    [--debug-log-resolution] [--exclude-stopped-packages]"

    const-string v34, "    [--include-stopped-packages]"

    const-string v35, "    [--activity-brought-to-front] [--activity-clear-top]"

    const-string v36, "    [--activity-clear-when-task-reset] [--activity-exclude-from-recents]"

    const-string v37, "    [--activity-launched-from-history] [--activity-multiple-task]"

    const-string v38, "    [--activity-no-animation] [--activity-no-history]"

    const-string v39, "    [--activity-no-user-action] [--activity-previous-is-top]"

    const-string v40, "    [--activity-reorder-to-front] [--activity-reset-task-if-needed]"

    const-string v41, "    [--activity-single-top] [--activity-clear-task]"

    const-string v42, "    [--activity-task-on-home] [--activity-match-external]"

    const-string v43, "    [--receiver-registered-only] [--receiver-replace-pending]"

    const-string v44, "    [--receiver-foreground] [--receiver-no-abort]"

    const-string v45, "    [--receiver-include-background]"

    const-string v46, "    [--selector]"

    const-string v47, "    [<URI> | <PACKAGE> | <COMPONENT>]"

    .line 8080
    filled-new-array/range {v0 .. v47}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x30

    if-ge v1, v2, :cond_0

    .line 8130
    aget-object v2, v0, v1

    .line 8131
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v3, p0

    .line 8132
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 11333
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11334
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 11336
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const-string v4, "Intent"

    if-ltz v2, :cond_6

    .line 11338
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 11339
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "action"

    .line 11340
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 11341
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    const-string v7, "data"

    .line 11342
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 11343
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string/jumbo v7, "type"

    .line 11344
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11345
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v7, "ident"

    .line 11346
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 11347
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string v7, "component"

    .line 11348
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 11349
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string v7, "flags"

    .line 11350
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v4, 0x10

    .line 11351
    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 11353
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreFromXml: unknown attribute="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11359
    :cond_6
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v3, :cond_9

    const/4 v5, 0x3

    if-ne v2, v5, :cond_7

    .line 11360
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ge v5, v1, :cond_9

    :cond_7
    const/4 v5, 0x2

    if-ne v2, v5, :cond_6

    .line 11362
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "categories"

    .line 11363
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 11364
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_3
    if-ltz v2, :cond_6

    .line 11366
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 11369
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreFromXml: unknown name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11370
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_9
    return-object v0
.end method

.method private toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 11031
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 11033
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11034
    iget-object p2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string p2, "SEL;"

    .line 11035
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11039
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object p2, v0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11043
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    const-string p2, "#Intent;"

    .line 11044
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11045
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p2, "end"

    .line 11046
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/16 p5, 0x3b

    if-eqz p2, :cond_0

    const-string/jumbo v0, "scheme="

    .line 11053
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11055
    :cond_0
    iget-object p2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "action="

    .line 11056
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11058
    :cond_1
    iget-object p2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    move p2, p3

    .line 11059
    :goto_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    const-string v0, "category="

    .line 11060
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 11063
    :cond_2
    iget-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    const-string v0, "/"

    if-eqz p2, :cond_3

    const-string/jumbo p2, "type="

    .line 11064
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11066
    :cond_3
    iget-object p2, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string p2, "identifier="

    .line 11067
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11069
    :cond_4
    iget p2, p0, Landroid/content/Intent;->mFlags:I

    if-eqz p2, :cond_5

    const-string p2, "launchFlags=0x"

    .line 11070
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11072
    :cond_5
    iget-object p2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "package="

    .line 11073
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11075
    :cond_6
    iget-object p2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz p2, :cond_7

    const-string p2, "component="

    .line 11076
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11077
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p4

    .line 11076
    invoke-static {p4, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 11077
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11079
    :cond_7
    iget-object p2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_8

    const-string/jumbo p2, "sourceBounds="

    .line 11080
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 11081
    invoke-virtual {p4}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 11082
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11084
    :cond_8
    iget-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_13

    .line 11085
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 11086
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 11088
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    const/16 v1, 0x53

    goto :goto_2

    .line 11089
    :cond_a
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    const/16 v1, 0x42

    goto :goto_2

    .line 11090
    :cond_b
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_c

    const/16 v1, 0x62

    goto :goto_2

    .line 11091
    :cond_c
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_d

    const/16 v1, 0x63

    goto :goto_2

    .line 11092
    :cond_d
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_e

    const/16 v1, 0x64

    goto :goto_2

    .line 11093
    :cond_e
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_f

    const/16 v1, 0x66

    goto :goto_2

    .line 11094
    :cond_f
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_10

    const/16 v1, 0x69

    goto :goto_2

    .line 11095
    :cond_10
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_11

    const/16 v1, 0x6c

    goto :goto_2

    .line 11096
    :cond_11
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_12

    const/16 v1, 0x73

    goto :goto_2

    :cond_12
    move v1, p3

    :goto_2
    if-eqz v1, :cond_9

    .line 11100
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 11101
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11102
    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x3d

    .line 11103
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11104
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11105
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_13
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 9340
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 9341
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 9343
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFlags(I)Landroid/content/Intent;
    .locals 1

    .line 10249
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/Intent;->mFlags:I

    return-object p0
.end method

.method public addPrivateFlags(I)Landroid/content/Intent;
    .locals 1

    .line 11813
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/HookIntent;->addPrivateFlags(I)V

    :cond_0
    return-object p0
.end method

.method public canStripForHistory()Z
    .locals 1

    .line 8895
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isParcelled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 7066
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public cloneFilter()Landroid/content/Intent;
    .locals 2

    .line 7074
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 11112
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 10872
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->dumpDebugWithoutFieldId(Landroid/util/proto/ProtoOutputStream;ZZZZ)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 10866
    invoke-virtual/range {v0 .. v7}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V
    .locals 6

    .line 10878
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 10879
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->dumpDebugWithoutFieldId(Landroid/util/proto/ProtoOutputStream;ZZZZ)V

    .line 10880
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public fillIn(Landroid/content/Intent;I)I
    .locals 5

    .line 10513
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v3, :cond_0

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    .line 10515
    :cond_0
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 10518
    :goto_0
    iget-object v3, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v3, :cond_2

    iget-object v4, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v4, :cond_5

    :cond_2
    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v4, :cond_4

    :cond_3
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_5

    .line 10521
    :cond_4
    iput-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 10522
    iget-object v1, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x2

    move v1, v2

    .line 10526
    :cond_5
    iget-object v3, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v4, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v4, :cond_6

    and-int/lit16 v4, p2, 0x100

    if-eqz v4, :cond_7

    .line 10528
    :cond_6
    iput-object v3, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    or-int/lit16 v0, v0, 0x100

    .line 10531
    :cond_7
    iget-object v3, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v3, :cond_a

    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v4, :cond_8

    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_a

    :cond_8
    if-eqz v3, :cond_9

    .line 10534
    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :cond_9
    or-int/lit8 v0, v0, 0x4

    .line 10538
    :cond_a
    iget-object v3, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_b

    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_c

    .line 10541
    :cond_b
    iget-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-nez v4, :cond_c

    .line 10542
    iput-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x10

    .line 10548
    :cond_c
    iget-object v3, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v3, :cond_d

    and-int/lit8 v3, p2, 0x40

    if-eqz v3, :cond_d

    .line 10549
    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 10550
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v3, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    const/4 v3, 0x0

    .line 10551
    iput-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x40

    .line 10555
    :cond_d
    iget-object v3, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v3, :cond_f

    iget-object v4, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v4, :cond_e

    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_f

    .line 10557
    :cond_e
    iput-object v3, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    or-int/lit16 v0, v0, 0x80

    move v1, v2

    .line 10564
    :cond_f
    iget-object v3, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_10

    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_10

    .line 10565
    iput-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    or-int/lit8 v0, v0, 0x8

    .line 10568
    :cond_10
    iget v3, p0, Landroid/content/Intent;->mFlags:I

    iget v4, p1, Landroid/content/Intent;->mFlags:I

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/Intent;->mFlags:I

    .line 10570
    iget-object v3, p1, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    iput-object v3, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    .line 10572
    iget-object v3, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_12

    iget-object v3, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_11

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_12

    .line 10574
    :cond_11
    new-instance p2, Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {p2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    or-int/lit8 v0, v0, 0x20

    .line 10577
    :cond_12
    iget-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez p2, :cond_13

    .line 10578
    iget-object p2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_14

    .line 10579
    new-instance p2, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {p2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    goto :goto_1

    .line 10582
    :cond_13
    iget-object p2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_14

    .line 10584
    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    iget-object v3, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {p2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 10585
    iget-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 10586
    iput-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v2, "Intent"

    const-string v3, "Failure filling in extras"

    .line 10594
    invoke-static {v2, v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    move v2, v1

    :goto_1
    if-eqz v2, :cond_15

    .line 10597
    iget p2, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-ne p2, v1, :cond_15

    iget p1, p1, Landroid/content/Intent;->mContentUserHint:I

    if-eq p1, v1, :cond_15

    .line 10599
    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    :cond_15
    return v0
.end method

.method public filterEquals(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 10662
    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 10663
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v2, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 10664
    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 10665
    :cond_3
    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 10666
    :cond_4
    invoke-direct {p0}, Landroid/content/Intent;->hasPackageEquivalentComponent()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p1}, Landroid/content/Intent;->hasPackageEquivalentComponent()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 10667
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 10670
    :cond_6
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 10671
    :cond_7
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    iget-object p1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v0

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method public filterHashCode()I
    .locals 2

    .line 10695
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10696
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 10698
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 10699
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 10701
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 10702
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 10704
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 10705
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 10707
    :cond_3
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 10708
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 10710
    :cond_4
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_5

    .line 10711
    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 10713
    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_6

    .line 10714
    invoke-virtual {v0}, Landroid/util/ArraySet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    return v1
.end method

.method public fixUris(I)V
    .locals 5

    .line 11589
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11591
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 11593
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_1

    .line 11594
    invoke-virtual {v0, p1}, Landroid/content/ClipData;->fixUris(I)V

    .line 11596
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    .line 11597
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v1, :cond_2

    .line 11598
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 11600
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    .line 11602
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11603
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11605
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 11606
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 11607
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-static {v4, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11609
    :cond_3
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1

    .line 11611
    :cond_4
    invoke-direct {p0}, Landroid/content/Intent;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "output"

    .line 11612
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_5

    .line 11614
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_5
    :goto_1
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 8147
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaType()Ljava/lang/String;
    .locals 1

    .line 11830
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/HookIntent;->getAreaType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getBooleanArrayExtra(Ljava/lang/String;)[Z
    .locals 1

    .line 8676
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 1

    .line 8412
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8413
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :goto_0
    return p2
.end method

.method public getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 8816
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getByteArrayExtra(Ljava/lang/String;)[B
    .locals 1

    .line 8690
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getByteExtra(Ljava/lang/String;B)B
    .locals 1

    .line 8429
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8430
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    :goto_0
    return p2
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8299
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getCharArrayExtra(Ljava/lang/String;)[C
    .locals 1

    .line 8718
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCharExtra(Ljava/lang/String;C)C
    .locals 1

    .line 8463
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8464
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result p2

    :goto_0
    return p2
.end method

.method public getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 1

    .line 8802
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 8662
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 8560
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .line 8319
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .line 8959
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentUserHint()I
    .locals 1

    .line 8324
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    return v0
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    .line 8162
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 1

    .line 8170
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDoubleArrayExtra(Ljava/lang/String;)[D
    .locals 1

    .line 8774
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getDoubleExtra(Ljava/lang/String;D)D
    .locals 1

    .line 8531
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8532
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 8396
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8857
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 8858
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 8874
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 8875
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 8923
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    return v0
.end method

.method public getFloatArrayExtra(Ljava/lang/String;)[F
    .locals 1

    .line 8760
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getFloatExtra(Ljava/lang/String;F)F
    .locals 1

    .line 8514
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8515
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    :goto_0
    return p2
.end method

.method public getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8835
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 8272
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIntArrayExtra(Ljava/lang/String;)[I
    .locals 1

    .line 8732
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 1

    .line 8480
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8481
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    :goto_0
    return p2
.end method

.method public getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8632
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLaunchAreaType()Ljava/lang/String;
    .locals 1

    .line 11841
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/HookIntent;->getLaunchAreaType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getLaunchScreenId()I
    .locals 1

    .line 11837
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/HookIntent;->getLaunchScreenId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLaunchToken()Ljava/lang/String;
    .locals 1

    .line 8329
    iget-object v0, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLongArrayExtra(Ljava/lang/String;)[J
    .locals 1

    .line 8746
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLongExtra(Ljava/lang/String;J)J
    .locals 1

    .line 8497
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8498
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public getLunchRecord()Landroid/app/CompatAppRecord;
    .locals 1

    .line 11853
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/HookIntent;->getLunchRecord()Landroid/app/CompatAppRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 8944
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 1

    .line 8588
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 8603
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 8574
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPrivateFlags()I
    .locals 1

    .line 11804
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/HookIntent;->getPrivateFlags()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 8186
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getScreenId()I
    .locals 1

    .line 11822
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/HookIntent;->getScreenId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSelector()Landroid/content/Intent;
    .locals 1

    .line 8309
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    return-object v0
.end method

.method public getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1

    .line 8617
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getShortArrayExtra(Ljava/lang/String;)[S
    .locals 1

    .line 8704
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getShortExtra(Ljava/lang/String;S)S
    .locals 1

    .line 8446
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8447
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result p2

    :goto_0
    return p2
.end method

.method public getSourceBounds()Landroid/graphics/Rect;
    .locals 1

    .line 8968
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 8788
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8647
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 8546
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 8200
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 11844
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/HookIntent;->getUserId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1

    .line 8286
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .locals 1

    .line 8356
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasFileDescriptors()Z
    .locals 1

    .line 8364
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWebURI()Z
    .locals 3

    .line 11558
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 11561
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 11562
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v2, "http"

    .line 11565
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isDocument()Z
    .locals 2

    .line 11799
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExcludingStopped()Z
    .locals 2

    .line 8929
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImplicitImageCaptureIntent()Z
    .locals 1

    .line 11582
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/content/Intent;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWebIntent()Z
    .locals 2

    .line 11570
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11571
    invoke-virtual {p0}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeStripForHistory()Landroid/content/Intent;
    .locals 2

    .line 8906
    invoke-virtual {p0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 8909
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public migrateExtraStreamToClipData()Z
    .locals 1

    .line 11628
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public migrateExtraStreamToClipData(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "output"

    .line 11642
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 11645
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_1

    return v2

    .line 11647
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.CHOOSER"

    .line 11648
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_0
    const-string v0, "android.intent.extra.INTENT"

    .line 11656
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 11658
    invoke-virtual {v0, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, v2

    goto :goto_0

    :catch_0
    :cond_2
    move v0, v2

    :goto_0
    :try_start_1
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    .line 11663
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11665
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 11666
    aget-object v3, v1, v2

    check-cast v3, Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 11668
    invoke-virtual {v3, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    or-int/2addr v0, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    :cond_4
    return v0

    :cond_5
    const-string v3, "android.intent.action.SEND"

    .line 11676
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.intent.extra.HTML_TEXT"

    const-string v5, "android.intent.extra.TEXT"

    const-string v6, "android.intent.extra.STREAM"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_7

    .line 11678
    :try_start_2
    invoke-virtual {p0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 11679
    invoke-virtual {p0, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 11680
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_6

    if-nez v0, :cond_6

    if-eqz v1, :cond_f

    .line 11682
    :cond_6
    new-instance v3, Landroid/content/ClipData;

    new-array v4, v8, [Ljava/lang/String;

    .line 11683
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    new-instance v5, Landroid/content/ClipData$Item;

    invoke-direct {v5, v0, v1, v7, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v3, v7, v4, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 11685
    invoke-virtual {p0, v3}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 11686
    invoke-virtual {p0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    return v8

    :cond_7
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    .line 11692
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 11694
    :try_start_3
    invoke-virtual {p0, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 11695
    invoke-virtual {p0, v5}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11696
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, -0x1

    if-eqz p1, :cond_8

    .line 11699
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_8
    if-eqz v0, :cond_a

    if-ltz v3, :cond_9

    .line 11702
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_9

    return v2

    .line 11706
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_a
    if-eqz v1, :cond_c

    if-ltz v3, :cond_b

    .line 11709
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_b

    return v2

    .line 11713
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_c
    if-lez v3, :cond_f

    .line 11716
    new-instance v4, Landroid/content/ClipData;

    new-array v5, v8, [Ljava/lang/String;

    .line 11717
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 11718
    invoke-static {p1, v0, v1, v2}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {v4, v7, v5, v6}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move v5, v8

    :goto_2
    if-ge v5, v3, :cond_d

    .line 11721
    invoke-static {p1, v0, v1, v5}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 11724
    :cond_d
    invoke-virtual {p0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 11725
    invoke-virtual {p0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    return v8

    .line 11730
    :cond_e
    invoke-direct {p0}, Landroid/content/Intent;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 11733
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v1, :cond_f

    .line 11739
    invoke-direct {p0, p1, v1}, Landroid/content/Intent;->maybeConvertFileToContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 11740
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, ""

    .line 11742
    invoke-static {v0, p1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 p1, 0x3

    .line 11743
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return v8

    :catch_2
    :cond_f
    return v2
.end method

.method public prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    .locals 3

    const/4 v0, 0x1

    .line 11523
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setDefusable(Z)V

    .line 11525
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 11528
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 11530
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_1

    .line 11531
    invoke-virtual {v0, p2}, Landroid/content/ClipData;->prepareToEnterProcess(Landroid/content/AttributionSource;)V

    .line 11534
    :cond_1
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    .line 11535
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_2

    .line 11536
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    .line 11537
    iput v1, p0, Landroid/content/Intent;->mContentUserHint:I

    :cond_2
    if-eqz p1, :cond_3

    .line 11542
    iget p1, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 11547
    :cond_3
    iget-object p1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v0, "android.bluetooth."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 11548
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11549
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_4

    .line 11551
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->prepareToEnterProcess(Landroid/content/AttributionSource;)V

    :cond_4
    return-void
.end method

.method public prepareToLeaveProcess(Landroid/content/Context;)V
    .locals 1

    .line 11419
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 11420
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 11421
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    return-void
.end method

.method public prepareToLeaveProcess(Z)V
    .locals 7

    const/4 v0, 0x0

    .line 11430
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 11432
    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 11433
    invoke-virtual {v1, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    .line 11435
    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_1

    .line 11436
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ClipData;->prepareToLeaveProcess(ZI)V

    .line 11439
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 11440
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 11441
    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 11442
    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    .line 11446
    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string v2, "Intent.getData()"

    const/16 v3, 0x10

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_14

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz p1, :cond_14

    .line 11448
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v0, v5

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v0, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_a
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_b
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_c
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_d
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_e
    const-string v0, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_f
    const-string v0, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_10
    const-string v6, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 11469
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 11473
    :cond_14
    :pswitch_0
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/os/StrictMode;->vmContentUriWithoutPermissionEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    .line 11475
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "android.provider.action.QUICK_CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 11481
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri;->checkContentUriWithoutPermission(Ljava/lang/String;I)V

    .line 11486
    :cond_15
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_16

    .line 11487
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    .line 11488
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    const-class v0, Landroid/os/storage/StorageManager;

    .line 11489
    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    .line 11490
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11492
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 11491
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/storage/StorageManager;->translateAppToSystem(Ljava/io/File;II)Ljava/io/File;

    move-result-object p1

    .line 11493
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 11494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Translated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Intent"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11495
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 11500
    :cond_16
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 11501
    iget p1, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_17

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_17

    .line 11503
    invoke-static {p0}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(Landroid/content/Intent;)V

    goto :goto_2

    :cond_17
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_18

    .line 11505
    invoke-static {p0}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(Landroid/content/Intent;)V

    goto :goto_2

    :cond_18
    and-int/2addr p1, v3

    if-eqz p1, :cond_1a

    .line 11506
    iget-object p1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz p1, :cond_19

    const-string v0, "android.intent.category.BROWSABLE"

    .line 11507
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz p1, :cond_1a

    .line 11512
    :cond_19
    invoke-static {p0}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(Landroid/content/Intent;)V

    :cond_1a
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78257653 -> :sswitch_10
        -0x6cb4d57b -> :sswitch_f
        -0x6342a1e0 -> :sswitch_e
        -0x5a4113c8 -> :sswitch_d
        -0x4418042d -> :sswitch_c
        -0x39738481 -> :sswitch_b
        -0x254e496f -> :sswitch_a
        0xf54386e -> :sswitch_9
        0x187b165e -> :sswitch_8
        0x22b70ddb -> :sswitch_7
        0x32c98ebd -> :sswitch_6
        0x543610e0 -> :sswitch_5
        0x5559c83a -> :sswitch_4
        0x5f557da2 -> :sswitch_3
        0x7277a986 -> :sswitch_2
        0x751aa7fa -> :sswitch_1
        0x79e65f52 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public prepareToLeaveUser(I)V
    .locals 2

    .line 9446
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 9447
    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    :cond_0
    return-void
.end method

.method public putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 9815
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9816
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9818
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .locals 1

    .line 9490
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9491
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9493
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;C)Landroid/content/Intent;
    .locals 1

    .line 9513
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9514
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9516
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    .locals 1

    .line 9628
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9629
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9631
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    .locals 1

    .line 9605
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9606
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9608
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    .line 9559
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9560
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9562
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 1

    .line 9582
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9583
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9585
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 10091
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 10092
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10094
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10119
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 10120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10122
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1

    .line 9697
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9698
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9700
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1

    .line 9838
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9839
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9841
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1

    .line 9674
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9675
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9677
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 9651
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9652
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9654
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;S)Landroid/content/Intent;
    .locals 1

    .line 9536
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9537
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9539
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    .line 9467
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9468
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9470
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 1

    .line 9884
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9885
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9887
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[C)Landroid/content/Intent;
    .locals 1

    .line 9930
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9931
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9933
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[D)Landroid/content/Intent;
    .locals 1

    .line 10022
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 10023
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10025
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
    .locals 1

    .line 9999
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 10000
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10002
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    .locals 1

    .line 9953
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9954
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9956
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[J)Landroid/content/Intent;
    .locals 1

    .line 9976
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9977
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9979
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1

    .line 9720
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9721
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9723
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1

    .line 10068
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 10069
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10071
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 10045
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 10046
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10048
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[S)Landroid/content/Intent;
    .locals 1

    .line 9907
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9908
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9910
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;
    .locals 1

    .line 9861
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9862
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9864
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public putExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 10134
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 10135
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 10136
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    goto :goto_0

    .line 10138
    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 10146
    :cond_1
    :goto_0
    iget p1, p1, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    .line 10148
    iget p1, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/content/Intent;->mLocalFlags:I

    :cond_2
    return-object p0
.end method

.method public putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 10165
    invoke-virtual {p1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10166
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 10168
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 10169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10171
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 9768
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9769
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9771
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 9744
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9745
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9747
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 9791
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 9792
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 9794
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 11185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11186
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 11187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 11188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    .line 11189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 11191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 11192
    invoke-static {}, Landroid/content/HookIntent;->getCreator()Landroid/os/Parcelable$Creator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11193
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/HookIntent;

    iput-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    .line 11196
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 11197
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 11200
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 11203
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    .line 11205
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 11208
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 11211
    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 11214
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 11215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 11218
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 11219
    new-instance v0, Landroid/content/ClipData;

    invoke-direct {v0, p1}, Landroid/content/ClipData;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 11221
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 11222
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public removeCategory(Ljava/lang/String;)V
    .locals 1

    .line 9355
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 9356
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 9357
    iget-object p1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 9358
    iput-object p1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :cond_0
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 1

    .line 10205
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 10206
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 10207
    iget-object p1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 10208
    iput-object p1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public removeFlags(I)V
    .locals 1

    .line 10262
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/content/Intent;->mFlags:I

    return-void
.end method

.method public removePrivateFlags(I)V
    .locals 1

    .line 11818
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/HookIntent;->removePrivateFlags(I)V

    :cond_0
    return-void
.end method

.method public removeUnsafeExtras()V
    .locals 1

    .line 8884
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 8885
    invoke-virtual {v0}, Landroid/os/Bundle;->filterValues()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 10183
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object p1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    if-eqz p1, :cond_0

    .line 10195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .locals 2

    .line 9019
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/high16 v0, 0x10000

    .line 9023
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9026
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 9053
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 9055
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    or-int/2addr p2, v0

    .line 9060
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9063
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;
    .locals 4

    .line 9080
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    return-object v0

    .line 9084
    :cond_0
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const/4 v0, 0x0

    .line 9089
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 9090
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 9091
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    goto :goto_1

    .line 9094
    :cond_2
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_3

    move-object p2, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9097
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple system services handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object p2
.end method

.method public resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    .line 8233
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 8236
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 8237
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8238
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveType(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 8215
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    .line 8257
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 8258
    iget-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p1

    .line 8260
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11304
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "action"

    .line 11305
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11307
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 11308
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11310
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v2, "type"

    .line 11311
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11313
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, "ident"

    .line 11314
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11316
    :cond_3
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    .line 11317
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "component"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11319
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "flags"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11321
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_6

    const-string v0, "categories"

    .line 11322
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11323
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    .line 11324
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "category"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11326
    :cond_5
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    return-void
.end method

.method public setAction(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    if-eqz p1, :cond_0

    .line 9117
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public setAllowFds(Z)V
    .locals 1

    .line 8370
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 8371
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    :cond_0
    return-void
.end method

.method public setAreaType(Ljava/lang/String;)V
    .locals 1

    .line 11833
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/HookIntent;->setAreaType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 10374
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 10335
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 10355
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .locals 0

    .line 9434
    iput-object p1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    return-void
.end method

.method public setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 0

    .line 10314
    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setData(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 0

    .line 9143
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 9144
    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 0

    .line 9171
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 9260
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 9261
    iput-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 9291
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public setDefusable(Z)V
    .locals 1

    .line 8377
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 8378
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_0
    return-void
.end method

.method public setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 8345
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 8346
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public setFlags(I)Landroid/content/Intent;
    .locals 0

    .line 10234
    iput p1, p0, Landroid/content/Intent;->mFlags:I

    return-object p0
.end method

.method public setIdentifier(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 9319
    iput-object p1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public setLaunchAreaType(Ljava/lang/String;)V
    .locals 1

    .line 11839
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/HookIntent;->setLaunchAreaType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLaunchScreenId(I)V
    .locals 1

    .line 11835
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/HookIntent;->setLaunchScreenId(I)V

    :cond_0
    return-void
.end method

.method public setLaunchToken(Ljava/lang/String;)V
    .locals 0

    .line 8334
    iput-object p1, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    return-void
.end method

.method public setLunchRecord(Landroid/app/CompatAppRecord;)V
    .locals 1

    .line 11851
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/HookIntent;->setLunchRecord(Landroid/app/CompatAppRecord;)V

    :cond_0
    return-void
.end method

.method public setPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    if-eqz p1, :cond_1

    .line 10282
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto :goto_0

    .line 10283
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t set package name when selector is already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10286
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setPrivateFlags(I)Landroid/content/Intent;
    .locals 1

    .line 11808
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/HookIntent;->setPrivateFlags(I)V

    :cond_0
    return-object p0
.end method

.method public setScreenId(I)V
    .locals 1

    .line 11826
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/HookIntent;->setScreenId(I)V

    :cond_0
    return-void
.end method

.method public setSelector(Landroid/content/Intent;)V
    .locals 1

    if-eq p1, p0, :cond_2

    if-eqz p1, :cond_1

    .line 9399
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9400
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t set selector when package name is already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9403
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    return-void

    .line 9396
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Intent being set as a selector of itself"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSourceBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 10385
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10387
    iput-object p1, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method public setType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 9200
    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 9201
    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 9231
    invoke-static {p1}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(I)V
    .locals 1

    .line 11848
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/HookIntent;->setUserId(I)V

    :cond_0
    return-void
.end method

.method public toInsecureString()Ljava/lang/String;
    .locals 7

    .line 10733
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Intent { "

    .line 10735
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    .line 10736
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    const-string v0, " }"

    .line 10737
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10739
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(ZZZZ)Ljava/lang/String;
    .locals 7

    .line 10744
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, p0

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 10745
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 10746
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toShortString(Ljava/lang/StringBuilder;ZZZZ)V
    .locals 7

    .line 10753
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "act="

    .line 10754
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 10757
    :goto_0
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    const/16 v4, 0x20

    if-eqz v3, :cond_4

    if-nez v0, :cond_1

    .line 10759
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "cat=["

    .line 10762
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 10763
    :goto_1
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    if-lez v0, :cond_2

    const/16 v3, 0x2c

    .line 10764
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10765
    :cond_2
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "]"

    .line 10767
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 10769
    :cond_4
    iget-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v3, :cond_7

    if-nez v0, :cond_5

    .line 10771
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "dat="

    .line 10774
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    .line 10776
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 10778
    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v2

    .line 10781
    :cond_7
    iget-object v3, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v3, :cond_9

    if-nez v0, :cond_8

    .line 10783
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    const-string/jumbo v0, "typ="

    .line 10786
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 10788
    :cond_9
    iget-object v3, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v3, :cond_b

    if-nez v0, :cond_a

    .line 10790
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    const-string v0, "id="

    .line 10793
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 10795
    :cond_b
    iget v3, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v3, :cond_d

    if-nez v0, :cond_c

    .line 10797
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    const-string v0, "flg=0x"

    .line 10800
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 10803
    :cond_d
    iget-object v3, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/content/HookIntent;->getPrivateFlags()I

    move-result v3

    goto :goto_3

    :cond_e
    move v3, v2

    :goto_3
    if-eqz v3, :cond_10

    if-nez v0, :cond_f

    .line 10806
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    const-string v0, "pflg=0x"

    .line 10809
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 10812
    :cond_10
    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_12

    if-nez v0, :cond_11

    .line 10814
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    const-string v0, "pkg="

    .line 10817
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    :cond_12
    if-eqz p3, :cond_14

    .line 10819
    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_14

    if-nez v0, :cond_13

    .line 10821
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    const-string v0, "cmp="

    .line 10824
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 10826
    :cond_14
    iget-object v3, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_16

    if-nez v0, :cond_15

    .line 10828
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    const-string v0, "bnds="

    .line 10831
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 10833
    :cond_16
    iget-object v3, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v3, :cond_1a

    if-nez v0, :cond_17

    .line 10835
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    const-string v0, "clip={"

    .line 10837
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10838
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz p5, :cond_19

    if-eqz p2, :cond_18

    goto :goto_4

    :cond_18
    move v1, v2

    :cond_19
    :goto_4
    invoke-virtual {v0, p1, v1}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;Z)V

    const/16 v0, 0x7d

    .line 10840
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    :cond_1a
    if-eqz p4, :cond_1c

    .line 10842
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1c

    if-nez v0, :cond_1b

    .line 10844
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v0, "(has extras)"

    .line 10847
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_1c
    move v2, v0

    .line 10849
    :goto_5
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1e

    if-nez v2, :cond_1d

    .line 10851
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    const-string/jumbo v0, "u="

    .line 10854
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10856
    :cond_1e
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_1f

    const-string v0, " sel="

    .line 10857
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10858
    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    const-string/jumbo p2, "}"

    .line 10859
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 10721
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Intent { "

    .line 10723
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    .line 10724
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    const-string v0, " }"

    .line 10725
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10727
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 10936
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri(I)Ljava/lang/String;
    .locals 9

    .line 10955
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 10957
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "android-app://"

    .line 10962
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10963
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10965
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 10966
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v0, 0x2f

    .line 10968
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10969
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10970
    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10972
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10973
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10974
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10976
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10978
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0x3f

    .line 10980
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10981
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10983
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0x23

    .line 10985
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10986
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v2, 0x0

    if-nez v1, :cond_3

    const-string v0, "android.intent.action.MAIN"

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.VIEW"

    :goto_0
    move-object v3, v0

    .line 10991
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    move-object v0, p0

    move-object v1, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 10993
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10958
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent must include an explicit package name to build an android-app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10996
    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    const-string v2, "intent:"

    if-eqz v0, :cond_c

    .line 10997
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_b

    .line 10999
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_b

    .line 11001
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-lt v7, v8, :cond_6

    const/16 v8, 0x7a

    if-le v7, v8, :cond_a

    :cond_6
    const/16 v8, 0x41

    if-lt v7, v8, :cond_7

    const/16 v8, 0x5a

    if-le v7, v8, :cond_a

    :cond_7
    const/16 v8, 0x30

    if-lt v7, v8, :cond_8

    const/16 v8, 0x39

    if-le v7, v8, :cond_a

    :cond_8
    const/16 v8, 0x2e

    if-eq v7, v8, :cond_a

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_a

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_9

    goto :goto_2

    :cond_9
    const/16 v3, 0x3a

    if-ne v7, v3, :cond_b

    if-lez v5, :cond_b

    .line 11008
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 11009
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    .line 11010
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11018
    :cond_b
    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_d

    .line 11021
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_4
    move-object v2, v1

    const/4 v4, 0x0

    const-string v3, "android.intent.action.VIEW"

    move-object v0, p0

    move-object v1, v6

    move v5, p1

    .line 11024
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11026
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 11116
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 11117
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 11118
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 11119
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 11120
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11122
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 11123
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11124
    iget-object v0, p0, Landroid/content/Intent;->mHookIntent:Landroid/content/HookIntent;

    invoke-virtual {v0, p1, p2}, Landroid/content/HookIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 11126
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11129
    :goto_0
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 11130
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 11132
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 11133
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11134
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 11136
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11139
    :goto_1
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    .line 11140
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 11141
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_3

    .line 11143
    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11146
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11149
    :cond_3
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 11150
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11151
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 11153
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11156
    :goto_3
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_5

    .line 11157
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11158
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 11160
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11162
    :goto_4
    iget p2, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11163
    iget-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
