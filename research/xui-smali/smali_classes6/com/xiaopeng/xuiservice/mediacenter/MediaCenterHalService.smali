.class public Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
.super Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;
.source "MediaCenterHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHandler;,
        Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;,
        Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;,
        Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalServiceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MCService-MediaCenterHalService"

.field private static curMutedPackage:Ljava/lang/String;


# instance fields
.field private final DELAY_MUTE_TOAST:I

.field private final MSG_TRIGGER_MUTE_TOAST:I

.field private volatile isEnableDispatchMediaButton:Z

.field private mAudioStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBTStateChangeListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;

.field private mClientObserver:Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;

.field private mContext:Landroid/content/Context;

.field mEventListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;

.field private mHandler:Landroid/os/Handler;

.field private mICMCommunicator:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

.field private mListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

.field private mMediaCenterWorkThread:Landroid/os/HandlerThread;

.field private mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

.field mModeChangedListener:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;

.field private mModeManager:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

.field private mMuteManager:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

.field private mPassengerBtCommandListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;

.field private mPauseBtMediaTask:Ljava/lang/Runnable;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestMediaButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSDFftDataListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

.field mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

.field private mSmartBootEventListener:Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;

.field private mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

.field private mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

.field private mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

.field private mXuiMediaSessionManager:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->curMutedPackage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;-><init>(Landroid/content/Context;)V

    .line 71
    const/16 v0, 0x90

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->MSG_TRIGGER_MUTE_TOAST:I

    .line 72
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->DELAY_MUTE_TOAST:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mRequestMediaButtonList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    .line 615
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$3;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mModeChangedListener:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;

    .line 623
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$4;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    .line 680
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$5;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mSDFftDataListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 696
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$6;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mEventListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;

    .line 718
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$7;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mBTStateChangeListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;

    .line 731
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$8;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mClientObserver:Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;

    .line 738
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$9;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mSmartBootEventListener:Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;

    .line 745
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$10;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$10;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mPauseBtMediaTask:Ljava/lang/Runnable;

    .line 759
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$11;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$11;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    const-string v0, "MCService-MediaCenterHalService"

    const-string v1, "started MediaCenterHalService!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 86
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    .line 87
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    .line 88
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mModeManager:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    .line 89
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMuteManager:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    .line 90
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiMediaSessionManager:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    .line 91
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    .line 92
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mICMCommunicator:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    .line 93
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mPassengerBtCommandListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;

    .line 96
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$1;

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->notifySoundComplete()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
    .param p1, "x1"    # Z

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->notifyIgStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->syncMediaInfoOnIcmReady()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mICMCommunicator:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->pauseBtMediaByNeed(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->checkIfNeedNotify(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->triggerMuteToastCheck(Ljava/lang/String;)V

    return-void
.end method

.method private checkIfNeedNotify(ILjava/lang/String;)Z
    .locals 4
    .param p1, "usage"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 504
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 505
    const-string v2, "com.android.bluetooth"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    const-string v2, "MCService-MediaCenterHalService"

    const-string v3, "bluetooth audio track started"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getBtStatus()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 509
    :cond_1
    return v1

    .line 511
    :cond_2
    return v0
.end method

.method private dispatchEventToListener(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    .line 408
    const-string v0, "MCService-MediaCenterHalService"

    const-string v1, "handleHalEvents event: "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
    .locals 1

    .line 99
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalServiceHolder;->access$100()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    return-object v0
.end method

.method private initHandler()V
    .locals 2

    .line 402
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OperationThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaCenterWorkThread:Landroid/os/HandlerThread;

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaCenterWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 404
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHandler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaCenterWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHandler;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mHandler:Landroid/os/Handler;

    .line 405
    return-void
.end method

.method private isEnableDispatchMediaButton()Z
    .locals 4

    .line 305
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 306
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mRequestMediaButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mRequestMediaButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 308
    .local v2, "id":Ljava/lang/Integer;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    .end local v2    # "id":Ljava/lang/Integer;
    goto :goto_0

    .line 312
    :cond_0
    const-string v1, "MCService-MediaCenterHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestMediaButton pids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mRequestMediaButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private isUserCommand(I)Z
    .locals 1
    .param p1, "cmd"    # I

    .line 594
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

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

.method private notifyAudioStop(ILjava/lang/String;)V
    .locals 3
    .param p1, "audioSession"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;

    .line 452
    .local v2, "listener":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;->onAudioStop(ILjava/lang/String;)V

    .line 453
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;
    goto :goto_0

    .line 455
    :cond_0
    monitor-exit v0

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyIgStatus(Z)V
    .locals 3
    .param p1, "isIgOff"    # Z

    .line 565
    const-string v0, "MCService-MediaCenterHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIgStatus igOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->notifyIgStatus(Z)V

    .line 567
    return-void
.end method

.method private notifyNewAudioStart(IILjava/lang/String;)V
    .locals 3
    .param p1, "audioSession"    # I
    .param p2, "usage"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    monitor-enter v0

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;

    .line 442
    .local v2, "listener":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;
    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;->onNewAudioStart(IILjava/lang/String;)V

    .line 443
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;
    goto :goto_0

    .line 445
    :cond_0
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifySoundComplete()V
    .locals 1

    .line 570
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->notifySoundComplete()V

    .line 571
    return-void
.end method

.method private pauseBtMediaByNeed(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 4
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 672
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mPauseBtMediaTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 674
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mPauseBtMediaTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 675
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isBluetoothMedia(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->pauseBtMediaByNeed()V

    .line 678
    :cond_1
    :goto_0
    return-void
.end method

.method private registerIcmStatusListener()V
    .locals 2

    .line 534
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addIcmManagerListener(Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;)V

    .line 556
    return-void
.end method

.method private registerIgStatusListener()V
    .locals 2

    .line 515
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 531
    return-void
.end method

.method private registerPassengerCommand()V
    .locals 1

    .line 559
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mPassengerBtCommandListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/PassengerBtCommandListener;->register()V

    .line 562
    :cond_0
    return-void
.end method

.method private registerWelcomeSoundCompleteListener()V
    .locals 3

    .line 380
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.xiaopeng.xui.WELCOME_SOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    return-void
.end method

.method private releaseStopAll()V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->releaseStopAll()V

    .line 601
    return-void
.end method

.method private releaseStopScreen(I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->releaseStopScreen(I)V

    .line 591
    return-void
.end method

.method private syncMediaInfoOnIcmReady()V
    .locals 6

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mICMCommunicator:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v2

    .line 575
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v3

    .line 576
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPosition(I)[J

    move-result-object v4

    .line 574
    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->sendMediaInfoToIcm(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mICMCommunicator:Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentLyricInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMCommunicator;->sendLyricsMessage(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 578
    return-void
.end method

.method private triggerMuteToastCheck(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 496
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->curMutedPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 499
    sput-object p1, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->curMutedPackage:Ljava/lang/String;

    .line 501
    :cond_0
    return-void
.end method


# virtual methods
.method public addAudioStatusListener(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public avrcpNext()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->reqAvrcpNext()V

    .line 330
    return-void
.end method

.method public avrcpPause()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->reqAvrcpPause()V

    .line 326
    return-void
.end method

.method public avrcpPlay()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->reqAvrcpPlay()V

    .line 322
    return-void
.end method

.method public avrcpPrevious()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->reqAvrcpPrevious()V

    .line 334
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 413
    const-string v0, "*MediaCenter HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public favorSong(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 280
    if-eqz p1, :cond_0

    .line 281
    const-string v0, "songId"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "songId":Ljava/lang/String;
    const-string v1, "favorite"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 283
    .local v1, "favor":Z
    const-string v3, "displayId"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 284
    .local v2, "displayId":I
    const-string v3, "MCService-MediaCenterHalService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "favorSong songId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " &favor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " &displayId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v3, v2, v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->setFavorite(IZLjava/lang/String;)V

    .line 287
    .end local v0    # "songId":Ljava/lang/String;
    .end local v1    # "favor":Z
    .end local v2    # "displayId":I
    :cond_0
    return-void
.end method

.method public getAvrcpMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getAvrcpMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;

    move-result-object v0

    return-object v0
.end method

.method public getAvrcpPlayStatus()I
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getAvrcpPlayStatus()I

    move-result v0

    return v0
.end method

.method public getAvrcpPosition()[J
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getAvrcpPosition()[J

    move-result-object v0

    return-object v0
.end method

.method public getBtStatus()I
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getBtStatus()I

    move-result v0

    return v0
.end method

.method public getCurrentAudioSession()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->getCurrentAudioSession()I

    move-result v0

    return v0
.end method

.method public getCurrentLyricInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 1
    .param p1, "displayId"    # I

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->getCurrentLyricInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 1
    .param p1, "displayId"    # I

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaStyle(I)I
    .locals 2
    .param p1, "displayId"    # I

    .line 194
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    .line 195
    .local v0, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getStyle()I

    move-result v1

    return v1

    .line 198
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getCurrentMode()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mModeManager:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->getCurrentMode()I

    move-result v0

    return v0
.end method

.method public getCurrentPlayStatus(I)I
    .locals 1
    .param p1, "displayId"    # I

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->getCurrentPlayStatus(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPlaybackState(I)Landroid/media/session/PlaybackState;
    .locals 1
    .param p1, "displayId"    # I

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->getCurrentPlaybackState(I)Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition(I)[J
    .locals 1
    .param p1, "displayId"    # I

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->getCurrentPosition(I)[J

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleHalEvents()V
    .locals 1

    .line 393
    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    .line 395
    .local v0, "listener":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    if-eqz v0, :cond_0

    .line 397
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->dispatchEventToListener(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;)V

    .line 399
    :cond_0
    return-void

    .line 395
    .end local v0    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 2

    .line 358
    const-string v0, "MCService-MediaCenterHalService"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->initHandler()V

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->init()V

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mBTStateChangeListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->addBTStateChangedListener(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;)V

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mModeManager:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->init()V

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mModeManager:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mModeChangedListener:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->registerListener(Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;)V

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->init()V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mEventListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->registerEventListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;)V

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->setPlayInfoListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;)V

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->init()V

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiMediaSessionManager:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->init()V

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMuteManager:Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/mute/MuteManager;->init()V

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->init(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V

    .line 371
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->registerIgStatusListener()V

    .line 372
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->registerIcmStatusListener()V

    .line 373
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->registerPassengerCommand()V

    .line 374
    invoke-static {}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->getInstance()Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mClientObserver:Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->addClientObserver(Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;)V

    .line 375
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->registerWelcomeSoundCompleteListener()V

    .line 376
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->startVisualizer()V

    .line 377
    return-void
.end method

.method public karaokeFftCapture([BI)V
    .locals 1
    .param p1, "fft"    # [B
    .param p2, "mSampleRate"    # I

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->karaokeFftCapture([BI)V

    .line 239
    return-void
.end method

.method public notifyPlayControlListener(II)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "params"    # I

    .line 604
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;->onPlayControlIpc(II)V

    .line 605
    return-void
.end method

.method public notifySetFavoriteListeners(ZLjava/lang/String;)V
    .locals 1
    .param p1, "favorite"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;->onSetFavorite(ZLjava/lang/String;)V

    .line 613
    return-void
.end method

.method public notifySwitchSourceListener(I)V
    .locals 1
    .param p1, "source"    # I

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;->onSwitchSource(I)V

    .line 609
    return-void
.end method

.method public onClientDead(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mRequestMediaButtonList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public onConnectXUI()V
    .locals 0

    .line 476
    return-void
.end method

.method public onDisconnectCar()V
    .locals 0

    .line 471
    return-void
.end method

.method public onDisconnectXUI()V
    .locals 0

    .line 481
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 461
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .line 466
    return-void
.end method

.method public pauseBtMedia()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->pauseBtMedia()V

    .line 263
    return-void
.end method

.method public playBtMedia(I)V
    .locals 1
    .param p1, "callingPid"    # I

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->playBtMedia(I)V

    .line 259
    return-void
.end method

.method public playbackControl(III)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "param"    # I

    .line 146
    const-string v0, "MCService-MediaCenterHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playbackControl with cmd -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->isUserCommand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->releaseStop(I)V

    .line 150
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->isEnableDispatchMediaButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->dispatchMediaButton(I)V

    .line 152
    return v1

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->playbackControl(III)V

    .line 156
    return v1
.end method

.method public playbackControlInner(III)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "param"    # I

    .line 160
    const-string v0, "MCService-MediaCenterHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playbackControlInner with cmd -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->playbackControlInner(III)Z

    move-result v0

    return v0
.end method

.method public playbackControlWithBundle(IILandroid/os/Bundle;)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .line 133
    const-string v0, "MCService-MediaCenterHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playbackControl with cmd -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->playbackControlWithBundle(IILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .line 387
    const-string v0, "MCService-MediaCenterHalService"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    .line 389
    return-void
.end method

.method public releaseStop(I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 581
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->releaseStopScreen(I)V

    goto :goto_0

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->releaseStopAll()V

    .line 587
    :goto_0
    return-void
.end method

.method public removeAudioStatusListener(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mAudioStatusListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestMediaButton(IZ)V
    .locals 3
    .param p1, "callingPid"    # I
    .param p2, "request"    # Z

    .line 290
    const-string v0, "MCService-MediaCenterHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestMediaButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    if-eqz p2, :cond_0

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mRequestMediaButtonList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mRequestMediaButtonList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mRequestMediaButtonList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 298
    :cond_1
    :goto_0
    return-void
.end method

.method public sendCustomAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->sendCustomAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setBtVolume(IF)V
    .locals 1
    .param p1, "callingPid"    # I
    .param p2, "volume"    # F

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiBtMediaManager:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->setBtVolume(IF)V

    .line 318
    return-void
.end method

.method public declared-synchronized setDispatchMediaButtonStatus(Z)V
    .locals 3
    .param p1, "isEnable"    # Z

    monitor-enter p0

    .line 225
    :try_start_0
    const-string v0, "MCService-MediaCenterHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDispatchMediaButtonStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->isEnableDispatchMediaButton:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 224
    .end local p1    # "isEnable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
    throw p1
.end method

.method public setFavorite(IZLjava/lang/String;)I
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "favorite"    # Z
    .param p3, "songId"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->setFavorite(IZLjava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public setFavorite(ZLjava/lang/String;)I
    .locals 2
    .param p1, "favorite"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->setFavorite(IZLjava/lang/String;)V

    .line 271
    return v1
.end method

.method public setKaraokeVisualizerOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->setKaraokeVisualizerOn(Z)V

    .line 235
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSDPosition(ILjava/lang/String;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiMediaSessionManager:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->setSDPosition(ILjava/lang/String;)V

    .line 350
    return-void
.end method

.method public setSessionActivity(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .line 353
    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->putHookSessionUI(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 354
    return-void
.end method

.method public setVisualizerViewEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 203
    return-void
.end method

.method public startVisualizer()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mSDFftDataListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->registerFftDataListenerInner(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V

    .line 485
    return-void
.end method

.method public stopAllMedia(ZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->stopAllScreenMedia(ZLjava/lang/String;Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method public stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "screenId"    # I
    .param p2, "stop"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public stopVisualizer()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mSDFftDataListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->unregisterFftDataListenerInner(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V

    .line 493
    return-void
.end method

.method public switchSource(I)I
    .locals 1
    .param p1, "source"    # I

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->switchSource(I)V

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public updateAppConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;

    .line 231
    return-void
.end method

.method public updateVisualizerRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 488
    .local p1, "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->updateVisualizerRequest(Ljava/util/List;Ljava/util/List;)V

    .line 489
    return-void
.end method

.method public vendorMediaInfoNotify(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->vendorUpdateMediaInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 243
    return-void
.end method

.method public vendorNotifyUpdateLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->vendorUpdateLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 255
    return-void
.end method

.method public vendorStartAudioSession(IILjava/lang/String;)V
    .locals 1
    .param p1, "audioSession"    # I
    .param p2, "usage"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->vendorStartAudioSession(IILjava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiMediaSessionManager:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXuiMediaSessionManager:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->onAudioSessionStart(ILjava/lang/String;)V

    .line 214
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->notifyNewAudioStart(IILjava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->vendorStartAudioSession(ILjava/lang/String;)V

    .line 216
    return-void
.end method

.method public vendorStopAudioSession(ILjava/lang/String;)V
    .locals 1
    .param p1, "audioSession"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->vendorStopAudioSession(ILjava/lang/String;)V

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->notifyAudioStop(ILjava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->vendorStopAudioSession(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public vendorUpdatePlaybackStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->vendorUpdatePlayStatus(I)V

    .line 247
    return-void
.end method

.method public vendorUpdatePosition(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "duration"    # J

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->mXpMediaControllerManager:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->vendorUpdatePosition(JJ)V

    .line 251
    return-void
.end method
