.class public Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
.super Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;
.source "UserScenarioService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;,
        Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;,
        Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;,
        Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;,
        Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SECOND_BT_CONNECTION:Ljava/lang/String; = "xiaopeng.bluetooth.a2dp.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_VOLUME_CHANGED:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static final BUTTON_ID:Ljava/lang/String; = "B001"

.field private static final CHECK_OPERATION_TIMEOUT_MS:I = 0xfa0

.field private static final DEFAULT_VAL:Ljava/lang/String; = "default"

.field private static final EXTRA_VOLCHANGE_PACKAGENAME:Ljava/lang/String; = "android.media.vol_change.PACKAGE_NAME"

.field private static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field private static final MSG_SCENARIO_ENTER:I = 0x1

.field private static final MSG_SCENARIO_ENTER_CHECK:I = 0x3

.field private static final MSG_SCENARIO_ENTER_INNER:I = 0x7

.field private static final MSG_SCENARIO_EXIT:I = 0x2

.field private static final MSG_SCENARIO_EXIT_CHECK:I = 0x4

.field private static final MSG_SCENARIO_EXIT_INNER:I = 0x6

.field private static final MSG_SCENARIO_STATUS_NOTIFY:I = 0x5

.field private static final MSG_SCENARIO_VOLUME_CHANGED:I = 0x8

.field private static final MSG_SCENARIO_VOLUME_PASSENGER_BT_CHANGED:I = 0x9

.field private static final OP_ENTER:Ljava/lang/String; = "enter"

.field private static final OP_EXIT:Ljava/lang/String; = "exit"

.field private static final OP_REPORT:Ljava/lang/String; = "report"

.field public static final RESIZE_ALLOW_FROM_USERSCENARIO_FLAG:I = 0x1

.field public static final RESIZE_ALLOW_NO_ANIMATION:I = 0x2

.field public static final RESIZE_ALLOW_PASSED_BY_SCENARIO:I = 0x3

.field public static final RESIZE_ALLOW_PASSED_WITHOUT_SCENARIOS:I = 0x4

.field public static final RESIZE_ALLOW_RESIZE_CONFIG_SAME_WITH_SCENARIO:I = 0x5

.field public static final RESIZE_DENIED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UserScenarioService"

.field private static final TRIGGER_BY_EVENT:Ljava/lang/String; = "2"

.field private static final TRIGGER_BY_USER:Ljava/lang/String; = "1"

.field private static final TYPE_ENTER:Ljava/lang/String; = "1"

.field private static final TYPE_EXIT:Ljava/lang/String; = "2"

.field private static debugMode:Z

.field private static formatter:Ljava/text/SimpleDateFormat;

.field private static lastMusicVolume:I

.field private static lastPassengerBtVolume:I

.field private static mActivityManager:Landroid/app/ActivityManager;

.field private static mAppBinders:[Landroid/os/IBinder;

.field private static mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

.field private static mAppPids:[I

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

.field private static mConfigerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;",
            ">;"
        }
    .end annotation
.end field

.field private static mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

.field private static final mScreenBrightnessListener:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;

.field private static mStatusToBe:[I

.field private static final mTransactionCodeToApiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

.field private static mUserScenarioService:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

.field private static mVolumeIgnorePkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final msgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static passengerbluetoothConnected:Z


# instance fields
.field private final APP_POLICY_ERROR:Ljava/lang/String;

.field private final listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private final mConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDialog:Lcom/xiaopeng/xui/app/XDialog;

.field mRestoreTaskCheckRunnable:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;

.field private mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

.field private mVolumeMonitor:Z

.field private mVolumeReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioService:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    .line 143
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigerList:Ljava/util/List;

    .line 146
    const/4 v1, 0x1

    new-array v2, v1, [[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    sput-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 147
    new-array v2, v1, [Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    sput-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 148
    new-array v2, v1, [Ljava/util/concurrent/CopyOnWriteArrayList;

    sput-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 150
    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    .line 152
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mActivityManager:Landroid/app/ActivityManager;

    .line 155
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->debugMode:Z

    .line 156
    new-array v2, v1, [I

    const/4 v3, -0x1

    aput v3, v2, v0

    sput-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mStatusToBe:[I

    .line 169
    sput v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lastMusicVolume:I

    .line 170
    sput v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lastPassengerBtVolume:I

    .line 171
    sput-boolean v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->passengerbluetoothConnected:Z

    .line 174
    new-instance v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mScreenBrightnessListener:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;

    .line 190
    new-instance v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$2;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mVolumeIgnorePkgList:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->msgMap:Ljava/util/HashMap;

    .line 276
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->msgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MSG_SCENARIO_ENTER"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->msgMap:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MSG_SCENARIO_EXIT"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->msgMap:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MSG_SCENARIO_ENTER_CHECK"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->msgMap:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MSG_SCENARIO_EXIT_CHECK"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->msgMap:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MSG_SCENARIO_STATUS_NOTIFY"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->msgMap:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MSG_SCENARIO_EXIT_INNER"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->msgMap:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MSG_SCENARIO_ENTER_INNER"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->msgMap:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MSG_SCENARIO_VOLUME_CHANGED"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->msgMap:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MSG_SCENARIO_VOLUME_PASSENGER_BT_CHANGED"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-array v0, v1, [I

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppPids:[I

    .line 431
    new-array v0, v1, [Landroid/os/IBinder;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    .line 432
    new-array v0, v1, [Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    .line 2778
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mTransactionCodeToApiMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 531
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;-><init>()V

    .line 141
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    const-string v1, "UserScenarioService"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    .line 153
    nop

    .line 154
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mWindowManager:Landroid/view/WindowManager;

    .line 165
    const-string v0, "com.xiaopeng.intent.action.APP_POLICY_ERROR"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->APP_POLICY_ERROR:Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mVolumeMonitor:Z

    .line 194
    new-instance v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$3;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$4;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 225
    new-instance v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$5;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 251
    new-instance v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$6;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 1224
    new-instance v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRestoreTaskCheckRunnable:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;

    .line 532
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    .line 533
    sput-object p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioService:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    .line 534
    const-string v0, "userscenario"

    new-instance v1, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$u8eSdsm-kIXSUFSxhCbsj8FVw8s;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$u8eSdsm-kIXSUFSxhCbsj8FVw8s;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 537
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    .line 538
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAudioManager:Landroid/media/AudioManager;

    .line 539
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    .line 540
    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .locals 1

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioService:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .param p1, "x1"    # I

    .line 111
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->onRseFoldChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 111
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->dynamicScenarioPreEnter(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    .line 111
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->volumeMonitor()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->notifyScenarioStatus(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300()[Landroid/os/IBinder;
    .locals 1

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1400()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;
    .locals 1

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;
    .locals 1

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .param p1, "x1"    # I

    .line 111
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->popScenarioFromQueue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->formatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0
    .param p0, "x0"    # Ljava/text/SimpleDateFormat;

    .line 111
    sput-object p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->formatter:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 111
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->dispatchBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .param p1, "x1"    # I

    .line 111
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->onGearChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;[Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .param p1, "x1"    # [Ljava/lang/Integer;

    .line 111
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->onDoorStatChanged([Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 111
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->msgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .locals 1

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "x2"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lastConfigerExitInner(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V

    return-void
.end method

.method private cleanDialogAndPoppanel(ILcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V
    .locals 2
    .param p1, "screenId"    # I
    .param p2, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 2766
    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->isDialogLimit(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2767
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getTopDialogInfo(I)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2768
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->dismissDialog(I)V

    .line 2769
    const-string v0, "UserScenarioService"

    const-string v1, "cleanDialogAndPoppanelbeforeEnter dismissDialog"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2772
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isPoppanelLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2773
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;->get()Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;->notifyAllOsdHide(I)Z

    .line 2774
    const-string v0, "UserScenarioService"

    const-string v1, "cleanDialogAndPoppanelbeforeEnter notifyAllOsdHide"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    :cond_1
    return-void
.end method

.method private cleanDialogAndPoppanelbeforeEnter(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V
    .locals 4
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 2759
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelScreenIds()[I

    move-result-object v0

    .line 2760
    .local v0, "screenIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 2761
    .local v3, "screenId":I
    invoke-direct {p0, v3, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->cleanDialogAndPoppanel(ILcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    .line 2760
    .end local v3    # "screenId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2763
    :cond_0
    return-void
.end method

.method private dispatchBroadcast(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1909
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get broadcast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.xiaopeng.broadcast.ACTION_SCREEN_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "xiaopeng.bluetooth.a2dp.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "com.xiaopeng.speech.action.wakeup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v1, "com.xiaopeng.intent.action.APP_POLICY_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1931
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->handleAppPolicyError(Landroid/content/Intent;)V

    .line 1932
    goto :goto_2

    .line 1928
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->handlePassengerBluetoothStatus(Landroid/content/Intent;)V

    .line 1929
    goto :goto_2

    .line 1925
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->handleVolumeEvent(Landroid/content/Intent;)V

    .line 1926
    goto :goto_2

    .line 1916
    :pswitch_3
    const-string v0, "status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1917
    .local v0, "screenOn":Z
    const-string v1, "screenId"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1918
    .local v1, "screenId":I
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " screenId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->setSecondScreenFlag(IZ)V

    .line 1920
    if-eqz v0, :cond_1

    .line 1921
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->handleScreenOn(I)V

    .line 1923
    .end local v0    # "screenOn":Z
    .end local v1    # "screenId":I
    :cond_1
    goto :goto_2

    .line 1913
    :pswitch_4
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->handleVoiceActive()V

    .line 1914
    nop

    .line 1936
    :goto_2
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73abbf83 -> :sswitch_4
        -0x55f1d1ad -> :sswitch_3
        -0x17522841 -> :sswitch_2
        0x10aacdad -> :sswitch_1
        0x75ffad72 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dynamicScenarioPreEnter(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)Z
    .locals 9
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 2406
    const/4 v0, 0x0

    .line 2407
    .local v0, "screenSwitch":Z
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getDynamicScreen()I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    .line 2408
    return v0

    .line 2410
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v1

    .line 2411
    .local v1, "currentGroupIdx":I
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getRawGroupIndex()I

    move-result v3

    .line 2412
    .local v3, "preGroupIdx":I
    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dynamicScenarioPreEnter,status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",currentGroupIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",preGroupIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 2416
    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 2419
    :cond_1
    const/4 v0, 0x1

    .line 2420
    if-ltz v3, :cond_3

    .line 2422
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->removeMessages(I)V

    .line 2424
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->configVolume(Z)V

    .line 2425
    invoke-virtual {p1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->exitInner(I)V

    .line 2426
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2429
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    new-instance v6, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$RDT_Fj-gwMohPUteS5W1xGfUx98;

    invoke-direct {v6, p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$RDT_Fj-gwMohPUteS5W1xGfUx98;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2433
    :cond_2
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    sget-object v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    aget-object v6, v6, v3

    aput-object v6, v5, v1

    .line 2434
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppPids:[I

    sget-object v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppPids:[I

    aget v6, v6, v3

    aput v6, v5, v1

    .line 2435
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    sget-object v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    aget-object v6, v6, v3

    aput-object v6, v5, v1

    .line 2436
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    sget-object v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v6, v6, v3

    aput-object v6, v5, v1

    .line 2439
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    .line 2440
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppPids:[I

    aput v4, v5, v3

    .line 2441
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    aput-object v6, v4, v3

    .line 2442
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aput-object v6, v4, v3

    .line 2447
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getDynamicScreenId()I

    move-result v4

    shl-int/2addr v2, v4

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setPanelCover(I)V

    .line 2448
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->resetPanelScreenIdSet()V

    .line 2449
    return v0
.end method

.method private enterScenarioInnerCheck(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;ZLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "onlyCheck"    # Z
    .param p3, "extra"    # Ljava/lang/String;

    .line 2012
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v0

    .line 2013
    .local v0, "groupIdx":I
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v1, v1, v0

    .line 2014
    .local v1, "runningConfiger":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScenarioInnerCheck, groupIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",check target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_4

    aget-object v6, v2, v4

    .line 2016
    .local v6, "c":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    const-string v7, "UserScenarioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enterScenarioInnerCheck, check run="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v5

    nop

    :cond_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 2019
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isScenarioBlocked(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conflict#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2021
    .local v2, "ret":Ljava/lang/String;
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "other group conflict="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",onlyCheck="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    if-nez p2, :cond_2

    .line 2024
    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getConflictHintRes()Ljava/lang/String;

    move-result-object v3

    .line 2025
    .local v3, "toastStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2026
    .local v4, "screenId":I
    if-eqz p3, :cond_1

    .line 2027
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getScreenId(Ljava/lang/String;)I

    move-result v4

    .line 2029
    :cond_1
    move v5, v4

    .line 2030
    .local v5, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v7

    new-instance v8, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$t-IGFxpbY98JPP2bCeBYrZVpsL8;

    invoke-direct {v8, p0, v3, v5}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$t-IGFxpbY98JPP2bCeBYrZVpsL8;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 2035
    .end local v3    # "toastStr":Ljava/lang/String;
    .end local v4    # "screenId":I
    .end local v5    # "displayId":I
    :cond_2
    return-object v2

    .line 2015
    .end local v2    # "ret":Ljava/lang/String;
    .end local v6    # "c":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2039
    :cond_4
    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 2041
    if-ne v1, p1, :cond_7

    .line 2042
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v3

    if-eq v2, v3, :cond_6

    const/4 v2, 0x2

    .line 2043
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v3

    if-ne v2, v3, :cond_5

    goto :goto_1

    .line 2047
    :cond_5
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScenarioInnerCheck,scenario:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",invalid status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2047
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2044
    :cond_6
    :goto_1
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScenarioInnerCheck, already started:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2044
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    :goto_2
    return-object v5

    .line 2055
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conflict#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2056
    .local v3, "ret":Ljava/lang/String;
    if-eqz p1, :cond_8

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isFriend(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2057
    const-string v4, "UserScenarioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target scenario:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is current friend:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2057
    invoke-static {v4, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    if-nez p2, :cond_c

    .line 2060
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setCurrentFriend(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2062
    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPriority()I

    move-result v4

    const/16 v6, 0x64

    if-le v4, v6, :cond_9

    .line 2063
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPriority()I

    move-result v4

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPriority()I

    move-result v6

    if-le v4, v6, :cond_9

    .line 2065
    const-string v4, "UserScenarioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enterScenarioInnerCheck,target scenario:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",priority:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPriority()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is large than  running:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",priority:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPriority()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2065
    invoke-static {v4, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    if-nez p2, :cond_c

    .line 2070
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setCurrentFriend(Ljava/lang/String;)V

    goto :goto_3

    .line 2073
    :cond_9
    const-string v2, "UserScenarioService"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    if-nez p2, :cond_b

    .line 2076
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getConflictHintRes()Ljava/lang/String;

    move-result-object v2

    .line 2077
    .local v2, "toastStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2078
    .restart local v4    # "screenId":I
    if-eqz p3, :cond_a

    .line 2079
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getScreenId(Ljava/lang/String;)I

    move-result v4

    .line 2081
    :cond_a
    move v5, v4

    .line 2082
    .restart local v5    # "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v6

    new-instance v7, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$0i-cWToRLcG-CwbPvtA0rFOzYJc;

    invoke-direct {v7, p0, v2, v5}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$0i-cWToRLcG-CwbPvtA0rFOzYJc;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 2087
    .end local v2    # "toastStr":Ljava/lang/String;
    .end local v4    # "screenId":I
    .end local v5    # "displayId":I
    :cond_b
    return-object v3

    .line 2092
    .end local v3    # "ret":Ljava/lang/String;
    :cond_c
    :goto_3
    if-eqz p1, :cond_13

    .line 2094
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getEnterDoor()I

    move-result v3

    if-lez v3, :cond_f

    .line 2095
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getEnterDoor()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->isDoorCloseStateMatch(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2096
    const-string v2, "UserScenarioService"

    const-string v3, "enterScenarioInnerCheck,door open"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    if-nez p2, :cond_e

    .line 2099
    const/4 v2, 0x0

    .line 2100
    .local v2, "screenId":I
    if-eqz p3, :cond_d

    .line 2101
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getScreenId(Ljava/lang/String;)I

    move-result v2

    .line 2103
    :cond_d
    move v3, v2

    .line 2104
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0096

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2105
    .local v4, "toastStr":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$VhfKi6qLjvBk1q-RcuSLqxinpts;

    invoke-direct {v6, p0, v4, v3}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$VhfKi6qLjvBk1q-RcuSLqxinpts;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 2110
    .end local v2    # "screenId":I
    .end local v3    # "displayId":I
    .end local v4    # "toastStr":Ljava/lang/String;
    :cond_e
    const-string v2, "doorOpen"

    return-object v2

    .line 2114
    :cond_f
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getEnterGear()I

    move-result v3

    if-ne v2, v3, :cond_12

    .line 2116
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->isGearInP()Z

    move-result v2

    if-nez v2, :cond_12

    .line 2117
    const-string v2, "UserScenarioService"

    const-string v3, "enterScenarioInnerCheck,gear not P"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    if-nez p2, :cond_11

    .line 2120
    const/4 v2, 0x0

    .line 2121
    .restart local v2    # "screenId":I
    if-eqz p3, :cond_10

    .line 2122
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getScreenId(Ljava/lang/String;)I

    move-result v2

    .line 2124
    :cond_10
    move v3, v2

    .line 2125
    .restart local v3    # "displayId":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0099

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2126
    .restart local v4    # "toastStr":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$IzHgCfsmHgo0TSluE8s6d0AhxdY;

    invoke-direct {v6, p0, v4, v3}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$IzHgCfsmHgo0TSluE8s6d0AhxdY;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 2131
    .end local v2    # "screenId":I
    .end local v3    # "displayId":I
    .end local v4    # "toastStr":Ljava/lang/String;
    :cond_11
    const-string v2, "gearNotP"

    return-object v2

    .line 2138
    :cond_12
    return-object v5

    .line 2135
    :cond_13
    const-string v2, "UserScenarioService"

    const-string v3, "enterScenarioInnerCheck, no suitable configer"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    const-string v2, "scenarioInvalid"

    return-object v2
.end method

.method private enterScenarioTrigger(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .line 2143
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v0

    .line 2146
    .local v0, "groupIdx":I
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2148
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aput-object p1, v1, v0

    .line 2149
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v3, v1, :cond_0

    .line 2150
    invoke-virtual {p1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 2152
    :cond_0
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setLastLaunchPackage(Ljava/lang/String;)V

    .line 2153
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mStatusToBe:[I

    aput v3, v1, v0

    .line 2154
    invoke-virtual {p1, p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setLaunchSource(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {p1, p4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setLaunchExtra(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {p1, p4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setEnterExtra(Ljava/lang/String;)V

    .line 2157
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    invoke-virtual {v1, v2, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2158
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->removeMessages(I)V

    .line 2159
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    invoke-virtual {v1, v2, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2160
    .local v1, "checkMsg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getLaunchPackage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.xiaopeng.xuiservice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2161
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v1, v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2163
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->reportStatus(Ljava/lang/String;I)V

    .line 2165
    :goto_0
    return-void
.end method

.method private exitPreCheck()Z
    .locals 5

    .line 1802
    const/4 v0, 0x0

    .line 1804
    .local v0, "scenarioStatValid":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1805
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v2, v2, v1

    .line 1806
    .local v2, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v2, :cond_1

    .line 1807
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v3, 0x2

    .line 1808
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1810
    :cond_0
    const/4 v0, 0x1

    .line 1811
    goto :goto_1

    .line 1804
    .end local v2    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1816
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private declared-synchronized exitUserScenarioWithReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    monitor-enter p0

    .line 1591
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$1;)V

    .line 1592
    .local v0, "record":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->opTick:J

    .line 1593
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1594
    .local v1, "pid":I
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getProcessName(I)Ljava/lang/String;

    move-result-object v2

    .line 1595
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->source:Ljava/lang/String;

    .line 1596
    const-string v3, "exit"

    iput-object v3, v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->operation:Ljava/lang/String;

    .line 1597
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getScenarioGroup(Ljava/lang/String;)I

    move-result v3

    move v9, v3

    .line 1598
    .local v9, "groupIdx":I
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitUserScenarioWithReason,scenario="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",call pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",groupIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    if-gez v9, :cond_0

    .line 1601
    const-string v3, "scenarioInvalid"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1603
    :cond_0
    :try_start_1
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v3, v3, v9

    move-object v10, v3

    .line 1604
    .local v10, "currentConfiger":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    iput v3, v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->configerState:I

    .line 1606
    if-nez v10, :cond_2

    .line 1607
    const-string v3, "UserScenarioService"

    const-string v4, "exitUserScenarioWithReason,no working scenario"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const-string v3, "scenarioInvalid"

    iput-object v3, v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 1609
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 1610
    const-string v3, "scenarioInvalid"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1613
    :cond_2
    :try_start_2
    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1614
    const-string v3, "UserScenarioService"

    const-string v4, "exitUserScenarioWithReason, scenario not match!"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conflict#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1616
    .local v3, "ret":Ljava/lang/String;
    iput-object v3, v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 1617
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1618
    monitor-exit p0

    return-object v3

    .line 1621
    .end local v3    # "ret":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    :try_start_3
    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v4

    const/4 v11, 0x2

    if-eq v3, v4, :cond_4

    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v3

    if-eq v11, v3, :cond_4

    .line 1622
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitUserScenarioWithReason,invalid status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    const-string v3, "scenarioInvalid"

    iput-object v3, v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 1624
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 1625
    const-string v3, "scenarioInvalid"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1629
    :cond_4
    :try_start_4
    const-string v7, "2"

    const-string v8, "2"

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->sendBILog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const/4 v3, 0x3

    invoke-virtual {v10, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 1631
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mStatusToBe:[I

    const/4 v4, 0x0

    aput v4, v3, v9

    .line 1632
    invoke-virtual {v10, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitReason(Ljava/lang/String;)V

    .line 1633
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    invoke-virtual {v3, v11, v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1634
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->removeMessages(I)V

    .line 1635
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    invoke-virtual {v3, v4, v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1636
    .local v3, "checkMsg":Landroid/os/Message;
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const-wide/16 v5, 0xfa0

    invoke-virtual {v4, v3, v5, v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1639
    .end local v3    # "checkMsg":Landroid/os/Message;
    goto :goto_1

    .line 1637
    :catch_0
    move-exception v3

    .line 1638
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exitUserScenarioWithReason,e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "success"

    iput-object v3, v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 1642
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 1643
    const-string v3, "success"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1590
    .end local v0    # "record":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
    .end local v1    # "pid":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v9    # "groupIdx":I
    .end local v10    # "currentConfiger":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local p1    # "scenario":Ljava/lang/String;
    .end local p2    # "reason":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    throw p1
.end method

.method private getExitScreenId(Ljava/lang/String;)I
    .locals 5
    .param p1, "extra"    # Ljava/lang/String;

    .line 2557
    const/4 v0, -0x1

    move v1, v0

    .line 2559
    .local v1, "screenId":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2560
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "screenId"

    .line 2561
    .local v3, "keySharedId":Ljava/lang/String;
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 2564
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "keySharedId":Ljava/lang/String;
    goto :goto_0

    .line 2562
    :catch_0
    move-exception v0

    .line 2563
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisPlayId e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .locals 1

    .line 543
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioService:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    return-object v0
.end method

.method private getProcessName(I)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I

    .line 1991
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getRunningConfigers()[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .locals 1

    .line 1586
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    return-object v0
.end method

.method private getScenarioGroup(Ljava/lang/String;)I
    .locals 4
    .param p1, "scenario"    # Ljava/lang/String;

    .line 2547
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 2548
    .local v0, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-nez v0, :cond_0

    .line 2549
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScenarioGroup,no configer for scenario:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    const/4 v1, -0x1

    return v1

    .line 2553
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v1

    return v1
.end method

.method private getScreenId(Ljava/lang/String;)I
    .locals 5
    .param p1, "extra"    # Ljava/lang/String;

    .line 2370
    const/4 v0, 0x0

    move v1, v0

    .line 2372
    .local v1, "screenId":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2373
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "screenId"

    .line 2374
    .local v3, "keySharedId":Ljava/lang/String;
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 2377
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "keySharedId":Ljava/lang/String;
    goto :goto_0

    .line 2375
    :catch_0
    move-exception v0

    .line 2376
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisPlayId e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private getTargetScreenId(Ljava/lang/String;)I
    .locals 6
    .param p1, "extra"    # Ljava/lang/String;

    .line 2384
    const/4 v0, 0x0

    move v1, v0

    .line 2386
    .local v1, "targetScreenId":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2387
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "targetScreenId"

    .line 2388
    .local v3, "keyTargetScreenId":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    .line 2389
    if-ne v4, v1, :cond_0

    .line 2390
    const-string v4, "screenId"

    .line 2391
    .local v4, "keySharedId":Ljava/lang/String;
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 2395
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "keyTargetScreenId":Ljava/lang/String;
    .end local v4    # "keySharedId":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2393
    :catch_0
    move-exception v0

    .line 2394
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTargetScreenId e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private getTransactionApi(I)Ljava/lang/String;
    .locals 10
    .param p1, "transactionCode"    # I

    .line 2781
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mTransactionCodeToApiMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2782
    .local v0, "api":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 2783
    const-class v1, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2784
    .local v1, "fields":[Ljava/lang/reflect/Field;
    const-string v2, "TRANSACTION_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2785
    .local v2, "subStart":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 2786
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2787
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TRANSACTION_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2789
    :try_start_0
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 2790
    .local v6, "value":I
    if-ne v6, p1, :cond_0

    .line 2791
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 2792
    sget-object v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mTransactionCodeToApiMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2793
    goto :goto_2

    .line 2797
    .end local v6    # "value":I
    :cond_0
    goto :goto_1

    .line 2795
    :catch_0
    move-exception v6

    .line 2796
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "UserScenarioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTransactionApi,e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2800
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 2801
    const-string v0, "UNKNOWN"

    .line 2802
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mTransactionCodeToApiMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "subStart":I
    :cond_3
    return-object v0
.end method

.method private handleAppPolicyError(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2314
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2315
    .local v0, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2316
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2317
    .local v2, "reason":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2318
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAppPolicyError, current scenario:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2319
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2318
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    const-string v3, "parking_mode"

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2322
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isSR(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2324
    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v3, 0x2

    .line 2325
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 2326
    :cond_0
    const-string v3, "UserScenarioService"

    const-string v4, "handleAppPolicyError, parking scenario run,retry"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2329
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "packageName"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2330
    const-string v4, "className"

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStartActivity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2333
    goto :goto_0

    .line 2331
    :catch_0
    move-exception v4

    .line 2332
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 2334
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->setPendingOperation(ILjava/lang/String;)V

    .line 2335
    return-void

    .line 2339
    .end local v3    # "json":Lorg/json/JSONObject;
    :cond_1
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAppPolicyError, current scenario null, pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    :cond_2
    return-void
.end method

.method private handleExitScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "jsonStr"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 2646
    move-object/from16 v8, p2

    const/4 v1, 0x0

    .line 2647
    .local v1, "exitReason":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2648
    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2649
    .local v3, "array":[Ljava/lang/String;
    aget-object v0, v3, v9

    .line 2650
    .end local p1    # "scenario":Ljava/lang/String;
    .local v0, "scenario":Ljava/lang/String;
    array-length v4, v3

    if-le v4, v2, :cond_0

    .line 2651
    aget-object v1, v3, v2

    .line 2652
    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exit reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    .end local v1    # "exitReason":Ljava/lang/String;
    .end local v3    # "array":[Ljava/lang/String;
    .local v10, "exitReason":Ljava/lang/String;
    :cond_0
    move-object v10, v1

    new-instance v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    const/4 v3, 0x0

    invoke-direct {v1, v7, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$1;)V

    move-object v11, v1

    .line 2657
    .local v11, "record":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->opTick:J

    .line 2658
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 2659
    .local v12, "pid":I
    invoke-direct {v7, v12}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getProcessName(I)Ljava/lang/String;

    move-result-object v13

    .line 2660
    .local v13, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->source:Ljava/lang/String;

    .line 2661
    const-string v1, "exit"

    iput-object v1, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->operation:Ljava/lang/String;

    .line 2662
    const-string v1, "scenario_all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v1, v1, v9

    if-eqz v1, :cond_1

    .line 2664
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v0

    .line 2666
    .end local v0    # "scenario":Ljava/lang/String;
    .local v14, "scenario":Ljava/lang/String;
    :cond_1
    move-object v14, v0

    invoke-direct {v7, v14}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getScenarioGroup(Ljava/lang/String;)I

    move-result v15

    .line 2667
    .local v15, "groupIdx":I
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exitUserScenario,scenario="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",call pid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",caller="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",groupIdx="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",jsonStr="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    if-gez v15, :cond_2

    .line 2671
    const-string v0, "scenarioInvalid"

    return-object v0

    .line 2673
    :cond_2
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v6, v0, v15

    .line 2674
    .local v6, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    iput v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->configerState:I

    .line 2676
    if-nez v6, :cond_4

    .line 2677
    const-string v0, "UserScenarioService"

    const-string v1, "exitUserScenario,no working scenario"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    const-string v0, "scenarioInvalid"

    iput-object v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 2679
    invoke-static {v11}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 2680
    const-string v0, "scenarioInvalid"

    return-object v0

    .line 2683
    :cond_4
    if-eqz v8, :cond_5

    .line 2684
    move-object v1, v3

    .line 2686
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 2687
    const-string v0, "isRestoreAreaType"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2688
    .local v0, "val":Z
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRestoreAreaType(Z)V

    .line 2689
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitUserScenario, isRestoreAreaType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2692
    .end local v0    # "val":Z
    goto :goto_1

    .line 2690
    :catch_0
    move-exception v0

    .line 2691
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitUserScenario,parse jsonStr fail,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_5
    :goto_1
    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "scenario_all"

    .line 2696
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2697
    const-string v0, "UserScenarioService"

    const-string v1, "exitUserScenario, scenario not match!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conflict#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2699
    .local v0, "ret":Ljava/lang/String;
    iput-object v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 2700
    invoke-static {v11}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 2701
    return-object v0

    .line 2704
    .end local v0    # "ret":Ljava/lang/String;
    :cond_6
    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v0

    const/4 v5, 0x2

    if-eq v2, v0, :cond_7

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v0

    if-eq v5, v0, :cond_7

    .line 2705
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitUserScenario,invalid status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    const-string v0, "scenarioInvalid"

    iput-object v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 2707
    invoke-static {v11}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 2708
    const-string v0, "scenarioInvalid"

    return-object v0

    .line 2711
    :cond_7
    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getAllowExit()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2712
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitUserScenario,don\'t allow exit by scenario owner,scenario:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    const-string v0, "ownerForbidden"

    iput-object v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 2715
    invoke-static {v11}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 2723
    const-string v0, "ownerForbidden"

    return-object v0

    .line 2727
    :cond_8
    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getExitDialogConfirm()I

    move-result v0

    if-eq v2, v0, :cond_b

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getNeedExitDialog()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2728
    move-object v9, v6

    goto/16 :goto_5

    .line 2736
    :cond_9
    if-eqz v10, :cond_a

    .line 2737
    :try_start_1
    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getLastLaunchPackage()Ljava/lang/String;

    move-result-object v3

    const-string v0, "2"

    const-string v16, "1"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v7

    move-object v2, v14

    move-object v4, v10

    move-object v5, v0

    move-object v9, v6

    move-object/from16 v6, v16

    .end local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .local v9, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->sendBILog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2749
    .end local v9    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .restart local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :catch_1
    move-exception v0

    move-object v9, v6

    .end local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .restart local v9    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    goto :goto_3

    .line 2739
    .end local v9    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .restart local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_a
    move-object v9, v6

    .end local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .restart local v9    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    const-string v4, "success"

    const-string v5, "2"

    const-string v6, "1"

    move-object v1, v7

    move-object v2, v14

    move-object v3, v13

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->sendBILog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    :goto_2
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 2742
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mStatusToBe:[I

    const/4 v1, 0x0

    aput v1, v0, v15

    .line 2743
    invoke-virtual {v9, v8}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitExtra(Ljava/lang/String;)V

    .line 2744
    const-string v0, "rAppRequest"

    invoke-virtual {v9, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitReason(Ljava/lang/String;)V

    .line 2745
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v9}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2746
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->removeMessages(I)V

    .line 2747
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    invoke-virtual {v0, v1, v9}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2748
    .local v0, "checkMsg":Landroid/os/Message;
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2751
    .end local v0    # "checkMsg":Landroid/os/Message;
    goto :goto_4

    .line 2749
    :catch_2
    move-exception v0

    .line 2750
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitUserScenario,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const-string v0, "success"

    iput-object v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 2754
    invoke-static {v11}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 2755
    const-string v0, "success"

    return-object v0

    .line 2728
    .end local v9    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .restart local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_b
    move-object v9, v6

    .end local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .restart local v9    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :goto_5
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitUserScenario with exit window confirm,scenario:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    const-string v0, "dialogConfirm"

    iput-object v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 2730
    invoke-static {v11}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 2731
    invoke-direct {v7, v9, v8}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->showExitWindow(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    .line 2732
    const-string v0, "dialogConfirm"

    return-object v0
.end method

.method private handleIgStatus(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 1869
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1870
    .local v0, "status":I
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIgStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    if-eqz v0, :cond_0

    goto :goto_2

    .line 1873
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitPreCheck()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1874
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1876
    :try_start_0
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v2, v2, v1

    .line 1877
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v2, v2, v1

    .line 1878
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1879
    :cond_1
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rIgOff"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitUserScenarioWithReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    :cond_2
    goto :goto_1

    .line 1882
    :catch_0
    move-exception v2

    .line 1883
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle ig off,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1891
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method private handlePassengerBluetoothStatus(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2284
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2285
    .local v0, "state":I
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePassengerBluetoothStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    .line 2288
    sput-boolean v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->passengerbluetoothConnected:Z

    .line 2290
    move v3, v1

    .local v3, "k":I
    :goto_0
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 2291
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v4, v4, v3

    .line 2292
    .local v4, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getVolumeBtDynamic()I

    move-result v5

    if-lez v5, :cond_0

    .line 2293
    invoke-virtual {v4, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->configMediaStreamVolume(Z)V

    .line 2294
    invoke-virtual {v4, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->configPassengerBtVolume(Z)V

    .line 2295
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->saveData()V

    .line 2290
    .end local v4    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2298
    .end local v3    # "k":I
    :cond_1
    sget-boolean v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->passengerbluetoothConnected:Z

    if-eqz v3, :cond_3

    .line 2300
    sput-boolean v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->passengerbluetoothConnected:Z

    .line 2302
    move v3, v1

    .restart local v3    # "k":I
    :goto_1
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 2303
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v4, v4, v3

    .line 2304
    .restart local v4    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getVolumeBtDynamic()I

    move-result v5

    if-lez v5, :cond_2

    .line 2305
    invoke-virtual {v4, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->configPassengerBtVolume(Z)V

    .line 2306
    invoke-virtual {v4, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->configMediaStreamVolume(Z)V

    .line 2307
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->saveData()V

    .line 2302
    .end local v4    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2311
    .end local v3    # "k":I
    :cond_3
    return-void
.end method

.method private handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 1859
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1861
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->handleIgStatus(Landroid/car/hardware/CarPropertyValue;)V

    .line 1862
    nop

    .line 1866
    :goto_0
    return-void
.end method

.method private handleScenarioParameters(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V
    .locals 9
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "jsonStr"    # Ljava/lang/String;

    .line 2453
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleScenarioParameters,scenario="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    const/4 v0, 0x0

    move-object v1, v0

    .line 2457
    .local v1, "jsonData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    .line 2461
    nop

    .line 2463
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 2464
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2465
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2466
    .local v3, "key":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x76651b6a

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v5, v6, :cond_2

    const v6, 0x5f0842eb

    if-eq v5, v6, :cond_1

    const v6, 0x6db9a177

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "pAllowExit"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v7

    goto :goto_1

    :cond_1
    const-string v5, "pScreenUse"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v8

    goto :goto_1

    :cond_2
    const-string v5, "pExitDialog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x2

    :cond_3
    :goto_1
    packed-switch v4, :pswitch_data_0

    .end local v3    # "key":Ljava/lang/String;
    goto/16 :goto_2

    .line 2478
    .restart local v3    # "key":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    const-string v4, "pExitDialog"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2479
    .local v4, "dialogConfigObj":Lorg/json/JSONObject;
    const-string v5, "pExitDialogNeed"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2480
    const-string v5, "pExitDialogNeed"

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2481
    .local v5, "val":Z
    invoke-virtual {p1, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setNeedExitDialog(Z)V

    .line 2482
    if-nez v5, :cond_4

    .line 2484
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDialogConfig(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;)V

    .line 2488
    .end local v5    # "val":Z
    :cond_4
    new-instance v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;

    invoke-direct {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;-><init>()V

    .line 2490
    .local v5, "dialogConfig":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;
    const-string v6, "pTitle"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->title:Ljava/lang/String;

    .line 2491
    const-string v6, "pText"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->content:Ljava/lang/String;

    .line 2492
    const-string v6, "pConfirmText"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->confirmText:Ljava/lang/String;

    .line 2493
    const-string v6, "pCancelText"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->cancelText:Ljava/lang/String;

    .line 2494
    const-string v6, "pConfirmVuiText"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->confirmVuiText:Ljava/lang/String;

    .line 2495
    const-string v6, "pCancelVuiText"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->cancelVuiText:Ljava/lang/String;

    .line 2496
    const-string v6, "UserScenarioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set dialog config="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    invoke-virtual {p1, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDialogConfig(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;)V

    .line 2499
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitDialogConfig(Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2502
    .end local v4    # "dialogConfigObj":Lorg/json/JSONObject;
    .end local v5    # "dialogConfig":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;
    goto :goto_2

    .line 2500
    :catch_0
    move-exception v4

    .line 2501
    .local v4, "e2":Ljava/lang/Exception;
    const-string v5, "UserScenarioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleScenarioParameters e2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    .end local v4    # "e2":Ljava/lang/Exception;
    goto :goto_2

    .line 2472
    :pswitch_1
    const-string v4, "pAllowExit"

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2473
    .local v4, "val":Z
    const-string v5, "UserScenarioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleScenarioParameters,allow exit:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    invoke-virtual {p1, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setAllowExit(Z)V

    .line 2475
    .end local v4    # "val":Z
    goto :goto_2

    .line 2468
    :pswitch_2
    const-string v4, "pScreenUse"

    invoke-virtual {v1, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 2469
    .local v4, "panelCover":I
    invoke-virtual {p1, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setPanelCover(I)V

    .line 2470
    .end local v4    # "panelCover":I
    nop

    .line 2507
    .end local v3    # "key":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 2508
    :cond_5
    return-void

    .line 2458
    .end local v2    # "iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 2459
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleScenarioParameters,e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleScreenOn(I)V
    .locals 6
    .param p1, "screenId"    # I

    .line 1971
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitPreCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1972
    return-void

    .line 1974
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1975
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v1, v1, v0

    .line 1976
    .local v1, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-nez v1, :cond_1

    .line 1977
    goto :goto_1

    .line 1979
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getExitScreenOn()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->matchScreenId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1980
    goto :goto_1

    .line 1983
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rScreenOn"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitUserScenarioWithReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1986
    goto :goto_1

    .line 1984
    :catch_0
    move-exception v2

    .line 1985
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleScreenOn e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    .end local v1    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1988
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private handleVoiceActive()V
    .locals 6

    .line 1939
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitPreCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1940
    return-void

    .line 1942
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1943
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v1, v1, v0

    .line 1944
    .local v1, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-nez v1, :cond_1

    .line 1945
    goto :goto_1

    .line 1947
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getExitVoice()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1948
    goto :goto_1

    .line 1951
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rVoiceActive"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitUserScenarioWithReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1954
    goto :goto_1

    .line 1952
    :catch_0
    move-exception v2

    .line 1953
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVoiceActive e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    .end local v1    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1956
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private handleVolumeEvent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2266
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2267
    .local v0, "streamType":I
    const-string v1, "android.media.vol_change.PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2269
    .local v1, "volumePackage":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 2270
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v3, v3, v2

    .line 2271
    .local v3, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVolumeEvent,pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",streamType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",current scenario:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    if-eqz v3, :cond_0

    .line 2274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",vol dynamic:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getVolumeDynamic()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    const-string v6, "idle"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",passengerbtConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->passengerbluetoothConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2271
    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    if-nez v3, :cond_1

    .line 2277
    goto :goto_2

    .line 2279
    :cond_1
    invoke-direct {p0, v3, v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->handleVolumeEventWithConfiger(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;ILjava/lang/String;)V

    .line 2269
    .end local v3    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2281
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private handleVolumeEventWithConfiger(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;ILjava/lang/String;)V
    .locals 6
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "streamType"    # I
    .param p3, "volumePackage"    # Ljava/lang/String;

    .line 2233
    const-wide/16 v0, 0x1f4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v4, p2, :cond_1

    sget-boolean v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->passengerbluetoothConnected:Z

    if-nez v5, :cond_1

    .line 2234
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mVolumeIgnorePkgList:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p1, :cond_3

    .line 2235
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getVolumeDynamic()I

    move-result v5

    if-lez v5, :cond_3

    .line 2236
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    sput v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lastMusicVolume:I

    .line 2237
    sget v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lastMusicVolume:I

    if-ge v4, v3, :cond_0

    .line 2238
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleVolumeEvent, volume invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lastMusicVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    return-void

    .line 2241
    :cond_0
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->removeMessages(I)V

    .line 2242
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    sget v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lastMusicVolume:I

    invoke-virtual {v3, v4, v5, v2, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2245
    .local v2, "msg":Landroid/os/Message;
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2246
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2247
    :cond_1
    const/16 v4, 0xd

    if-ne v4, p2, :cond_3

    sget-boolean v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->passengerbluetoothConnected:Z

    if-eqz v5, :cond_3

    .line 2249
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getVolumeBtDynamic()I

    move-result v5

    if-lez v5, :cond_3

    .line 2250
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    sput v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lastPassengerBtVolume:I

    .line 2251
    sget v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lastPassengerBtVolume:I

    if-ge v4, v3, :cond_2

    .line 2252
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleVolumeEvent, passenger bt volume invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lastPassengerBtVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    return-void

    .line 2256
    :cond_2
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->removeMessages(I)V

    .line 2257
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    sget v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->lastPassengerBtVolume:I

    invoke-virtual {v3, v4, v5, v2, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2260
    .restart local v2    # "msg":Landroid/os/Message;
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2263
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    :goto_0
    return-void
.end method

.method private isDoorCloseStateMatch(I)Z
    .locals 11
    .param p1, "doorState"    # I

    .line 1728
    const/4 v0, 0x0

    .line 1730
    .local v0, "isMatch":Z
    sget-boolean v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->debugMode:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1731
    return v2

    .line 1734
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v3, "xp_bcm"

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 1735
    .local v1, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v1, :cond_5

    .line 1737
    const/4 v3, 0x0

    .line 1738
    .local v3, "curState":I
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getDoorsState()[I

    move-result-object v4

    .line 1739
    .local v4, "stats":[I
    if-nez v4, :cond_1

    .line 1740
    const-string v2, "UserScenarioService"

    const-string v5, "isDoorCloseStateMatch getDoorsState null"

    invoke-static {v2, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    return v0

    .line 1743
    :cond_1
    const/4 v5, 0x0

    .line 1744
    .local v5, "i":I
    array-length v6, v4

    const/4 v7, 0x0

    move v8, v5

    move v5, v3

    move v3, v7

    .line 1744
    .end local v3    # "curState":I
    .local v5, "curState":I
    .local v8, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    aget v9, v4, v3

    .line 1746
    .local v9, "stat":I
    if-nez v9, :cond_2

    .line 1747
    shl-int v10, v2, v8

    add-int/2addr v5, v10

    .line 1749
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 1744
    .end local v9    # "stat":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1751
    :cond_3
    and-int v3, p1, v5

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v7

    :goto_1
    move v0, v2

    .line 1752
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDoorCloseStateMatch,compared="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",cur="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",match="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    .end local v4    # "stats":[I
    .end local v5    # "curState":I
    .end local v8    # "i":I
    goto :goto_2

    .line 1753
    :catch_0
    move-exception v2

    .line 1754
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDoorCloseStateMatch e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return v0
.end method

.method private isGearInP()Z
    .locals 6

    .line 1708
    const/4 v0, 0x0

    .line 1710
    .local v0, "isP":Z
    sget-boolean v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->debugMode:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1711
    return v2

    .line 1714
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v3, "xp_vcu"

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 1715
    .local v1, "manager":Landroid/car/hardware/vcu/CarVcuManager;
    if-eqz v1, :cond_2

    .line 1717
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getDisplayGearLevel()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 1720
    goto :goto_1

    .line 1718
    :catch_0
    move-exception v2

    .line 1719
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGearInP e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return v0
.end method

.method public static isPassengerbluetoothConnected()Ljava/lang/Boolean;
    .locals 1

    .line 1301
    sget-boolean v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->passengerbluetoothConnected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$dynamicScenarioPreEnter$12(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V
    .locals 0
    .param p1, "preGroupIdx"    # I

    .line 2429
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->popScenarioFromQueue(I)I

    return-void
.end method

.method public static synthetic lambda$enqueueScenario$3(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V
    .locals 0
    .param p1, "targetGroupIdx"    # I

    .line 1013
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->popScenarioFromQueue(I)I

    return-void
.end method

.method public static synthetic lambda$enterScenarioInnerCheck$10(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V
    .locals 3
    .param p1, "toastStr"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 2106
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show door check str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 2108
    return-void
.end method

.method public static synthetic lambda$enterScenarioInnerCheck$11(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V
    .locals 3
    .param p1, "toastStr"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 2127
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show gear check str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 2129
    return-void
.end method

.method public static synthetic lambda$enterScenarioInnerCheck$8(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V
    .locals 3
    .param p1, "toastStr"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 2031
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show conflict str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 2033
    return-void
.end method

.method public static synthetic lambda$enterScenarioInnerCheck$9(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/lang/String;I)V
    .locals 3
    .param p1, "toastStr"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 2083
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show conflict str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 2085
    return-void
.end method

.method static synthetic lambda$init$1()V
    .locals 4

    .line 558
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_1
    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch handler Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1
.end method

.method public static synthetic lambda$init$2(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V
    .locals 6

    .line 565
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->parseUserScenarioConfig()[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 566
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 568
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/concurrent/CopyOnWriteArrayList;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 569
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v0, v0

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 570
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mStatusToBe:[I

    .line 571
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppPids:[I

    .line 572
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v0, v0

    new-array v0, v0, [Landroid/os/IBinder;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    .line 573
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v0, v0

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    .line 574
    move v0, v1

    .line 574
    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 575
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 576
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 577
    move v2, v1

    .line 577
    .local v2, "j":I
    :goto_1
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 578
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 579
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigerList:Ljava/util/List;

    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 581
    :cond_0
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wtf, null configer for data group:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",idx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 585
    .end local v2    # "j":I
    :cond_1
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, no configer data of group:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    .end local v0    # "i":I
    :cond_3
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 590
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 591
    .local v2, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find userscenario config="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .end local v2    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    goto :goto_3

    .line 594
    :cond_4
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v0, v0

    .line 595
    .local v0, "groupLen":I
    nop

    .line 595
    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_6

    .line 596
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SysUtils;->getInstance()Lcom/xiaopeng/xuiservice/utils/SysUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/utils/SysUtils;->isSystemRestarted()Z

    move-result v2

    if-nez v2, :cond_5

    .line 597
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->restoreStatus(I)V

    goto :goto_5

    .line 599
    :cond_5
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, system restarted, ignore chched status of group:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sys.xiaopeng.userscenario"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 604
    .end local v0    # "groupLen":I
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 535
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public static synthetic lambda$registerBroadcast$6(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1898
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->dispatchBroadcast(Landroid/content/Intent;)V

    .line 1899
    return-void
.end method

.method public static synthetic lambda$registerBroadcast$7(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1904
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->dispatchBroadcast(Landroid/content/Intent;)V

    .line 1905
    return-void
.end method

.method public static synthetic lambda$reportStatus$4(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V
    .locals 3
    .param p1, "screenId"    # I

    .line 1187
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mScreenTaskManagerFactory:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startHome(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$reportStatus$5(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V
    .locals 0
    .param p1, "groupIdx"    # I

    .line 1196
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->popScenarioFromQueue(I)I

    return-void
.end method

.method public static synthetic lambda$showExitWindow$13(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V
    .locals 10
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "jsonStr"    # Ljava/lang/String;

    .line 2571
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelScreenIds()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 2572
    .local v0, "targetScreen":I
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showExitWindow,scenario="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",targetScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    if-eqz p2, :cond_0

    .line 2575
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getExitScreenId(Ljava/lang/String;)I

    move-result v1

    .line 2576
    .local v1, "exitTargetScreen":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2577
    move v0, v1

    .line 2578
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showExitWindow,use json screenId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    .end local v1    # "exitTargetScreen":I
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getExitDialogConfig()Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    move-result-object v1

    .line 2582
    .local v1, "exitDialogConfig":Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;
    new-instance v4, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v2}, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;-><init>(Landroid/content/Context;)V

    .line 2583
    .local v4, "dialogUtils":Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    move v6, v0

    move-object v7, p1

    move-object v8, v1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->showDialog(Landroid/content/Context;ILcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;Ljava/lang/String;)V

    .line 2584
    return-void
.end method

.method private lastConfigerExitInner(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    .locals 10
    .param p1, "current"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "lastConfiger"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 2345
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v0

    .line 2346
    .local v0, "lastGroup":I
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 2348
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 2349
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    aget-object v1, v1, v0

    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    aget-object v4, v4, v0

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2350
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    aput-object v2, v1, v0

    .line 2351
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2355
    :cond_0
    goto :goto_0

    .line 2353
    :catch_0
    move-exception v1

    .line 2354
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastConfigerExitInner e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setCurrentFriend(Ljava/lang/String;)V

    .line 2358
    const-string v1, "rScenarioSwitch"

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitReason(Ljava/lang/String;)V

    .line 2359
    invoke-virtual {p2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->configVolume(Z)V

    .line 2360
    invoke-virtual {p2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->voiceOnOff(Z)V

    .line 2361
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->exit()V

    .line 2362
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "rScenarioSwitch"

    const-string v8, "2"

    const-string v9, "2"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->sendBILog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    invoke-virtual {p2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 2365
    invoke-virtual {p2, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setSubName(Ljava/lang/String;)V

    .line 2366
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->notifyScenarioStatus(Ljava/lang/String;I)V

    .line 2367
    return-void
.end method

.method private notifyScenarioStatus(Ljava/lang/String;I)V
    .locals 7
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 1660
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 1662
    .local v0, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v3, p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-direct {p0, v4, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->notifyToCanBus(ZLcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V

    .line 1663
    if-ne v3, p2, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->seatWelcomeCheck(ZLcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V

    .line 1665
    if-eqz p2, :cond_4

    if-eq p2, v3, :cond_2

    goto :goto_1

    .line 1667
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->shouldMonitorVolume()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1668
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->volumeMonitor()V

    goto :goto_1

    .line 1670
    :cond_3
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no dynamic volume set for:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    goto :goto_1

    .line 1674
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->volumeUnMonitor()V

    .line 1675
    nop

    .line 1680
    :goto_1
    const/4 v1, -0x2

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getAppFlyLimit()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 1681
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyScenarioStatus,do app fly limit->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getAppFlyLimit()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",status->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1681
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    if-ne v3, p2, :cond_5

    goto :goto_2

    .line 1686
    :cond_5
    nop

    .line 1691
    :cond_6
    :goto_2
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyScenaroStatus,scenario:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;

    .line 1694
    .local v2, "listener":Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;->onUserScenarioStateChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    goto :goto_4

    .line 1695
    :catch_0
    move-exception v3

    .line 1696
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyScenaroStatus e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",l:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    .end local v2    # "listener":Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_3

    .line 1700
    :cond_7
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getNotifyIcm()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1701
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->notifyStatusToIcm(Ljava/lang/String;I)V

    goto :goto_5

    .line 1703
    :cond_8
    const-string v1, "UserScenarioService"

    const-string v2, "notifyScenarioStatus,notify icm false"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    :goto_5
    return-void
.end method

.method private notifyStatusToIcm(Ljava/lang/String;I)V
    .locals 5
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 1647
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_icm"

    .line 1648
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    .line 1651
    .local v0, "manager":Landroid/car/hardware/icm/CarIcmManager;
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->getScenarioNameValue(Ljava/lang/String;)I

    move-result v1

    .line 1652
    .local v1, "scenarioValue":I
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyStatusToIcm,name val="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v0, v1, p2}, Landroid/car/hardware/icm/CarIcmManager;->setModeInfo(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    .end local v1    # "scenarioValue":I
    goto :goto_0

    .line 1654
    :catch_0
    move-exception v1

    .line 1655
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyStatusToIcm e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private notifyToCanBus(ZLcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    .locals 6
    .param p1, "enter"    # Z
    .param p2, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 2516
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 2518
    .local v0, "bcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v1

    .line 2520
    .local v1, "scenario":Ljava/lang/String;
    move v2, p1

    .line 2522
    .local v2, "status":I
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyToCanBus,scenario:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",enter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x25a45994

    if-eq v4, v5, :cond_3

    const v5, -0x255169ed

    if-eq v4, v5, :cond_2

    const v5, 0x34c16fe4

    if-eq v4, v5, :cond_1

    const v5, 0x71cfd4c1

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "5d_cinema_mode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "meditation_mode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "spacecapsule_mode_sleep"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x3

    goto :goto_0

    :cond_3
    const-string v4, "spacecapsule_mode_movie"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x2

    :cond_4
    :goto_0
    packed-switch v3, :pswitch_data_0

    .end local v1    # "scenario":Ljava/lang/String;
    .end local v2    # "status":I
    goto :goto_1

    .line 2536
    .restart local v1    # "scenario":Ljava/lang/String;
    .restart local v2    # "status":I
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/car/hardware/bcm/CarBcmManager;->setXsleepModeStatus(I)V

    .line 2537
    goto :goto_1

    .line 2533
    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/car/hardware/bcm/CarBcmManager;->setXmovieModeStatus(I)V

    .line 2534
    goto :goto_1

    .line 2530
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/car/hardware/bcm/CarBcmManager;->setXmeditationModeStatus(I)V

    .line 2531
    goto :goto_1

    .line 2527
    :pswitch_3
    invoke-virtual {v0, v2}, Landroid/car/hardware/bcm/CarBcmManager;->setX5dCinemaModeStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2528
    nop

    .line 2543
    .end local v1    # "scenario":Ljava/lang/String;
    .end local v2    # "status":I
    :goto_1
    goto :goto_2

    .line 2541
    :catch_0
    move-exception v1

    .line 2542
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyToCanBus e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onDoorStatChanged([Ljava/lang/Integer;)V
    .locals 11
    .param p1, "statArray"    # [Ljava/lang/Integer;

    .line 1820
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoorStatChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitPreCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1823
    return-void

    .line 1826
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "k":I
    :goto_0
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 1827
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v2, v2, v1

    .line 1828
    .local v2, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-nez v2, :cond_1

    .line 1829
    goto/16 :goto_2

    .line 1831
    :cond_1
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getExitDoor()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1832
    goto :goto_2

    .line 1835
    :cond_2
    const/4 v3, 0x0

    .line 1836
    .local v3, "i":I
    array-length v4, p1

    move v5, v3

    move v3, v0

    .end local v3    # "i":I
    .local v5, "i":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v6, p1, v3

    .line 1837
    .local v6, "status":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v8, v7, :cond_3

    .line 1839
    shl-int v7, v8, v5

    .line 1840
    .local v7, "bitValue":I
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getExitDoor()I

    move-result v8

    and-int/2addr v8, v7

    .line 1841
    .local v8, "compareValue":I
    if-lez v8, :cond_3

    .line 1843
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "door open hit,bit:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",config:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getExitDoor()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",scenario:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1843
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    :try_start_0
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rDoorOpen"

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitUserScenarioWithReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1849
    goto :goto_2

    .line 1847
    :catch_0
    move-exception v3

    .line 1848
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "UserScenarioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle door open,e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 1853
    .end local v7    # "bitValue":I
    .end local v8    # "compareValue":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 1836
    .end local v6    # "status":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1826
    .end local v2    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v5    # "i":I
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1856
    .end local v1    # "k":I
    :cond_5
    return-void
.end method

.method private onGearChanged(I)V
    .locals 6
    .param p1, "gear"    # I

    .line 1761
    const/4 v0, 0x4

    if-eq v0, p1, :cond_3

    .line 1762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1763
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v1, v1, v0

    .line 1764
    .local v1, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v1, :cond_2

    .line 1766
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->exitOnGear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1767
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    const/4 v2, 0x2

    .line 1768
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1770
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rGearNotP"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitUserScenarioWithReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    :cond_1
    goto :goto_1

    .line 1773
    :catch_0
    move-exception v2

    .line 1774
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGearChanged,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    .end local v1    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1779
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private onRseFoldChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .line 1782
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1783
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v1, v1, v0

    .line 1784
    .local v1, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v1, :cond_2

    .line 1786
    :try_start_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getExitRseOff()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_1

    .line 1787
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v2

    if-eq v3, v2, :cond_0

    const/4 v2, 0x2

    .line 1788
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1790
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rRseOff"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitUserScenarioWithReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1791
    goto :goto_2

    .line 1796
    :cond_1
    goto :goto_1

    .line 1794
    :catch_0
    move-exception v2

    .line 1795
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRseFoldChanged,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    .end local v1    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1799
    .end local v0    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method private popScenarioFromQueue(I)I
    .locals 8
    .param p1, "groupIdx"    # I

    .line 2613
    const/4 v0, 0x0

    .line 2614
    .local v0, "queueOpArg":I
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getRunningScenario(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2615
    const-string v1, "UserScenarioService"

    const-string v2, "pop queued scenario return ,running scenario exist"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    return v0

    .line 2619
    :cond_0
    const/4 v1, 0x0

    .line 2620
    .local v1, "queuedConfiger":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 2621
    .local v2, "queueLength":I
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v3, v3, p1

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 2622
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2623
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pop queued scenario="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "service"

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->enterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2626
    .local v3, "queueOpRet":Ljava/lang/String;
    const-string v4, "success"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2628
    const/4 v0, 0x1

    .line 2630
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2631
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "eventQueueResult"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    const-string v5, "eventNotify"

    invoke-virtual {v1, v5, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->launchApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2633
    const-string v5, "UserScenarioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enterUserScenario from queue fail,ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_1
    if-eqz v0, :cond_2

    .line 2637
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2638
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2641
    :cond_2
    return v0
.end method

.method private registerBroadcast()V
    .locals 3

    .line 1894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1895
    .local v0, "filter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "com.xiaopeng.speech.action.wakeup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1896
    const-string v1, "com.xiaopeng.broadcast.ACTION_SCREEN_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1897
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$2huiEQEG0X_rfd1Sh5EpfEGurFo;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$2huiEQEG0X_rfd1Sh5EpfEGurFo;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 1901
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1902
    const-string v1, "com.xiaopeng.intent.action.APP_POLICY_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1903
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$l93eJuXmgmQjcHKkFqG_p5wRd58;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$l93eJuXmgmQjcHKkFqG_p5wRd58;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListenerDynamically(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 1906
    return-void
.end method

.method private registerObserver()V
    .locals 3

    .line 218
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->get()Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mScreenBrightnessListener:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->registerScreenBrightnessListener(ILcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;)V

    .line 219
    return-void
.end method

.method private restoreStatus(I)V
    .locals 10
    .param p1, "groupIdx"    # I

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sys.xiaopeng.userscenario"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 612
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "array":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 615
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v6, v1, v5

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aput-object v4, v2, p1

    .line 616
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 617
    .local v2, "status":I
    const/4 v3, 0x2

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 618
    .local v4, "scenarioPid":I
    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getProcessName(I)Ljava/lang/String;

    move-result-object v6

    .line 619
    .local v6, "scenarioPkg":Ljava/lang/String;
    const-string v7, "UserScenarioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreStatus,name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",stat="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",scenarioPid="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",scenarioPkg="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    if-eqz v6, :cond_1

    const-string v5, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v5, v5, p1

    if-eqz v5, :cond_2

    .line 627
    packed-switch v2, :pswitch_data_0

    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "status":I
    .end local v4    # "scenarioPid":I
    .end local v6    # "scenarioPkg":Ljava/lang/String;
    goto :goto_1

    .line 630
    .restart local v1    # "array":[Ljava/lang/String;
    .restart local v2    # "status":I
    .restart local v4    # "scenarioPid":I
    .restart local v6    # "scenarioPkg":Ljava/lang/String;
    :pswitch_0
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v5, v5, p1

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setScenarioPid(I)V

    .line 631
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 632
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v5, 0x7

    sget-object v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v7, v7, p1

    invoke-virtual {v3, v5, v7}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 633
    goto :goto_1

    .line 636
    :pswitch_1
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v3, v3, p1

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 637
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v5, 0x6

    sget-object v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v7, v7, p1

    invoke-virtual {v3, v5, v7}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 638
    goto :goto_1

    .line 622
    :cond_1
    :goto_0
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const/4 v5, 0x0

    aput-object v5, v3, p1

    .line 623
    const-string v3, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreStatus,invalid scenario for groupIdx:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-void

    .line 645
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "status":I
    .end local v4    # "scenarioPid":I
    .end local v6    # "scenarioPkg":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private seatWelcomeCheck(ZLcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    .locals 7
    .param p1, "enter"    # Z
    .param p2, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 2168
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getSeatWelcomeDisable()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2169
    const-string v0, "UserScenarioService"

    const-string v1, "seatWelcomeCheck,needn\'t handle"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    return-void

    .line 2173
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    .line 2174
    .local v0, "vcuManager":Landroid/car/hardware/vcu/CarVcuManager;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v2

    const-string/jumbo v3, "xp_bcm"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/bcm/CarBcmManager;

    .line 2176
    .local v2, "bcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    .line 2177
    .local v3, "scenario":Ljava/lang/String;
    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seatWelcomeCheck,scenario:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",enter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    if-eqz p1, :cond_1

    .line 2179
    invoke-virtual {v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->setSpecialCarbinModeSwitch(I)V

    goto :goto_0

    .line 2181
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->setSpecialCarbinModeSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2185
    .end local v3    # "scenario":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 2183
    :catch_0
    move-exception v1

    .line 2184
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seatWelcomeCheck e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private sendBILog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "trigger"    # Ljava/lang/String;

    .line 1999
    const-string v0, "P10141"

    const-string v1, "B001"

    invoke-static {v0, v1}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object v0

    .line 2000
    .local v0, "bilog":Lcom/xiaopeng/biutil/BiLog;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    const-string v1, "source"

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    const-string v1, "result"

    invoke-virtual {v0, v1, p3}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    const-string v1, "type"

    invoke-virtual {v0, v1, p4}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    const-string v1, "trigger"

    invoke-virtual {v0, v1, p5}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBILog, scenario="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",trigger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    .line 2009
    return-void
.end method

.method private setSecondScreenFlag(IZ)V
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "status"    # Z

    .line 1959
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1960
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v1, v1, v0

    .line 1961
    .local v1, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-nez v1, :cond_0

    .line 1962
    goto :goto_1

    .line 1964
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getSecondScreenId()I

    move-result v2

    if-ne p1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 1965
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->resetSecondScreenStatus()V

    .line 1959
    .end local v1    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1968
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private showExitWindow(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V
    .locals 2
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "jsonStr"    # Ljava/lang/String;

    .line 2570
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$sQIfb5hzkP4zcB2Kx9RXKjUqZLU;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$sQIfb5hzkP4zcB2Kx9RXKjUqZLU;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 2585
    return-void
.end method

.method private unregisterObserver()V
    .locals 3

    .line 222
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->get()Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mScreenBrightnessListener:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->unregisterScreenBrightnessListener(ILcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListener;)V

    .line 223
    return-void
.end method

.method private volumeMonitor()V
    .locals 4

    .line 2189
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mVolumeMonitor:Z

    if-nez v0, :cond_3

    .line 2190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mVolumeMonitor:Z

    .line 2196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2197
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2198
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasPassengerBluetooth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2199
    const/4 v1, 0x0

    .line 2199
    .local v1, "k":I
    :goto_0
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2200
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v2, v2, v1

    .line 2201
    .local v2, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getVolumeBtDynamic()I

    move-result v3

    if-ltz v3, :cond_0

    .line 2203
    const-string/jumbo v3, "xiaopeng.bluetooth.a2dp.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2204
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 2211
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    goto :goto_1

    .line 2199
    .end local v2    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v3    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2215
    .end local v1    # "k":I
    :cond_1
    const-string v1, "UserScenarioService"

    const-string/jumbo v2, "volumeMonitor,no PassengerBluetooth feature"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2218
    return-void

    .line 2192
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    const-string v0, "UserScenarioService"

    const-string v1, "already monitor volume"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    return-void
.end method

.method private volumeUnMonitor()V
    .locals 2

    .line 2221
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mVolumeMonitor:Z

    if-eqz v0, :cond_0

    .line 2222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mVolumeMonitor:Z

    .line 2227
    sput-boolean v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->passengerbluetoothConnected:Z

    .line 2228
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2229
    return-void

    .line 2224
    :cond_0
    const-string v0, "UserScenarioService"

    const-string v1, "already un monitor volume"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    return-void
.end method


# virtual methods
.method public canAppExit(ILjava/lang/String;)I
    .locals 6
    .param p1, "screenId"    # I
    .param p2, "checkPackage"    # Ljava/lang/String;

    .line 1374
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 1375
    .local v4, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v4, :cond_4

    invoke-virtual {v4, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isScreenMatch(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1376
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getLaunchPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "home"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1379
    :cond_0
    const-string v0, "home"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getLimitAppExit()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1380
    const-string v0, "home"

    invoke-virtual {v4, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRequestExitReason(Ljava/lang/String;)V

    .line 1382
    :cond_1
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getLimitAppExit()I

    move-result v0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_3

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v0

    if-eq v1, v0, :cond_2

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v0

    if-ne v3, v0, :cond_3

    .line 1383
    :cond_2
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canAppExit false,checkPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",scenario="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1383
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    return v3

    .line 1386
    :cond_3
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getLimitAppExit()I

    move-result v0

    if-ne v1, v0, :cond_5

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v0

    if-ne v1, v0, :cond_5

    .line 1387
    const-string v0, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canAppExit reconfirm,checkPkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",scenario="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1387
    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    return v1

    .line 1374
    .end local v4    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1397
    :cond_5
    return v2
.end method

.method public canAppLaunch(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1305
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->isPreloading()Z

    move-result v0

    .line 1306
    .local v0, "isPreloading":Z
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canAppLaunch pkg isPreloading ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1308
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " canAppLaunch isPreloading return true pkg ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    return v1

    .line 1311
    :cond_0
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 1312
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->canAppLaunch(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1315
    :cond_1
    return v1
.end method

.method public canAppLaunch(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 1325
    const-string v0, "sys.xp.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1326
    .local v0, "isPreloading":Z
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canAppLaunch displayId isPreloading ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    if-eqz v0, :cond_0

    .line 1328
    const-string v1, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " canAppLaunch isPreloading return true pkg ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " displayId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    return v2

    .line 1331
    :cond_0
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v3, v3

    .line 1332
    .local v3, "count":I
    move v4, v1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 1333
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v5, v5, v4

    if-eqz v5, :cond_3

    const-string v5, "normal_mode"

    sget-object v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1337
    :cond_1
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->canAppLaunchWithDisplay(Ljava/lang/String;I)I

    move-result v5

    .line 1338
    .local v5, "result":I
    const/4 v6, 0x2

    if-ne v6, v5, :cond_2

    .line 1339
    return v2

    .line 1340
    :cond_2
    const/4 v6, 0x3

    if-ne v6, v5, :cond_4

    .line 1341
    return v1

    .line 1334
    .end local v5    # "result":I
    :cond_3
    :goto_1
    const-string v5, "UserScenarioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canAppLaunch,running configer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    nop

    .line 1332
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1344
    .end local v4    # "i":I
    :cond_5
    return v2
.end method

.method public canAppMove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1348
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1349
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1350
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->canAppMove(Ljava/lang/String;)Z

    move-result v1

    .line 1351
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 1352
    return v1

    .line 1348
    .end local v1    # "ret":Z
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1357
    .end local v0    # "k":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public canAppResize(IIZZ)Z
    .locals 6
    .param p1, "screenId"    # I
    .param p2, "requestArea"    # I
    .param p3, "isResizeFromUserScenario"    # Z
    .param p4, "withAnimation"    # Z

    .line 1449
    const/4 v0, 0x1

    if-nez p3, :cond_5

    if-nez p4, :cond_0

    goto/16 :goto_2

    .line 1454
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 1455
    .local v5, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v5, :cond_3

    .line 1456
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canAppResize,screenId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",requestArea-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",scenario="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1456
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    invoke-virtual {v5, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isScreenMatch(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1459
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScreenModeConfig()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1460
    packed-switch p2, :pswitch_data_0

    .line 1478
    goto :goto_1

    .line 1472
    :pswitch_0
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScreenModeConfig()I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 1473
    return v3

    .line 1462
    :pswitch_1
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScreenModeConfig()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 1467
    return v3

    .line 1465
    :pswitch_2
    goto :goto_1

    .line 1481
    :cond_1
    if-nez p1, :cond_4

    .line 1482
    if-nez p2, :cond_4

    .line 1484
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    .line 1485
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1486
    :cond_2
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canAppResize,screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",requestArea-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",scenario="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is running,return false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1486
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    return v3

    .line 1454
    .end local v5    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1497
    :cond_4
    :goto_1
    return v0

    .line 1450
    :cond_5
    :goto_2
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canAppResize,screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",requestArea-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isResizeFromUserScenario="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",withAnimation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",return true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public checkEnterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 950
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 951
    .local v0, "pid":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    .line 952
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkEnterUserScenario,scenario="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",src="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",call pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 956
    .local v2, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->enterScenarioInnerCheck(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 957
    .local v3, "retVal":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 958
    const-string v3, "success"

    .line 960
    :cond_0
    return-object v3
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 655
    const-string v0, "dump-UserScenarioService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 665
    const-string v0, "dump-UserScenarioService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    const/4 v0, 0x0

    .line 668
    .local v0, "dumpAll":Z
    if-nez p2, :cond_0

    .line 669
    const-string v1, "please input cmds"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    return-void

    .line 673
    :cond_0
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 673
    .local v0, "i":I
    .local v2, "dumpAll":Z
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_11

    .line 674
    aget-object v3, p2, v0

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "-split"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_2

    :sswitch_1
    const-string v5, "-param"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_2
    const-string v5, "-enter"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_3
    const-string v5, "-exit"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_2

    :sswitch_4
    const-string v5, "-goHome"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v9

    goto :goto_2

    :sswitch_5
    const-string v5, "-l"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_6
    const-string v5, "-a"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_2

    :sswitch_7
    const-string v5, "-active"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_8
    const-string v5, "-debugMode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v4

    :goto_2
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_b

    .line 798
    :pswitch_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 799
    .local v4, "configerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 800
    .local v5, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  scenario:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",group:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 800
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    .end local v4    # "configerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;>;"
    .end local v5    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    goto :goto_3

    .line 803
    :cond_2
    const/4 v3, 0x0

    .line 804
    .local v3, "k":I
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v5, v4

    move v6, v3

    move v3, v1

    .line 804
    .end local v3    # "k":I
    .local v6, "k":I
    :goto_4
    if-ge v3, v5, :cond_3

    aget-object v7, v4, v3

    .line 805
    .local v7, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "running configer "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v6, 0x1

    .line 805
    .local v10, "k":I
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 805
    .end local v6    # "k":I
    const-string v6, ":"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    .end local v7    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    add-int/lit8 v3, v3, 0x1

    move v6, v10

    goto :goto_4

    .line 807
    .end local v10    # "k":I
    :cond_3
    goto/16 :goto_b

    .line 776
    :pswitch_1
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 777
    const-string v3, "release version not support!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    goto/16 :goto_b

    .line 780
    :cond_4
    add-int/lit8 v3, v0, 0x1

    array-length v5, p2

    if-ge v3, v5, :cond_10

    .line 781
    const/4 v3, 0x0

    .line 782
    .local v3, "scenarioName":Ljava/lang/String;
    nop

    .line 784
    .local v4, "ret":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    :try_start_0
    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 785
    .local v5, "index":I
    if-ltz v5, :cond_5

    sget-object v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 786
    sget-object v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigerList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "service"

    invoke-virtual {p0, v6, v7}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->enterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 792
    .end local v5    # "index":I
    :cond_5
    goto :goto_5

    .line 789
    :catch_0
    move-exception v5

    .line 790
    .local v5, "e":Ljava/lang/NumberFormatException;
    add-int/lit8 v6, v0, 0x1

    aget-object v3, p2, v6

    .line 791
    const-string v6, "service"

    invoke-virtual {p0, v3, v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->enterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 793
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to enter :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    .end local v3    # "scenarioName":Ljava/lang/String;
    .end local v4    # "ret":Ljava/lang/String;
    goto/16 :goto_b

    .line 740
    :pswitch_2
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 741
    const-string v3, "release version not support!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    goto/16 :goto_b

    .line 744
    :cond_6
    add-int/lit8 v3, v0, 0x1

    array-length v4, p2

    if-ge v3, v4, :cond_a

    .line 746
    add-int/lit8 v3, v0, 0x1

    :try_start_1
    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 747
    .local v3, "scenarioIndex":I
    if-gez v3, :cond_7

    .line 748
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid scenario state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 750
    :cond_7
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 751
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigerList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 752
    .local v4, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-virtual {v4, v8}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 753
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v6

    aput-object v4, v5, v6

    .line 754
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set current scenario as:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    .end local v4    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    goto :goto_6

    .line 756
    :cond_8
    const-string v4, "scenario index overlap"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 756
    .end local v3    # "scenarioIndex":I
    goto :goto_6

    .line 759
    :catch_1
    move-exception v3

    .line 760
    .local v3, "e":Ljava/lang/NumberFormatException;
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p2, v4

    .line 761
    .local v4, "scenario":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 762
    .local v5, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-nez v5, :cond_9

    .line 763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid scenario:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    goto/16 :goto_b

    .line 766
    :cond_9
    invoke-virtual {v5, v8}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 767
    sget-object v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v7

    aput-object v5, v6, v7

    .line 768
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "active scenario:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "scenario":Ljava/lang/String;
    .end local v5    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :goto_6
    goto/16 :goto_b

    .line 771
    :cond_a
    const-string v3, "lack scenario index..."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    goto/16 :goto_b

    .line 727
    :pswitch_3
    move v3, v1

    .line 727
    .local v3, "j":I
    :goto_7
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v5, v5

    if-ge v3, v5, :cond_c

    .line 728
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v5, v5, v3

    if-nez v5, :cond_b

    .line 729
    const-string v5, "exit current scenario,no working scenario"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 731
    :cond_b
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v5

    .line 732
    .local v5, "scenarioName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exit current scenario:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitUserScenario(Ljava/lang/String;)Ljava/lang/String;

    .line 734
    sget-object v6, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aput-object v4, v6, v3

    .line 727
    .end local v5    # "scenarioName":Ljava/lang/String;
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 737
    .end local v3    # "j":I
    :cond_c
    goto/16 :goto_b

    .line 712
    :pswitch_4
    add-int/lit8 v0, v0, 0x1

    .line 713
    array-length v3, p2

    if-ge v0, v3, :cond_e

    .line 714
    const-string v3, "0"

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 715
    sput-boolean v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->debugMode:Z

    .line 716
    const-string v3, "disable debugMode"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 718
    :cond_d
    sput-boolean v9, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->debugMode:Z

    .line 719
    const-string v3, "enable debugMode"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 722
    :cond_e
    const-string v3, "please add params 0/1!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    goto/16 :goto_b

    .line 702
    :pswitch_5
    add-int/lit8 v3, v0, 0x2

    array-length v4, p2

    if-lt v3, v4, :cond_f

    .line 703
    const-string v3, "lack of param"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    :cond_f
    add-int/lit8 v3, v0, 0x1

    aget-object v3, p2, v3

    .line 706
    .local v3, "scenario":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x2

    aget-object v4, p2, v4

    .line 707
    .local v4, "params":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set param,scenario:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",params="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->setParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    .end local v3    # "scenario":Ljava/lang/String;
    .end local v4    # "params":Ljava/lang/String;
    goto :goto_b

    .line 699
    :pswitch_6
    const/4 v2, 0x1

    .line 700
    goto :goto_b

    .line 685
    :pswitch_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 687
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_2
    const-string v5, "resizeTypeKey"

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 691
    const-string v5, "targetScreenId"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 692
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->requestAreaType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 695
    goto :goto_9

    .line 693
    :catch_2
    move-exception v4

    .line 694
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "goHome e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_9
    goto :goto_b

    .line 676
    :pswitch_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 678
    .restart local v3    # "json":Lorg/json/JSONObject;
    :try_start_3
    const-string v5, "resizeTypeKey"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 679
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->requestAreaType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 682
    goto :goto_a

    .line 680
    :catch_3
    move-exception v4

    .line 681
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "split e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_a
    nop

    .line 673
    :cond_10
    :goto_b
    add-int/2addr v0, v9

    goto/16 :goto_0

    .line 813
    .end local v0    # "i":I
    :cond_11
    if-eqz v2, :cond_17

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debugMode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->debugMode:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    const-string v0, "configers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 819
    .local v3, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 820
    .end local v3    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    goto :goto_c

    .line 822
    :cond_12
    const-string v0, "mConfigerList is empty!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operation history,op pointer:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->pointer:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",capacity:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->recordArray:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    const/16 v4, 0x3f

    aget-object v0, v0, v4

    if-nez v0, :cond_15

    .line 828
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->recordArray:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    array-length v3, v0

    :goto_d
    if-ge v1, v3, :cond_17

    aget-object v4, v0, v1

    .line 829
    .local v4, "record":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
    if-nez v4, :cond_14

    .line 830
    goto :goto_10

    .line 832
    :cond_14
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 828
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 837
    :cond_15
    sget v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->pointer:I

    .line 837
    .restart local v0    # "i":I
    :goto_e
    if-ge v0, v3, :cond_16

    .line 838
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->recordArray:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    aget-object v4, v4, v0

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 840
    .end local v0    # "i":I
    :cond_16
    nop

    .line 840
    .local v1, "i":I
    :goto_f
    move v0, v1

    .line 840
    .end local v1    # "i":I
    .restart local v0    # "i":I
    sget v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->pointer:I

    if-ge v0, v1, :cond_17

    .line 841
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->recordArray:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 840
    add-int/lit8 v1, v0, 0x1

    .line 840
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_f

    .line 845
    .end local v1    # "i":I
    :cond_17
    :goto_10
    const-string v0, "dump-UserScenarioService,end"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1aeb3af7 -> :sswitch_8
        -0x858168d -> :sswitch_7
        0x5d4 -> :sswitch_6
        0x5df -> :sswitch_5
        0x27a2c54 -> :sswitch_4
        0x2a9dacb -> :sswitch_3
        0x528d1acb -> :sswitch_2
        0x53222c80 -> :sswitch_1
        0x53532f0d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public enqueueScenario(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "queueOrNot"    # Z
    .param p3, "param"    # Ljava/lang/String;

    .line 988
    const-string v0, "success"

    .line 990
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 991
    .local v1, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-nez v1, :cond_0

    .line 992
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueScenario,invalid scenario:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v2, "scenarioInvalid"

    return-object v2

    .line 996
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v2

    .line 997
    .local v2, "groupIdx":I
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getDynamicScreen()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 998
    if-eqz p3, :cond_1

    .line 999
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getTargetScreenId(Ljava/lang/String;)I

    move-result v3

    .line 1000
    .local v3, "targetScreenId":I
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getDynamicGroupIdxFromScreenId(I)I

    move-result v2

    .line 1003
    .end local v3    # "targetScreenId":I
    :cond_1
    move v3, v2

    .line 1004
    .local v3, "targetGroupIdx":I
    if-eqz p2, :cond_3

    .line 1006
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1007
    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enqueueScenario,already queued:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :cond_2
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    :goto_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getRunningScenario(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1013
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    new-instance v5, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$UVZceZsJl4xJODlvzaD9Wt1F63U;

    invoke-direct {v5, p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$UVZceZsJl4xJODlvzaD9Wt1F63U;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->post(Ljava/lang/Runnable;)Z

    .line 1014
    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enqueueScenario,groupIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",no running scenario,try to enter scenario from queue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1018
    :cond_3
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1019
    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dequeueScenario,not found:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string v0, "scenarioInvalid"

    goto :goto_1

    .line 1022
    :cond_4
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1026
    :cond_5
    :goto_1
    return-object v0
.end method

.method public declared-synchronized enterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    monitor-enter p0

    .line 856
    const/4 v0, 0x0

    .line 859
    .local v0, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$1;)V

    .line 860
    .local v1, "record":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->opTick:J

    .line 861
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 862
    .local v3, "pid":I
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getProcessName(I)Ljava/lang/String;

    move-result-object v4

    .line 863
    .local v4, "packageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->source:Ljava/lang/String;

    .line 864
    const-string v5, "enter"

    iput-object v5, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->operation:Ljava/lang/String;

    .line 865
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getScenarioGroup(Ljava/lang/String;)I

    move-result v5

    move v11, v5

    .line 866
    .local v11, "groupIdx":I
    const-string v5, "UserScenarioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enterUserScenario,scenario="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",src="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",call pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",groupIdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    if-gez v11, :cond_0

    .line 869
    const-string v2, "scenarioInvalid"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 871
    :cond_0
    :try_start_1
    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v5, v5, v11

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    sget-object v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v5, v5, v11

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    iput v5, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->configerState:I

    .line 873
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-object v12, v5

    .line 875
    .local v12, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-direct {p0, v12, v6, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->enterScenarioInnerCheck(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 876
    if-eqz v0, :cond_3

    .line 877
    iput-object v0, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 878
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 879
    const-string v2, "scenarioInvalid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 880
    const-string v9, "1"

    const-string v10, "1"

    move-object v5, p0

    move-object v6, p1

    move-object v7, v4

    move-object v8, v0

    invoke-direct/range {v5 .. v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->sendBILog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    :cond_2
    monitor-exit p0

    return-object v0

    .line 885
    :cond_3
    :try_start_2
    invoke-direct {p0, v12, v4, p2, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->enterScenarioTrigger(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v2, "success"

    iput-object v2, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 888
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 889
    const-string v2, "success"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 855
    .end local v0    # "retVal":Ljava/lang/String;
    .end local v1    # "record":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
    .end local v3    # "pid":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v11    # "groupIdx":I
    .end local v12    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local p1    # "scenario":Ljava/lang/String;
    .end local p2    # "source":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    throw p1
.end method

.method public declared-synchronized enterUserScenarioWithExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    monitor-enter p0

    .line 894
    const/4 v0, 0x0

    .line 897
    .local v0, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$1;)V

    .line 898
    .local v1, "record":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->opTick:J

    .line 899
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 900
    .local v2, "pid":I
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getProcessName(I)Ljava/lang/String;

    move-result-object v3

    .line 901
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->source:Ljava/lang/String;

    .line 902
    const-string v4, "enter"

    iput-object v4, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->operation:Ljava/lang/String;

    .line 904
    const/4 v4, -0x1

    .line 905
    .local v4, "groupIdx":I
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-object v10, v5

    .line 906
    .local v10, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v10, :cond_2

    .line 907
    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getDynamicScreen()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 908
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getTargetScreenId(Ljava/lang/String;)I

    move-result v5

    .line 909
    .local v5, "dynamicScreenId":I
    invoke-virtual {v10, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDynamicScreenId(I)V

    .line 910
    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v6

    if-nez v6, :cond_0

    .line 912
    invoke-static {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getDynamicGroupIdxFromScreenId(I)I

    move-result v6

    move v4, v6

    goto :goto_0

    .line 914
    :cond_0
    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v6

    move v4, v6

    .line 916
    :goto_0
    const-string v6, "UserScenarioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enterUserScenarioWithExtra,dynamic scenario,scenario="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",dynamicScreenId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    .end local v5    # "dynamicScreenId":I
    goto :goto_1

    .line 918
    :cond_1
    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v5

    move v4, v5

    .line 924
    .end local v4    # "groupIdx":I
    .local v11, "groupIdx":I
    :cond_2
    :goto_1
    move v11, v4

    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enterUserScenarioWithExtra,scenario="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",src="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",extra="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",call pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",groupIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    if-gez v11, :cond_3

    .line 927
    const-string v4, "scenarioInvalid"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 929
    :cond_3
    :try_start_1
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v4, v4, v11

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    iput v4, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->configerState:I

    .line 931
    invoke-direct {p0, v10, v5, p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->enterScenarioInnerCheck(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 932
    if-eqz v0, :cond_6

    .line 933
    iput-object v0, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 934
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 935
    const-string v4, "scenarioInvalid"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 936
    const-string v8, "1"

    const-string v9, "1"

    move-object v4, p0

    move-object v5, p1

    move-object v6, v3

    move-object v7, v0

    invoke-direct/range {v4 .. v9}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->sendBILog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    :cond_5
    monitor-exit p0

    return-object v0

    .line 941
    :cond_6
    :try_start_2
    invoke-direct {p0, v10, v3, p2, p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->enterScenarioTrigger(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v4, "success"

    iput-object v4, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 944
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 945
    const-string v4, "success"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4

    .line 893
    .end local v0    # "retVal":Ljava/lang/String;
    .end local v1    # "record":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
    .end local v2    # "pid":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v10    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v11    # "groupIdx":I
    .end local p1    # "scenario":Ljava/lang/String;
    .end local p2    # "source":Ljava/lang/String;
    .end local p3    # "extra":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    throw p1
.end method

.method public exitScenarioDirect(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    .locals 6
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 2589
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v1

    .line 2590
    .local v1, "scenario":Ljava/lang/String;
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    const-string v4, "2"

    const-string v5, "1"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->sendBILog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 2592
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mStatusToBe:[I

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getGroupIndex()I

    move-result v2

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 2593
    const-string v0, "rAppRequest"

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitReason(Ljava/lang/String;)V

    .line 2594
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2595
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->removeMessages(I)V

    .line 2596
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    invoke-virtual {v0, v2, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2597
    .local v0, "checkMsg":Landroid/os/Message;
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v0, v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2600
    .end local v0    # "checkMsg":Landroid/os/Message;
    .end local v1    # "scenario":Ljava/lang/String;
    goto :goto_0

    .line 2598
    :catch_0
    move-exception v0

    .line 2599
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitScenarioDirect,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public exitScenarioDirect(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V
    .locals 4
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "DialogMessage"    # Ljava/lang/String;

    .line 2605
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDialogMessage(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitScenarioDirect(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2609
    goto :goto_0

    .line 2607
    :catch_0
    move-exception v0

    .line 2608
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitScenarioDirect,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public declared-synchronized exitUserScenario(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "scenario"    # Ljava/lang/String;

    monitor-enter p0

    .line 1036
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->handleExitScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "scenario":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    throw p1
.end method

.method public declared-synchronized exitUserScenarioWithExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "jsonStr"    # Ljava/lang/String;

    monitor-enter p0

    .line 1031
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->handleExitScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "scenario":Ljava/lang/String;
    .end local p2    # "jsonStr":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    throw p1
.end method

.method public getCurrentUserScenario()Ljava/lang/String;
    .locals 4

    .line 1041
    const-string v0, "normal_mode"

    .line 1043
    .local v0, "scenarioName":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 1044
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v0

    .line 1047
    :cond_0
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUserScenario="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    return-object v0
.end method

.method public getCurrentUserScenarios()[Ljava/lang/String;
    .locals 5

    .line 1054
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v0, v0

    .line 1055
    .local v0, "count":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1057
    .local v1, "scenarios":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1058
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    .line 1059
    const-string v3, "normal_mode"

    aput-object v3, v1, v2

    goto :goto_1

    .line 1061
    :cond_0
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1057
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1064
    .end local v2    # "i":I
    :cond_1
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentUserScenarios="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    return-object v1
.end method

.method public getPanelCover(Ljava/lang/String;)I
    .locals 2
    .param p1, "scenario"    # Ljava/lang/String;

    .line 1361
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 1362
    .local v0, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v0, :cond_0

    .line 1363
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelCover()I

    move-result v1

    return v1

    .line 1365
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getRunningConfiger(I)Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .locals 9
    .param p1, "screenId"    # I

    .line 1571
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1572
    .local v4, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v4, :cond_1

    .line 1573
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelScreenIds()[I

    move-result-object v5

    .line 1574
    .local v5, "screenIds":[I
    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    .line 1575
    .local v8, "id":I
    if-ne v8, p1, :cond_0

    .line 1576
    return-object v4

    .line 1574
    .end local v8    # "id":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1571
    .end local v4    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v5    # "screenIds":[I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1582
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunningScenario(I)Ljava/lang/String;
    .locals 9
    .param p1, "screenId"    # I

    .line 1556
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1557
    .local v4, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v4, :cond_1

    .line 1558
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelScreenIds()[I

    move-result-object v5

    .line 1559
    .local v5, "screenIds":[I
    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    .line 1560
    .local v8, "id":I
    if-ne v8, p1, :cond_0

    .line 1561
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1559
    .end local v8    # "id":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1556
    .end local v4    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v5    # "screenIds":[I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1567
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 660
    const-string v0, "UserScenarioService"

    return-object v0
.end method

.method public getUserScenarioStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "scenario"    # Ljava/lang/String;

    .line 1070
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserScenarioStatus, scenario="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const-string v1, "normal_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1077
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 1078
    .local v1, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-nez v1, :cond_1

    .line 1079
    const-string v2, "UserScenarioService"

    const-string v3, "getUserScenarioStatus, configer null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    return v0

    .line 1082
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v0

    return v0

    .line 1073
    .end local v1    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_2
    :goto_0
    const-string v1, "UserScenarioService"

    const-string v2, "getUserScenarioStatus, scenario error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    return v0
.end method

.method public declared-synchronized init()V
    .locals 3

    monitor-enter p0

    .line 548
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 549
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 550
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 552
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UserScenarioService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 554
    new-instance v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    .line 555
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$l80IDiuRPbjyZwKhljDLofG09r8;->INSTANCE:Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$l80IDiuRPbjyZwKhljDLofG09r8;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->post(Ljava/lang/Runnable;)Z

    .line 564
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$FvVimE5cFCLl7T42-mfBoHAKEHE;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$FvVimE5cFCLl7T42-mfBoHAKEHE;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->post(Ljava/lang/Runnable;)Z

    .line 605
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->registerBroadcast()V

    .line 606
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->registerObserver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    monitor-exit p0

    return-void

    .line 547
    .end local v0    # "ht":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    throw v0
.end method

.method public isDialogLimit(ILjava/lang/String;)Z
    .locals 6
    .param p1, "screenId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1507
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1508
    .local v4, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v4, :cond_0

    .line 1509
    invoke-virtual {v4, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isScreenMatch(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isDialogLimit(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1510
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDialogLimit,true,scenario="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    const/4 v0, 0x1

    return v0

    .line 1507
    .end local v4    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1516
    :cond_1
    return v2
.end method

.method public isQuickPanelLimit(I)Z
    .locals 6
    .param p1, "screenId"    # I

    .line 1525
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1526
    .local v4, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v4, :cond_0

    .line 1527
    invoke-virtual {v4, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isScreenMatch(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isQuickPanelLimit()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1528
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isQuickPanelLimit,true,scenario="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const/4 v0, 0x1

    return v0

    .line 1525
    .end local v4    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1535
    :cond_1
    return v2
.end method

.method public isScreenIdMatch(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 1539
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isScreenIdMatch scenario: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " screenId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1541
    .local v4, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v4, :cond_0

    .line 1542
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1543
    invoke-virtual {v4, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isScreenMatch(I)Z

    move-result v0

    return v0

    .line 1540
    .end local v4    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1547
    :cond_1
    return v2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    const-string v0, "UserScenarioService"

    .line 515
    .local v0, "module":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",api="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getTransactionApi(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v2, 0x1

    .line 520
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 525
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    nop

    .line 528
    return v2

    .line 525
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 521
    :catch_0
    move-exception v3

    .line 522
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTransact e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public queryResize(IIZZ)I
    .locals 6
    .param p1, "screenId"    # I
    .param p2, "requestArea"    # I
    .param p3, "isResizeFromUserScenario"    # Z
    .param p4, "withAnimation"    # Z

    .line 1401
    const/4 v0, 0x1

    if-nez p3, :cond_0

    if-nez p4, :cond_2

    .line 1402
    :cond_0
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryResize,screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",requestArea-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isResizeFromUserScenario="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",withAnimation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",return true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    if-eqz p3, :cond_1

    .line 1405
    return v0

    .line 1407
    :cond_1
    if-nez p4, :cond_2

    .line 1408
    const/4 v0, 0x2

    return v0

    .line 1411
    :cond_2
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 1412
    .local v4, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->isScreenMatch(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1413
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryResize,screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",requestArea-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",scenario="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1413
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScreenModeConfig()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1416
    const/4 v1, 0x5

    const/4 v2, -0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 1427
    :pswitch_0
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScreenModeConfig()I

    move-result v3

    if-eq v3, v0, :cond_3

    .line 1428
    return v2

    .line 1430
    :cond_3
    return v1

    .line 1418
    :pswitch_1
    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScreenModeConfig()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1423
    return v2

    .line 1421
    :pswitch_2
    return v1

    .line 1437
    :cond_4
    :goto_1
    const/4 v0, 0x3

    return v0

    .line 1411
    .end local v4    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1441
    :cond_6
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized registerBinderObserver(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 1228
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1231
    :try_start_1
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    aget-object v0, v0, v1

    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    aget-object v2, v2, v1

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1232
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1235
    goto :goto_0

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e2":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerBinderObserver, unlink e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    .end local v0    # "e2":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    aput-object p1, v0, v1

    .line 1238
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppPids:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    aput v2, v0, v1

    .line 1239
    const-string v0, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerBinderObserver,pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppPids:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 1241
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppPids:[I

    aget v3, v3, v1

    .line 1242
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, "unknown"

    :goto_1
    invoke-direct {v2, v1, v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1245
    :cond_2
    :try_start_3
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    aget-object v0, v0, v1

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1246
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 1247
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v0, v0, v1

    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppPids:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setScenarioPid(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1251
    :cond_3
    goto :goto_2

    .line 1249
    :catch_1
    move-exception v0

    .line 1250
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerBinderObserver e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1252
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    return-void

    .line 1227
    .end local p1    # "binder":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    throw p1
.end method

.method public registerBinderObserverWithData(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "scenario"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1256
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1257
    .local v0, "callPid":I
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getScenarioGroup(Ljava/lang/String;)I

    move-result v1

    .line 1259
    .local v1, "groupIdx":I
    if-gez v1, :cond_0

    .line 1260
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerBinderObserverWithData,no configer for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    return-void

    .line 1264
    :cond_0
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerBinderObserverWithData,pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",binder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",scenario="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",groupIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",appbinder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1270
    :try_start_0
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    aget-object v2, v2, v1

    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    aget-object v4, v4, v1

    invoke-interface {v2, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    goto :goto_0

    .line 1271
    :catch_0
    move-exception v2

    .line 1272
    .local v2, "e2":Ljava/lang/Exception;
    const-string v4, "UserScenarioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerBinderObserverWithData, unlink e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    .end local v2    # "e2":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    aput-object p1, v2, v1

    .line 1276
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppPids:[I

    aput v0, v2, v1

    .line 1277
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    .line 1278
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    new-instance v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    invoke-direct {v4, v1, v0, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v1

    .line 1281
    :try_start_1
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppDeathRecipients:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$DeathObserver;

    aget-object v2, v2, v1

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1282
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setScenarioPid(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1285
    goto :goto_1

    .line 1283
    :catch_1
    move-exception v2

    .line 1284
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "UserScenarioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerBinderObserverWithData e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;

    .line 1088
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 1089
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 650
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->unregisterObserver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    monitor-exit p0

    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    throw v0
.end method

.method public declared-synchronized reportStatus(Ljava/lang/String;I)V
    .locals 18
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "status"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    monitor-enter p0

    .line 1099
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;

    const/4 v10, 0x0

    invoke-direct {v0, v7, v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$1;)V

    move-object v11, v0

    .line 1100
    .local v11, "record":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->opTick:J

    .line 1101
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v12, v0

    .line 1102
    .local v12, "pid":I
    invoke-direct {v7, v12}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 1103
    .local v13, "packageName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->source:Ljava/lang/String;

    .line 1104
    const-string v0, "report"

    iput-object v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->operation:Ljava/lang/String;

    .line 1105
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getScenarioGroup(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 1106
    .local v14, "groupIdx":I
    if-gez v14, :cond_0

    .line 1107
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportStatus,invalid scenario:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    monitor-exit p0

    return-void

    .line 1110
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v0, v0, v14

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v0, v0, v14

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iput v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->configerState:I

    .line 1111
    iget v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->configerState:I

    shl-int/lit8 v1, v9, 0x8

    or-int/2addr v0, v1

    iput v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->configerState:I

    .line 1112
    const-string v0, "success"

    iput-object v0, v11, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;->ret:Ljava/lang/String;

    .line 1113
    invoke-static {v11}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecordManager;->add(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;)V

    .line 1115
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportStatus,scenario-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",status-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",call pid-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v0, v0, v14

    const/4 v1, 0x2

    const/4 v15, 0x1

    if-nez v0, :cond_4

    .line 1119
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppBinders:[Landroid/os/IBinder;

    aget-object v0, v0, v14

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mAppPids:[I

    aget v0, v0, v14

    if-ne v0, v12, :cond_3

    if-ne v1, v9, :cond_3

    .line 1121
    const-string v0, "UserScenarioService"

    const-string v2, "reportStatus, app may start very slow,restart scenario state machine"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mStatusToBe:[I

    aput v1, v0, v14

    .line 1123
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v2, v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aput-object v2, v0, v14

    .line 1124
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v0, v0, v14

    if-nez v0, :cond_2

    .line 1125
    const-string v0, "UserScenarioService"

    const-string v1, "reportStatus, reget configer null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1126
    monitor-exit p0

    return-void

    .line 1128
    :cond_2
    :try_start_2
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v0, v0, v14

    invoke-virtual {v0, v15}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    goto :goto_1

    .line 1131
    :cond_3
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportStatus, no configer working for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",rp status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1133
    monitor-exit p0

    return-void

    .line 1137
    :cond_4
    :goto_1
    :try_start_3
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v0, v0, v14

    move-object v6, v0

    .line 1139
    .local v6, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1140
    const-string v0, "UserScenarioService"

    const-string v1, "reportStatus, scenario not match!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1141
    monitor-exit p0

    return-void

    .line 1144
    :cond_5
    if-eq v1, v9, :cond_6

    if-eqz v9, :cond_6

    .line 1145
    :try_start_4
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportStatus, invalid status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1146
    monitor-exit p0

    return-void

    .line 1149
    :cond_6
    :try_start_5
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mStatusToBe:[I

    aget v0, v0, v14

    if-eq v9, v0, :cond_7

    .line 1150
    const-string v0, "UserScenarioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportStatus, status conflict,tobe="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mStatusToBe:[I

    aget v2, v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",report="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1151
    monitor-exit p0

    return-void

    .line 1155
    :cond_7
    :try_start_6
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->removeMessages(I)V

    .line 1156
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->removeMessages(I)V

    .line 1157
    invoke-virtual {v6, v12}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setScenarioPid(I)V

    .line 1158
    invoke-virtual {v6, v9}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->whitelistAppHandle(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1160
    const/4 v5, 0x0

    if-ne v1, v9, :cond_9

    .line 1162
    :try_start_7
    invoke-virtual {v6, v15}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->voiceOnOff(Z)V

    .line 1163
    invoke-direct {v7, v6, v13}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->cleanDialogAndPoppanelbeforeEnter(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    .line 1165
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    iget-object v1, v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRestoreTaskCheckRunnable:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_8

    .line 1166
    :try_start_8
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    iget-object v1, v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRestoreTaskCheckRunnable:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1167
    invoke-virtual {v6, v15, v15}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->restoreTaskCheck(ZZ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 1176
    :catch_0
    move-exception v0

    move-object v15, v6

    goto :goto_4

    .line 1169
    :cond_8
    :try_start_9
    invoke-virtual {v6, v15, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->restoreTaskCheck(ZZ)V

    .line 1172
    :goto_2
    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getLastLaunchPackage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    const-string v0, "1"

    const-string v16, "1"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v1, v7

    move-object v2, v8

    move-object v5, v0

    move-object v15, v6

    move-object/from16 v6, v16

    .end local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .local v15, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :try_start_a
    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->sendBILog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1176
    .end local v15    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .restart local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :catch_1
    move-exception v0

    move-object v15, v6

    .end local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .restart local v15    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    goto :goto_4

    .line 1174
    .end local v15    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .restart local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_9
    move-object v15, v6

    .end local v6    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .restart local v15    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :goto_3
    invoke-virtual {v15, v9}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStatus(I)V

    .line 1175
    invoke-virtual {v15, v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setSubName(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1178
    goto :goto_5

    .line 1176
    :catch_2
    move-exception v0

    .line 1177
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_b
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportStatus,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    if-nez v9, :cond_d

    .line 1182
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aput-object v10, v0, v14

    .line 1184
    const-string v0, "home"

    invoke-virtual {v15}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getRequestExitReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1185
    invoke-virtual {v15}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getPanelScreenIds()[I

    move-result-object v0

    .line 1186
    .local v0, "screenIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_a

    aget v3, v0, v2

    .line 1187
    .local v3, "screenId":I
    sget-object v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    new-instance v5, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$7Sj3QB4KizsKI7BCc1JexFcXRJI;

    invoke-direct {v5, v7, v3}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$7Sj3QB4KizsKI7BCc1JexFcXRJI;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->post(Ljava/lang/Runnable;)Z

    .line 1186
    .end local v3    # "screenId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1190
    .end local v0    # "screenIds":[I
    :cond_a
    invoke-virtual {v15, v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRequestExitReason(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v15}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->dynamicFlagReset()V

    .line 1193
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mQueuedScenario:[Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v0, v0, v14

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1196
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    new-instance v1, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$lZx_hxz3CZ8LnogkV4daoW4jG94;

    invoke-direct {v1, v7, v14}, Lcom/xiaopeng/xuiservice/userscenario/-$$Lambda$UserScenarioService$lZx_hxz3CZ8LnogkV4daoW4jG94;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 1200
    :cond_b
    invoke-virtual {v15}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScreenModeConfig()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1201
    iget-object v0, v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRestoreTaskCheckRunnable:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;

    invoke-virtual {v0, v15}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;->setConfiger(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V

    .line 1202
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    iget-object v1, v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRestoreTaskCheckRunnable:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 1204
    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v15, v1, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->restoreTaskCheck(ZZ)V

    goto :goto_8

    .line 1209
    :cond_d
    :goto_7
    const/4 v1, 0x0

    :goto_8
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mUserScenarioHandler:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v9, v1, v15}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$UserScenarioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1210
    monitor-exit p0

    return-void

    .line 1098
    .end local v11    # "record":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$OpRecord;
    .end local v12    # "pid":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "groupIdx":I
    .end local v15    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local p1    # "scenario":Ljava/lang/String;
    .end local p2    # "status":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    throw v0
.end method

.method public requestAreaType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "areaType"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1295
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1296
    .local v0, "callPid":I
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 1297
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->requestAreaType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public requestWindowExchange(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "screenId"    # I
    .param p2, "firstAreaType"    # Ljava/lang/String;
    .param p3, "secondAreaType"    # Ljava/lang/String;

    .line 1290
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->getInstance()Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->requestWindowExchange(ILjava/lang/String;Ljava/lang/String;)V

    .line 1291
    return-void
.end method

.method public setExitDialogConfig(Ljava/lang/String;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;)I
    .locals 5
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "dialogConfig"    # Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    .line 2809
    const/4 v0, -0x1

    .line 2811
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 2812
    .local v1, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitDialogConfig(Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;)V

    .line 2814
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDialogConfig(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;)V

    .line 2815
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setExitDialogConfig,scenario="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",dialogConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2818
    .end local v1    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    goto :goto_0

    .line 2816
    :catch_0
    move-exception v1

    .line 2817
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDialogConfig,e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2819
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public declared-synchronized setParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "jsonStr"    # Ljava/lang/String;

    monitor-enter p0

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 966
    .local v0, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-nez v0, :cond_0

    .line 967
    const-string v1, "scenarioInvalid"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 969
    :cond_0
    const/4 v1, 0x0

    .line 970
    .local v1, "match":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_1
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mConfigGroup:[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 971
    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->mRunningConfigers:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    aget-object v3, v3, v2

    if-ne v0, v3, :cond_1

    .line 972
    const/4 v1, 0x1

    .line 973
    goto :goto_1

    .line 970
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 976
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 977
    const-string v2, "UserScenarioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setParameters invalid,scenario="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v2, "scenarioInvalid"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 981
    :cond_3
    :try_start_2
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->handleScenarioParameters(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    .line 983
    const-string v2, "success"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 964
    .end local v0    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v1    # "match":Z
    .end local p1    # "scenario":Ljava/lang/String;
    .end local p2    # "jsonStr":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    throw p1
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;

    .line 1093
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 1094
    return-void
.end method
