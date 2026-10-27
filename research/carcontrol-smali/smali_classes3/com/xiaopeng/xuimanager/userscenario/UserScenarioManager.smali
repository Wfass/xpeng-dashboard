.class public Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;
.super Ljava/lang/Object;
.source "UserScenarioManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$SingletonHolder;,
        Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;,
        Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;
    }
.end annotation


# static fields
.field public static final ACTION_KEY_DIALOG_MESSAGE:Ljava/lang/String; = "dialogMessage"

.field public static final ACTION_KEY_EVENT_BUNDLE:Ljava/lang/String; = "eventBundle"

.field public static final ACTION_KEY_EXIT_REASON:Ljava/lang/String; = "exitReason"

.field public static final ACTION_KEY_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final ACTION_KEY_FRIEND_SCENARIO:Ljava/lang/String; = "friendScenario"

.field public static final ACTION_KEY_NAME:Ljava/lang/String; = "scenario_name"

.field public static final ACTION_KEY_PACKAGE:Ljava/lang/String; = "package"

.field public static final ACTION_KEY_SOURCE:Ljava/lang/String; = "source"

.field public static final ACTION_KEY_STATUS:Ljava/lang/String; = "status"

.field public static final ACTION_USERSCENARIO:Ljava/lang/String; = "com.xiaopeng.xui.userscenario"

.field public static final ACTION_VALUE_ENTER:Ljava/lang/String; = "enter"

.field public static final ACTION_VALUE_EVENT:Ljava/lang/String; = "eventNotify"

.field public static final ACTION_VALUE_EXIT:Ljava/lang/String; = "exit"

.field public static final APP_EXIT_DENIED:I = 0x1

.field public static final APP_EXIT_DENIED_NEED_EXIT_CONFIRM:I = 0x2

.field public static final APP_EXIT_SUCCESS:I = 0x0

.field public static final COMMON_KEY_TARGET_SCREEN_ID:Ljava/lang/String; = "targetScreenId"

.field private static final DBG:Z = true

.field public static final EVENT_KEY_DIALOG_CANCEL_MESSAGE:Ljava/lang/String; = "eventDialogCancelMessage"

.field public static final EVENT_KEY_EVENT_TYPE:Ljava/lang/String; = "eventType"

.field public static final EVENT_KEY_QUEUE_RESULT:Ljava/lang/String; = "eventQueueResult"

.field public static final EVENT_KEY_SWITCH_SCREEN_PACKAGE:Ljava/lang/String; = "eventSwitchPkg"

.field public static final EVENT_KEY_SWITCH_SCREEN_RESULT:Ljava/lang/String; = "eventSwitchResult"

.field public static final EVENT_KEY_SWITCH_SCREEN_TYPE:Ljava/lang/String; = "eventSwitchType"

.field public static final EVENT_VAL_SWITCH_SCREEN:Ljava/lang/String; = "eventSwitchScreen"

.field public static final KEY_SOURCE_TYPE:Ljava/lang/String; = "sourceType"

.field private static final MSG_EVENT_NOTIFY:I = 0x1

.field public static final PARAM_KEY_ALLOW_EXIT:Ljava/lang/String; = "pAllowExit"

.field public static final PARAM_KEY_CANCEL_TEXT:Ljava/lang/String; = "pCancelText"

.field public static final PARAM_KEY_CANCEL_VUI:Ljava/lang/String; = "pCancelVuiText"

.field public static final PARAM_KEY_CONFIRM_TEXT:Ljava/lang/String; = "pConfirmText"

.field public static final PARAM_KEY_CONFIRM_VUI:Ljava/lang/String; = "pConfirmVuiText"

.field public static final PARAM_KEY_EXIT_DIALOG:Ljava/lang/String; = "pExitDialog"

.field public static final PARAM_KEY_EXIT_DIALOG_NEED:Ljava/lang/String; = "pExitDialogNeed"

.field public static final PARAM_KEY_SCREEN_USE:Ljava/lang/String; = "pScreenUse"

.field public static final PARAM_KEY_TEXT:Ljava/lang/String; = "pText"

.field public static final PARAM_KEY_TITLE:Ljava/lang/String; = "pTitle"

.field public static final PARAM_KEY_VUI_JSON_EXTRA:Ljava/lang/String; = "pVuiJsonExtra"

.field public static final REASON_APP_REQUEST:Ljava/lang/String; = "rAppRequest"

.field public static final REASON_BATTERY_LOW:Ljava/lang/String; = "rBatteryLow"

.field public static final REASON_DOOR_OPEN:Ljava/lang/String; = "rDoorOpen"

.field public static final REASON_GEAR_NOT_P:Ljava/lang/String; = "rGearNotP"

.field public static final REASON_IG_OFF:Ljava/lang/String; = "rIgOff"

.field public static final REASON_IN_DC_CHARGE:Ljava/lang/String; = "rInDcCharge"

.field public static final REASON_RSE_OFF:Ljava/lang/String; = "rRseOff"

.field public static final REASON_SCENARIO_SWITCH:Ljava/lang/String; = "rScenarioSwitch"

.field public static final REASON_SCREEN_ON:Ljava/lang/String; = "rScreenOn"

.field public static final REASON_VOICE_ACTIVE:Ljava/lang/String; = "rVoiceActive"

.field public static final REQUEST_AREA_TYPE_FULL:I = 0x1

.field public static final REQUEST_AREA_TYPE_NON_FULL:I = 0x0

.field public static final RESIZE_RET_FRONT_CHECK:I = -0x6

.field public static final RESIZE_RET_PKG_NOT_FRONT:I = -0x1

.field public static final RESIZE_RET_REPEATED_FULL:I = -0x3

.field public static final RESIZE_RET_REPEATED_SPLIT:I = -0x2

.field public static final RESIZE_RET_RETRY_TIMEOUT:I = -0x5

.field public static final RESIZE_RET_SYSTEM_ERROR:I = -0x4

.field public static final RESIZE_TYPE_FULL:I = 0x1

.field public static final RESIZE_TYPE_GO_BACK:I = 0x6

.field public static final RESIZE_TYPE_GO_HOME:I = 0x5

.field public static final RESIZE_TYPE_IGNORE:I = 0x0

.field public static final RESIZE_TYPE_PRIMARY:I = 0x2

.field public static final RESIZE_TYPE_SECONDARY:I = 0x3

.field public static final RESIZE_TYPE_SPLIT_DEFAULT:I = 0x4

.field public static final RESIZE_TYPE_START_ACTIVITY:I = 0x7

.field public static final RET_DIALOG_CONFIRM:Ljava/lang/String; = "dialogConfirm"

.field public static final RET_FAIL_DOOR_OPEN:Ljava/lang/String; = "doorOpen"

.field public static final RET_FAIL_GEAR_NOT_P:Ljava/lang/String; = "gearNotP"

.field public static final RET_FAIL_PANEL_INVALID:Ljava/lang/String; = "panelInvalid#"

.field public static final RET_INT_SUCCESS:I = 0x0

.field public static final RET_OWNER_FORBIDDEN:Ljava/lang/String; = "ownerForbidden"

.field public static final RET_REMOTE_EXCEPTION:Ljava/lang/String; = "remoteException"

.field public static final RET_SCENARIO_CONFLICT:Ljava/lang/String; = "conflict#"

.field public static final RET_SCENARIO_CONFLICT_5D_CINEMA:Ljava/lang/String; = "conflict#5d_cinema_mode"

.field public static final RET_SCENARIO_CONFLICT_CLEANING:Ljava/lang/String; = "conflict#cleaning_mode"

.field public static final RET_SCENARIO_CONFLICT_COSMETIC_SPACE:Ljava/lang/String; = "conflict#cosmetic_space_mode"

.field public static final RET_SCENARIO_CONFLICT_MEDITATION:Ljava/lang/String; = "conflict#meditation_mode"

.field public static final RET_SCENARIO_CONFLICT_SPACECAPSULE:Ljava/lang/String; = "conflict#spacecapsule_mode"

.field public static final RET_SCENARIO_CONFLICT_VIPSEAT:Ljava/lang/String; = "conflict#vipseat_mode"

.field public static final RET_SCENARIO_CONFLICT_WAITING:Ljava/lang/String; = "conflict#waiting_mode"

.field public static final RET_SCENARIO_INVALID:Ljava/lang/String; = "scenarioInvalid"

.field public static final RET_SCENARIO_UNAVAILABLE:Ljava/lang/String; = "scenarioUnavailable"

.field public static final RET_SUCCESS:Ljava/lang/String; = "success"

.field public static final SCENARIO_5D_CINEMA_MODE:Ljava/lang/String; = "5d_cinema_mode"

.field public static final SCENARIO_5D_CINEMA_MODE_VAL:I = 0x3

.field public static final SCENARIO_AI_DRIVING:Ljava/lang/String; = "ai_driving_mode"

.field public static final SCENARIO_AI_DRIVING_VAL:I = 0x14

.field public static final SCENARIO_ALL:Ljava/lang/String; = "scenario_all"

.field public static final SCENARIO_BOOT_VIDEO:Ljava/lang/String; = "boot_video_mode"

.field public static final SCENARIO_BOOT_VIDEO_VAL:I = 0x12

.field public static final SCENARIO_CATAPULT:Ljava/lang/String; = "catapult_mode"

.field public static final SCENARIO_CATAPULT_VAL:I = 0x16

.field public static final SCENARIO_CLEANING_MODE:Ljava/lang/String; = "cleaning_mode"

.field public static final SCENARIO_CLEANING_MODE_VAL:I = 0x6

.field public static final SCENARIO_COSMETIC_SPACE_MODE:Ljava/lang/String; = "cosmetic_space_mode"

.field public static final SCENARIO_COSMETIC_SPACE_MODE_VAL:I = 0xa

.field public static final SCENARIO_ECALL:Ljava/lang/String; = "ecall_mode"

.field public static final SCENARIO_ECALL_VAL:I = 0xe

.field public static final SCENARIO_EOL:Ljava/lang/String; = "eol_mode"

.field public static final SCENARIO_EOL_VAL:I = 0xf

.field public static final SCENARIO_MEDITATION_BACK_ROW:Ljava/lang/String; = "meditation_back_row_mode"

.field public static final SCENARIO_MEDITATION_BACK_ROW_VAL:I = 0xc

.field public static final SCENARIO_MEDITATION_MODE:Ljava/lang/String; = "meditation_mode"

.field public static final SCENARIO_MEDITATION_MODE_VAL:I = 0x4

.field public static final SCENARIO_MEDITATION_PASSENGER_SEAT:Ljava/lang/String; = "meditation_passenger_seat_mode"

.field public static final SCENARIO_MEDITATION_PASSENGER_SEAT_VAL:I = 0xb

.field public static final SCENARIO_NORMAL:Ljava/lang/String; = "normal_mode"

.field public static final SCENARIO_NORMAL_VAL:I = 0x0

.field public static final SCENARIO_OOBE:Ljava/lang/String; = "oobe_mode"

.field public static final SCENARIO_OOBE_VAL:I = 0x10

.field public static final SCENARIO_OTA:Ljava/lang/String; = "ota_mode"

.field public static final SCENARIO_OTA_VAL:I = 0x11

.field public static final SCENARIO_PARKING:Ljava/lang/String; = "parking_mode"

.field public static final SCENARIO_PARKING_VAL:I = 0xd

.field public static final SCENARIO_SPACECAPSULE_MODE:Ljava/lang/String; = "spacecapsule_mode"

.field public static final SCENARIO_SPACECAPSULE_MODE_VAL:I = 0x7

.field public static final SCENARIO_SPACECAPSULE_MOVIE_MODE:Ljava/lang/String; = "spacecapsule_mode_movie"

.field public static final SCENARIO_SPACECAPSULE_MOVIE_MODE_VAL:I = 0x1

.field public static final SCENARIO_SPACECAPSULE_SLEEP_MODE:Ljava/lang/String; = "spacecapsule_mode_sleep"

.field public static final SCENARIO_SPACECAPSULE_SLEEP_MODE_VAL:I = 0x2

.field public static final SCENARIO_SPACE_GUARD:Ljava/lang/String; = "space_guard_mode"

.field public static final SCENARIO_SPACE_GUARD_VAL:I = 0x15

.field public static final SCENARIO_TRAILED_MODE:Ljava/lang/String; = "trailed_mode"

.field public static final SCENARIO_TRAILED_MODE_VAL:I = 0x9

.field public static final SCENARIO_TRANSPORT:Ljava/lang/String; = "transport_mode"

.field public static final SCENARIO_TRANSPORT_VAL:I = 0x13

.field public static final SCENARIO_VIPSEAT_MODE:Ljava/lang/String; = "vipseat_mode"

.field public static final SCENARIO_VIPSEAT_MODE_VAL:I = 0x8

.field public static final SCENARIO_WAITING_MODE:Ljava/lang/String; = "waiting_mode"

.field public static final SCENARIO_WAITING_MODE_VAL:I = 0x5

.field public static final SCENE_AREA_RESIZE_KEY:Ljava/lang/String; = "resizeTypeKey"

.field public static final SHOULDE_DO_NOTHING_FOR_SCREEN_MODE:I = 0x0

.field public static final SOURCE_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final SOURCE_SERVICE:Ljava/lang/String; = "service"

.field public static final SOURCE_SIGNAL:Ljava/lang/String; = "signal"

.field public static final SOURCE_VOICE:Ljava/lang/String; = "voice"

.field public static final STATE_EXITING:I = 0x3

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_RUNNING:I = 0x2

.field public static final STATE_STARTING:I = 0x1

.field public static final TAG:Ljava/lang/String; = "UserScenarioManager"

.field public static final VAL_TYPE_GUI:I = 0x0

.field public static final VAL_TYPE_VUI:I = 0x1

.field private static final mScenarioNameValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

.field private mUserScenarioListenerImpl:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;

.field private serverDisconnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 680
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mScenarioNameValueMap:Ljava/util/HashMap;

    .line 682
    invoke-static {}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->initNameValueMap()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 673
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->serverDisconnected:Z

    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    .line 677
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mListeners:Landroid/util/ArraySet;

    .line 678
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mUserScenarioListenerImpl:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 673
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->serverDisconnected:Z

    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    .line 677
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mListeners:Landroid/util/ArraySet;

    .line 678
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mUserScenarioListenerImpl:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;

    .line 775
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create UserScenarioManager,context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",handler="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    .line 777
    new-instance p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$2;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$2;-><init>(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->notifyEvent(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;
    .locals 1

    .line 745
    invoke-static {}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$SingletonHolder;->access$100()Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    move-result-object v0

    return-object v0
.end method

.method public static getScenarioNameValue(Ljava/lang/String;)I
    .locals 1

    .line 1167
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mScenarioNameValueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 1168
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static initNameValueMap()V
    .locals 3

    .line 686
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mScenarioNameValueMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "normal_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 687
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spacecapsule_mode_movie"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 688
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spacecapsule_mode_sleep"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 689
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5d_cinema_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 690
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "meditation_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 691
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "waiting_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 692
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cleaning_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 693
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spacecapsule_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 694
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vipseat_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 695
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "trailed_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 696
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cosmetic_space_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 697
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "meditation_passenger_seat_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 698
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "meditation_back_row_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    .line 699
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "parking_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe

    .line 700
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ecall_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    .line 701
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eol_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    .line 702
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oobe_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    .line 703
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ota_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x12

    .line 704
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "boot_video_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x13

    .line 705
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "transport_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    .line 706
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ai_driving_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x15

    .line 707
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "space_guard_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x16

    .line 708
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "catapult_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private notifyEvent(Ljava/lang/String;I)V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;

    .line 720
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;->onUserScenarioStateChanged(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkEnterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1105
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    const-string v1, "remoteException"

    if-nez v0, :cond_0

    .line 1106
    sget-object p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    const-string p2, "checkEnterUserScenario,invalid call"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1111
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->checkEnterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1113
    sget-object p2, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkEnterUserScenario e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public enqueueScenario(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "enqueueScenario e="

    .line 1148
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    const-string v2, "remoteException"

    if-nez v1, :cond_0

    .line 1149
    sget-object p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    const-string p2, "enqueueScenario,invalid call"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1154
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->enqueueScenario(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1159
    sget-object p2, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1156
    sget-object p2, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2
.end method

.method public enterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->enterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 874
    sget-object v1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterUserScenario e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "remoteException"

    .line 878
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterUserScenario-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",source-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",ret-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public enterUserScenario(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->enterUserScenarioWithExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 895
    sget-object v1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterUserScenario e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "remoteException"

    .line 899
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterUserScenario-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",source-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",extra-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",ret-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public exitUserScenario(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 932
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->exitUserScenario(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 934
    sget-object v1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitUserScenario e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "remoteException"

    .line 938
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitUserScenario-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",ret-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public exitUserScenarioWithExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 913
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->exitUserScenarioWithExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 915
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitUserScenarioWithExtra e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "remoteException"

    .line 919
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitUserScenarioWithExtra-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",ret-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public getCurrentUserScenario()Ljava/lang/String;
    .locals 4

    .line 949
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->getCurrentUserScenario()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 951
    sget-object v1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUserScenario e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentUserScenarios()[Ljava/lang/String;
    .locals 4

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->getCurrentUserScenarios()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 966
    sget-object v1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUserScenario e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 856
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 857
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mServiceName:Ljava/lang/String;

    .line 859
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserScenarioStatus(Ljava/lang/String;)I
    .locals 3

    .line 980
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 982
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserScenarioStatus e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 750
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init UserScenarioManager,context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",handler="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    .line 752
    new-instance p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$1;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$1;-><init>(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onServerDisconnected()V
    .locals 1

    const/4 v0, 0x1

    .line 840
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->serverDisconnected:Z

    return-void
.end method

.method public declared-synchronized onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 817
    :try_start_0
    sget-object p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    const-string v0, "onXUIConnected,service binder is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    monitor-exit p0

    return-void

    .line 820
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 821
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,service is the same:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    monitor-exit p0

    return-void

    .line 824
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    .line 825
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mUserScenarioListenerImpl:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 828
    :try_start_3
    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->registerListener(Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 830
    :try_start_4
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 833
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onXUIDisconnected()V
    .locals 5

    monitor-enter p0

    .line 797
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    const-string v1, "onXUIDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 800
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mUserScenarioListenerImpl:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 802
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    invoke-interface {v2, v0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->unregisterListener(Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 804
    :try_start_2
    sget-object v2, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onXUIDisconnected,unregisterListener e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :goto_0
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mUserScenarioListenerImpl:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;

    .line 808
    :cond_0
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 809
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerBinderObserver(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 4

    .line 1057
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    const-string v1, "remoteException"

    if-nez v0, :cond_0

    .line 1058
    sget-object p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    const-string v0, "registerBinderObserver,invalid call"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1063
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->registerBinderObserver(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "success"

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1065
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerBinderObserver e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public registerBinderObserver(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1081
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    const-string v1, "remoteException"

    if-nez v0, :cond_0

    .line 1082
    sget-object p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBinderObserver,svc null,scenario:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1087
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->registerBinderObserverWithData(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "success"

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1089
    sget-object p2, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBinderObserverWithData e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;)V
    .locals 4

    monitor-enter p0

    .line 994
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "registerListener null!"

    .line 996
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    monitor-exit p0

    return-void

    .line 1000
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mUserScenarioListenerImpl:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;

    if-nez v0, :cond_1

    .line 1001
    new-instance v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mUserScenarioListenerImpl:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    :try_start_2
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->registerListener(Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1005
    :try_start_3
    sget-object v1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1010
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reportSceneStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1207
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    if-nez p1, :cond_0

    .line 1208
    sget-object p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    const-string p2, "reportSceneStatus,invalid call"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public reportStatus(Ljava/lang/String;I)V
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    if-nez v0, :cond_0

    .line 1038
    sget-object p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    const-string p2, "reportStatus,invalid call"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1043
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->reportStatus(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1045
    sget-object p2, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportStatus e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestAreaType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1197
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->requestAreaType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1199
    sget-object v1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAreaType e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "remoteException"

    .line 1202
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAreaType-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",extra-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",ret-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public requestWindowExchange(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    if-nez v0, :cond_0

    .line 1178
    sget-object p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    const-string p2, "requestExchange,invalid call"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1183
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->requestWindowExchange(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1185
    sget-object p2, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestExchange e="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDialogConfig(Ljava/lang/String;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;)I
    .locals 3

    .line 1215
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1216
    sget-object p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    const-string p2, "setDialogConfig,invalid call"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1221
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->setExitDialogConfig(Ljava/lang/String;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1224
    sget-object p2, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialogConfig e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public setParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1123
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    const-string v1, "remoteException"

    if-nez v0, :cond_0

    .line 1124
    sget-object p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    const-string p2, "setParameters,invalid call"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1129
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->setParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1131
    sget-object p2, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameters e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 848
    sput-object p1, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;)V
    .locals 3

    monitor-enter p0

    .line 1018
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1021
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1023
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mService:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mUserScenarioListenerImpl:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;->unregisterListener(Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1025
    :try_start_2
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    .line 1027
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->mUserScenarioListenerImpl:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListenerImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1029
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
