.class public Landroid/os/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UserManager$EnforcingUser;,
        Landroid/os/UserManager$CheckedUserOperationException;,
        Landroid/os/UserManager$UserOperationException;,
        Landroid/os/UserManager$UserOperationResult;,
        Landroid/os/UserManager$RemoveResult;,
        Landroid/os/UserManager$UserSwitchabilityResult;,
        Landroid/os/UserManager$UserRestrictionKey;,
        Landroid/os/UserManager$UserRestrictionSource;,
        Landroid/os/UserManager$QuietModeFlag;
    }
.end annotation


# static fields
.field private static final ACTION_CREATE_USER:Ljava/lang/String; = "android.os.action.CREATE_USER"

.field public static final ACTION_USER_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.os.action.USER_RESTRICTIONS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ALLOW_PARENT_PROFILE_APP_LINKING:Ljava/lang/String; = "allow_parent_profile_app_linking"

.field private static final CACHE_KEY_IS_USER_UNLOCKED_PROPERTY:Ljava/lang/String; = "cache_key.is_user_unlocked"

.field public static final DISALLOW_ADD_MANAGED_PROFILE:Ljava/lang/String; = "no_add_managed_profile"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISALLOW_ADD_USER:Ljava/lang/String; = "no_add_user"

.field public static final DISALLOW_ADJUST_VOLUME:Ljava/lang/String; = "no_adjust_volume"

.field public static final DISALLOW_AIRPLANE_MODE:Ljava/lang/String; = "no_airplane_mode"

.field public static final DISALLOW_AMBIENT_DISPLAY:Ljava/lang/String; = "no_ambient_display"

.field public static final DISALLOW_APPS_CONTROL:Ljava/lang/String; = "no_control_apps"

.field public static final DISALLOW_AUTOFILL:Ljava/lang/String; = "no_autofill"

.field public static final DISALLOW_BIOMETRIC:Ljava/lang/String; = "disallow_biometric"

.field public static final DISALLOW_BLUETOOTH:Ljava/lang/String; = "no_bluetooth"

.field public static final DISALLOW_BLUETOOTH_SHARING:Ljava/lang/String; = "no_bluetooth_sharing"

.field public static final DISALLOW_CAMERA:Ljava/lang/String; = "no_camera"

.field public static final DISALLOW_CAMERA_TOGGLE:Ljava/lang/String; = "disallow_camera_toggle"

.field public static final DISALLOW_CONFIG_BLUETOOTH:Ljava/lang/String; = "no_config_bluetooth"

.field public static final DISALLOW_CONFIG_BRIGHTNESS:Ljava/lang/String; = "no_config_brightness"

.field public static final DISALLOW_CONFIG_CELL_BROADCASTS:Ljava/lang/String; = "no_config_cell_broadcasts"

.field public static final DISALLOW_CONFIG_CREDENTIALS:Ljava/lang/String; = "no_config_credentials"

.field public static final DISALLOW_CONFIG_DATE_TIME:Ljava/lang/String; = "no_config_date_time"

.field public static final DISALLOW_CONFIG_LOCALE:Ljava/lang/String; = "no_config_locale"

.field public static final DISALLOW_CONFIG_LOCATION:Ljava/lang/String; = "no_config_location"

.field public static final DISALLOW_CONFIG_MOBILE_NETWORKS:Ljava/lang/String; = "no_config_mobile_networks"

.field public static final DISALLOW_CONFIG_PRIVATE_DNS:Ljava/lang/String; = "disallow_config_private_dns"

.field public static final DISALLOW_CONFIG_SCREEN_TIMEOUT:Ljava/lang/String; = "no_config_screen_timeout"

.field public static final DISALLOW_CONFIG_TETHERING:Ljava/lang/String; = "no_config_tethering"

.field public static final DISALLOW_CONFIG_VPN:Ljava/lang/String; = "no_config_vpn"

.field public static final DISALLOW_CONFIG_WIFI:Ljava/lang/String; = "no_config_wifi"

.field public static final DISALLOW_CONTENT_CAPTURE:Ljava/lang/String; = "no_content_capture"

.field public static final DISALLOW_CONTENT_SUGGESTIONS:Ljava/lang/String; = "no_content_suggestions"

.field public static final DISALLOW_CREATE_WINDOWS:Ljava/lang/String; = "no_create_windows"

.field public static final DISALLOW_CROSS_PROFILE_COPY_PASTE:Ljava/lang/String; = "no_cross_profile_copy_paste"

.field public static final DISALLOW_DATA_ROAMING:Ljava/lang/String; = "no_data_roaming"

.field public static final DISALLOW_DEBUGGING_FEATURES:Ljava/lang/String; = "no_debugging_features"

.field public static final DISALLOW_FACTORY_RESET:Ljava/lang/String; = "no_factory_reset"

.field public static final DISALLOW_FUN:Ljava/lang/String; = "no_fun"

.field public static final DISALLOW_INSTALL_APPS:Ljava/lang/String; = "no_install_apps"

.field public static final DISALLOW_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "no_install_unknown_sources"

.field public static final DISALLOW_INSTALL_UNKNOWN_SOURCES_GLOBALLY:Ljava/lang/String; = "no_install_unknown_sources_globally"

.field public static final DISALLOW_MICROPHONE_TOGGLE:Ljava/lang/String; = "disallow_microphone_toggle"

.field public static final DISALLOW_MODIFY_ACCOUNTS:Ljava/lang/String; = "no_modify_accounts"

.field public static final DISALLOW_MOUNT_PHYSICAL_MEDIA:Ljava/lang/String; = "no_physical_media"

.field public static final DISALLOW_NETWORK_RESET:Ljava/lang/String; = "no_network_reset"

.field public static final DISALLOW_OEM_UNLOCK:Ljava/lang/String; = "no_oem_unlock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISALLOW_OUTGOING_BEAM:Ljava/lang/String; = "no_outgoing_beam"

.field public static final DISALLOW_OUTGOING_CALLS:Ljava/lang/String; = "no_outgoing_calls"

.field public static final DISALLOW_PRINTING:Ljava/lang/String; = "no_printing"

.field public static final DISALLOW_RECORD_AUDIO:Ljava/lang/String; = "no_record_audio"

.field public static final DISALLOW_REMOVE_MANAGED_PROFILE:Ljava/lang/String; = "no_remove_managed_profile"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISALLOW_REMOVE_USER:Ljava/lang/String; = "no_remove_user"

.field public static final DISALLOW_RUN_IN_BACKGROUND:Ljava/lang/String; = "no_run_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DISALLOW_SAFE_BOOT:Ljava/lang/String; = "no_safe_boot"

.field public static final DISALLOW_SET_USER_ICON:Ljava/lang/String; = "no_set_user_icon"

.field public static final DISALLOW_SET_WALLPAPER:Ljava/lang/String; = "no_set_wallpaper"

.field public static final DISALLOW_SHARE_INTO_MANAGED_PROFILE:Ljava/lang/String; = "no_sharing_into_profile"

.field public static final DISALLOW_SHARE_LOCATION:Ljava/lang/String; = "no_share_location"

.field public static final DISALLOW_SMS:Ljava/lang/String; = "no_sms"

.field public static final DISALLOW_SYSTEM_ERROR_DIALOGS:Ljava/lang/String; = "no_system_error_dialogs"

.field public static final DISALLOW_UNIFIED_PASSWORD:Ljava/lang/String; = "no_unified_password"

.field public static final DISALLOW_UNINSTALL_APPS:Ljava/lang/String; = "no_uninstall_apps"

.field public static final DISALLOW_UNMUTE_DEVICE:Ljava/lang/String; = "disallow_unmute_device"

.field public static final DISALLOW_UNMUTE_MICROPHONE:Ljava/lang/String; = "no_unmute_microphone"

.field public static final DISALLOW_USB_FILE_TRANSFER:Ljava/lang/String; = "no_usb_file_transfer"

.field public static final DISALLOW_USER_SWITCH:Ljava/lang/String; = "no_user_switch"

.field public static final DISALLOW_WALLPAPER:Ljava/lang/String; = "no_wallpaper"

.field public static final ENSURE_VERIFY_APPS:Ljava/lang/String; = "ensure_verify_apps"

.field public static final EXTRA_USER_ACCOUNT_NAME:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_NAME"

.field public static final EXTRA_USER_ACCOUNT_OPTIONS:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_OPTIONS"

.field public static final EXTRA_USER_ACCOUNT_TYPE:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_TYPE"

.field public static final EXTRA_USER_NAME:Ljava/lang/String; = "android.os.extra.USER_NAME"

.field public static final KEY_RESTRICTIONS_PENDING:Ljava/lang/String; = "restrictions_pending"

.field public static final PIN_VERIFICATION_FAILED_INCORRECT:I = -0x3

.field public static final PIN_VERIFICATION_FAILED_NOT_SET:I = -0x2

.field public static final PIN_VERIFICATION_SUCCESS:I = -0x1

.field public static final QUIET_MODE_DISABLE_DONT_ASK_CREDENTIAL:I = 0x2

.field public static final QUIET_MODE_DISABLE_ONLY_IF_CREDENTIAL_NOT_REQUIRED:I = 0x1

.field public static final REMOVE_RESULT_ALREADY_BEING_REMOVED:I = 0x2

.field public static final REMOVE_RESULT_ERROR:I = 0x3

.field public static final REMOVE_RESULT_REMOVED:I = 0x0

.field public static final REMOVE_RESULT_SET_EPHEMERAL:I = 0x1

.field public static final RESTRICTION_NOT_SET:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESTRICTION_SOURCE_DEVICE_OWNER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESTRICTION_SOURCE_PROFILE_OWNER:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESTRICTION_SOURCE_SYSTEM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SWITCHABILITY_STATUS_OK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SWITCHABILITY_STATUS_SYSTEM_USER_LOCKED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SWITCHABILITY_STATUS_USER_IN_CALL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SWITCHABILITY_STATUS_USER_SWITCH_DISALLOWED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UserManager"

.field public static final USER_CREATION_FAILED_NOT_PERMITTED:I = 0x1

.field public static final USER_CREATION_FAILED_NO_MORE_USERS:I = 0x2

.field public static final USER_OPERATION_ERROR_CURRENT_USER:I = 0x4

.field public static final USER_OPERATION_ERROR_LOW_STORAGE:I = 0x5

.field public static final USER_OPERATION_ERROR_MANAGED_PROFILE:I = 0x2

.field public static final USER_OPERATION_ERROR_MAX_RUNNING_USERS:I = 0x3

.field public static final USER_OPERATION_ERROR_MAX_USERS:I = 0x6

.field public static final USER_OPERATION_ERROR_UNKNOWN:I = 0x1

.field public static final USER_OPERATION_SUCCESS:I = 0x0

.field public static final USER_TYPE_FULL_DEMO:Ljava/lang/String; = "android.os.usertype.full.DEMO"

.field public static final USER_TYPE_FULL_GUEST:Ljava/lang/String; = "android.os.usertype.full.GUEST"

.field public static final USER_TYPE_FULL_RESTRICTED:Ljava/lang/String; = "android.os.usertype.full.RESTRICTED"

.field public static final USER_TYPE_FULL_SECONDARY:Ljava/lang/String; = "android.os.usertype.full.SECONDARY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_TYPE_FULL_SYSTEM:Ljava/lang/String; = "android.os.usertype.full.SYSTEM"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_TYPE_PROFILE_CLONE:Ljava/lang/String; = "android.os.usertype.profile.CLONE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_TYPE_PROFILE_MANAGED:Ljava/lang/String; = "android.os.usertype.profile.MANAGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_TYPE_PROFILE_TEST:Ljava/lang/String; = "android.os.usertype.profile.TEST"

.field public static final USER_TYPE_SYSTEM_HEADLESS:Ljava/lang/String; = "android.os.usertype.system.HEADLESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsManagedProfileCached:Ljava/lang/Boolean;

.field private mIsProfileCached:Ljava/lang/Boolean;

.field private final mIsUserUnlockedCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsUserUnlockingOrUnlockedCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IUserManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IUserManager;)V
    .locals 3

    .line 1729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2483
    new-instance v0, Landroid/os/UserManager$1;

    const/16 v1, 0x20

    const-string v2, "cache_key.is_user_unlocked"

    invoke-direct {v0, p0, v1, v2}, Landroid/os/UserManager$1;-><init>(Landroid/os/UserManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/os/UserManager;->mIsUserUnlockedCache:Landroid/app/PropertyInvalidatedCache;

    .line 2497
    new-instance v0, Landroid/os/UserManager$2;

    invoke-direct {v0, p0, v1, v2}, Landroid/os/UserManager$2;-><init>(Landroid/os/UserManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/os/UserManager;->mIsUserUnlockingOrUnlockedCache:Landroid/app/PropertyInvalidatedCache;

    .line 1730
    iput-object p2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 1731
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 1732
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    iput p1, p0, Landroid/os/UserManager;->mUserId:I

    return-void
.end method

.method static synthetic access$000(Landroid/os/UserManager;)Landroid/os/IUserManager;
    .locals 0

    .line 82
    iget-object p0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    return-object p0
.end method

.method private areThereUsersToWhichToSwitch()Z
    .locals 4

    .line 4468
    invoke-virtual {p0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4473
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4474
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-le v2, v0, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public static createUserCreationIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/Intent;
    .locals 2

    .line 3205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.CREATE_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v1, "android.os.extra.USER_NAME"

    .line 3207
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 3210
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType must be specified if accountName is specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    const-string p0, "android.os.extra.USER_ACCOUNT_NAME"

    .line 3214
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz p2, :cond_4

    const-string p0, "android.os.extra.USER_ACCOUNT_TYPE"

    .line 3217
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-eqz p3, :cond_5

    const-string p0, "android.os.extra.USER_ACCOUNT_OPTIONS"

    .line 3220
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_5
    return-object v0
.end method

.method public static get(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 1

    const-string/jumbo v0, "user"

    .line 1725
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public static getMaxSupportedUsers()I
    .locals 2

    .line 4416
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "JVP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4418
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "fw.max_users"

    .line 4417
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProfiles(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 3782
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p1

    .line 3783
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3784
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 3785
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getUserTypeForStatsd(Ljava/lang/String;)I
    .locals 10

    .line 2070
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "android.os.usertype.profile.CLONE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    move v9, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "android.os.usertype.full.DEMO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v9, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v9, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "android.os.usertype.full.SECONDARY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v9, v4

    goto :goto_0

    :sswitch_4
    const-string v0, "android.os.usertype.full.SYSTEM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v9, v5

    goto :goto_0

    :sswitch_5
    const-string v0, "android.os.usertype.system.HEADLESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v9, v6

    goto :goto_0

    :sswitch_6
    const-string v0, "android.os.usertype.profile.MANAGED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v9, v7

    goto :goto_0

    :sswitch_7
    const-string v0, "android.os.usertype.full.GUEST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v9, v8

    :goto_0
    packed-switch v9, :pswitch_data_0

    return v8

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    return v4

    :pswitch_2
    return v3

    :pswitch_3
    return v6

    :pswitch_4
    return v7

    :pswitch_5
    return v1

    :pswitch_6
    return v2

    :pswitch_7
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41cc9709 -> :sswitch_7
        -0x986a464 -> :sswitch_6
        0x206d3ba -> :sswitch_5
        0x1cf29ad0 -> :sswitch_4
        0x3825fd13 -> :sswitch_3
        0x65fcf07c -> :sswitch_2
        0x6939dec4 -> :sswitch_1
        0x7534089a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static final invalidateIsUserUnlockedCache()V
    .locals 1

    const-string v0, "cache_key.is_user_unlocked"

    .line 2526
    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public static isDeviceInDemoMode(Landroid/content/Context;)Z
    .locals 2

    .line 4486
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_demo_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isGuestUserEphemeral()Z
    .locals 2

    .line 1763
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100f2

    .line 1764
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isHeadlessSystemUserMode()Z
    .locals 1

    .line 1777
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return v0
.end method

.method private isProfile(I)Z
    .locals 1

    .line 2253
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 2256
    iget-object v0, p0, Landroid/os/UserManager;->mIsProfileCached:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2257
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 2260
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->isProfile(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/os/UserManager;->mIsProfileCached:Ljava/lang/Boolean;

    .line 2261
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2263
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2267
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->isProfile(I)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    move-exception p1

    .line 2269
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public static isSplitSystemUser()Z
    .locals 1

    .line 1754
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->FW_SYSTEM_USER_SPLIT:Z

    return v0
.end method

.method public static isUserTypeCloneProfile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.os.usertype.profile.CLONE"

    .line 2061
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isUserTypeDemo(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.os.usertype.full.DEMO"

    .line 2053
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isUserTypeGuest(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.os.usertype.full.GUEST"

    .line 2036
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isUserTypeManagedProfile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.os.usertype.profile.MANAGED"

    .line 2028
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isUserTypeRestricted(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.os.usertype.full.RESTRICTED"

    .line 2045
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private returnNullOrThrowUserOperationException(Landroid/os/ServiceSpecificException;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/ServiceSpecificException;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$UserOperationException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1685
    :cond_0
    invoke-static {p1}, Landroid/os/UserManager$UserOperationException;->from(Landroid/os/ServiceSpecificException;)Landroid/os/UserManager$UserOperationException;

    move-result-object p1

    throw p1
.end method

.method public static supportsMultipleUsers()Z
    .locals 3

    .line 1741
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1743
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11100d6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v2, "fw.show_multiuserui"

    .line 1742
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    .locals 1

    .line 2845
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2847
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .locals 1

    .line 3624
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->canAddMoreManagedProfiles(IZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3626
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public canAddMoreProfilesToUser(Ljava/lang/String;I)Z
    .locals 2

    .line 3640
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IUserManager;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3642
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public canAddMoreUsers()Z
    .locals 6

    .line 3600
    invoke-virtual {p0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 3601
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3604
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 3605
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3609
    :cond_1
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-ge v4, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public canHaveRestrictedProfile()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2152
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->canHaveRestrictedProfile(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2154
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public canSwitchUsers()Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1789
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 1790
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "allow_user_switching_when_system_user_locked"

    const/4 v2, 0x0

    .line 1789
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1792
    :goto_0
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v3}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    .line 1794
    iget-object v4, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    const-class v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1

    .line 1796
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const-string v5, "no_user_switch"

    .line 1798
    invoke-virtual {p0, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    move v2, v1

    :cond_3
    return v2
.end method

.method public clearSeedAccountData()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3328
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->clearSeedAccountData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3330
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 3

    .line 2983
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const-string v1, "android.os.usertype.full.GUEST"

    const/4 v2, 0x0

    invoke-interface {v0, p2, v1, v2}, Landroid/os/IUserManager;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2985
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "skip_first_use_hints"

    const-string v1, "1"

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    .line 2991
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createProfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/os/UserHandle;
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/UserHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$UserOperationException;
        }
    .end annotation

    .line 3034
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v3, 0x0

    iget v4, p0, Landroid/os/UserManager;->mUserId:I

    .line 3036
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 3035
    invoke-interface {p3, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, [Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    .line 3034
    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3036
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3041
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3038
    iget-object p2, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 3039
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x1e

    if-lt p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3038
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/os/UserManager;->returnNullOrThrowUserOperationException(Landroid/os/ServiceSpecificException;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    return-object p1
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3065
    invoke-static {p2}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/UserManager;->createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public createProfileForUser(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 3085
    invoke-virtual/range {v0 .. v5}, Landroid/os/UserManager;->createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 6

    .line 3110
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3115
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createProfileForUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 6

    .line 3132
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3137
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 3

    .line 3156
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 3157
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 3158
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 3157
    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3160
    iget-object v1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 3161
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 3160
    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->addSharedAccountsFromParentUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 3167
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2895
    invoke-static {p2}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/os/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 1

    .line 2922
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IUserManager;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2926
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public disableIsUserUnlockedCache()V
    .locals 1

    .line 2520
    iget-object v0, p0, Landroid/os/UserManager;->mIsUserUnlockedCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 2521
    iget-object v0, p0, Landroid/os/UserManager;->mIsUserUnlockingOrUnlockedCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public evictCredentialEncryptionKey(I)V
    .locals 1

    .line 3397
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->evictCredentialEncryptionKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3399
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .locals 1

    .line 3004
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3006
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getAliveUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3458
    invoke-virtual {p0, v0, v0, v0}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllProfiles()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3767
    invoke-direct {p0, v0}, Landroid/os/UserManager;->getProfiles(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 4548
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4550
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 1

    .line 4560
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4562
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 4166
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 4136
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 3

    .line 4187
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 4188
    invoke-virtual {p0, p2}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 4192
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p2}, Landroid/os/IUserManager;->getUserBadgeLabelResId(I)I

    move-result p2

    .line 4193
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4195
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getCredentialOwnerProfile(I)I
    .locals 1

    .line 3842
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getCredentialOwnerProfile(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3844
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 1

    .line 4612
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4614
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getEnabledProfileIds(I)[I
    .locals 1

    const/4 v0, 0x1

    .line 3829
    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p1

    return-object p1
.end method

.method public getEnabledProfiles()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3751
    invoke-direct {p0, v0}, Landroid/os/UserManager;->getProfiles(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProfiles(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 3716
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3718
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getPreInstallableSystemPackages(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3241
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 3242
    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3246
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3248
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 1

    .line 3583
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3585
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getProfileIds(IZ)[I
    .locals 1

    .line 3805
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->getProfileIds(IZ)[I

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3807
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getProfileIdsWithDisabled(I)[I
    .locals 1

    const/4 v0, 0x0

    .line 3819
    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p1

    return-object p1
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 1

    .line 3861
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3863
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3882
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3888
    :cond_0
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1
.end method

.method public getProfiles(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 3663
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3665
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getRestrictedProfileParent()Landroid/os/UserHandle;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2184
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2186
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 2187
    :cond_1
    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_2

    return-object v1

    .line 2189
    :cond_2
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3261
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getSeedAccountName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3263
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3292
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getSeedAccountOptions()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3294
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3276
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getSeedAccountType()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3278
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2

    .line 2861
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSerialNumbersOfUsers(Z)[J
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    .line 3533
    invoke-virtual {p0, v0, p1, v0}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p1

    .line 3535
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3537
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    int-to-long v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .locals 1

    .line 3552
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserAccount(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3554
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserBadgeColor(I)I
    .locals 2

    .line 4038
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserBadgeColorResId(I)I

    move-result p1

    .line 4039
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4041
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserBadgeDarkColor(I)I
    .locals 2

    .line 4059
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserBadgeDarkColorResId(I)I

    move-result p1

    .line 4060
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4062
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserBadgeNoBackgroundResId(I)I
    .locals 1

    .line 4111
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserBadgeNoBackgroundResId(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4113
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserBadgeResId(I)I
    .locals 1

    .line 4094
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserBadgeResId(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4096
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserCount()I
    .locals 1

    .line 3411
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3412
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getUserCreationTime(Landroid/os/UserHandle;)J
    .locals 2

    .line 4627
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserCreationTime(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 4629
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 0

    long-to-int p1, p1

    .line 2874
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2875
    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public getUserHandle()I
    .locals 1

    .line 1872
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getUserHandle(I)I
    .locals 1

    .line 4518
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserHandle(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4520
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserHandles(Z)Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3511
    invoke-virtual {p0, v0, p1, v0}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p1

    .line 3513
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3514
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 3515
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getUserIcon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4404
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 4375
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_0

    .line 4378
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4381
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4384
    :catch_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_2
    move-exception p1

    .line 4387
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserIconBadgeResId(I)I
    .locals 1

    .line 4077
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserIconBadgeResId(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4079
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1

    .line 2602
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2604
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .line 1901
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    if-ne v0, v1, :cond_0

    .line 1903
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getUserName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1905
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1908
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 1909
    :cond_1
    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 3730
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 3731
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3732
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 3733
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2626
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->getUserRestrictionSource(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2628
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .line 2645
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2647
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserRestrictions()Landroid/os/Bundle;
    .locals 1

    .line 2656
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 1

    .line 2673
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2675
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserSerialNumber(I)I
    .locals 1

    .line 4500
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserSerialNumber(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4502
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUserStartRealtime()J
    .locals 2

    .line 2570
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getUserStartRealtime()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 2572
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getUserSwitchability()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1820
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserSwitchability(Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public getUserSwitchability(Landroid/os/UserHandle;)I
    .locals 4

    .line 1838
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 1839
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1842
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "no_user_switch"

    .line 1845
    invoke-virtual {p0, v3, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 1850
    :cond_1
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1851
    iget-object p1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 1852
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "allow_user_switching_when_system_user_locked"

    .line 1851
    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1854
    :goto_1
    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-nez v1, :cond_3

    if-nez p1, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    return v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    .line 1885
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 1886
    :cond_0
    iget-object v0, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUserUnlockRealtime()J
    .locals 2

    .line 2585
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->getUserUnlockRealtime()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 2587
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3437
    invoke-virtual {p0, v0, v1, v0}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 3475
    invoke-virtual {p0, v0, p1, v0}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUsers(ZZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 3492
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IUserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3494
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public hasBadge()Z
    .locals 1

    .line 4021
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result v0

    return v0
.end method

.method public hasBadge(I)Z
    .locals 1

    .line 4000
    invoke-direct {p0, p1}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4005
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->hasBadge(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4007
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1

    .line 2695
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2697
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public hasRestrictedProfiles()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2167
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->hasRestrictedProfiles()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2169
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public hasUserRestriction(Ljava/lang/String;)Z
    .locals 1

    .line 2766
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 0

    .line 2779
    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2801
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2803
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .locals 1

    .line 2813
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2815
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isAdminUser()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1987
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v0

    return v0
.end method

.method public isCloneProfile()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2335
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isCloneProfile(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2337
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isDemoUser()Z
    .locals 2

    .line 2228
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isDemoUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2230
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isEphemeralUser()Z
    .locals 1

    .line 2350
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserEphemeral(I)Z

    move-result v0

    return v0
.end method

.method public isGuestUser()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2215
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2216
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGuestUser(I)Z
    .locals 0

    .line 2201
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2202
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLinkedUser()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2103
    invoke-virtual {p0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result v0

    return v0
.end method

.method public isManagedProfile()Z
    .locals 2

    .line 2282
    iget-object v0, p0, Landroid/os/UserManager;->mIsManagedProfileCached:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2283
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2286
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isManagedProfile(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UserManager;->mIsManagedProfileCached:Ljava/lang/Boolean;

    .line 2287
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2289
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isManagedProfile(I)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2306
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2307
    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result p1

    return p1

    .line 2310
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->isManagedProfile(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2312
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isMediaSharedWithParent()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4218
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isMediaSharedWithParent(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4220
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isPrimaryUser()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1961
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1962
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProfile()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2249
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-direct {p0, v0}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v0

    return v0
.end method

.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 1

    .line 3984
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->isQuietModeEnabled(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3986
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isRestrictedProfile()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2117
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0}, Landroid/os/IUserManager;->isRestricted()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2119
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isRestrictedProfile(Landroid/os/UserHandle;)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2136
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2138
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isSameProfileGroup(II)Z
    .locals 1

    .line 3694
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->isSameProfileGroup(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3696
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isSameProfileGroup(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3681
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result p1

    return p1
.end method

.method public isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 1

    .line 2832
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IUserManager;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2834
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isSystemUser()Z
    .locals 1

    .line 1973
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserAGoat()Z
    .locals 2

    .line 1943
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1946
    :cond_0
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.coffeestainstudios.goatsimulator"

    .line 1947
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUserAdmin(I)Z
    .locals 0

    .line 1999
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2000
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUserEphemeral(I)Z
    .locals 0

    .line 2360
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2361
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUserForeground()Z
    .locals 2

    .line 2432
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserForeground(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2434
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isUserNameSet()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1924
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserNameSet(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1926
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isUserOfType(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2016
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v1, p0, Landroid/os/UserManager;->mUserId:I

    invoke-interface {v0, v1, p1}, Landroid/os/IUserManager;->isUserOfType(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2018
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isUserRunning(I)Z
    .locals 1

    .line 2391
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2393
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isUserRunning(Landroid/os/UserHandle;)Z
    .locals 0

    .line 2383
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result p1

    return p1
.end method

.method public isUserRunningOrStopping(Landroid/os/UserHandle;)Z
    .locals 2

    .line 2417
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2418
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/4 v1, 0x1

    .line 2417
    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2420
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isUserSwitcherEnabled()Z
    .locals 1

    const/4 v0, 0x1

    .line 4429
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserSwitcherEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isUserSwitcherEnabled(Z)Z
    .locals 4

    .line 4441
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "no_user_switch"

    .line 4444
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4448
    :cond_1
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4452
    :cond_2
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4454
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110135

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const-string/jumbo v3, "user_switcher_enabled"

    .line 4452
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    return v1

    :cond_4
    if-nez p1, :cond_5

    .line 4462
    invoke-direct {p0}, Landroid/os/UserManager;->areThereUsersToWhichToSwitch()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "no_add_user"

    .line 4463
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public isUserUnlocked()Z
    .locals 1

    .line 2453
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(I)Z
    .locals 1

    .line 2515
    iget-object v0, p0, Landroid/os/UserManager;->mIsUserUnlockedCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 0

    .line 2477
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    return p1
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .locals 1

    .line 2558
    iget-object v0, p0, Landroid/os/UserManager;->mIsUserUnlockingOrUnlockedCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2551
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    return p1
.end method

.method public markGuestForDeletion(I)Z
    .locals 1

    .line 3344
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->markGuestForDeletion(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3346
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public preCreateUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$UserOperationException;
        }
    .end annotation

    .line 2961
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2965
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2963
    invoke-static {p1}, Landroid/os/UserManager$UserOperationException;->from(Landroid/os/ServiceSpecificException;)Landroid/os/UserManager$UserOperationException;

    move-result-object p1

    throw p1
.end method

.method public removeUser(I)Z
    .locals 1

    .line 4234
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4236
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public removeUser(Landroid/os/UserHandle;)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_0

    .line 4255
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z

    move-result p1

    return p1

    .line 4253
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "user cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .locals 1

    .line 4271
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->removeUserEvenWhenDisallowed(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4273
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public removeUserOrSetEphemeral(IZ)I
    .locals 1

    .line 4293
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->removeUserOrSetEphemeral(IZ)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4295
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3919
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;)Z

    move-result p1

    return p1
.end method

.method public requestQuietModeEnabled(ZLandroid/os/UserHandle;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 3938
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;I)Z

    move-result p1

    return p1
.end method

.method public requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3952
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;I)Z

    move-result p1

    return p1
.end method

.method public requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;I)Z
    .locals 6

    .line 3967
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget-object v1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 3968
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    move v2, p1

    move-object v4, p3

    move v5, p4

    .line 3967
    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3971
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 1

    .line 4573
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IUserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4575
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 1

    .line 4599
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4601
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setRestrictionsChallenge(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 6

    .line 3313
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v5, 0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3316
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .locals 1

    .line 3568
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->setUserAccount(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3570
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setUserAdmin(I)V
    .locals 1

    .line 3383
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->setUserAdmin(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3385
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setUserEnabled(I)V
    .locals 1

    .line 3363
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1}, Landroid/os/IUserManager;->setUserEnabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3365
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 4338
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4342
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    return-void
.end method

.method public setUserIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$UserOperationException;
        }
    .end annotation

    .line 4360
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 1

    .line 4309
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4311
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4325
    iget v0, p0, Landroid/os/UserManager;->mUserId:I

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    return-void
.end method

.method public setUserRestriction(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2734
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2752
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2754
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setUserRestrictions(Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2708
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is no longer supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2718
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is no longer supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 4644
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IUserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4646
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
