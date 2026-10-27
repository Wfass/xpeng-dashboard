.class public Lcom/xiaopeng/xuimanager/XUIManager;
.super Ljava/lang/Object;
.source "XUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/XUIManager$XUIManagerHolder;,
        Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;
    }
.end annotation


# static fields
.field public static final ALSAPLAYER_SERVICE:Ljava/lang/String; = "alsaplayer"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AMBIENTLIGHT_SERVICE:Ljava/lang/String; = "ambientlight"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AMBIENT_SERVICE:Ljava/lang/String; = "ambient"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AWARENESS_SERVICE:Ljava/lang/String; = "awareness"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BRIGHTNESS_SERVICE:Ljava/lang/String; = "brightness"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONDITION_SERVICE:Ljava/lang/String; = "condition"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONTEXTINFO_SERVICE:Ljava/lang/String; = "contextinfo"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final IOT_MANAGER:Ljava/lang/String; = "iotmanager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final KARAOKE_SERVICE:Ljava/lang/String; = "karaoke"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LIGHTLANUAGE_SERVICE:Ljava/lang/String; = "lightlanuage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MAKEUPLIGHT_SERVICE:Ljava/lang/String; = "makeuplight"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIACENTER_SERVICE:Ljava/lang/String; = "mediacenter"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MESSAGE_SERVICE:Ljava/lang/String; = "message"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MUSICRECOGNIZE_SERVICE:Ljava/lang/String; = "musicrecognize"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPERATION_SERVICE:Ljava/lang/String; = "operation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_AMBIENTLIGHT:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_AMBIENTLIGHT"

.field public static final PERMISSION_AWARENESS:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_AWARENESS"

.field public static final PERMISSION_CONTEXTINFO:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_CONTEXTINFO"

.field public static final PERMISSION_KARAOKE:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_KARAOKE"

.field public static final PERMISSION_LANGLIGHT:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_LANGLIGHT"

.field public static final PERMISSION_LIGHTLANUAGE:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_LIGHTLANUAGE"

.field public static final PERMISSION_MAKEUPLIGHT:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_MAKEUPLIGHT"

.field public static final PERMISSION_MEDIACENTER:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_MEDIACENTER"

.field public static final PERMISSION_MUSICRECOGNIZE:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_MUSICRECOGNIZE"

.field public static final PERMISSION_OPERATION:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_OPERATION"

.field public static final PERMISSION_SEATMASSAGER:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_SEATMASSAGER"

.field public static final PERMISSION_SMART:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_SMART"

.field public static final PERMISSION_XAPP:Ljava/lang/String; = "com.xiaopeng.xuimanager.permission.XUI_XAPP"

.field public static final RESOURCE_PROVIDER:Ljava/lang/String; = "resource_provider"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SEATMASSAGER_SERVICE:Ljava/lang/String; = "seatmassager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SMART_SERVICE:Ljava/lang/String; = "smart"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SOUND_RESOURCE_SERVICE:Ljava/lang/String; = "sndresource"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final STATE_CONNECTED:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field public static final SYS_CONFIG:Ljava/lang/String; = "sysconfig"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "##xuimanager"

.field public static final THEME_OPERATION_SERVICE:Ljava/lang/String; = "themeoperation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_SERVICE:Ljava/lang/String; = "theme"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_SCENARIO_SERVICE:Ljava/lang/String; = "userscenario"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final VERSION:Ljava/lang/String; = "2.0.0"

.field public static final XAPP_SERVICE:Ljava/lang/String; = "xapp"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XPDOWNLOAD_SERVICE:Ljava/lang/String; = "xpdownload"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XUI_MANAGER_SERVICE:Ljava/lang/String; = "XuiServiceManager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final XUI_SERVICE_BIND_MAX_RETRY:J = 0x14L

.field private static final XUI_SERVICE_BIND_RETRY_INTERVAL_MS:J = 0x1f4L

.field private static final XUI_SERVICE_CLASS:Ljava/lang/String; = "com.xiaopeng.xuiservice.XUIService"

.field public static final XUI_SERVICE_INTERFACE_NAME:Ljava/lang/String; = "com.xiaopeng.xuimanager.IXUIService"

.field public static final XUI_SERVICE_NOT_CONNECTED_EXCEPTION_MSG:Ljava/lang/String; = "XUIServiceNotConnected"

.field private static final XUI_SERVICE_PACKAGE:Ljava/lang/String; = "com.xiaopeng.xuiservice"

.field public static final XUI_SR_SERVICE:Ljava/lang/String; = "xuiSr"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static handlerThread:Landroid/os/HandlerThread;

.field private static mObserverBinder:Landroid/os/IBinder;

.field private static final mXUIManagerLock:Ljava/lang/Object;

.field private static volatile mXuiBinder:Landroid/os/IBinder;


# instance fields
.field private mConnectionRetryCount:I

.field private final mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

.field private final mConnectionRetryRunnable:Ljava/lang/Runnable;

.field private mConnectionState:I

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mMainThreadEventHandler:Landroid/os/Handler;

.field private mService:Lcom/xiaopeng/xuimanager/IXUIService;

.field private final mServiceConnectionListener:Landroid/content/ServiceConnection;

.field private final mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

.field private final mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/XUIManagerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 325
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/XUIManager;->mXUIManagerLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    .line 341
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/XUIManager$1;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    .line 383
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/XUIManager$2;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    .line 390
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/XUIManager$3;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    .line 538
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get application context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XUIManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    .line 541
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XUIManagerEvent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 543
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    .line 544
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/XUIManager;->determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mMainThreadEventHandler:Landroid/os/Handler;

    .line 545
    new-instance v1, Lcom/xiaopeng/xuimanager/-$$Lambda$XUIManager$9oa7FHGe5iZY-6V1RFQAWSVTQtQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/-$$Lambda$XUIManager$9oa7FHGe5iZY-6V1RFQAWSVTQtQ;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 548
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->monitorXuiServiceDeath()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)V
    .locals 0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    .line 341
    new-instance p1, Lcom/xiaopeng/xuimanager/XUIManager$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/XUIManager$1;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    .line 383
    new-instance p1, Lcom/xiaopeng/xuimanager/XUIManager$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/XUIManager$2;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    .line 390
    new-instance p1, Lcom/xiaopeng/xuimanager/XUIManager$3;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/XUIManager$3;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    .line 573
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    .line 574
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    .line 575
    invoke-static {p3}, Lcom/xiaopeng/xuimanager/XUIManager;->determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    .line 576
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager;->determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mMainThreadEventHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuimanager/IXUIService;Landroid/os/Handler;)V
    .locals 0

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    .line 341
    new-instance p1, Lcom/xiaopeng/xuimanager/XUIManager$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/XUIManager$1;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    .line 383
    new-instance p1, Lcom/xiaopeng/xuimanager/XUIManager$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/XUIManager$2;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    .line 390
    new-instance p1, Lcom/xiaopeng/xuimanager/XUIManager$3;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/XUIManager$3;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    .line 588
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    .line 589
    invoke-static {p3}, Lcom/xiaopeng/xuimanager/XUIManager;->determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    .line 590
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager;->determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mMainThreadEventHandler:Landroid/os/Handler;

    .line 592
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    const/4 p1, 0x2

    .line 593
    iput p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionState:I

    const/4 p1, 0x0

    .line 594
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/XUIManager$1;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/XUIManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuimanager/XUIManager;)Landroid/content/ServiceConnection;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 66
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->monitorXuiServiceDeath()V

    return-void
.end method

.method static synthetic access$1300()Ljava/lang/Object;
    .locals 1

    .line 66
    sget-object v0, Lcom/xiaopeng/xuimanager/XUIManager;->mXUIManagerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/XUIManager;)Lcom/xiaopeng/xuimanager/IXUIService;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuimanager/XUIManager;Lcom/xiaopeng/xuimanager/IXUIService;)Lcom/xiaopeng/xuimanager/IXUIService;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/XUIManager;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionState:I

    return p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuimanager/XUIManager;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionState:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/XUIManager;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/XUIManager;->bringUpXUIManagers()V

    return-void
.end method

.method static synthetic access$500()Landroid/os/IBinder;
    .locals 1

    .line 66
    sget-object v0, Lcom/xiaopeng/xuimanager/XUIManager;->mObserverBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuimanager/XUIManager;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/XUIManager;->notifyServerDisconnectForXUIManagers()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuimanager/XUIManager;)Landroid/content/ServiceConnection;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuimanager/XUIManager;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/XUIManager;->startXUIService()V

    return-void
.end method

.method private bringUpXUIManagers()V
    .locals 6

    .line 1045
    sget-object v0, Lcom/xiaopeng/xuimanager/XUIManager;->mXUIManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1046
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/XUIManagerBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    :try_start_1
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/xuimanager/IXUIService;->getXUIService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1049
    invoke-interface {v2, v3}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->onXUIConnected(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "XUIManager"

    .line 1051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bringUpXUIManagers,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1054
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 660
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XUIServiceNotConnected"

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    new-instance p0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>()V

    throw p0

    .line 664
    :cond_0
    throw p0
.end method

.method public static createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 1

    const/4 v0, 0x0

    .line 630
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object p0

    return-object p0
.end method

.method public static createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 5

    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "XUIManager"

    if-nez v0, :cond_0

    const-string p0, "FEATURE_AUTOMOTIVE not declared while android.car is used"

    .line 610
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 614
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createXUIManager,version=2.0.0,connection listener="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",handler="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_1

    const-string v3, "null"

    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_2

    const-string v3, "main"

    goto :goto_0

    :cond_2
    move-object v3, p2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xuimanager/XUIManager;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method private createXUIServiceManager(Ljava/lang/String;Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/XUIManagerBase;
    .locals 4

    .line 880
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "musicrecognize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "operation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "awareness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "sysconfig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "ambientlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v0, "xuiSr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "theme"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "smart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "mediacenter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "seatmassager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "xapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "contextinfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "lightlanuage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "makeuplight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "condition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_11
    const-string v0, "ambient"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_12
    const-string v0, "karaoke"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_13
    const-string v0, "iotmanager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_14
    const-string/jumbo v0, "xpdownload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_15
    const-string v0, "sndresource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_16
    const-string v0, "userscenario"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_0

    :cond_16
    move v3, v2

    goto :goto_0

    :sswitch_17
    const-string v0, "alsaplayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_0

    :cond_17
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    const/4 p1, 0x0

    :goto_1
    move v1, v2

    goto/16 :goto_2

    .line 926
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;->getInstance()Lcom/xiaopeng/xuimanager/musicrecognize/MusicRecognizeManager;

    move-result-object p1

    .line 927
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1

    .line 934
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->getInstance()Lcom/xiaopeng/xuimanager/operation/OperationManager;

    move-result-object p1

    .line 935
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1

    .line 890
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;->getInstance()Lcom/xiaopeng/xuimanager/awareness/AwarenessManager;

    move-result-object p1

    .line 891
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1

    .line 963
    :pswitch_3
    invoke-static {}, Lcom/xiaopeng/xuimanager/message/MessageManager;->getInstance()Lcom/xiaopeng/xuimanager/message/MessageManager;

    move-result-object p1

    .line 964
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1

    .line 967
    :pswitch_4
    invoke-static {}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->getInstance()Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;

    move-result-object p1

    .line 968
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1

    .line 902
    :pswitch_5
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getInstance()Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    move-result-object p1

    .line 903
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1

    .line 898
    :pswitch_6
    invoke-static {}, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;->getInstance()Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;

    move-result-object p1

    .line 899
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1

    .line 975
    :pswitch_7
    invoke-static {}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->getInstance()Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;

    move-result-object p1

    .line 976
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1

    .line 971
    :pswitch_8
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->getInstance()Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    move-result-object p1

    .line 972
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1

    .line 894
    :pswitch_9
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->getInstance()Lcom/xiaopeng/xuimanager/smart/SmartManager;

    move-result-object p1

    .line 895
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1

    .line 922
    :pswitch_a
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->getInstance()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object p1

    .line 923
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 918
    :pswitch_b
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->getInstance()Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    move-result-object p1

    .line 919
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 930
    :pswitch_c
    invoke-static {}, Lcom/xiaopeng/xuimanager/xapp/XAppManager;->getInstance()Lcom/xiaopeng/xuimanager/xapp/XAppManager;

    move-result-object p1

    .line 931
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 886
    :pswitch_d
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->getInstance()Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    move-result-object p1

    .line 887
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 910
    :pswitch_e
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->getInstance()Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    move-result-object p1

    .line 911
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 914
    :pswitch_f
    invoke-static {}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->getInstance()Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;

    move-result-object p1

    .line 915
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 959
    :pswitch_10
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->getInstance()Lcom/xiaopeng/xuimanager/condition/ConditionManager;

    move-result-object p1

    .line 960
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 906
    :pswitch_11
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->getInstance()Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    move-result-object p1

    .line 907
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 938
    :pswitch_12
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->getInstance()Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    move-result-object p1

    .line 939
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 946
    :pswitch_13
    invoke-static {}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->getInstance()Lcom/xiaopeng/xuimanager/iot/IoTManager;

    move-result-object p1

    .line 947
    move-object p2, p1

    check-cast p2, Lcom/xiaopeng/xuimanager/iot/IoTManager;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->init(Landroid/content/Context;)V

    goto :goto_2

    .line 882
    :pswitch_14
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->getInstance()Lcom/xiaopeng/xuimanager/download/XPDownloadManager;

    move-result-object p1

    .line 883
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 955
    :pswitch_15
    invoke-static {}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->getInstance()Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    move-result-object p1

    .line 956
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 951
    :pswitch_16
    invoke-static {}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->getInstance()Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    move-result-object p1

    .line 952
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 942
    :pswitch_17
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->getInstance()Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;

    move-result-object p1

    .line 943
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_1

    :goto_2
    if-eqz p1, :cond_18

    if-eqz v1, :cond_18

    .line 982
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->getInstance()Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->addXUIManagerBase(Lcom/xiaopeng/xuimanager/XUIManagerBase;)V

    :cond_18
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x68ab1826 -> :sswitch_17
        -0x5fda9ba5 -> :sswitch_16
        -0x4f4df789 -> :sswitch_15
        -0x4a87a080 -> :sswitch_14
        -0x40631421 -> :sswitch_13
        -0x37caea1c -> :sswitch_12
        -0x352d0d68 -> :sswitch_11
        -0x335692e5 -> :sswitch_10
        -0x23dfde53 -> :sswitch_f
        -0x1af32453 -> :sswitch_e
        -0x617d523 -> :sswitch_d
        0x3806a9 -> :sswitch_c
        0x2ba0d4c -> :sswitch_b
        0x65fc139 -> :sswitch_a
        0x68795c9 -> :sswitch_9
        0x69375c9 -> :sswitch_8
        0x6d1c88b -> :sswitch_7
        0x26a22c51 -> :sswitch_6
        0x26b8217e -> :sswitch_5
        0x26d8344f -> :sswitch_4
        0x38eb0007 -> :sswitch_3
        0x4b21a5b5 -> :sswitch_2
        0x631ad567 -> :sswitch_1
        0x66f43409 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    if-nez p0, :cond_0

    .line 640
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    .line 641
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method private static determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2

    .line 634
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 635
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    return-object p0
.end method

.method private directGetXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const-string v0, "XuiServiceManager"

    .line 833
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 834
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/IXUIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/IXUIService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    .line 835
    sget-object v0, Lcom/xiaopeng/xuimanager/XUIManager;->mXUIManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/XUIManagerBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 841
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    if-eqz v2, :cond_0

    .line 842
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/IXUIService;->getXUIService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "XUIManager"

    .line 845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "directGetXUIServiceManager,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIServiceManager(Ljava/lang/String;Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/XUIManagerBase;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 849
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->setServiceName(Ljava/lang/String;)V

    const-string v2, "##xuimanager"

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized getIXUIServiceOrThrow()Lcom/xiaopeng/xuimanager/IXUIService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    if-nez v0, :cond_1

    .line 1012
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->monitorXuiServiceDeath()V

    .line 1013
    sget-object v0, Lcom/xiaopeng/xuimanager/XUIManager;->mXuiBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/IXUIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/IXUIService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1015
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1018
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 2

    const-class v0, Lcom/xiaopeng/xuimanager/XUIManager;

    monitor-enter v0

    .line 556
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager$XUIManagerHolder;->access$1500()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getXUIServiceBinder(Lcom/xiaopeng/xuimanager/IXUIService;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "##xuimanager"

    if-nez p1, :cond_0

    const-string p1, "Service is null, cannot get binder"

    .line 797
    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 801
    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/IXUIService;->getXUIService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v2, "Failed to get XUIService binder"

    .line 803
    invoke-static {v1, v2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 804
    instance-of p1, p1, Landroid/os/DeadObjectException;

    if-eqz p1, :cond_1

    .line 805
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuimanager/XUIManager;->handleServiceDeath(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public static getXuiVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.0"

    return-object v0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;)V
    .locals 2

    const-string v0, "XUIManager"

    const-string v1, "RemoteException"

    .line 1022
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1023
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/XUIManager;->disconnect()V

    return-void
.end method

.method private handleServiceDeath(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3

    const/4 v0, 0x0

    .line 812
    sput-object v0, Lcom/xiaopeng/xuimanager/XUIManager;->mXuiBinder:Landroid/os/IBinder;

    .line 813
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->monitorXuiServiceDeath()V

    .line 814
    sget-object v1, Lcom/xiaopeng/xuimanager/XUIManager;->mXuiBinder:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/IXUIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/IXUIService;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    const-string v2, "##xuimanager"

    if-eqz v1, :cond_0

    const-string v1, "Service reconnected, retrying to get binder"

    .line 816
    invoke-static {v2, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/IXUIService;->getXUIService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Failed to get XUIService binder after reconnection"

    .line 821
    invoke-static {v2, v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    const-string p1, "Service reconnection failed"

    .line 826
    invoke-static {v2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static declared-synchronized monitorXuiServiceDeath()V
    .locals 5

    const-class v0, Lcom/xiaopeng/xuimanager/XUIManager;

    monitor-enter v0

    .line 1058
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuimanager/XUIManager;->mXuiBinder:Landroid/os/IBinder;

    if-nez v1, :cond_0

    const-string v1, "XuiServiceManager"

    .line 1059
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xuimanager/XUIManager;->mXuiBinder:Landroid/os/IBinder;

    .line 1060
    sget-object v1, Lcom/xiaopeng/xuimanager/XUIManager;->mXuiBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1062
    :try_start_1
    sget-object v1, Lcom/xiaopeng/xuimanager/XUIManager;->mXuiBinder:Landroid/os/IBinder;

    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->getInstance()Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1063
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->getInstance()Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuimanager/XUIManager;->mXuiBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->init(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "##xuimanager"

    .line 1065
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "monitorXuiServiceDeath,e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1069
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private notifyServerDisconnectForXUIManagers()V
    .locals 3

    .line 1037
    sget-object v0, Lcom/xiaopeng/xuimanager/XUIManager;->mXUIManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1038
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/XUIManagerBase;

    .line 1039
    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->onServerDisconnected()V

    goto :goto_0

    .line 1041
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startXUIService()V
    .locals 5

    .line 988
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaopeng.xuiservice"

    .line 989
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xuimanager.IXUIService"

    .line 990
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private tearDownXUIManagers()V
    .locals 3

    const-string v0, "##xuimanager"

    .line 1027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tearDownXUIManagers,mXuiBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuimanager/XUIManager;->mXuiBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    sget-object v0, Lcom/xiaopeng/xuimanager/XUIManager;->mXUIManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1029
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/XUIManagerBase;

    .line 1030
    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->onXUIDisconnected()V

    goto :goto_0

    .line 1032
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1033
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 675
    monitor-enter p0

    .line 676
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 679
    iput v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionState:I

    .line 680
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/XUIManager;->startXUIService()V

    .line 681
    monitor-exit p0

    return-void

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected or connecting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 681
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 2

    .line 690
    monitor-enter p0

    .line 691
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionState:I

    if-nez v0, :cond_0

    .line 692
    monitor-exit p0

    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 695
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 696
    iput v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionRetryCount:I

    .line 697
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/XUIManager;->tearDownXUIManagers()V

    const/4 v1, 0x0

    .line 698
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    .line 699
    iput v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionState:I

    .line 700
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 701
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 560
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/XUIManager;->directGetXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 739
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "iotmanager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 760
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/XUIManager;->getIXUIServiceOrThrow()Lcom/xiaopeng/xuimanager/IXUIService;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    sget-object v2, Lcom/xiaopeng/xuimanager/XUIManager;->mXUIManagerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 765
    :try_start_1
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuimanager/XUIManagerBase;

    if-nez v3, :cond_3

    .line 767
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceBinder(Lcom/xiaopeng/xuimanager/IXUIService;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "XUIManager"

    .line 770
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getXUIServiceManager could not get binder for service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "resource_provider"

    .line 773
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    new-instance v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;-><init>(Landroid/content/Context;)V

    const-string v3, "XUIManager"

    const-string v4, "getXUIServiceManager get StoreResourceProvider"

    .line 775
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 778
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIServiceManager(Ljava/lang/String;Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/XUIManagerBase;

    move-result-object v0

    :goto_0
    move-object v3, v0

    :cond_1
    if-nez v3, :cond_2

    const-string v0, "XUIManager"

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarManager could not create manager for service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    monitor-exit v2

    return-object v1

    .line 787
    :cond_2
    invoke-interface {v3, p1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->setServiceName(Ljava/lang/String;)V

    const-string v0, "##xuimanager"

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setname="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    :cond_3
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 762
    :catch_0
    new-instance p1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    const-string v0, "not connected"

    invoke-direct {p1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 742
    :cond_4
    sget-object v0, Lcom/xiaopeng/xuimanager/XUIManager;->mXUIManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 743
    :try_start_2
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/XUIManagerBase;

    if-nez v2, :cond_6

    .line 745
    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIServiceManager(Ljava/lang/String;Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/XUIManagerBase;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 747
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->setServiceName(Ljava/lang/String;)V

    .line 748
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 750
    :cond_5
    monitor-exit v0

    return-object v1

    .line 753
    :cond_6
    :goto_1
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public isConnected()Z
    .locals 1

    .line 711
    monitor-enter p0

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 713
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnecting()Z
    .locals 2

    .line 722
    monitor-enter p0

    .line 723
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 724
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$new$0$XUIManager()V
    .locals 0

    .line 546
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    return-void
.end method

.method public declared-synchronized registerObserver()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "##xuimanager"

    const-string v1, "##registerObserver"

    .line 862
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    if-nez v0, :cond_0

    const-string v0, "XuiServiceManager"

    .line 864
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 865
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/IXUIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/IXUIService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    .line 867
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/XUIManager;->mObserverBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    .line 868
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/XUIManager;->mObserverBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager;->mService:Lcom/xiaopeng/xuimanager/IXUIService;

    sget-object v1, Lcom/xiaopeng/xuimanager/XUIManager;->mObserverBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/IXUIService;->registerObserver(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "XUIManager"

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##registerObserver e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 875
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
