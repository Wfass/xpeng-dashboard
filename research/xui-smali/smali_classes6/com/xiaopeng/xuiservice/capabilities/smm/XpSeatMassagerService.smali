.class public Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
.super Ljava/lang/Object;
.source "XpSeatMassagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiVibrate;,
        Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;,
        Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;,
        Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;,
        Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;,
        Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;,
        Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;,
        Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;,
        Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Intensity;,
        Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$MapIntensity;,
        Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;
    }
.end annotation


# static fields
.field private static final CFG_INTENSITY:Ljava/lang/String; = "/system/etc/xuiservice/svm/intensity.json"

.field private static final EAGAIN:I = 0x5

.field private static final EBUSY:I = 0x4

.field private static final EEXIST:I = 0x6

.field private static final EFBIG:I = 0x7

.field private static final EFFECT:I = 0x2

.field private static final EINVAL:I = 0x2

.field private static final EIO:I = 0x3

.field private static final EPERM:I = 0x1

.field private static final ERROR:I = 0x8

.field private static final INTENSITY:I = 0x3

.field private static final INTENSITY_SMM:I = 0x3

.field private static final INTENSITY_SVM:I = 0x5

.field private static final LOAD:I = 0x7

.field private static final MAX_PATTERN:I = 0x1

.field private static final MAX_POSITION:I = 0x2

.field private static final MSG_RHYTHM_ENABLE:I = 0x7

.field private static final MSG_RHYTHM_SET_INTENSITY:I = 0x8

.field private static final MSG_RHYTHM_SET_PATTERN:I = 0x9

.field private static final MSG_SMM_SET_EFFECT:I = 0x2

.field private static final MSG_SMM_SET_INTENSITY:I = 0x3

.field private static final MSG_SMM_START:I = 0x0

.field private static final MSG_SMM_STOP:I = 0x1

.field private static final MSG_SVM_FINISH:I = 0x5

.field private static final MSG_SVM_SET_INTENSITY:I = 0x6

.field private static final MSG_SVM_START:I = 0x4

.field private static final NR_SMM:I = 0x4

.field private static final NR_SVM:I = 0x2

.field private static final NR_UNIT:I = 0x2

.field private static final PHY:Ljava/lang/String; = "physicalButton"

.field private static final RHYTHM_INTENSITY:I = 0x5

.field private static final RHYTHM_PATTERN:I = 0x6

.field private static final RHYTHM_STATUS:I = 0x4

.field private static final SMM_EFFECT:Ljava/lang/String; = "MassagerEffect"

.field private static final SMM_INTENSITY:Ljava/lang/String; = "SeatMassagerIntensity"

.field private static final SR_ENABLE:Ljava/lang/String; = "SeatRhythmEnable"

.field private static final SR_INTENSITY:Ljava/lang/String; = "SeatRhythmIntensity"

.field private static final SR_PATTERN:Ljava/lang/String; = "SeatRhythmPattern"

.field private static final START:I = 0x0

.field private static final STOP:I = 0x1

.field private static final SVM_INTENSITY:Ljava/lang/String; = "SeatVibrateIntensity"

.field private static final TAG:Ljava/lang/String; = "XpSeatMassagerService"

.field private static final TICK_PERIOD:I = 0x1

.field private static hasInit:Z

.field private static hasRhythm:Z

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mBiMassagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;",
            ">;"
        }
    .end annotation
.end field

.field private static mBiRhythmMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;",
            ">;"
        }
    .end annotation
.end field

.field private static mBiVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiVibrate;

.field private static mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

.field private static mEffectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;",
            ">;"
        }
    .end annotation
.end field

.field private static mIntensity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mIntensityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mIntensitysMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mLockMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mMapIntensity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static mModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMsmCallback:Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

.field private static mRhythmIntensityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mRhythmPattern:Ljava/lang/String;

.field private static mSignalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mSoundLoadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSoundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mSoundPool:Landroid/media/SoundPool;

.field private static mStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mTaskLockMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

.field private static sService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mListener:Ljava/util/List;

    .line 114
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundMap:Ljava/util/Map;

    .line 115
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundLoadMap:Ljava/util/Map;

    .line 116
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mEffectMap:Ljava/util/Map;

    .line 117
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mModeMap:Ljava/util/Map;

    .line 118
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mIntensityMap:Ljava/util/Map;

    .line 119
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    .line 120
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mStatusMap:Ljava/util/Map;

    .line 121
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mMapIntensity:Ljava/util/Map;

    .line 122
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmIntensityMap:Ljava/util/Map;

    .line 123
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    .line 124
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskLockMap:Ljava/util/Map;

    .line 125
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiMassagerMap:Ljava/util/Map;

    .line 126
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiRhythmMap:Ljava/util/Map;

    .line 127
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mIntensitysMap:Ljava/util/Map;

    .line 128
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSignalMap:Ljava/util/Map;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mIntensity:Ljava/util/List;

    .line 130
    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundPool:Landroid/media/SoundPool;

    .line 131
    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 133
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasRhythm:Z

    .line 134
    sput-boolean v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasInit:Z

    .line 135
    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    .line 136
    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiVibrate;

    .line 137
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    .line 138
    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mMsmCallback:Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 141
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    .line 1975
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->registerSignalMapSeatIds()V

    .line 1976
    const-string v0, "/system/etc/xuiservice/svm/intensity.json"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->loadVibrateIntensity(Ljava/lang/String;)V

    .line 1977
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->addMsmManagerCallback()V

    .line 1979
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$3;-><init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V

    .line 1992
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1993
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->initRhythmEnableAndIntensity()V

    .line 1994
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->initSoundPool()V

    .line 1996
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XpSeatMassagerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1997
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1999
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;-><init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    .line 2046
    const-string v0, "seatMassager"

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$x5Se1ynAVWiLSSPnDs2hlwCrF5Y;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$x5Se1ynAVWiLSSPnDs2hlwCrF5Y;-><init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 2049
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderMassagerIntensity(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100()Ljava/util/Map;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mStatusMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/Map;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasSupportMassager(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSignalMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/util/List;

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendStopMassager(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderMassagerEffect(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getEffect(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Ljava/util/Map;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mModeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerEffect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->stopDriverSeatMassager(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getDriverSeatMassagerIntensity(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendStartMassager(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendSetMassagerEffect(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSignalIntensity(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendSetMassagerIntensity(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->initMassagerStatus()V

    return-void
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 58
    sput-boolean p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasInit:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->handleStartMassager(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/util/List;

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->handleStopMassager(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->handleSetMassagerEffect(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;IILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showMassagerEvent(IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->handleSetMassagerIntensity(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->handleDoVibrate(Ljava/util/List;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->handleDoneVibrate()V

    return-void
.end method

.method static synthetic access$3300(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->handleSetVibrateIntensity(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->handleSetRhythmEnable(Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->handleSetRhythmIntensity(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->handleSetRhythmPattern(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatMassagerMode(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatMassagerIntensity(II)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskLockMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Map;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiMassagerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/Map;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mIntensitysMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/Map;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundLoadMap:Ljava/util/Map;

    return-object v0
.end method

.method private addMsmManagerCallback()V
    .locals 2

    .line 1875
    const-string v0, "XpSeatMassagerService"

    const-string v1, "addMsmManagerCallback"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mMsmCallback:Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    .line 1971
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mMsmCallback:Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMsmManagerListener(Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;)V

    .line 1972
    return-void
.end method

.method private checkId(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "range"    # I

    .line 503
    if-ltz p1, :cond_0

    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkIds(Ljava/util/List;I)Z
    .locals 1
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 519
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkId(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkId(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkIntensity(II)Z
    .locals 1
    .param p1, "intensity"    # I
    .param p2, "range"    # I

    .line 507
    if-lez p1, :cond_0

    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkMassagerEffect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 553
    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mEffectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkMassagerId(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 537
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkId(II)Z

    move-result v0

    return v0
.end method

.method private checkMassagerIds(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 561
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkIds(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method private checkMassagerIntensity(I)Z
    .locals 1
    .param p1, "intensity"    # I

    .line 545
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkIntensity(II)Z

    move-result v0

    return v0
.end method

.method private checkMassagerSeats(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;)Z"
        }
    .end annotation

    .line 569
    .local p1, "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkSeats(Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method private checkPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 515
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkRhythmPattern(I)Z
    .locals 1
    .param p1, "pattern"    # I

    .line 511
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkSeats(Ljava/util/List;II)Z
    .locals 3
    .param p2, "id"    # I
    .param p3, "intensity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;II)Z"
        }
    .end annotation

    .line 523
    .local p1, "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 525
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    .line 528
    .local v1, "seat":Lcom/xiaopeng/xuimanager/seatmassager/Seat;
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->getId()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkId(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->getIntensity()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkIntensity(II)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 531
    .end local v1    # "seat":Lcom/xiaopeng/xuimanager/seatmassager/Seat;
    :cond_0
    goto :goto_0

    .line 529
    .restart local v1    # "seat":Lcom/xiaopeng/xuimanager/seatmassager/Seat;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 533
    .end local v1    # "seat":Lcom/xiaopeng/xuimanager/seatmassager/Seat;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private checkVibrateEffect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 557
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "background"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private checkVibrateId(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 541
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkId(II)Z

    move-result v0

    return v0
.end method

.method private checkVibrateIds(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 565
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkIds(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method private checkVibrateIntensity(I)Z
    .locals 1
    .param p1, "intensity"    # I

    .line 549
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkIntensity(II)Z

    move-result v0

    return v0
.end method

.method private checkVibrateSeats(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;)Z"
        }
    .end annotation

    .line 573
    .local p1, "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    const/4 v0, 0x2

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkSeats(Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method private doRhythmEffect(Ljava/util/List;Ljava/lang/String;IILjava/util/Map;Ljava/lang/String;)V
    .locals 12
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "duration"    # I
    .param p4, "position"    # I
    .param p6, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "intensityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Integer;>;>;"
    move-object v6, p0

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    .line 1356
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoVibrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasRhythm:Z

    if-nez v2, :cond_0

    const-string v2, "succeed"

    goto :goto_0

    :cond_0
    const-string v2, "failed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasRhythm:Z

    if-nez v0, :cond_4

    .line 1362
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    .line 1363
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget v0, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->streamId:I

    if-eqz v0, :cond_1

    .line 1364
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget v1, v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 1365
    invoke-direct {v6, v10}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateRythmPause(Z)V

    .line 1367
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->ids:Ljava/util/List;

    const/4 v2, 0x1

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->effect:Ljava/lang/String;

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget v4, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->position:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    .line 1370
    :cond_2
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    move-object v11, p1

    invoke-direct {v0, v10, v11, v7, v9}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;-><init>(ILjava/util/List;Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    .line 1372
    move-object/from16 v10, p5

    invoke-direct {v6, v10}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->makeVibrateIntensity(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateIntensity(Ljava/util/List;)V

    .line 1373
    const/4 v0, 0x1

    invoke-direct {v6, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateRhythmEnable(Z)V

    .line 1375
    if-lez v8, :cond_3

    .line 1376
    invoke-direct {v6, v8}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendDoneVibrateDelayed(I)I

    .line 1379
    :cond_3
    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, v11

    move-object v3, v7

    move v4, v9

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 1381
    :cond_4
    move-object v11, p1

    move-object/from16 v10, p5

    const/16 v2, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v11

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    .line 1383
    :goto_1
    return-void
.end method

.method private doVibrateEffect(Ljava/util/List;Ljava/lang/String;IILjava/util/Map;Ljava/lang/String;)V
    .locals 16
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "loop"    # I
    .param p4, "position"    # I
    .param p6, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "intensityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Integer;>;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v15, p3

    move/from16 v5, p4

    .line 1318
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/util/Pair;

    .line 1320
    .local v4, "sound":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-direct {v6, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateRythmPause(Z)V

    .line 1321
    move-object/from16 v3, p5

    invoke-direct {v6, v3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->makeVibrateIntensity(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateIntensity(Ljava/util/List;)V

    .line 1323
    sget-object v8, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move v13, v15

    invoke-virtual/range {v8 .. v14}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 1325
    .local v8, "streamId":I
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoVibrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v8, :cond_0

    const-string v2, "succeed"

    goto :goto_0

    :cond_0
    const-string v2, "failed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", loop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", streamId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1325
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    if-lez v8, :cond_3

    .line 1331
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    if-eqz v0, :cond_1

    .line 1332
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->ids:Ljava/util/List;

    const/4 v2, 0x1

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget-object v9, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->effect:Ljava/lang/String;

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget v10, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->position:I

    const/4 v11, 0x0

    move-object v0, v6

    move-object v3, v9

    move-object v9, v4

    move v4, v10

    .end local v4    # "sound":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v9, "sound":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move v10, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 1335
    .end local v9    # "sound":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v4    # "sound":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    move-object v9, v4

    move v10, v5

    .end local v4    # "sound":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v9    # "sound":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_1
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    move-object/from16 v11, p1

    invoke-direct {v0, v8, v11, v7, v10}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;-><init>(ILjava/util/List;Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    .line 1337
    if-ltz v15, :cond_2

    .line 1338
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, v15, 0x1

    mul-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x1f4

    invoke-direct {v6, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendDoneVibrateDelayed(I)I

    .line 1341
    :cond_2
    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, v11

    move-object v3, v7

    move v4, v10

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 1343
    .end local v9    # "sound":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v4    # "sound":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v11, p1

    move-object v9, v4

    move v10, v5

    .end local v4    # "sound":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v9    # "sound":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v2, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v11

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    .line 1345
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasRhythm:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    if-nez v0, :cond_4

    .line 1346
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmIntensityMap:Ljava/util/Map;

    invoke-direct {v6, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->makeVibrateIntensity(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateIntensity(Ljava/util/List;)V

    .line 1348
    :cond_4
    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateRythmPause(Z)V

    .line 1350
    :goto_2
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2052
    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showMassagerEffect()Ljava/util/List;

    move-result-object v4

    .line 2053
    .local v4, "massagers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEffect()Ljava/util/List;

    move-result-object v5

    .line 2054
    .local v5, "vibrates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 2056
    .local v0, "ret":I
    const-string v6, "*dump-XpSeatMassagerService"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2058
    if-eqz v3, :cond_12

    .line 2059
    const/4 v6, 0x0

    move v7, v0

    move v0, v6

    .local v0, "i":I
    .local v7, "ret":I
    :goto_0
    move v8, v0

    .end local v0    # "i":I
    .local v8, "i":I
    array-length v0, v3

    if-ge v8, v0, :cond_11

    .line 2060
    aget-object v0, v3, v8

    const/4 v9, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v10, "--stopMassager"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v13

    goto/16 :goto_2

    :sswitch_1
    const-string v10, "--getMassagerIntensity"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_2

    :sswitch_2
    const-string v10, "--showMassagerEffect"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_2

    :sswitch_3
    const-string v10, "--showVibrateEffect"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_2

    :sswitch_4
    const-string v10, "--setRhythmEnable"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_2

    :sswitch_5
    const-string v10, "--stopVibrate"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_2

    :sswitch_6
    const-string v10, "--getMassagerStatus"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_2

    :sswitch_7
    const-string v10, "--getMassagerEffect"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_2

    :sswitch_8
    const-string v10, "--startMassager"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v14

    goto :goto_2

    :sswitch_9
    const-string v10, "--doVibrate"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_2

    :cond_0
    :goto_1
    move v0, v9

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_19

    .line 2171
    :pswitch_0
    array-length v0, v3

    sub-int/2addr v0, v14

    if-ge v8, v0, :cond_10

    .line 2173
    add-int/lit8 v0, v8, 0x1

    :try_start_0
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v14

    goto :goto_3

    :cond_1
    move v0, v6

    .line 2174
    .local v0, "enable":Z
    :goto_3
    new-array v9, v13, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v9, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setRhythmEnable(Ljava/util/List;Z)I

    move-result v9

    move v7, v9

    .line 2176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setRhythmEnable "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_2

    const-string v10, "succeed"

    goto :goto_4

    :cond_2
    const-string v10, "failed"

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", enable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "enable":Z
    goto :goto_5

    .line 2179
    :catch_0
    move-exception v0

    .line 2180
    :goto_5
    goto/16 :goto_19

    .line 2168
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stopVibrate "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->stopVibrate()I

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "succeed"

    goto :goto_6

    :cond_3
    const-string v9, "failed"

    :goto_6
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2169
    goto/16 :goto_19

    .line 2136
    :pswitch_2
    array-length v0, v3

    sub-int/2addr v0, v14

    if-ge v8, v0, :cond_10

    .line 2137
    add-int/lit8 v0, v8, 0x1

    aget-object v9, v3, v0

    .line 2138
    .local v9, "effect":Ljava/lang/String;
    const-string v0, "background"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2139
    .local v10, "hasRhythm":Z
    const/4 v15, 0x3

    .local v15, "intensity":I
    const/16 v16, 0x0

    .local v16, "loop":I
    move/from16 v17, v13

    .line 2142
    .local v17, "position":I
    :try_start_1
    array-length v0, v3

    sub-int/2addr v0, v13

    if-ge v8, v0, :cond_4

    .line 2143
    add-int/lit8 v0, v8, 0x2

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :cond_4
    move v0, v15

    :goto_7
    move v15, v0

    .line 2144
    array-length v0, v3

    sub-int/2addr v0, v12

    if-ge v8, v0, :cond_5

    .line 2145
    add-int/lit8 v0, v8, 0x3

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :cond_5
    move/from16 v0, v16

    :goto_8
    move/from16 v16, v0

    .line 2146
    array-length v0, v3

    sub-int/2addr v0, v11

    if-ge v8, v0, :cond_6

    .line 2147
    add-int/lit8 v0, v8, 0x4

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :cond_6
    move/from16 v0, v17

    :goto_9
    move/from16 v17, v0

    .line 2149
    goto :goto_a

    .line 2148
    :catch_1
    move-exception v0

    .line 2151
    .end local v16    # "loop":I
    .end local v17    # "position":I
    .local v0, "loop":I
    .local v11, "position":I
    :goto_a
    move/from16 v0, v16

    move/from16 v11, v17

    if-nez v10, :cond_8

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_b

    .line 2162
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid vibrate effect: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Please use one of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " effect."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "loop":I
    .end local v9    # "effect":Ljava/lang/String;
    .end local v10    # "hasRhythm":Z
    .end local v11    # "position":I
    .end local v15    # "intensity":I
    goto :goto_e

    .line 2152
    .restart local v0    # "loop":I
    .restart local v9    # "effect":Ljava/lang/String;
    .restart local v10    # "hasRhythm":Z
    .restart local v11    # "position":I
    .restart local v15    # "intensity":I
    :cond_8
    :goto_b
    new-array v12, v13, [Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    new-instance v13, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    invoke-direct {v13, v6, v15}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    aput-object v13, v12, v6

    new-instance v13, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    invoke-direct {v13, v14, v15}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    aput-object v13, v12, v14

    .line 2153
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 2152
    invoke-virtual {v1, v12, v9, v0, v11}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->doVibrate(Ljava/util/List;Ljava/lang/String;II)I

    move-result v7

    .line 2157
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doVibrate "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "[intensity="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2158
    if-eqz v10, :cond_9

    const-string v13, ", duration="

    goto :goto_c

    :cond_9
    const-string v13, ", loop="

    :goto_c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", position="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    if-nez v7, :cond_a

    const-string v13, "succeed"

    goto :goto_d

    :cond_a
    const-string v13, "failed"

    :goto_d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2157
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2165
    .end local v0    # "loop":I
    .end local v9    # "effect":Ljava/lang/String;
    .end local v10    # "hasRhythm":Z
    .end local v11    # "position":I
    .end local v15    # "intensity":I
    :goto_e
    goto/16 :goto_19

    .line 2133
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VibrateEffect: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2134
    goto/16 :goto_19

    .line 2122
    :pswitch_4
    array-length v0, v3

    sub-int/2addr v0, v14

    if-ge v8, v0, :cond_10

    .line 2124
    add-int/lit8 v0, v8, 0x1

    :try_start_2
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2125
    .local v0, "id":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMassagerIntensity, id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", intensity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getMassagerEffect(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v0, v10}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getMassagerIntensity(ILjava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2125
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0    # "id":I
    goto :goto_f

    .line 2128
    :catch_2
    move-exception v0

    .line 2129
    :goto_f
    goto/16 :goto_19

    .line 2113
    :pswitch_5
    array-length v0, v3

    sub-int/2addr v0, v14

    if-ge v8, v0, :cond_10

    .line 2115
    add-int/lit8 v0, v8, 0x1

    :try_start_3
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2116
    .restart local v0    # "id":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMassagerEffect, id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", effect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getMassagerEffect(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .end local v0    # "id":I
    goto :goto_10

    .line 2117
    :catch_3
    move-exception v0

    .line 2118
    :goto_10
    goto/16 :goto_19

    .line 2101
    :pswitch_6
    array-length v0, v3

    sub-int/2addr v0, v14

    if-ge v8, v0, :cond_10

    .line 2103
    add-int/lit8 v0, v8, 0x1

    :try_start_4
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2104
    .restart local v0    # "id":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMassagerStatus, id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getMassagerStatus(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " (isDriverSeatMassagerRunning="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->isDriverSeatMassagerRunning(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", hasTaskRunning="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasTaskRunning(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2104
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .end local v0    # "id":I
    goto :goto_11

    .line 2108
    :catch_4
    move-exception v0

    .line 2109
    :goto_11
    goto/16 :goto_19

    .line 2090
    :pswitch_7
    array-length v0, v3

    sub-int/2addr v0, v14

    if-ge v8, v0, :cond_10

    .line 2092
    add-int/lit8 v0, v8, 0x1

    :try_start_5
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2093
    .restart local v0    # "id":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stopMassager "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    new-array v10, v14, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->stopMassager(Ljava/util/List;)I

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "succeed"

    goto :goto_12

    :cond_b
    const-string v10, "failed"

    :goto_12
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2093
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .end local v0    # "id":I
    goto :goto_13

    .line 2096
    :catch_5
    move-exception v0

    .line 2097
    :goto_13
    goto/16 :goto_19

    .line 2065
    :pswitch_8
    array-length v0, v3

    sub-int/2addr v0, v14

    if-ge v8, v0, :cond_10

    .line 2066
    add-int/lit8 v0, v8, 0x1

    aget-object v9, v3, v0

    .line 2067
    .restart local v9    # "effect":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "id":I
    move v11, v13

    .line 2070
    .local v11, "intensity":I
    :try_start_6
    array-length v0, v3

    sub-int/2addr v0, v13

    if-ge v8, v0, :cond_c

    .line 2071
    add-int/lit8 v0, v8, 0x2

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_14

    :cond_c
    move v0, v10

    :goto_14
    move v10, v0

    .line 2072
    array-length v0, v3

    sub-int/2addr v0, v12

    if-ge v8, v0, :cond_d

    .line 2073
    add-int/lit8 v0, v8, 0x3

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_15

    :cond_d
    move v0, v11

    :goto_15
    move v11, v0

    .line 2075
    goto :goto_16

    .line 2074
    :catch_6
    move-exception v0

    .line 2077
    :goto_16
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2078
    new-array v0, v14, [Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    new-instance v12, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    invoke-direct {v12, v10, v11}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    aput-object v12, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->startMassager(Ljava/util/List;Ljava/lang/String;)I

    move-result v7

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "statMassager ["

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", intensity="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    if-nez v7, :cond_e

    const-string v12, "succeed"

    goto :goto_17

    :cond_e
    const-string v12, "failed"

    :goto_17
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2080
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    .line 2084
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid massager effect: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "!"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Please use one of "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " effect."

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    .end local v9    # "effect":Ljava/lang/String;
    .end local v10    # "id":I
    .end local v11    # "intensity":I
    :goto_18
    goto :goto_19

    .line 2062
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MassagerEffect: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    nop

    .line 2059
    :cond_10
    :goto_19
    add-int/lit8 v0, v8, 0x1

    .end local v8    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .line 2188
    .end local v0    # "i":I
    :cond_11
    move v0, v7

    .end local v7    # "ret":I
    .local v0, "ret":I
    :cond_12
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f66d33c -> :sswitch_9
        -0x680226d7 -> :sswitch_8
        -0x3ced1bf2 -> :sswitch_7
        -0x24460591 -> :sswitch_6
        0x1594956d -> :sswitch_5
        0x30f4219b -> :sswitch_4
        0x32ddd243 -> :sswitch_3
        0x68582eb5 -> :sswitch_2
        0x68a78096 -> :sswitch_1
        0x6bf1f409 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 581
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultEffect()Ljava/lang/String;
    .locals 3

    .line 589
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    .line 590
    .local v1, "effect":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    iget-boolean v2, v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->hasDefault:Z

    if-eqz v2, :cond_0

    .line 591
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    return-object v0

    .line 593
    .end local v1    # "effect":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    :cond_0
    goto :goto_0

    .line 595
    :cond_1
    const-string/jumbo v0, "waist"

    return-object v0
.end method

.method private getDriverSeatMassagerErrorStatus(I)Z
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 868
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_msm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    .line 869
    .local v0, "msm":Landroid/car/hardware/msm/CarMsmManager;
    const/4 v1, 0x0

    .line 871
    .local v1, "noErr":I
    const-string v2, "XpSeatMassagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDriverSeatMassagerErrorStatus, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSignalStatus(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 883
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Arguments: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 881
    :pswitch_0
    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRightSeatMassgErrorStatus()I

    move-result v2

    if-nez v2, :cond_0

    move v3, v4

    nop

    :cond_0
    return v3

    .line 879
    :pswitch_1
    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLeftSeatMassgErrorStatus()I

    move-result v2

    if-nez v2, :cond_1

    move v3, v4

    nop

    :cond_1
    return v3

    .line 877
    :pswitch_2
    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getPassengerSeatMassgErrorStatus()I

    move-result v2

    if-nez v2, :cond_2

    move v3, v4

    nop

    :cond_2
    return v3

    .line 875
    :pswitch_3
    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getDriverSeatMassgErrorStatus()I

    move-result v2

    if-nez v2, :cond_3

    move v3, v4

    nop

    :cond_3
    return v3

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x21401d61
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDriverSeatMassagerIntensity(I)I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 929
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_msm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    .line 931
    .local v0, "msm":Landroid/car/hardware/msm/CarMsmManager;
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriverSeatMassagerIntensity, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSignalIntensity(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 943
    :pswitch_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Arguments: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 941
    :pswitch_1
    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRightSeatMassgIntensity()I

    move-result v1

    return v1

    .line 939
    :pswitch_2
    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLeftSeatMassgIntensity()I

    move-result v1

    return v1

    .line 937
    :pswitch_3
    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getPassengerSeatMassgIntensity()I

    move-result v1

    return v1

    .line 935
    :pswitch_4
    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getDriverSeatMassgIntensity()I

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x21401d3b
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDriverSeatMassagerMode(I)I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 849
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_msm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    .line 851
    .local v0, "msm":Landroid/car/hardware/msm/CarMsmManager;
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriverSeatMassagerMode, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSignalMode(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 863
    :pswitch_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Arguments: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 861
    :pswitch_1
    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowRightSeatMassgProgMode()I

    move-result v1

    return v1

    .line 859
    :pswitch_2
    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getSecRowLeftSeatMassgProgMode()I

    move-result v1

    return v1

    .line 857
    :pswitch_3
    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getPassengerSeatMassgProgMode()I

    move-result v1

    return v1

    .line 855
    :pswitch_4
    invoke-virtual {v0}, Landroid/car/hardware/msm/CarMsmManager;->getDriverSeatMassgProgMode()I

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x21401d3a
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized getEffect(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 1076
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mEffectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mEffectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2191
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    if-nez v0, :cond_1

    .line 2192
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    monitor-enter v0

    .line 2193
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    if-nez v1, :cond_0

    .line 2194
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 2196
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2199
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sService:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    return-object v0
.end method

.method private getProviderMassagerEffect(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .line 599
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MassagerEffect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "effect":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerEffect(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getDefaultEffect()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getProviderMassagerIntensity(Ljava/lang/String;I)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 613
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mIntensityMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 615
    .local v0, "it":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    nop

    .line 616
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeatMassagerIntensity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 615
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getProviderRhythmEnable(I)Z
    .locals 3
    .param p1, "id"    # I

    .line 635
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeatRhythmEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private getProviderRhythmIntensity(I)I
    .locals 3
    .param p1, "id"    # I

    .line 643
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeatRhythmIntensity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 645
    .local v0, "intensity":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkVibrateIntensity(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v0

    nop

    :cond_0
    return v2
.end method

.method private getProviderRhythmPattern()I
    .locals 3

    .line 653
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SeatRhythmPattern"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProviderVibrateIntensity(I)I
    .locals 3
    .param p1, "id"    # I

    .line 625
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeatVibrateIntensity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 627
    .local v0, "intensity":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkVibrateIntensity(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v0

    nop

    :cond_0
    return v2
.end method

.method private getSignalIntensity(I)I
    .locals 2
    .param p1, "id"    # I

    .line 488
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSignalMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getSignalMode(I)I
    .locals 2
    .param p1, "id"    # I

    .line 484
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSignalMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getSignalStatus(I)I
    .locals 2
    .param p1, "id"    # I

    .line 492
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSignalMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getSoundDuration(Landroid/content/res/AssetFileDescriptor;)I
    .locals 7
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;

    .line 1059
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1062
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1063
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1071
    goto :goto_0

    .line 1070
    :catch_0
    move-exception v2

    .line 1063
    :goto_0
    return v1

    .line 1068
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1064
    :catch_1
    move-exception v1

    .line 1065
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "XpSeatMassagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " duration failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1066
    const/4 v2, 0x0

    .line 1069
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1071
    goto :goto_1

    .line 1070
    :catch_2
    move-exception v3

    .line 1066
    :goto_1
    return v2

    .line 1068
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 1069
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1071
    goto :goto_3

    .line 1070
    :catch_3
    move-exception v2

    .line 1071
    :goto_3
    throw v1
.end method

.method private getSoundDuration(Ljava/lang/String;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 1042
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1045
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1046
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1054
    goto :goto_0

    .line 1053
    :catch_0
    move-exception v2

    .line 1046
    :goto_0
    return v1

    .line 1051
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1047
    :catch_1
    move-exception v1

    .line 1048
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "XpSeatMassagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " duration failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1049
    const/4 v2, 0x0

    .line 1052
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1054
    goto :goto_1

    .line 1053
    :catch_2
    move-exception v3

    .line 1049
    :goto_1
    return v2

    .line 1051
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 1052
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1054
    goto :goto_3

    .line 1053
    :catch_3
    move-exception v2

    .line 1054
    :goto_3
    throw v1
.end method

.method private handleBiMassager(IILjava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "effect"    # Ljava/lang/String;
    .param p4, "intensity"    # I
    .param p5, "owner"    # Ljava/lang/String;

    .line 672
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiMassagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 673
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiMassagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;

    const-string v4, "massager"

    move-object v2, v8

    move v3, p1

    move-object v5, p5

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 674
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiMassagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiMassagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;

    .line 677
    .local v0, "uploader":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 678
    invoke-virtual {v0, p3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->addPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 680
    invoke-virtual {v0, p4}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->addIntensity(I)V

    goto :goto_0

    .line 681
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 682
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->submit()V

    .line 683
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiMassagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .end local v0    # "uploader":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;
    :cond_3
    :goto_0
    return-void
.end method

.method private handleBiVibrate(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V
    .locals 18
    .param p2, "type"    # I
    .param p3, "effect"    # Ljava/lang/String;
    .param p4, "data"    # I
    .param p5, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v0, p2

    move/from16 v1, p4

    .line 729
    if-nez v0, :cond_1

    .line 730
    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiVibrate;

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v11, p5

    invoke-direct {v2, v3, v11, v4, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiVibrate;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiVibrate;

    .line 759
    :cond_0
    :goto_0
    move-object/from16 v13, p0

    goto/16 :goto_3

    .line 731
    :cond_1
    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v11, p5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiVibrate;

    if-eqz v2, :cond_2

    .line 732
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiVibrate;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiVibrate;->submit()V

    .line 733
    const/4 v2, 0x0

    sput-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiVibrate;

    goto :goto_0

    .line 734
    :cond_2
    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 735
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 737
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 738
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/Integer;

    .line 740
    .local v12, "id":Ljava/lang/Integer;
    sget-object v5, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiRhythmMap:Ljava/util/Map;

    invoke-interface {v5, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x4

    if-nez v5, :cond_3

    if-ne v0, v6, :cond_3

    if-eqz v1, :cond_3

    .line 741
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v13, p0

    invoke-direct {v13, v5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmIntensity(I)I

    move-result v14

    .line 742
    .local v14, "intensity":I
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmPattern()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 744
    .local v15, "pattern":Ljava/lang/String;
    sget-object v10, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiRhythmMap:Ljava/util/Map;

    new-instance v9, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "rhythm"

    move-object v5, v9

    move-object v8, v11

    move-object/from16 v16, v2

    move-object v2, v9

    move-object v9, v15

    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v3, v10

    move v10, v14

    invoke-direct/range {v5 .. v10}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .end local v14    # "intensity":I
    .end local v15    # "pattern":Ljava/lang/String;
    goto :goto_2

    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v13, p0

    move-object/from16 v16, v2

    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiRhythmMap:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 746
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiRhythmMap:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;

    .line 748
    .local v2, "uploader":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    .line 749
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->addPattern(Ljava/lang/String;)V

    goto :goto_2

    .line 750
    :cond_4
    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    .line 751
    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->addIntensity(I)V

    goto :goto_2

    .line 752
    :cond_5
    if-ne v0, v6, :cond_6

    if-nez v1, :cond_6

    .line 753
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->submit()V

    .line 754
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mBiRhythmMap:Ljava/util/Map;

    invoke-interface {v3, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    .end local v2    # "uploader":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;
    .end local v12    # "id":Ljava/lang/Integer;
    :cond_6
    :goto_2
    nop

    .line 735
    move-object/from16 v2, v16

    move-object/from16 v3, p1

    goto :goto_1

    .line 759
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_3
    return-void
.end method

.method private handleDoVibrate(Ljava/util/List;Ljava/lang/String;IILjava/lang/String;)V
    .locals 15
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "loop"    # I
    .param p4, "position"    # I
    .param p5, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1388
    .local p1, "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1389
    .local v0, "intensityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 1390
    .local v8, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1391
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    const-string v1, "background"

    move-object/from16 v10, p2

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v11, v1

    .line 1392
    .local v11, "hasVibrate":Z
    if-eqz v11, :cond_0

    const-string/jumbo v1, "vibrate"

    goto :goto_0

    :cond_0
    const-string v1, "background"

    .line 1392
    .local v1, "pattern":Ljava/lang/String;
    :goto_0
    move-object v12, v1

    .line 1394
    .end local v1    # "pattern":Ljava/lang/String;
    .local v12, "pattern":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1395
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    .line 1396
    .local v1, "seat":Lcom/xiaopeng/xuimanager/seatmassager/Seat;
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->getId()I

    move-result v2

    .line 1396
    .local v2, "id":I
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->getIntensity()I

    move-result v3

    .line 1398
    .local v3, "intensity":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1399
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mIntensitysMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v13, p0

    move/from16 v14, p4

    invoke-direct {v13, v12, v3, v14}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->parseVibrateIntensity(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    .end local v1    # "seat":Lcom/xiaopeng/xuimanager/seatmassager/Seat;
    .end local v2    # "id":I
    .end local v3    # "intensity":I
    nop

    .line 1392
    move-object v1, v12

    goto :goto_0

    .line 1403
    :cond_1
    move-object v13, p0

    move/from16 v14, p4

    if-eqz v11, :cond_2

    .line 1404
    move-object v1, v13

    move-object v2, v8

    move-object v3, v10

    move/from16 v4, p3

    move v5, v14

    move-object v6, v0

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->doVibrateEffect(Ljava/util/List;Ljava/lang/String;IILjava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    .line 1406
    :cond_2
    move-object v1, v13

    move-object v2, v8

    move-object v3, v10

    move/from16 v4, p3

    move v5, v14

    move-object v6, v0

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->doRhythmEffect(Ljava/util/List;Ljava/lang/String;IILjava/util/Map;Ljava/lang/String;)V

    .line 1409
    :goto_1
    return-void
.end method

.method private handleDoneVibrate()V
    .locals 8

    .line 1412
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    if-nez v0, :cond_0

    return-void

    .line 1414
    :cond_0
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoneVibrate, ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->ids:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->effect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", streamId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget v2, v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->streamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget v0, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->streamId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1419
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundPool:Landroid/media/SoundPool;

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget v2, v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->streamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 1420
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateRythmPause(Z)V

    .line 1423
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->ids:Ljava/util/List;

    const/4 v4, 0x1

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->effect:Ljava/lang/String;

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    iget v6, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->position:I

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    .line 1425
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasRhythm:Z

    if-eqz v0, :cond_2

    .line 1426
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmIntensityMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->makeVibrateIntensity(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateIntensity(Ljava/util/List;)V

    goto :goto_0

    .line 1428
    :cond_2
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateRhythmEnable(Z)V

    .line 1431
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    .line 1432
    return-void
.end method

.method private handleSetMassagerEffect(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 1169
    invoke-direct {v7, v8}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getEffect(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    move-result-object v9

    .line 1170
    .local v9, "effect":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1172
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetMassagerEffect, ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1175
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/Integer;

    .line 1176
    .local v11, "id":Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderMassagerEffect(I)Ljava/lang/String;

    move-result-object v12

    .line 1177
    .local v12, "source":Ljava/lang/String;
    const/4 v13, 0x3

    .line 1179
    .local v13, "errCode":I
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1181
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getDriverSeatMassagerIntensity(I)I

    move-result v0

    move v14, v0

    .line 1182
    .local v14, "current":I
    const-string v0, "physicalButton"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v15, p3

    :try_start_1
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v14

    goto :goto_1

    :cond_0
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v8, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderMassagerIntensity(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    move v6, v0

    .line 1184
    .local v6, "intensity":I
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasSupportMassager(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1189
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->isDriverSeatMassagerRunning(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasTaskRunning(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1190
    :cond_1
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set MassagerEffect, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    if-eq v6, v14, :cond_2

    .line 1193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", intensity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1190
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1197
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1200
    :cond_3
    iget-boolean v0, v9, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->hasPreset:Z

    if-nez v0, :cond_4

    iget-object v0, v9, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->custom:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;->hasPreset:Z

    if-nez v0, :cond_5

    .line 1201
    :cond_4
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, v9, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->mode:I

    invoke-direct {v7, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatMassagerMode(II)V

    .line 1204
    :cond_5
    iget-boolean v0, v9, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->hasPreset:Z

    if-nez v0, :cond_6

    .line 1205
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskLockMap:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1206
    :try_start_2
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;

    .line 1207
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v7, v2, v9, v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;-><init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;ILcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;I)V

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x1

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1206
    move-object/from16 v16, v0

    invoke-static/range {v16 .. v21}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 1210
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-interface {v2, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskLockMap:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1212
    .end local v0    # "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 1213
    :cond_6
    if-eq v6, v14, :cond_7

    .line 1214
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v0, v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatMassagerIntensity(II)V

    .line 1218
    :cond_7
    :goto_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v0, v8}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setProviderMassagerEffect(ILjava/lang/String;)V

    .line 1219
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v8, v0, v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setProviderMassagerIntensity(Ljava/lang/String;II)V

    .line 1221
    if-eq v6, v14, :cond_8

    .line 1222
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    const/4 v0, 0x0

    move-object v1, v7

    move-object v4, v8

    move v5, v6

    move/from16 v16, v6

    move-object v6, v0

    .end local v6    # "intensity":I
    .local v16, "intensity":I
    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showMassagerEvent(IILjava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 1224
    .end local v16    # "intensity":I
    .restart local v6    # "intensity":I
    :cond_8
    move/from16 v16, v6

    .end local v6    # "intensity":I
    .restart local v16    # "intensity":I
    :goto_4
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, v8

    move/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showMassagerEvent(IILjava/lang/String;ILjava/lang/String;)V

    .line 1229
    .end local v14    # "current":I
    .end local v16    # "intensity":I
    goto :goto_6

    .line 1185
    .restart local v6    # "intensity":I
    .restart local v14    # "current":I
    :cond_9
    move/from16 v16, v6

    .end local v6    # "intensity":I
    .restart local v16    # "intensity":I
    const/4 v13, 0x1

    .line 1186
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such device! seatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1225
    .end local v14    # "current":I
    .end local v16    # "intensity":I
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v15, p3

    .line 1226
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetMassagerEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    const/16 v1, 0x20

    or-int v5, v1, v13

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showMassagerEvent(IILjava/lang/String;ILjava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "id":Ljava/lang/Integer;
    .end local v12    # "source":Ljava/lang/String;
    .end local v13    # "errCode":I
    goto :goto_6

    .line 1231
    :cond_a
    move-object/from16 v15, p3

    :goto_6
    goto/16 :goto_0

    .line 1232
    :cond_b
    move-object/from16 v15, p3

    return-void
.end method

.method private handleSetMassagerIntensity(Ljava/util/List;ILjava/lang/String;)V
    .locals 14
    .param p2, "dest"    # I
    .param p3, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v7, p0

    move/from16 v8, p2

    .line 1235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1237
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetMassagerIntensity, ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", intensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1240
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Integer;

    .line 1241
    .local v10, "id":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderMassagerEffect(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getEffect(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    move-result-object v11

    .line 1242
    .local v11, "effect":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    iget-object v0, v11, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v7, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderMassagerIntensity(Ljava/lang/String;I)I

    move-result v12

    .line 1243
    .local v12, "source":I
    const/4 v13, 0x3

    .line 1245
    .local v13, "errCode":I
    if-eq v8, v12, :cond_4

    .line 1247
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasSupportMassager(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1252
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->isDriverSeatMassagerRunning(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasTaskRunning(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, v11, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->hasPreset:Z

    if-nez v0, :cond_1

    iget-object v0, v11, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->custom:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;->hasPreset:Z

    if-eqz v0, :cond_2

    .line 1255
    :cond_1
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set MassagerIntensity, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", intensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v0, v8}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatMassagerIntensity(II)V

    .line 1262
    :cond_2
    iget-object v0, v11, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v7, v0, v1, v8}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setProviderMassagerIntensity(Ljava/lang/String;II)V

    .line 1263
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    iget-object v4, v11, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    move v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showMassagerEvent(IILjava/lang/String;ILjava/lang/String;)V

    .line 1268
    goto :goto_1

    .line 1248
    :cond_3
    const/4 v13, 0x1

    .line 1249
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such device! seatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetMassagerIntensity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    iget-object v4, v11, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    const/16 v1, 0x30

    or-int v5, v1, v13

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showMassagerEvent(IILjava/lang/String;ILjava/lang/String;)V

    .line 1270
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "id":Ljava/lang/Integer;
    .end local v11    # "effect":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    .end local v12    # "source":I
    .end local v13    # "errCode":I
    :cond_4
    :goto_1
    goto/16 :goto_0

    .line 1271
    :cond_5
    return-void
.end method

.method private handleSetRhythmEnable(Ljava/util/List;ZLjava/lang/String;)V
    .locals 9
    .param p2, "enable"    # Z
    .param p3, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1435
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1437
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetRhythmEnable, ids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1440
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1442
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmEnable(I)Z

    move-result v2

    if-eq p2, v2, :cond_1

    .line 1443
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmIntensity(I)I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 1444
    .local v2, "intensity":I
    :goto_1
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmIntensityMap:Ljava/util/Map;

    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmPattern:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {p0, v4, v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->parseVibrateIntensity(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setProviderRhythmEnable(IZ)V

    .line 1448
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v2    # "intensity":I
    :cond_1
    goto :goto_0

    .line 1450
    :cond_2
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmIntensityMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->makeVibrateIntensity(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 1451
    .local v1, "dest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasMuteIntensity(Ljava/util/List;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sput-boolean v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasRhythm:Z

    .line 1453
    sget-boolean v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasRhythm:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    if-nez v2, :cond_3

    .line 1454
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateIntensity(Ljava/util/List;)V

    .line 1456
    :cond_3
    sget-boolean v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasRhythm:Z

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateRhythmEnable(Z)V

    .line 1458
    const/4 v5, 0x4

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    .line 1459
    return-void
.end method

.method private handleSetRhythmIntensity(Ljava/util/List;I)V
    .locals 8
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1476
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1478
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetRhythmIntensity, ids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", intensity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1481
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1483
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmIntensity(I)I

    move-result v2

    if-eq p2, v2, :cond_1

    .line 1484
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmEnable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1485
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmIntensityMap:Ljava/util/Map;

    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmPattern:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {p0, v3, p2, v4}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->parseVibrateIntensity(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setProviderRhythmIntensity(II)V

    .line 1489
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 1491
    :cond_2
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mVibrate:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasRhythm:Z

    if-eqz v1, :cond_3

    .line 1492
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmIntensityMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->makeVibrateIntensity(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateIntensity(Ljava/util/List;)V

    .line 1495
    :cond_3
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    .line 1496
    return-void
.end method

.method private handleSetRhythmPattern(I)V
    .locals 7
    .param p1, "pattern"    # I

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rhythm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmPattern:Ljava/lang/String;

    .line 1501
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetRhythmPattern "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmPattern()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 1504
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateRhythmPattern(I)V

    .line 1507
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1508
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmEnable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmIntensity(I)I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v0

    .line 1509
    .local v3, "intensity":I
    :goto_1
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmIntensityMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmPattern:Ljava/lang/String;

    invoke-direct {p0, v6, v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->parseVibrateIntensity(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    .end local v3    # "intensity":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1512
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setProviderRhythmPattern(I)V

    .line 1515
    :cond_2
    sget-boolean v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasRhythm:Z

    if-eqz v0, :cond_3

    .line 1516
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmIntensityMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->makeVibrateIntensity(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateIntensity(Ljava/util/List;)V

    .line 1519
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    .line 1520
    return-void
.end method

.method private handleSetVibrateIntensity(Ljava/util/List;I)V
    .locals 9
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1462
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1464
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetVibrateIntensity, ids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", intensity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1467
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1469
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setProviderVibrateIntensity(II)V

    .line 1470
    .end local v1    # "id":Ljava/lang/Integer;
    goto :goto_0

    .line 1472
    :cond_0
    const/4 v5, 0x3

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    .line 1473
    return-void
.end method

.method private handleStartMassager(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p1, "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 1080
    invoke-direct {v7, v8}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getEffect(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    move-result-object v9

    .line 1081
    .local v9, "effect":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    :goto_0
    move-object v10, v0

    .line 1083
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1084
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    .line 1085
    .local v11, "seat":Lcom/xiaopeng/xuimanager/seatmassager/Seat;
    invoke-virtual {v11}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->getId()I

    move-result v12

    .local v12, "id":I
    invoke-virtual {v11}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->getIntensity()I

    move-result v13

    .line 1086
    .local v13, "intensity":I
    const/4 v14, 0x3

    .line 1088
    .local v14, "errCode":I
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartMassager, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), intensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :try_start_0
    invoke-direct {v7, v12}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasSupportMassager(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1098
    invoke-direct {v7, v12}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getDriverSeatMassagerErrorStatus(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1103
    iget-boolean v0, v9, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->hasPreset:Z

    if-eqz v0, :cond_0

    .line 1104
    iget v0, v9, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->mode:I

    invoke-direct {v7, v12, v0, v13}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->startDriverSeatMassager(III)V

    goto :goto_1

    .line 1106
    :cond_0
    iget-object v0, v9, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->custom:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;->hasPreset:Z

    if-nez v0, :cond_1

    .line 1107
    iget v0, v9, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->mode:I

    invoke-direct {v7, v12, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatMassagerMode(II)V

    .line 1110
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1111
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1114
    :cond_2
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskLockMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :try_start_1
    new-instance v15, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;

    invoke-direct {v15, v7, v12, v9, v13}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$EffectTask;-><init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;ILcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;I)V

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x1

    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v15 .. v20}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 1119
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskLockMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1121
    .end local v0    # "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1124
    :goto_1
    :try_start_2
    invoke-direct {v7, v12, v8}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setProviderMassagerEffect(ILjava/lang/String;)V

    .line 1125
    invoke-direct {v7, v8, v12, v13}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setProviderMassagerIntensity(Ljava/lang/String;II)V

    .line 1127
    const/4 v3, 0x0

    move-object v1, v7

    move v2, v12

    move-object v4, v8

    move v5, v13

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showMassagerEvent(IILjava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1132
    goto :goto_2

    .line 1121
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1099
    :cond_3
    const/4 v14, 0x4

    .line 1100
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bad seatMassager status!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1094
    :cond_4
    const/4 v14, 0x1

    .line 1095
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such device! seatId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStartMassager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed (-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const/16 v3, 0x8

    const/4 v1, 0x0

    or-int v5, v1, v14

    const/4 v6, 0x0

    move-object v1, v7

    move v2, v12

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showMassagerEvent(IILjava/lang/String;ILjava/lang/String;)V

    .line 1133
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "seat":Lcom/xiaopeng/xuimanager/seatmassager/Seat;
    .end local v12    # "id":I
    .end local v13    # "intensity":I
    .end local v14    # "errCode":I
    :goto_2
    nop

    .line 1081
    move-object v0, v10

    goto/16 :goto_0

    .line 1134
    :cond_5
    return-void
.end method

.method private handleStopMassager(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1137
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1139
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStopMassager, ids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1143
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderMassagerEffect(I)Ljava/lang/String;

    move-result-object v2

    .line 1144
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderMassagerIntensity(Ljava/lang/String;I)I

    move-result v9

    .line 1145
    .local v9, "intensity":I
    const/4 v3, 0x3

    move v10, v3

    .line 1148
    .local v10, "errCode":I
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasSupportMassager(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1153
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1154
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledFuture;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1157
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->stopDriverSeatMassager(I)V

    .line 1159
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v6, v2

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showMassagerEvent(IILjava/lang/String;ILjava/lang/String;)V

    .line 1164
    goto :goto_1

    .line 1149
    :cond_1
    const/4 v10, 0x1

    .line 1150
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such device! seatId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :catch_0
    move-exception v3

    move-object v11, v3

    .line 1161
    .local v11, "e":Ljava/lang/Exception;
    const-string v3, "XpSeatMassagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStopMassager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    const/16 v3, 0x10

    or-int v7, v3, v10

    const/4 v8, 0x0

    move-object v3, p0

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->showMassagerEvent(IILjava/lang/String;ILjava/lang/String;)V

    .line 1165
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v2    # "name":Ljava/lang/String;
    .end local v9    # "intensity":I
    .end local v10    # "errCode":I
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_1
    goto/16 :goto_0

    .line 1166
    :cond_2
    return-void
.end method

.method private hasMuteIntensity(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1288
    .local p1, "intensity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasSupportMassager(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 469
    packed-switch p1, :pswitch_data_0

    .line 480
    const/4 v0, 0x0

    return v0

    .line 477
    :pswitch_0
    const-string v0, "SECROW_RT_MASSG"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 475
    :pswitch_1
    const-string v0, "SECROW_LT_MASSG"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 473
    :pswitch_2
    const-string v0, "MSMP_MASSG"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 471
    :pswitch_3
    const-string v0, "MSMD_MASSG"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasTaskRunning(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 577
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initMassagerStatus()V
    .locals 6

    .line 1024
    const-string v0, "XpSeatMassagerService"

    const-string v1, "initMassagerStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const/4 v0, 0x0

    move v1, v0

    .local v1, "id":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 1028
    :try_start_0
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mStatusMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSignalMode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getDriverSeatMassagerMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    goto :goto_1

    .line 1029
    :catch_0
    move-exception v2

    .line 1030
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mStatusMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSignalMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mStatusMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSignalIntensity(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getDriverSeatMassagerIntensity(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1037
    goto :goto_2

    .line 1035
    :catch_1
    move-exception v2

    .line 1036
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mStatusMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSignalMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1039
    .end local v1    # "id":I
    :cond_0
    return-void
.end method

.method private initRhythmEnableAndIntensity()V
    .locals 7

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rhythm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmPattern()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmPattern:Ljava/lang/String;

    .line 1010
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1011
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmEnable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmIntensity(I)I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v0

    .line 1012
    .local v3, "intensity":I
    :goto_1
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmIntensityMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmPattern:Ljava/lang/String;

    invoke-direct {p0, v6, v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->parseVibrateIntensity(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    .end local v3    # "intensity":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1015
    .end local v1    # "i":I
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mRhythmIntensityMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->makeVibrateIntensity(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 1016
    .local v1, "dest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasMuteIntensity(Ljava/util/List;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sput-boolean v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasRhythm:Z

    .line 1017
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateIntensity(Ljava/util/List;)V

    .line 1018
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmPattern()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateRhythmPattern(I)V

    .line 1019
    sget-boolean v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasRhythm:Z

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateRhythmEnable(Z)V

    .line 1020
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatVibrateRythmPause(Z)V

    .line 1021
    return-void
.end method

.method private declared-synchronized initSoundPool()V
    .locals 4

    monitor-enter p0

    .line 1838
    :try_start_0
    const-string v0, "XpSeatMassagerService"

    const-string v1, "initSoundPool"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xc

    .line 1841
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1842
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1844
    .local v0, "audioAttributes":Landroid/media/AudioAttributes;
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;)V

    .line 1861
    .local v1, "listener":Landroid/media/SoundPool$OnLoadCompleteListener;
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_0

    .line 1862
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->autoPause()V

    .line 1863
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V

    .line 1866
    :cond_0
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 1867
    invoke-virtual {v2, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 1868
    invoke-virtual {v2, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v2

    .line 1869
    invoke-virtual {v2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundPool:Landroid/media/SoundPool;

    .line 1871
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    monitor-exit p0

    return-void

    .line 1837
    .end local v0    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v1    # "listener":Landroid/media/SoundPool$OnLoadCompleteListener;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw v0
.end method

.method private isDriverSeatMassagerRunning(I)Z
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 963
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getDriverSeatMassagerMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$loadVibrate$1(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;ILjava/lang/String;Landroid/content/res/AssetFileDescriptor;)V
    .locals 4
    .param p1, "sampleId"    # I
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "fd"    # Landroid/content/res/AssetFileDescriptor;

    .line 1765
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundLoadMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundMap:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSoundDuration(Landroid/content/res/AssetFileDescriptor;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    return-void
.end method

.method public static synthetic lambda$loadVibrateEffect$0(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sampleId"    # I
    .param p3, "path"    # Ljava/lang/String;

    .line 1746
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundMap:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSoundDuration(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 2047
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2048
    return-void
.end method

.method public static synthetic lambda$znfQj8LqOvyui6ncUHU4komPIHY(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loadVibrateIntensity(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .line 410
    const-class v0, [Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Intensity;

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->loadFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Intensity;

    .line 412
    .local v0, "array":[Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Intensity;
    if-eqz v0, :cond_2

    .line 413
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 414
    .local v3, "it":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Intensity;
    iget-object v4, v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Intensity;->intensity:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 415
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$MapIntensity;>;"
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 417
    .local v5, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 418
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$MapIntensity;

    .line 419
    .local v6, "item":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$MapIntensity;
    iget v7, v6, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$MapIntensity;->key:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v6, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$MapIntensity;->value:Ljava/util/List;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .end local v6    # "item":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$MapIntensity;
    goto :goto_1

    .line 422
    :cond_0
    sget-object v6, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mMapIntensity:Ljava/util/Map;

    iget-object v7, v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Intensity;->pattern:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .end local v3    # "it":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Intensity;
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$MapIntensity;>;"
    .end local v5    # "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Integer;>;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    :cond_1
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVibrateIntensity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_2
    return-void
.end method

.method private makeVibrateIntensity(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1274
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    .local v0, "intensity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 1277
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    goto :goto_1

    .line 1278
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1277
    move-object v3, v4

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1282
    .end local v2    # "i":I
    :cond_1
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeVibrateIntensity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    return-object v0
.end method

.method private mappingSignalSeatId(I)V
    .locals 8
    .param p1, "id"    # I

    .line 430
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    packed-switch p1, :pswitch_data_0

    .line 464
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid mappingSignalSeatId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 456
    :pswitch_0
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSignalMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Integer;

    .line 457
    const v6, 0x21401d40

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    const v2, 0x21401d41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    const v1, 0x21401d64

    .line 458
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 456
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    goto/16 :goto_0

    .line 448
    :pswitch_1
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSignalMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Integer;

    .line 449
    const v6, 0x21401d3e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    const v2, 0x21401d3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    const v1, 0x21401d63

    .line 450
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 448
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    goto/16 :goto_0

    .line 440
    :pswitch_2
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSignalMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Integer;

    .line 441
    const v6, 0x21401d3d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    const v2, 0x21401d3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    const v1, 0x21401d62

    .line 442
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 440
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    goto :goto_0

    .line 432
    :pswitch_3
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSignalMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Integer;

    .line 433
    const v6, 0x21401d3a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    const v2, 0x21401d3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    const v1, 0x21401d61

    .line 434
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 432
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    nop

    .line 466
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseOpCode(I)Ljava/lang/String;
    .locals 1
    .param p1, "opCode"    # I

    .line 657
    packed-switch p1, :pswitch_data_0

    .line 667
    const-string v0, "unKnown"

    return-object v0

    .line 665
    :pswitch_0
    const-string v0, "setIntensity"

    return-object v0

    .line 663
    :pswitch_1
    const-string v0, "setEffect"

    return-object v0

    .line 661
    :pswitch_2
    const-string v0, "Stop"

    return-object v0

    .line 659
    :pswitch_3
    const-string v0, "Start"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseVibrateIntensity(Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "intensity"    # I
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1294
    .local v0, "dest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mMapIntensity:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1295
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mMapIntensity:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1297
    .local v2, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1298
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v3

    .line 1301
    :cond_0
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mMapIntensity:Ljava/util/Map;

    const-string v4, "position"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/util/Map;

    .line 1302
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1303
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1305
    .local v3, "mask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1306
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1311
    .end local v1    # "i":I
    .end local v2    # "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v3    # "mask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    return-object v0
.end method

.method private registerSignalMapSeatIds()V
    .locals 4

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 497
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mTaskLockMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mappingSignalSeatId(I)V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private sendDoVibrate(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;)I
    .locals 4
    .param p1, "obj"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    .line 1563
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1564
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1565
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1566
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1567
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1569
    const-string v1, "XpSeatMassagerService"

    const-string v2, "sendDoVibrate"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x5

    :goto_0
    return v1
.end method

.method private sendDoneVibrateDelayed(I)I
    .locals 4
    .param p1, "delay"    # I

    .line 1575
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1576
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1577
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1579
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDoneVibrateDelayed after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x5

    :goto_0
    return v1
.end method

.method private sendSetMassagerEffect(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I
    .locals 3
    .param p1, "obj"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    .line 1543
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1544
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1545
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1547
    const-string v1, "XpSeatMassagerService"

    const-string v2, "sendSetMassagerEffect"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    sget-boolean v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x5

    :goto_0
    return v1
.end method

.method private sendSetMassagerIntensity(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I
    .locals 3
    .param p1, "obj"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    .line 1553
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1554
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1555
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1557
    const-string v1, "XpSeatMassagerService"

    const-string v2, "sendSetMassagerIntensity"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    sget-boolean v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x5

    :goto_0
    return v1
.end method

.method private sendSetRhythmEnable(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;)I
    .locals 3
    .param p1, "obj"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    .line 1585
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1586
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1587
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1589
    const-string v1, "XpSeatMassagerService"

    const-string v2, "sendSetRhythmEnable"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x5

    :goto_0
    return v1
.end method

.method private sendSetRhythmIntensity(Ljava/util/List;I)I
    .locals 3
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 1606
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1607
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1608
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1609
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1611
    const-string v1, "XpSeatMassagerService"

    const-string v2, "sendSetRhythmIntensity"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x5

    :goto_0
    return v1
.end method

.method private sendSetRhythmPattern(I)I
    .locals 3
    .param p1, "pattern"    # I

    .line 1617
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1618
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1619
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1621
    const-string v1, "XpSeatMassagerService"

    const-string v2, "sendSetRhythmPattern"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x5

    :goto_0
    return v1
.end method

.method private sendSetVibrateIntensity(Ljava/util/List;I)I
    .locals 3
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 1595
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1596
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1597
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1598
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1600
    const-string v1, "XpSeatMassagerService"

    const-string v2, "sendSetVibrateIntensity"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x5

    :goto_0
    return v1
.end method

.method private sendStartMassager(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I
    .locals 4
    .param p1, "obj"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    .line 1523
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1524
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1525
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1527
    const-string v2, "XpSeatMassagerService"

    const-string v3, "sendStartMassager"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    sget-boolean v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasInit:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x5

    :goto_0
    return v1
.end method

.method private declared-synchronized sendStopMassager(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 1533
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1534
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1535
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1537
    const-string v1, "XpSeatMassagerService"

    const-string v2, "sendStopMassager"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    sget-boolean v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x5

    :goto_0
    monitor-exit p0

    return v1

    .line 1532
    .end local v0    # "message":Landroid/os/Message;
    .end local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method private setDriverSeatMassagerIntensity(II)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 888
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSignalIntensity(I)I

    move-result v0

    .line 889
    .local v0, "signalId":I
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getDriverSeatMassagerIntensity(I)I

    move-result v1

    .line 890
    .local v1, "last":I
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v3, "xp_msm"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/msm/CarMsmManager;

    .line 892
    .local v2, "msm":Landroid/car/hardware/msm/CarMsmManager;
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mStatusMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    if-eq v1, p2, :cond_1

    .line 895
    const-string v3, "XpSeatMassagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDriverSeatMassagerIntensity, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", intensity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 899
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 910
    :pswitch_1
    :try_start_0
    invoke-virtual {v2, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightSeatMassgIntensity(I)V

    goto :goto_0

    .line 907
    :pswitch_2
    invoke-virtual {v2, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftSeatMassgIntensity(I)V

    .line 908
    goto :goto_0

    .line 904
    :pswitch_3
    invoke-virtual {v2, p2}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerSeatMassgIntensity(I)V

    .line 905
    goto :goto_0

    .line 901
    :pswitch_4
    invoke-virtual {v2, p2}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatMassgIntensity(I)V

    .line 902
    nop

    .line 914
    :goto_0
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 916
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getDriverSeatMassagerIntensity(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p2, :cond_0

    .line 923
    nop

    .line 924
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 917
    :cond_0
    :try_start_2
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mStatusMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMassagerIntensity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " timeout!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 924
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 920
    :catch_0
    move-exception v4

    .line 921
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mStatusMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMassagerIntensity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " failed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 924
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 926
    :cond_1
    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x21401d3b
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDriverSeatMassagerMode(II)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 808
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getSignalMode(I)I

    move-result v0

    .line 809
    .local v0, "signalId":I
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getDriverSeatMassagerMode(I)I

    move-result v1

    .line 810
    .local v1, "last":I
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v3, "xp_msm"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/msm/CarMsmManager;

    .line 812
    .local v2, "msm":Landroid/car/hardware/msm/CarMsmManager;
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mStatusMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    if-eq v1, p2, :cond_1

    .line 815
    const-string v3, "XpSeatMassagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDriverSeatMassagerMode, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 819
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 830
    :pswitch_1
    :try_start_0
    invoke-virtual {v2, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowRightSeatMassgProgMode(I)V

    goto :goto_0

    .line 827
    :pswitch_2
    invoke-virtual {v2, p2}, Landroid/car/hardware/msm/CarMsmManager;->setSecRowLeftSeatMassgProgMode(I)V

    .line 828
    goto :goto_0

    .line 824
    :pswitch_3
    invoke-virtual {v2, p2}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerSeatMassgProgMode(I)V

    .line 825
    goto :goto_0

    .line 821
    :pswitch_4
    invoke-virtual {v2, p2}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatMassgProgMode(I)V

    .line 822
    nop

    .line 834
    :goto_0
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mLockMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 836
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getDriverSeatMassagerMode(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p2, :cond_0

    .line 843
    nop

    .line 844
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 837
    :cond_0
    :try_start_2
    sget-object v4, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mStatusMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMassagerMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " timeout!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 844
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 840
    :catch_0
    move-exception v4

    .line 841
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mStatusMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMassagerMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " failed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 844
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 846
    :cond_1
    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x21401d3a
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDriverSeatVibrateIntensity(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 997
    .local p1, "intensity":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mIntensity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$znfQj8LqOvyui6ncUHU4komPIHY;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$znfQj8LqOvyui6ncUHU4komPIHY;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 998
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$znfQj8LqOvyui6ncUHU4komPIHY;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$znfQj8LqOvyui6ncUHU4komPIHY;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    .line 997
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDriverSeatVibrateIntensity, intensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMassageSeatLevel(Ljava/util/ArrayList;)V

    .line 1003
    sput-object p1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mIntensity:Ljava/util/List;

    .line 1005
    :cond_0
    return-void
.end method

.method private setDriverSeatVibrateRhythmEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 967
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDriverSeatVibrateRhythmEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "enable"

    goto :goto_0

    :cond_0
    const-string v2, "disable"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMusicSeatEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    goto :goto_1

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDriverSeatVibrateRhythmEnable failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private setDriverSeatVibrateRhythmPattern(I)V
    .locals 4
    .param p1, "pattern"    # I

    .line 977
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDriverSeatVibrateRhythmPattern "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMusicSeatEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    goto :goto_0

    .line 981
    :catch_0
    move-exception v0

    .line 982
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDriverSeatVibrateRhythmPattern failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setDriverSeatVibrateRythmPause(Z)V
    .locals 4
    .param p1, "pause"    # Z

    .line 987
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDriverSeatVibrateRythmPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMusicSeatRythmPause(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    goto :goto_0

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDriverSeatVibrateRythmPause failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setProviderMassagerEffect(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "effect"    # Ljava/lang/String;

    .line 585
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MassagerEffect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 586
    return-void
.end method

.method private setProviderMassagerIntensity(Ljava/lang/String;II)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "intensity"    # I

    .line 605
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mIntensityMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 607
    .local v0, "it":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    nop

    .line 608
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeatMassagerIntensity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-static {v1, v2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 610
    return-void
.end method

.method private setProviderRhythmEnable(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    .line 631
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeatRhythmEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 632
    return-void
.end method

.method private setProviderRhythmIntensity(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "intensity"    # I

    .line 639
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeatRhythmIntensity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 640
    return-void
.end method

.method private setProviderRhythmPattern(I)V
    .locals 2
    .param p1, "pattern"    # I

    .line 649
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SeatRhythmPattern"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 650
    return-void
.end method

.method private setProviderVibrateIntensity(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "intensity"    # I

    .line 621
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeatVibrateIntensity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    return-void
.end method

.method private showMassagerEvent(IILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "effect"    # Ljava/lang/String;
    .param p4, "data"    # I
    .param p5, "owner"    # Ljava/lang/String;

    .line 689
    const-string v0, "physicalButton"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 691
    .local v0, "hasButton":Z
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->handleBiMassager(IILjava/lang/String;ILjava/lang/String;)V

    .line 693
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 695
    :cond_0
    const/16 v1, 0x8

    if-eq p2, v1, :cond_2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 708
    :pswitch_0
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeMassagerIntensity, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", intensity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", (effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", hasButton="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    goto/16 :goto_1

    .line 703
    :pswitch_1
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeMassagerEffect, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (intensity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hasButton="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    goto/16 :goto_1

    .line 698
    :pswitch_2
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string v3, "Start"

    goto :goto_0

    :cond_1
    const-string v3, "Stop"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Massager, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", intensity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (hasButton="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    goto :goto_1

    .line 713
    :cond_2
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onErrorMassager, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", operation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v3, p4, 0x4

    .line 714
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->parseOpCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", errCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, p4, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (hasButton="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 713
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :goto_1
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mListener:Ljava/util/List;

    monitor-enter v1

    .line 722
    :try_start_0
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;

    .line 723
    .local v3, "listener":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;->onMassagerEvent(IILjava/lang/String;I)V

    .line 724
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;
    goto :goto_2

    .line 725
    :cond_3
    monitor-exit v1

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showVibrateEvent(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p2, "type"    # I
    .param p3, "effect"    # Ljava/lang/String;
    .param p4, "data"    # I
    .param p5, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 762
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->handleBiVibrate(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    .line 764
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 766
    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 793
    :pswitch_1
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorVibrate, ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", operation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p4, 0x4

    .line 794
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->parseOpCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", errCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, p4, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 793
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 774
    :pswitch_2
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadVibrate, effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    if-eqz p4, :cond_1

    const-string v2, "succeed"

    goto :goto_0

    :cond_1
    const-string v2, "failed!"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 774
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    goto/16 :goto_4

    .line 790
    :pswitch_3
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeRhythmPattern, ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pattern="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    goto/16 :goto_4

    .line 785
    :pswitch_4
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeRhythmEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    const-string v2, " enable"

    goto :goto_1

    :cond_2
    const-string v2, " disable"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    goto :goto_4

    .line 780
    :pswitch_5
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    const-string v2, "Vibrate"

    goto :goto_2

    :cond_3
    const-string v2, "Rhythm"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Intensity, ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", intensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 780
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    goto :goto_4

    .line 769
    :pswitch_6
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    const-string v2, "Start"

    goto :goto_3

    :cond_4
    const-string v2, "Stop"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Vibrate, ids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    nop

    .line 800
    :goto_4
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 801
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;

    .line 802
    .local v2, "listener":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;->onVibrateEvent(Ljava/util/List;ILjava/lang/String;I)V

    .line 803
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;
    goto :goto_5

    .line 804
    :cond_5
    monitor-exit v0

    .line 805
    return-void

    .line 804
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private startDriverSeatMassager(III)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "mode"    # I
    .param p3, "intensity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 948
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDriverSeatMassager, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", intensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatMassagerMode(II)V

    .line 953
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatMassagerIntensity(II)V

    .line 954
    return-void
.end method

.method private stopDriverSeatMassager(I)V
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 957
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDriverSeatMassager, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->setDriverSeatMassagerMode(II)V

    .line 960
    return-void
.end method


# virtual methods
.method public declared-synchronized clearMassagerEffect()V
    .locals 1

    monitor-enter p0

    .line 1671
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1672
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mIntensityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1673
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mModeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1674
    monitor-exit p0

    return-void

    .line 1670
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw v0
.end method

.method public declared-synchronized clearVibrateEffect()V
    .locals 1

    monitor-enter p0

    .line 1731
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1732
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->initSoundPool()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    monitor-exit p0

    return-void

    .line 1730
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw v0
.end method

.method public declared-synchronized doVibrate(Ljava/util/List;Ljava/lang/String;II)I
    .locals 8
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "loop"    # I
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    .local p1, "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    monitor-enter p0

    .line 1800
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1801
    .local v0, "pid":I
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    .line 1803
    .local v6, "pkg":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkVibrateSeats(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkVibrateEffect(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p4}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1804
    :cond_0
    new-instance v7, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;-><init>(Ljava/util/List;Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendDoVibrate(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x2

    .line 1803
    :goto_1
    monitor-exit p0

    return v1

    .line 1799
    .end local v0    # "pid":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local p1    # "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    .end local p2    # "effect":Ljava/lang/String;
    .end local p3    # "loop":I
    .end local p4    # "position":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized getMassagerEffect(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    monitor-enter p0

    .line 1701
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderMassagerEffect(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized getMassagerIntensity(ILjava/lang/String;)I
    .locals 1
    .param p1, "id"    # I
    .param p2, "effect"    # Ljava/lang/String;

    monitor-enter p0

    .line 1713
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerEffect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderMassagerIntensity(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 1713
    :goto_0
    monitor-exit p0

    return v0

    .line 1712
    .end local p1    # "id":I
    .end local p2    # "effect":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized getMassagerStatus(I)I
    .locals 4
    .param p1, "id"    # I

    monitor-enter p0

    .line 1718
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerId(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 1720
    :try_start_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->isDriverSeatMassagerRunning(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->hasTaskRunning(I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 1721
    :catch_0
    move-exception v0

    .line 1722
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMassagerStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1723
    const/4 v1, -0x3

    monitor-exit p0

    return v1

    .line 1727
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v0, -0x2

    monitor-exit p0

    return v0

    .line 1717
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized getRhythmEnable(I)I
    .locals 1
    .param p1, "id"    # I

    monitor-enter p0

    .line 1796
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkVibrateId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmEnable(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    :goto_0
    monitor-exit p0

    return v0

    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized getRhythmIntensity(I)I
    .locals 1
    .param p1, "id"    # I

    monitor-enter p0

    .line 1826
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkVibrateId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmIntensity(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    monitor-exit p0

    return v0

    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized getRhythmPattern()I
    .locals 1

    monitor-enter p0

    .line 1834
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderRhythmPattern()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw v0
.end method

.method public getSeatMassagerNumbers()I
    .locals 1

    .line 1627
    const/4 v0, 0x4

    return v0
.end method

.method public getSeatVibrateNumbers()I
    .locals 1

    .line 1631
    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized getVibrateIntensity(I)I
    .locals 1
    .param p1, "id"    # I

    monitor-enter p0

    .line 1817
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkVibrateId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->getProviderVibrateIntensity(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    monitor-exit p0

    return v0

    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized loadMassagerEffect(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 1655
    :try_start_0
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->loadFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;

    .line 1657
    .local v0, "effect":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mEffectMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1658
    iget v1, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->intensity:I

    if-nez v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->intensity:I

    .line 1660
    .local v1, "intensity":I
    :goto_0
    const-string v2, "XpSeatMassagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMassagerEffect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mEffectMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mIntensityMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    new-instance v4, Landroid/util/Pair;

    iget-boolean v5, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->hasIntensity:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    iget-boolean v2, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->hasPreset:Z

    if-eqz v2, :cond_1

    .line 1665
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mModeMap:Ljava/util/Map;

    iget v3, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->mode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    .end local v1    # "intensity":I
    :cond_1
    monitor-exit p0

    return-void

    .line 1654
    .end local v0    # "effect":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Effect;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public loadVibrate(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)I
    .locals 4
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "effect"    # Ljava/lang/String;

    .line 1756
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, -0x6

    .line 1776
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1778
    goto :goto_0

    .line 1777
    :catch_0
    move-exception v1

    .line 1756
    :goto_0
    return v0

    .line 1757
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x7

    .line 1776
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1778
    goto :goto_1

    .line 1777
    :catch_1
    move-exception v1

    .line 1757
    :goto_1
    return v0

    .line 1758
    :cond_1
    :try_start_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "background"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1759
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    .line 1761
    .local v0, "sampleId":I
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVibrate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_2

    const-string v3, "succeed"

    goto :goto_2

    :cond_2
    const-string v3, "failed"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    if-lez v0, :cond_3

    .line 1764
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$lBNd0wguPgS9s2gIif9Z_7Pyncc;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$lBNd0wguPgS9s2gIif9Z_7Pyncc;-><init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;ILjava/lang/String;Landroid/content/res/AssetFileDescriptor;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1769
    const/4 v1, 0x0

    .line 1776
    :try_start_5
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1778
    goto :goto_3

    .line 1777
    :catch_2
    move-exception v2

    .line 1769
    :goto_3
    return v1

    .line 1776
    .end local v0    # "sampleId":I
    :cond_3
    :try_start_6
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1778
    :goto_4
    goto :goto_5

    .line 1777
    :catch_3
    move-exception v0

    .line 1779
    goto :goto_5

    .line 1775
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 1772
    :catch_4
    move-exception v0

    .line 1773
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v1, "XpSeatMassagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadVibrate exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1776
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 1781
    :goto_5
    const/4 v0, -0x2

    return v0

    .line 1775
    :goto_6
    nop

    .line 1776
    :try_start_9
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1778
    goto :goto_7

    .line 1777
    :catch_5
    move-exception v1

    .line 1778
    :goto_7
    throw v0
.end method

.method public loadVibrateEffect(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 1736
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, ".wav"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1738
    .local v0, "name":Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1740
    :try_start_0
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, p1, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 1742
    .local v1, "sampleId":I
    const-string v2, "XpSeatMassagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadVibrateEffect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_0

    const-string v4, " succeed"

    goto :goto_0

    :cond_0
    const-string v4, " failed!"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    if-lez v1, :cond_1

    .line 1745
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$IvFeVgNX7ZpiGUD5FeO9RM6fwwc;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerService$IvFeVgNX7ZpiGUD5FeO9RM6fwwc;-><init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1750
    .end local v1    # "sampleId":I
    :cond_1
    goto :goto_1

    .line 1749
    :catch_0
    move-exception v1

    .line 1752
    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized setMassagerEffect(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .param p2, "effect"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 1693
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1694
    .local v0, "pid":I
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 1696
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerIds(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerEffect(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1697
    :cond_0
    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendSetMassagerEffect(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x2

    .line 1696
    :goto_1
    monitor-exit p0

    return v2

    .line 1692
    .end local v0    # "pid":I
    .end local v1    # "pkg":Ljava/lang/String;
    .end local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "effect":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized setMassagerIntensity(Ljava/util/List;I)I
    .locals 5
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 1705
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1706
    .local v0, "pid":I
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 1708
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerIds(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerIntensity(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1709
    :cond_0
    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendSetMassagerIntensity(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1708
    :cond_1
    :goto_0
    const/4 v2, -0x2

    :goto_1
    monitor-exit p0

    return v2

    .line 1704
    .end local v0    # "pid":I
    .end local v1    # "pkg":Ljava/lang/String;
    .end local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "intensity":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized setRhythmEnable(Ljava/util/List;Z)I
    .locals 3
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 1789
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1790
    .local v0, "pid":I
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 1792
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkVibrateIds(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    invoke-direct {v2, p1, p2, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;-><init>(Ljava/util/List;ZLjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendSetRhythmEnable(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    :goto_0
    monitor-exit p0

    return v2

    .line 1788
    .end local v0    # "pid":I
    .end local v1    # "pkg":Ljava/lang/String;
    .end local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "enable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized setRhythmIntensity(Ljava/util/List;I)I
    .locals 1
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 1821
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkVibrateIds(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkVibrateIntensity(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1822
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendSetRhythmIntensity(Ljava/util/List;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x2

    .line 1821
    :goto_1
    monitor-exit p0

    return v0

    .line 1820
    .end local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "intensity":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized setRhythmPattern(I)I
    .locals 1
    .param p1, "pattern"    # I

    monitor-enter p0

    .line 1830
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkRhythmPattern(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendSetRhythmPattern(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    monitor-exit p0

    return v0

    .end local p1    # "pattern":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public setSeatMassagerListener(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;

    .line 1635
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSeatMassagerListener "

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

    .line 1637
    if-eqz p1, :cond_1

    .line 1638
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 1639
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1642
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized setVibrateIntensity(Ljava/util/List;I)I
    .locals 1
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 1812
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkVibrateIds(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkVibrateIntensity(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1813
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendSetVibrateIntensity(Ljava/util/List;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x2

    .line 1812
    :goto_1
    monitor-exit p0

    return v0

    .line 1811
    .end local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "intensity":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized showMassagerEffect()Ljava/util/List;
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

    .line 1677
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mEffectMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw v0
.end method

.method public declared-synchronized showVibrateEffect()Ljava/util/List;
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

    .line 1785
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mSoundMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw v0
.end method

.method public declared-synchronized startMassager(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .param p2, "effect"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .local p1, "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    monitor-enter p0

    .line 1681
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1682
    .local v0, "pid":I
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 1684
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerSeats(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerEffect(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1685
    :cond_0
    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, p2, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendStartMassager(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x2

    .line 1684
    :goto_1
    monitor-exit p0

    return v2

    .line 1680
    .end local v0    # "pid":I
    .end local v1    # "pkg":Ljava/lang/String;
    .end local p1    # "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    .end local p2    # "effect":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized stopMassager(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 1689
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->checkMassagerIds(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendStopMassager(Ljava/util/List;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    monitor-exit p0

    return v0

    .end local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw p1
.end method

.method public declared-synchronized stopVibrate()I
    .locals 1

    monitor-enter p0

    .line 1808
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->sendDoneVibrateDelayed(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    throw v0
.end method

.method public unsetSeatMassagerListener(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$SeatMassagerListener;

    .line 1645
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsetSeatMassagerListener "

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

    .line 1647
    if-eqz p1, :cond_1

    .line 1648
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 1649
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->mListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1650
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1652
    :cond_1
    :goto_1
    return-void
.end method
