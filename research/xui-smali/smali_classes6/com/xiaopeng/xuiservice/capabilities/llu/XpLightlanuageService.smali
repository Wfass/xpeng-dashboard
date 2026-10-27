.class public Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
.super Ljava/lang/Object;
.source "XpLightlanuageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;,
        Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;,
        Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;,
        Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Effect;,
        Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;,
        Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;,
        Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;,
        Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$AvmListener;,
        Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;
    }
.end annotation


# static fields
.field private static final EVENT_ERROR:I = 0x4

.field private static final EVENT_FINISH:I = 0x3

.field private static final EVENT_REPEAT:I = 0x5

.field private static final EVENT_START:I = 0x1

.field private static final EVENT_STOP:I = 0x2

.field private static final MCU_AC_CHARGE:I = 0x6

.field private static final MCU_AWAKE:I = 0x2

.field private static final MCU_DC_CHARGE:I = 0x7

.field private static final MCU_FINDCAR:I = 0x1

.field private static final MCU_LOCKING:I = 0x14

.field private static final MCU_SHOWOFF:I = 0xa

.field private static final MCU_SLEEP:I = 0x5

.field private static final MCU_TAKEPHOTO:I = 0x9

.field private static final MSG_FINISH:I = 0x3

.field private static final MSG_PLAY:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field private static final PROP_DANCING:Ljava/lang/String; = "persist.sys.light.dancing"

.field private static final PROP_EXPAND_CTRL:Ljava/lang/String; = "persist.sys.xiaopeng.xui.ExpandControl"

.field private static final TAG:Ljava/lang/String; = "XpLightlanuageService"

.field private static final TICK_PERIOD:I = 0xa

.field private static final hasDictType:Z

.field private static sService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;


# instance fields
.field private final mAudioConfig:Landroid/media/audioConfig/AudioConfig;

.field private mAudioFocus:Z

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAvmListener:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$AvmListener;

.field private mBilog:Lcom/xiaopeng/biutil/BiLog;

.field private mBrakeLight:I

.field private final mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHighBeamLight:I

.field private mLeftAngle:I

.field private mLeftSdc:I

.field private mLength:I

.field private final mLight:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mLightEffectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMirrorView:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRhythmEffect:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;

.field private mRhythmPlay:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

.field private mRightAngle:I

.field private mRightSdc:I

.field private final mThemeLightEffectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

.field private mWindowPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasDictType:Z

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->sService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHighBeamLight:I

    .line 92
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBrakeLight:I

    .line 93
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLeftSdc:I

    .line 94
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRightSdc:I

    .line 95
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mWindowPos:I

    .line 96
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mMirrorView:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLength:I

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 100
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    .line 104
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLightEffectMap:Ljava/util/Map;

    .line 105
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mThemeLightEffectMap:Ljava/util/Map;

    .line 106
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLight:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mListener:Ljava/util/List;

    .line 108
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioFocus:Z

    .line 109
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRhythmPlay:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    .line 110
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRhythmEffect:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;

    .line 111
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    .line 112
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    .line 114
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBilog:Lcom/xiaopeng/biutil/BiLog;

    .line 115
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 116
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandler:Landroid/os/Handler;

    .line 1437
    new-instance v0, Landroid/media/audioConfig/AudioConfig;

    invoke-direct {v0, p1}, Landroid/media/audioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 1438
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioManager:Landroid/media/AudioManager;

    .line 1440
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1462
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$3;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V

    .line 1476
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$4;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V

    .line 1487
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XpLightlanuageThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1488
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1490
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$5;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$5;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandler:Landroid/os/Handler;

    .line 1509
    const-string v0, "XpLightlanuageService"

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$xdhfnX5yu6786WFoxQ0LgZkmuGg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$xdhfnX5yu6786WFoxQ0LgZkmuGg;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 1513
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getInstance()Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$6;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->addThemeResourceHandler(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;)V

    .line 1548
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasDictType:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # J

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->handleFinishEffect(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;
    .param p2, "x2"    # J

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->handlePlayEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRhythmEffect:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Ljava/lang/String;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # J

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->handleStopEffect(Ljava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setVolume(FF)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->doMcuEffectUpgrade(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->resetLightlanuageStatus()V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->playLightEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopLightEffect(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->finishLightEffect()V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->loadThemeLightEffect(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->unloadThemeLightEffect()V

    return-void
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLength:I

    return p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;ZLandroid/util/Pair;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/util/Pair;
    .param p3, "x3"    # Z

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setPrivateCtrl(ZLandroid/util/Pair;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Landroid/util/Pair;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # Landroid/util/Pair;

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setAngleCtrl(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Landroid/util/Pair;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # Landroid/util/Pair;

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setLightCtrl(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Landroid/util/Pair;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p1, "x1"    # Landroid/util/Pair;

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setExpandCtrl(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method private activePrivateCtrl()V
    .locals 4

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    .line 913
    .local v0, "llu":Landroid/car/hardware/llu/CarLluManager;
    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->activateAndroidLluControl()V

    .line 914
    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 915
    sget-boolean v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasDictType:Z

    if-eqz v1, :cond_0

    .line 916
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setActiveMode(Z)V

    .line 918
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setActiveMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    goto :goto_0

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activePrivateCtrl Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private deactivePrivateCtrl()V
    .locals 4

    .line 926
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    .line 927
    .local v0, "llu":Landroid/car/hardware/llu/CarLluManager;
    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->deactivateAndroidLluControl()V

    .line 928
    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 929
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setActiveMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    goto :goto_0

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deactivePrivateCtrl Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private doMcuEffectUpgrade(I)V
    .locals 6
    .param p1, "value"    # I

    .line 1357
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    if-nez v0, :cond_0

    return-void

    .line 1360
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    .line 1362
    .local v0, "llu":Landroid/car/hardware/llu/CarLluManager;
    packed-switch p1, :pswitch_data_0

    .line 1362
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    :pswitch_0
    goto/16 :goto_3

    .line 1385
    .restart local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    :pswitch_1
    const-string v1, "XpLightlanuageService"

    const-string v2, "doMcuEffectUpgrade Finish"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setLluScriptStRequest(I)V

    .line 1388
    goto/16 :goto_3

    .line 1371
    :pswitch_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->available()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1372
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    iget v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontLeft:I

    if-lez v1, :cond_1

    .line 1373
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    iget v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontIndex:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    iget v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearIndex:I

    .line 1374
    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    iget v2, v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontLeft:I

    if-lez v2, :cond_2

    .line 1375
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    .line 1376
    .local v2, "pos":I
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    .line 1377
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->get()[Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$gfCssnBJI7TKfXb_Jmv7raVYNkY;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$gfCssnBJI7TKfXb_Jmv7raVYNkY;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    .line 1379
    .local v3, "data":[I
    const-string v4, "XpLightlanuageService"

    const-string v5, "doMcuEffectUpgrade Uploading..."

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    array-length v4, v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/car/hardware/llu/CarLluManager;->sendLluScriptData(III[I)V

    .line 1382
    .end local v1    # "index":I
    .end local v2    # "pos":I
    .end local v3    # "data":[I
    goto :goto_3

    .line 1390
    :pswitch_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mListener:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;

    .line 1392
    .local v3, "listener":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    iget v4, v4, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->name:I

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    iget v5, v5, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->mode:I

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;->onUpgradeEffect(II)V

    .line 1393
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;
    goto :goto_2

    .line 1394
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1395
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1395
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    goto :goto_3

    .line 1394
    .restart local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 1364
    :pswitch_4
    const-string v1, "XpLightlanuageService"

    const-string v2, "doMcuEffectUpgrade Start"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->build()Landroid/car/hardware/llu/LluScriptParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setLluScriptParameter(Landroid/car/hardware/llu/LluScriptParameter;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1367
    nop

    .line 1400
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    :cond_4
    :goto_3
    goto :goto_4

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doMcuEffectUpgrade failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private enableAngleMotion(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 640
    nop

    .line 641
    nop

    .line 640
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setHeadLampVeticalAngleMotionSt(I)V

    .line 643
    return-void
.end method

.method private finishLightEffect()V
    .locals 8

    .line 1155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLight:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLight:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 1158
    .local v0, "light":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FINISH effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopDanceMusic()V

    .line 1161
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->releaseAudioFocus()V

    .line 1162
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopPrivateCtrl()V

    .line 1163
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->restoreHeadLight()V

    .line 1164
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setDayLightMode(I)V

    .line 1165
    iget-boolean v1, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->withAngle:Z

    if-eqz v1, :cond_0

    .line 1166
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->enableAngleMotion(Z)V

    .line 1168
    :cond_0
    const/4 v3, 0x3

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->showStatusCallback(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1170
    .end local v0    # "light":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1612
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->sService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    if-nez v0, :cond_1

    .line 1613
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    monitor-enter v0

    .line 1614
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->sService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    if-nez v1, :cond_0

    .line 1615
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->sService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    .line 1617
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1620
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->sService:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    return-object v0
.end method

.method private declared-synchronized getLightEffectById(I)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    .locals 4
    .param p1, "id"    # I

    monitor-enter p0

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLightEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 773
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 774
    .local v2, "light":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    iget v3, v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 775
    monitor-exit p0

    return-object v2

    .line 777
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;>;"
    .end local v2    # "light":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    :cond_0
    goto :goto_0

    .line 779
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 771
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    throw p1
.end method

.method private declared-synchronized getLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mThemeLightEffectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mThemeLightEffectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 762
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLightEffectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLightEffectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 766
    :cond_1
    :try_start_2
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLightEffectByName failed, name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 768
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 757
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    throw p1
.end method

.method private handleBiLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;

    .line 656
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 657
    const-string v0, "P10141"

    const-string v1, "B003"

    invoke-static {v0, v1}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBilog:Lcom/xiaopeng/biutil/BiLog;

    .line 659
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "source"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    const-string v2, "unknown"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBilog:Lcom/xiaopeng/biutil/BiLog;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "endTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "result"

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    const-string v2, "-1"

    goto :goto_1

    :cond_2
    const-string v2, "0"

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBiLog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBilog:Lcom/xiaopeng/biutil/BiLog;

    invoke-virtual {v2}, Lcom/xiaopeng/biutil/BiLog;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBilog:Lcom/xiaopeng/biutil/BiLog;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBilog:Lcom/xiaopeng/biutil/BiLog;

    .line 671
    :cond_3
    :goto_2
    return-void
.end method

.method private handleDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1575
    const-string v0, "*dump-XpLightlanuageService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1577
    if-eqz p2, :cond_8

    .line 1578
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_8

    .line 1579
    aget-object v2, p2, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x33e2887b    # -4.1278996E7f

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    const v5, -0xeea7a5b

    if-eq v4, v5, :cond_1

    const v5, 0x1d55a1d3

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "--stopEffect"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v6

    goto :goto_1

    :cond_1
    const-string v4, "--showEffects"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v0

    goto :goto_1

    :cond_2
    const-string v4, "--playEffect"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v7

    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 1596
    :pswitch_0
    array-length v2, p2

    sub-int/2addr v2, v7

    if-ge v1, v2, :cond_4

    .line 1597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1598
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopEffect(Ljava/lang/String;)V

    goto :goto_4

    .line 1600
    :cond_4
    const-string v2, "stopEffect"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {p0, v7}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopEffect(Z)V

    .line 1603
    goto :goto_4

    .line 1581
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->getLightEffect()Ljava/util/List;

    move-result-object v2

    .line 1583
    .local v2, "effects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showEffects: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    .end local v2    # "effects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    array-length v2, p2

    sub-int/2addr v2, v7

    if-ge v1, v2, :cond_7

    .line 1587
    :try_start_0
    array-length v2, p2

    sub-int/2addr v2, v6

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x2

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    nop

    :cond_5
    move v2, v7

    .line 1588
    .local v2, "count":I
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->playEffect(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 1590
    .local v3, "ret":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playEffect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    const-string v5, " succeed"

    goto :goto_2

    :cond_6
    const-string v5, " failed"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "count":I
    .end local v3    # "ret":Z
    goto :goto_3

    .line 1591
    :catch_0
    move-exception v2

    .line 1592
    :goto_3
    nop

    .line 1578
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1609
    .end local v1    # "i":I
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleFinishEffect(J)V
    .locals 4
    .param p1, "delay"    # J

    .line 743
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 744
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 746
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFinishEffect after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->removeAllPendingMessages(Landroid/os/Handler;)V

    .line 749
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 750
    return-void
.end method

.method private handlePlayEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;J)Z
    .locals 5
    .param p1, "play"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;
    .param p2, "delay"    # J

    .line 715
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->light:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->count:I

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 717
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 718
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 720
    const-string v2, "XpLightlanuageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePlayEffect after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->removeAllPendingMessages(Landroid/os/Handler;)V

    .line 723
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 725
    return v1

    .line 728
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleStopEffect(Ljava/lang/String;ZJ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "restore"    # Z
    .param p3, "delay"    # J

    .line 732
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 733
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 734
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 736
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStopEffect after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms, restore="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->removeAllPendingMessages(Landroid/os/Handler;)V

    .line 739
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 740
    return-void
.end method

.method private hasSdcData(I)Z
    .locals 1
    .param p1, "data"    # I

    .line 460
    packed-switch p1, :pswitch_data_0

    .line 467
    const/4 v0, 0x0

    return v0

    .line 464
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$gfCssnBJI7TKfXb_Jmv7raVYNkY(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$new$4(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1510
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->handleDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1511
    return-void
.end method

.method static synthetic lambda$parseData$0()Ljava/lang/String;
    .locals 1

    .line 444
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$scheduleEffectTask$1(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "task"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "what"    # I
    .param p4, "extra"    # I

    .line 996
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayer encountered error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->reset()V

    .line 999
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->access$2400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    move-result-object v0

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->withAngle:Z

    if-eqz v0, :cond_0

    .line 1000
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->enableAngleMotion(Z)V

    .line 1003
    :cond_0
    const/4 v2, 0x4

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->access$2400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    move-result-object v0

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->access$2400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    move-result-object v0

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->type:Ljava/lang/String;

    const/16 v5, -0x1000

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->showStatusCallback(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1004
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$scheduleEffectTask$2(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p0, "mp"    # Landroid/media/MediaPlayer;

    .line 1006
    const-string v0, "XpLightlanuageService"

    const-string v1, "playDanceMusic completion"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$scheduleEffectTask$3(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "task"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;
    .param p2, "mp"    # Landroid/media/MediaPlayer;

    .line 1008
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->access$2400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->getRunningEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playDanceMusic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->access$1200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V

    .line 1012
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->runEffectTask(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)V

    .line 1013
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    .line 1014
    const-string v0, "persist.sys.light.dancing"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :cond_0
    return-void
.end method

.method private loadThemeLightEffect(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 8
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 1555
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getLightLangDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v0

    .line 1556
    .local v0, "path":Ljava/nio/file/Path;
    if-nez v0, :cond_0

    .line 1557
    return-void

    .line 1559
    :cond_0
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "json"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1560
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1561
    .local v3, "file":Ljava/lang/String;
    const-class v4, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->loadFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 1563
    .local v4, "effect":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    if-eqz v4, :cond_1

    .line 1564
    const-string v5, "XpLightlanuageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load light effect, theme="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", effect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mThemeLightEffectMap:Ljava/util/Map;

    iget-object v6, v4, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "effect":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    :cond_1
    goto :goto_0

    .line 1568
    :cond_2
    return-void
.end method

.method private needPlaySpecialMode(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 969
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needResetPrivateCtrl(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 965
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseAngle(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private parseBaseEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 753
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseData(Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 4
    .param p1, "fdata"    # Ljava/lang/String;
    .param p2, "rdata"    # Ljava/lang/String;
    .param p3, "hasAngle"    # Z

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$xaXESdIZ_ZWONOBoOkGTY8mZk3A;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$xaXESdIZ_ZWONOBoOkGTY8mZk3A;

    invoke-static {v0}, Ljava/util/stream/Stream;->generate(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLength:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 443
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->parseFrontData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    :goto_1
    nop

    .line 446
    .local v0, "sdata":Ljava/lang/String;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private parseExpand(I)I
    .locals 1
    .param p1, "data"    # I

    .line 456
    if-eqz p1, :cond_0

    shr-int/lit8 v0, p1, 0x11

    and-int/lit16 v0, v0, 0x7fff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseFrontData(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "hasAngle"    # Z

    .line 439
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private parseLight(I)I
    .locals 1
    .param p1, "data"    # I

    .line 452
    if-eqz p1, :cond_0

    shr-int/lit8 v0, p1, 0x10

    and-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseTick(I)I
    .locals 1
    .param p1, "data"    # I

    .line 427
    if-eqz p1, :cond_0

    and-int/lit16 v0, p1, 0xff

    goto :goto_0

    :cond_0
    const v0, 0xffff

    :goto_0
    return v0
.end method

.method private parseType(I)I
    .locals 2
    .param p1, "data"    # I

    .line 431
    const/16 v0, 0xff

    if-eqz p1, :cond_0

    shr-int/lit8 v1, p1, 0x8

    and-int/2addr v0, v1

    nop

    :cond_0
    return v0
.end method

.method private playCustomEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;Ljava/lang/String;I)V
    .locals 3
    .param p1, "light"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 1076
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playCustomEffect name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;Ljava/lang/String;I)V

    .line 1079
    .local v0, "task":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->scheduleEffectTask(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)V

    .line 1080
    return-void
.end method

.method private playLightEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;)V
    .locals 7
    .param p1, "play"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    .line 1205
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->light:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 1206
    .local v0, "light":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLight:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    .line 1207
    .local v1, "turnOff":Z
    iget v2, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->count:I

    const/4 v3, 0x1

    if-lez v2, :cond_0

    iget v2, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->count:I

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 1209
    .local v2, "count":I
    :goto_0
    const-string v4, "XpLightlanuageService"

    const-string v5, "playLightEffect"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iget-boolean v4, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->repeat:Z

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 1212
    const-string v4, "any"

    iget-object v6, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->source:Ljava/lang/String;

    if-nez v6, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    invoke-direct {p0, v4, v5, v5, v6}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopLightEffect(Ljava/lang/String;ZZZ)V

    .line 1215
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLight:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1216
    iget-object v3, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->owner:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->startLightEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;ZLjava/lang/String;)V

    goto :goto_3

    .line 1217
    :cond_3
    iget-boolean v4, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->rhythm:Z

    if-nez v4, :cond_5

    .line 1218
    iget-object v4, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->source:Ljava/lang/String;

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    invoke-direct {p0, v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->repeatLightEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;Z)V

    .line 1221
    :cond_5
    :goto_3
    iget-boolean v3, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->rhythm:Z

    if-eqz v3, :cond_6

    .line 1222
    iget v3, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->ratio:F

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->playRhythmEffect(F)V

    goto :goto_4

    .line 1223
    :cond_6
    iget v3, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->special:I

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->needPlaySpecialMode(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1224
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->playSpecialEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;I)V

    goto :goto_4

    .line 1226
    :cond_7
    iget-object v3, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->source:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->playCustomEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;Ljava/lang/String;I)V

    .line 1228
    :goto_4
    return-void
.end method

.method private playRhythmEffect(F)V
    .locals 7
    .param p1, "ratio"    # F

    .line 1107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRhythmEffect:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->seek(F)V

    .line 1109
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1110
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;F)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRhythmEffect:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->handleStopEffect(Ljava/lang/String;ZJ)V

    .line 1125
    return-void
.end method

.method private playSpecialEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;I)V
    .locals 9
    .param p1, "light"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    .param p2, "count"    # I

    .line 1084
    :try_start_0
    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->special:I

    .line 1085
    .local v0, "mode":I
    iget v1, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->duration:I

    move v8, v1

    .line 1087
    .local v8, "duration":I
    sget-boolean v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasDictType:Z

    if-nez v1, :cond_0

    .line 1088
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playSpecialEffect, mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_llu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/llu/CarLluManager;

    .line 1093
    .local v1, "llu":Landroid/car/hardware/llu/CarLluManager;
    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluModeCtrl(IIIIII)V

    .line 1096
    .end local v1    # "llu":Landroid/car/hardware/llu/CarLluManager;
    :cond_0
    if-nez p2, :cond_1

    .line 1097
    int-to-long v1, v8

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->handleFinishEffect(J)V

    goto :goto_0

    .line 1099
    :cond_1
    new-instance v7, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;Ljava/lang/String;IZLjava/lang/String;)V

    add-int/lit16 v1, v8, 0x7d0

    int-to-long v1, v1

    invoke-direct {p0, v7, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->handlePlayEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    .end local v0    # "mode":I
    .end local v8    # "duration":I
    :goto_0
    goto :goto_1

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playSpecialEffect failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private releaseAudioFocus()V
    .locals 3

    .line 1034
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioFocus:Z

    if-eqz v0, :cond_0

    .line 1035
    const-string v0, "XpLightlanuageService"

    const-string v1, "releaseAudioFocus"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1038
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/audioConfig/AudioConfig;->setBanVolumeChangeMode(II)V

    .line 1041
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioFocus:Z

    .line 1043
    :cond_0
    return-void
.end method

.method private removeAllPendingMessages(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 709
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 710
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    return-void
.end method

.method private repeatLightEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;Z)V
    .locals 7
    .param p1, "light"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    .param p2, "notify"    # Z

    .line 1128
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REPEAT effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->reset:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->needResetPrivateCtrl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->resetPrivateCtrl()V

    .line 1134
    :cond_0
    if-eqz p2, :cond_1

    .line 1135
    const/4 v2, 0x5

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->type:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->showStatusCallback(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1137
    :cond_1
    return-void
.end method

.method private resetLightlanuageStatus()V
    .locals 2

    .line 1430
    const-string v0, "XpLightlanuageService"

    const-string v1, "resetLightlanuageStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopPrivateCtrl()V

    .line 1433
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->restoreHeadLight()V

    .line 1434
    return-void
.end method

.method private resetPrivateCtrl()V
    .locals 4

    .line 955
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasDictType:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/Pair;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, v1, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setPrivateCtrl(ZLandroid/util/Pair;Z)V

    .line 956
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->activePrivateCtrl()V

    .line 957
    return-void
.end method

.method private restoreHeadLight()V
    .locals 2

    .line 951
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getInstance()Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->setHeadLight(Z)V

    .line 952
    return-void
.end method

.method private runEffectTask(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)V
    .locals 8
    .param p1, "task"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;

    .line 973
    if-nez p1, :cond_0

    return-void

    .line 975
    :cond_0
    const-string v0, "XpLightlanuageService"

    const-string v1, "runEffectTask"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 978
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 980
    :cond_1
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 981
    return-void
.end method

.method private scheduleEffectTask(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)V
    .locals 4
    .param p1, "task"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;

    .line 984
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->access$1200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 985
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->runEffectTask(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)V

    .line 986
    return-void

    .line 990
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 991
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 993
    .local v0, "player":Landroid/media/MediaPlayer;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 994
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;->access$1200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 995
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$DGzUBVZJZum9r8u7KE2oR6Zw1lI;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$DGzUBVZJZum9r8u7KE2oR6Zw1lI;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1006
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$UjNpNThaL830SfoOhalEUKA0ITE;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$UjNpNThaL830SfoOhalEUKA0ITE;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1007
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$1Br1MV9L5JIaJgNwRgiGnJFjZmg;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$1Br1MV9L5JIaJgNwRgiGnJFjZmg;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1017
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1018
    .end local v0    # "player":Landroid/media/MediaPlayer;
    goto :goto_0

    .line 1019
    :cond_1
    const-string v0, "XpLightlanuageService"

    const-string v1, "replayDanceMusic ..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1022
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1023
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1025
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1026
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->runEffectTask(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    goto :goto_1

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playDanceMusic failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private setActiveMode(Z)V
    .locals 8
    .param p1, "active"    # Z

    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    .line 895
    .local v0, "llu":Landroid/car/hardware/llu/CarLluManager;
    sget-boolean v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasDictType:Z

    if-eqz v1, :cond_0

    .line 896
    nop

    .line 897
    nop

    .line 896
    invoke-virtual {v0, p1}, Landroid/car/hardware/llu/CarLluManager;->setLluSelfActive(I)V

    goto :goto_2

    .line 900
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 901
    :goto_0
    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 902
    .local v2, "mode":I
    :goto_1
    move-object v1, v0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-virtual/range {v1 .. v7}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluModeCtrl(IIIIII)V

    .line 904
    .end local v2    # "mode":I
    :goto_2
    const-wide/16 v1, 0x1e

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    goto :goto_3

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActiveMode Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private setAngleCtrl(Landroid/util/Pair;)V
    .locals 4
    .param p1, "data"    # Landroid/util/Pair;

    .line 646
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->parseAngle(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 648
    .local v0, "angles":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLeftAngle:I

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRightAngle:I

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 649
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLeftAngle:I

    .line 650
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRightAngle:I

    .line 651
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLeftAngle:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRightAngle:I

    aput v3, v1, v2

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setHeadLampVeticalAngleReq([I)V

    .line 653
    :cond_1
    return-void
.end method

.method private setBrakeLightOnOff(I)V
    .locals 4
    .param p1, "data"    # I

    .line 557
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 558
    :cond_0
    const/4 v0, 0x1

    .line 560
    .local v0, "type":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBrakeLight:I

    if-eq p1, v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 562
    .local v1, "vcu":Landroid/car/hardware/vcu/CarVcuManager;
    invoke-virtual {v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setBrakeLightOnOff(I)V

    .line 563
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mBrakeLight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v0    # "type":I
    .end local v1    # "vcu":Landroid/car/hardware/vcu/CarVcuManager;
    :cond_1
    goto :goto_1

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBrakeLightOnOff failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private setDayLightMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 937
    :try_start_0
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDayLightMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 940
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setDayLightMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v0    # "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    goto :goto_0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDayLightMode Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setDictExpandCtrl(I)V
    .locals 1
    .param p1, "data"    # I

    .line 524
    and-int/lit8 v0, p1, 0x3

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setLeftSdcAutoControl(I)V

    .line 525
    shr-int/lit8 v0, p1, 0x2

    and-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setRightSdcAutoControl(I)V

    .line 526
    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setWindowsMovePositions(I)V

    .line 527
    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setRearViewMirror(I)V

    .line 528
    return-void
.end method

.method private setDictPrivateCtrl(ZIIII)V
    .locals 7
    .param p1, "start"    # Z
    .param p2, "fType"    # I
    .param p3, "fTick"    # I
    .param p4, "rType"    # I
    .param p5, "rTick"    # I

    .line 584
    :try_start_0
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDictPrivateCtrl, start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fTick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rTick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/car/hardware/llu/CarLluManager;

    .line 589
    .local v1, "llu":Landroid/car/hardware/llu/CarLluManager;
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/car/hardware/llu/CarLluManager;->setLluPrivateCtrl(ZIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .end local v1    # "llu":Landroid/car/hardware/llu/CarLluManager;
    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDictPrivateCtrl Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setExpandCtrl(Landroid/util/Pair;)V
    .locals 4
    .param p1, "data"    # Landroid/util/Pair;

    .line 531
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasDictType:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->parseExpand(I)I

    move-result v0

    .line 534
    .local v0, "expand":I
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExpandCtrl, expand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setDictExpandCtrl(I)V

    .line 538
    .end local v0    # "expand":I
    :cond_0
    return-void
.end method

.method private setHeadLampVeticalAngleMotionSt(I)V
    .locals 5
    .param p1, "status"    # I

    .line 618
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 620
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHeadLampVeticalAngleMotionSt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setHeadLampVeticalAngleMotionSt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    goto :goto_0

    .line 623
    :catch_0
    move-exception v1

    .line 624
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpLightlanuageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHeadLampVeticalAngleMotionSt failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setHeadLampVeticalAngleReq([I)V
    .locals 5
    .param p1, "angles"    # [I

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 631
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHeadLampVeticalAngleReq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setHeadLampVeticalAngleReq([I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    goto :goto_0

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpLightlanuageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHeadLampVeticalAngleReq failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setHighBeamOnOff(I)V
    .locals 4
    .param p1, "data"    # I

    .line 542
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 543
    :cond_0
    const/4 v0, 0x2

    .line 545
    .local v0, "type":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHighBeamLight:I

    if-eq p1, v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 547
    .local v1, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-virtual {v1, v0}, Landroid/car/hardware/bcm/CarBcmManager;->setHighBeamOnOff(I)V

    .line 548
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mHighBeamLight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v0    # "type":I
    .end local v1    # "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    :cond_1
    goto :goto_1

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHighBeamOnOff failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private setInfPrivateCtrl([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 597
    :try_start_0
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfPrivateCtrl, data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    .line 600
    .local v0, "llu":Landroid/car/hardware/llu/CarLluManager;
    invoke-virtual {v0, p1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLLuSelfControlData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInfPrivateCtrl Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setLeftSdcAutoControl(I)V
    .locals 4
    .param p1, "data"    # I

    .line 472
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasSdcData(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLeftSdc:I

    if-eq p1, v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 474
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setLeftSdcAutoControl(I)V

    .line 475
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLeftSdc:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v0    # "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    :cond_0
    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLeftSdcAutoControl failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setLightCtrl(Landroid/util/Pair;)V
    .locals 5
    .param p1, "data"    # Landroid/util/Pair;

    .line 571
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasDictType:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->parseLight(I)I

    move-result v0

    .line 573
    .local v0, "fLight":I
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->parseLight(I)I

    move-result v1

    .line 575
    .local v1, "rLight":I
    const-string v2, "XpLightlanuageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLightCtrl, fLight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rLight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setHighBeamOnOff(I)V

    .line 578
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setBrakeLightOnOff(I)V

    .line 580
    .end local v0    # "fLight":I
    .end local v1    # "rLight":I
    :cond_0
    return-void
.end method

.method private setLluFindCarSwitch(Z)V
    .locals 4
    .param p1, "active"    # Z

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    .line 796
    .local v0, "llu":Landroid/car/hardware/llu/CarLluManager;
    if-eqz p1, :cond_0

    .line 797
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setLluFindCarSwitch(I)V

    .line 798
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setLluFindCarSwitch(I)V

    goto :goto_0

    .line 800
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setLluFindCarSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    :goto_0
    goto :goto_1

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLluFindCarSwitch Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private setLluScriptStRequest(II)V
    .locals 6
    .param p1, "name"    # I
    .param p2, "mode"    # I

    .line 876
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    if-nez v0, :cond_0

    .line 877
    shl-int/lit8 v0, p2, 0x10

    and-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    .line 878
    .local v0, "id":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->getLightEffectById(I)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    move-result-object v1

    .line 879
    .local v1, "light":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    if-eqz v1, :cond_0

    .line 880
    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    invoke-direct {v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mUploader:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;

    .line 882
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v3, "xp_llu"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/llu/CarLluManager;

    .line 883
    .local v2, "llu":Landroid/car/hardware/llu/CarLluManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/car/hardware/llu/CarLluManager;->setLluScriptStRequest(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    .end local v2    # "llu":Landroid/car/hardware/llu/CarLluManager;
    goto :goto_0

    .line 884
    :catch_0
    move-exception v2

    .line 885
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "XpLightlanuageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLluScriptStRequest failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    .end local v0    # "id":I
    .end local v1    # "light":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setMcuLLuLockUnlockMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    .line 786
    .local v0, "llu":Landroid/car/hardware/llu/CarLluManager;
    invoke-virtual {v0, p1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLLuLockUnlockMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    goto :goto_0

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMcuLLuLockUnlockMode Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setMcuLluAcChargingSwitch(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 838
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setMcuLluChargingSwitch(ZI)V

    .line 839
    return-void
.end method

.method private setMcuLluChargingSwitch(ZI)V
    .locals 4
    .param p1, "active"    # Z
    .param p2, "type"    # I

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    .line 826
    .local v0, "llu":Landroid/car/hardware/llu/CarLluManager;
    if-eqz p1, :cond_0

    .line 827
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluChargingSwitch(I)V

    .line 828
    invoke-virtual {v0, p2}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluChargingSwitch(I)V

    goto :goto_0

    .line 830
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluChargingSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    :goto_0
    goto :goto_1

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMcuLluWakeWaitSwitch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private setMcuLluDcChargingSwitch(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 842
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setMcuLluChargingSwitch(ZI)V

    .line 843
    return-void
.end method

.method private setMcuLluPhotoSwitch(Z)V
    .locals 4
    .param p1, "active"    # Z

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    .line 864
    .local v0, "llu":Landroid/car/hardware/llu/CarLluManager;
    if-eqz p1, :cond_0

    .line 865
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluPhotoSwitch(I)V

    .line 866
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluPhotoSwitch(I)V

    goto :goto_0

    .line 868
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluPhotoSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    :goto_0
    goto :goto_1

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMcuLluPhotoSwitch Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private setMcuLluSleepSwitch(Z)V
    .locals 4
    .param p1, "active"    # Z

    .line 847
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    .line 849
    .local v0, "llu":Landroid/car/hardware/llu/CarLluManager;
    if-eqz p1, :cond_0

    .line 850
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluSleepSwitch(I)V

    .line 851
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluSleepSwitch(I)V

    goto :goto_0

    .line 853
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluSleepSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    :goto_0
    goto :goto_1

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMcuLluSleepSwitch Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private setMcuLluWakeWaitSwitch(Z)V
    .locals 4
    .param p1, "active"    # Z

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_llu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    .line 811
    .local v0, "llu":Landroid/car/hardware/llu/CarLluManager;
    if-eqz p1, :cond_0

    .line 812
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluWakeWaitSwitch(I)V

    .line 813
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluWakeWaitSwitch(I)V

    goto :goto_0

    .line 815
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluWakeWaitSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    .end local v0    # "llu":Landroid/car/hardware/llu/CarLluManager;
    :goto_0
    goto :goto_1

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMcuLluWakeWaitSwitch Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private setPrivateCtrl(ZLandroid/util/Pair;Z)V
    .locals 7
    .param p1, "start"    # Z
    .param p2, "data"    # Landroid/util/Pair;
    .param p3, "hasAngle"    # Z

    .line 607
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasDictType:Z

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 609
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->parseType(I)I

    move-result v3

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->parseTick(I)I

    move-result v4

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 610
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->parseType(I)I

    move-result v5

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->parseTick(I)I

    move-result v6

    .line 608
    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setDictPrivateCtrl(ZIIII)V

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->parseData(Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setInfPrivateCtrl([B)V

    .line 615
    :goto_0
    return-void
.end method

.method private setRearViewMirror(I)V
    .locals 4
    .param p1, "data"    # I

    .line 510
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 511
    :cond_0
    const/4 v0, 0x1

    .line 513
    .local v0, "type":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mMirrorView:I

    if-eq p1, v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 515
    .local v1, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-virtual {v1, v0}, Landroid/car/hardware/bcm/CarBcmManager;->setRearViewMirror(I)V

    .line 516
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mMirrorView:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v0    # "type":I
    .end local v1    # "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    :cond_1
    goto :goto_1

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRearViewMirror failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private setRightSdcAutoControl(I)V
    .locals 4
    .param p1, "data"    # I

    .line 484
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasSdcData(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRightSdc:I

    if-eq p1, v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 486
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setRightSdcAutoControl(I)V

    .line 487
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRightSdc:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v0    # "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    :cond_0
    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRightSdcAutoControl failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setVolume(FF)V
    .locals 4
    .param p1, "leftVol"    # F
    .param p2, "rightVol"    # F

    .line 1064
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1066
    :try_start_0
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    goto :goto_0

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolume failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setWindowsMovePositions(I)V
    .locals 5
    .param p1, "data"    # I

    .line 496
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 498
    .local v0, "pos":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mWindowPos:I

    if-eq v0, v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 500
    .local v1, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    int-to-float v2, v0

    int-to-float v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/car/hardware/bcm/CarBcmManager;->setWindowsMovePositions(FFFF)V

    .line 501
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mWindowPos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v0    # "pos":I
    .end local v1    # "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    :cond_1
    goto :goto_1

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWindowsMovePositions failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private showStatusCallback(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "event"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "errCode"    # I
    .param p5, "owner"    # Ljava/lang/String;

    .line 676
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 678
    :cond_0
    invoke-direct {p0, p1, p2, p5}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->handleBiLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 681
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 682
    :try_start_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->parseBaseEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "baseName":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;

    .line 685
    .local v3, "listener":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;
    packed-switch p1, :pswitch_data_0

    .line 700
    const-string v4, "XpLightlanuageService"

    goto :goto_1

    .line 697
    :pswitch_0
    invoke-interface {v3, v1, p4}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;->onErrorEffect(Ljava/lang/String;I)V

    .line 698
    goto :goto_2

    .line 694
    :pswitch_1
    invoke-interface {v3, v1, p3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;->onFinishEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    goto :goto_2

    .line 691
    :pswitch_2
    invoke-interface {v3, v1, p3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;->onStopEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    goto :goto_2

    .line 688
    :pswitch_3
    invoke-interface {v3, v1, p3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;->onStartEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    goto :goto_2

    .line 700
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showStatusCallback, invalid event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;
    :goto_2
    goto :goto_0

    .line 704
    .end local v1    # "baseName":Ljava/lang/String;
    :cond_1
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 706
    :cond_2
    :goto_3
    return-void

    .line 676
    :cond_3
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private startLightEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;ZLjava/lang/String;)V
    .locals 7
    .param p1, "light"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    .param p2, "turnOff"    # Z
    .param p3, "owner"    # Ljava/lang/String;

    .line 1140
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", turnOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    if-eqz p2, :cond_0

    .line 1143
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setDayLightMode(I)V

    .line 1144
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->turnoffHeadLight()V

    .line 1146
    :cond_0
    iget-boolean v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->withAngle:Z

    if-eqz v0, :cond_1

    .line 1147
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->enableAngleMotion(Z)V

    .line 1149
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->resetPrivateCtrl()V

    .line 1150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLight:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->push(Ljava/lang/Object;)V

    .line 1151
    const/4 v2, 0x1

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->type:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->showStatusCallback(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1152
    return-void
.end method

.method private stopDanceMusic()V
    .locals 4

    .line 1046
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 1049
    :cond_0
    :try_start_0
    const-string v0, "XpLightlanuageService"

    const-string v1, "stopDanceMusic"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    goto :goto_0

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopDanceMusic failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "persist.sys.light.dancing"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    return-void
.end method

.method private stopLightEffect(Ljava/lang/String;ZZZ)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "restore"    # Z
    .param p3, "turnOn"    # Z
    .param p4, "release"    # Z

    .line 1173
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLight:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 1175
    .local v0, "lightEffect":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    if-eqz v0, :cond_7

    const-string v1, "any"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1176
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLight:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 1178
    .local v1, "light":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    const-string v2, "XpLightlanuageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string v4, "STOP"

    goto :goto_0

    :cond_1
    const-string v4, "INTERRUPT"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1181
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1183
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopDanceMusic()V

    .line 1185
    if-eqz p4, :cond_3

    .line 1186
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->releaseAudioFocus()V

    .line 1188
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopPrivateCtrl()V

    .line 1190
    if-eqz p2, :cond_4

    .line 1191
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->restoreHeadLight()V

    .line 1193
    :cond_4
    if-eqz p3, :cond_5

    .line 1194
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setDayLightMode(I)V

    .line 1196
    :cond_5
    iget-boolean v2, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->withAngle:Z

    if-eqz v2, :cond_6

    .line 1197
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->enableAngleMotion(Z)V

    .line 1200
    :cond_6
    const/4 v4, 0x2

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    iget-object v6, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->type:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->showStatusCallback(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1202
    .end local v1    # "light":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    :cond_7
    return-void
.end method

.method private stopPrivateCtrl()V
    .locals 4

    .line 960
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->hasDictType:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/Pair;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, v1, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setPrivateCtrl(ZLandroid/util/Pair;Z)V

    .line 961
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->deactivePrivateCtrl()V

    .line 962
    return-void
.end method

.method private turnoffHeadLight()V
    .locals 2

    .line 947
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getInstance()Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->setHeadLight(Z)V

    .line 948
    return-void
.end method

.method private unloadThemeLightEffect()V
    .locals 1

    .line 1571
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mThemeLightEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1572
    return-void
.end method


# virtual methods
.method public declared-synchronized clearLightEffect()V
    .locals 1

    monitor-enter p0

    .line 1241
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLightEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    monitor-exit p0

    return-void

    .line 1240
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    throw v0
.end method

.method public declared-synchronized getLightEffect()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1245
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLightEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1247
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1244
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    throw v0
.end method

.method public getRunningEffect()Ljava/lang/String;
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLight:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 1282
    .local v0, "lightEffect":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public hasExpand()Z
    .locals 3

    .line 1306
    const-string v0, "persist.sys.xiaopeng.xui.ExpandControl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method public isDanceEffectRunning()Z
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLight:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isLightEffectLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 1251
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLightEffectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    throw p1
.end method

.method public declared-synchronized loadLightEffect(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 1231
    :try_start_0
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->loadFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 1233
    .local v0, "effect":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLightEffectMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1234
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLightEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mLightEffectMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    :cond_0
    monitor-exit p0

    return-void

    .line 1230
    .end local v0    # "effect":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    throw p1
.end method

.method public playEffect(F)Z
    .locals 4
    .param p1, "ratio"    # F

    .line 1264
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->getRunningEffect()Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "effect":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRhythmPlay:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    if-eqz v1, :cond_1

    .line 1267
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRhythmPlay:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->light:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRhythmPlay:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    .line 1268
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->setRatio(F)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->handlePlayEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;J)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1266
    :goto_0
    return v1
.end method

.method public playEffect(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 1255
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->getLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    move-result-object v6

    .line 1256
    .local v6, "light":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1257
    .local v7, "pid":I
    invoke-static {v7}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 1259
    .local v8, "pkg":Ljava/lang/String;
    if-eqz v6, :cond_0

    new-instance v9, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, v6

    move-object v2, p2

    move v3, p3

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;Ljava/lang/String;IZLjava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1260
    invoke-direct {p0, v9, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->handlePlayEffect(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1259
    :goto_0
    return v0
.end method

.method public requestAudioFocus()Z
    .locals 4

    .line 1290
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioFocus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    invoke-virtual {v0, v2, v3}, Landroid/media/audioConfig/AudioConfig;->setBanVolumeChangeMode(II)V

    .line 1297
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioFocus:Z

    .line 1300
    :cond_0
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAudioFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioFocus:Z

    if-eqz v2, :cond_1

    const-string v2, "succeed"

    goto :goto_0

    :cond_1
    const-string v2, "failed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAudioFocus:Z

    return v0
.end method

.method public setAvmListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$AvmListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$AvmListener;

    .line 1424
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvmListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "invalid"

    goto :goto_0

    :cond_0
    const-string v2, "ok"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mAvmListener:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$AvmListener;

    .line 1427
    return-void
.end method

.method public setLightEffectListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;

    .line 1414
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightEffectListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "invalid"

    goto :goto_0

    :cond_0
    const-string v2, "ok"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    if-nez p1, :cond_1

    return-void

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 1419
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1420
    monitor-exit v0

    .line 1421
    return-void

    .line 1420
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMcuEffect(II)V
    .locals 4
    .param p1, "name"    # I
    .param p2, "mode"    # I

    .line 1323
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1325
    .local v0, "active":Z
    :goto_0
    const-string v1, "XpLightlanuageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMcuEffect, name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    sparse-switch p1, :sswitch_data_0

    .line 1352
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setLluScriptStRequest(II)V

    goto :goto_1

    .line 1349
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setMcuLLuLockUnlockMode(I)V

    .line 1350
    goto :goto_1

    .line 1347
    :sswitch_1
    goto :goto_1

    .line 1344
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setMcuLluPhotoSwitch(Z)V

    .line 1345
    goto :goto_1

    .line 1338
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setMcuLluDcChargingSwitch(Z)V

    .line 1339
    goto :goto_1

    .line 1335
    :sswitch_4
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setMcuLluAcChargingSwitch(Z)V

    .line 1336
    goto :goto_1

    .line 1341
    :sswitch_5
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setMcuLluSleepSwitch(Z)V

    .line 1342
    goto :goto_1

    .line 1332
    :sswitch_6
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setMcuLluWakeWaitSwitch(Z)V

    .line 1333
    goto :goto_1

    .line 1329
    :sswitch_7
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setLluFindCarSwitch(Z)V

    .line 1330
    nop

    .line 1354
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public setRhythmEffect(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1310
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->getLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    move-result-object v0

    .line 1311
    .local v0, "light":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1312
    .local v1, "pid":I
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 1314
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRhythmEffect:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRhythmEffect:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1315
    :cond_0
    const-string v3, "XpLightlanuageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRhythmEffect, name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    invoke-direct {v3, v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRhythmPlay:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    .line 1318
    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;

    invoke-direct {v3, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;-><init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;)V

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mRhythmEffect:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$RhythmEffect;

    .line 1320
    :cond_1
    return-void
.end method

.method public stopEffect(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1276
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->handleStopEffect(Ljava/lang/String;ZJ)V

    .line 1277
    return-void
.end method

.method public stopEffect(Z)V
    .locals 3
    .param p1, "restore"    # Z

    .line 1272
    const-string v0, "any"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->handleStopEffect(Ljava/lang/String;ZJ)V

    .line 1273
    return-void
.end method

.method public unsetLightEffectListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;

    .line 1404
    const-string v0, "XpLightlanuageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsetLightEffectListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "invalid"

    goto :goto_0

    :cond_0
    const-string v2, "ok"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    if-nez p1, :cond_1

    return-void

    .line 1408
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 1409
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->mListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1410
    monitor-exit v0

    .line 1411
    return-void

    .line 1410
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
