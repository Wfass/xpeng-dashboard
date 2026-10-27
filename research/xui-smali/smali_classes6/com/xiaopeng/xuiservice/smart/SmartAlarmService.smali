.class public Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$InstanceHolder;,
        Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;,
        Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;,
        Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;,
        Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;,
        Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;,
        Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;,
        Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;,
        Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Osd;,
        Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;,
        Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;,
        Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;
    }
.end annotation


# static fields
.field private static final DEFAULT:I = 0x7

.field private static final DONE:I = 0x1

.field private static final ERROR:I = 0x2

.field private static final FRONT:I = 0x7

.field private static final HEAD:I = 0x17

.field private static final IG_ON:I = 0x1

.field private static final KEY_LDW_MODE:Ljava/lang/String; = "lcc_ldw_type"

.field private static final KEY_SIMPLE_MODE:Ljava/lang/String; = "ngp_broadcast_type"

.field private static final KEY_VOL_LEVEL:Ljava/lang/String; = "DangerousSoundEffectVolLevel"

.field private static final KEY_XPILOT_STATUS:Ljava/lang/String; = "curXPilotStatus"

.field private static final MESSAGE_MODE_INDEX:I = 0x0

.field private static final MESSAGE_ONPLAY:I = 0x6

.field private static final MESSAGE_ONSPEECH:I = 0x7

.field private static final MESSAGE_PLAY_OSD:I = 0x3

.field private static final MESSAGE_PLAY_SOUND:I = 0x1

.field private static final MESSAGE_SPEECH:I = 0x5

.field private static final MESSAGE_STOP_OSD:I = 0x4

.field private static final MESSAGE_STOP_SOUND:I = 0x2

.field private static final REAR:I = 0x6

.field private static final RESTART:I = 0x4

.field private static final SIGNAL_PATH:Ljava/lang/String; = "xpilot/signalmap/"

.field private static final SOUND_PATH:Ljava/lang/String; = "/system/media/audio/xiaopeng/xpilot/wav/"

.field private static final START:I = 0x0

.field private static final STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SmartAlarmService"

.field private static final TYPE_SOUND:I = 0x1

.field private static final TYPE_TTS:I

.field private static hasIgOn:Z

.field private static hasInit:Z

.field private static hasSimpleMode:Z

.field private static final hasStereo:Z

.field private static mAccExitPassively:Z

.field private static mAccLccExitPassively:Z

.field private static mLccExitPassively:Z

.field private static mRand:Ljava/util/Random;

.field private static mSigMapModeIndex:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;


# instance fields
.field private mBiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;",
            ">;"
        }
    .end annotation
.end field

.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private mCommonEventListener:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;

.field private mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastSignal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mModeIndex:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;

.field private mPackage:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;

.field private mScuCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

.field private mSigMapName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSigMapSound:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSigMapSpeech:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSigSetOsd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSigSetSpeech:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimpleMode:Landroid/database/ContentObserver;

.field private mSoundPlay:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

.field private mSpeechTts:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

.field private mToast:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;

.field private mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mVpmCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

.field private mXpuCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isAudioStereoEnable()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasStereo:Z

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasInit:Z

    .line 105
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasIgOn:Z

    .line 106
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasSimpleMode:Z

    .line 107
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccExitPassively:Z

    .line 108
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mLccExitPassively:Z

    .line 109
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccLccExitPassively:Z

    .line 126
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mRand:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1411
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSoundPlay:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    .line 113
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSpeechTts:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    .line 120
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mXpuCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 121
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 122
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 123
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mVpmCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    .line 124
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mScuCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    .line 127
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mPackage:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;

    .line 128
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mToast:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;

    .line 129
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mModeIndex:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;

    .line 130
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mLastSignal:Ljava/util/Map;

    .line 131
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSound:Ljava/util/Map;

    .line 132
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSpeech:Ljava/util/Map;

    .line 133
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapName:Ljava/util/Map;

    .line 134
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mBiMap:Ljava/util/Map;

    .line 135
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigSetSpeech:Ljava/util/Set;

    .line 136
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigSetOsd:Ljava/util/Set;

    .line 138
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 139
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSimpleMode:Landroid/database/ContentObserver;

    .line 1413
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmartAlertThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1414
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1416
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    .line 1590
    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapName:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mPackage:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->dispatch(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;II)V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasIgOn:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 68
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasIgOn:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->stopSpeechAndSound()V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mModeIndex:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->handleAccLccExitReason(II)V

    return-void
.end method

.method static synthetic access$2100()Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;
    .locals 1

    .line 68
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapModeIndex:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    .line 68
    sput-object p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapModeIndex:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->handleDelayedModeIndex(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasConditionDoorsStatus(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p1, "x1"    # Z

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getDoorsState(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasConditionFixedVolume(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getVolume()F

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mBiMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getSoundPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasSimpleMode:Z

    return v0
.end method

.method static synthetic access$3000()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasStereo:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 68
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasSimpleMode:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSoundPlay:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mToast:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->parseEvent(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigSetSpeech:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getSimpleMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSpeechTts:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;ILcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->handleSpeechTts(ILcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/Random;
    .locals 1

    .line 68
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mRand:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p1, "x1"    # Z

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->restrictFullScreenApps(Z)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccExitPassively:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mLccExitPassively:Z

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccLccExitPassively:Z

    return v0
.end method

.method private addMcuManagerCallback()V
    .locals 1

    .line 1104
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 1128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 1129
    return-void
.end method

.method private addScuManagerCallback()V
    .locals 3

    .line 1205
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1206
    .local v0, "files":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const v1, 0x2140264b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_mode_index.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const v1, 0x21402634

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_acc_st.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    const v1, 0x2140261b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_operation_tips.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    const v1, 0x2140268c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_acc_rd_voice_tips.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const v1, 0x21402625

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_rcta_left_warning.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const v1, 0x21402626

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_rcta_right_warning.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    const v1, 0x2140267e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_dow_lwarning.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const v1, 0x2140267f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_dow_rwarning.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    nop

    .line 1215
    const v1, 0x214026a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_sdc_ctrl_uradarvoice_tone.json"

    .line 1214
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const v1, 0x21402627

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_longctrl_remind.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    const v1, 0x21402629

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_latctrl_remind.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const v1, 0x21402687

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_latctrl_remind_2.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    const v1, 0x214026d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_aeb_alarm_swst.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const v1, 0x214026d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_dsm_remind.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    const v1, 0x21402672

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_alcctrl_remind.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const v1, 0x2140268e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_lka_state.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const v1, 0x21402680

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_acc_lka_warning.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const v1, 0x21412656

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_ldw_warning.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    const v1, 0x21412654

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_rcta_warning.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    const v1, 0x214026ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scu_spdlit_vocremind.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1230
    .local v1, "signals":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;>;"
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->loadSignalMapArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1232
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;

    invoke-direct {v2, p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$6;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Landroid/util/ArrayMap;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mScuCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    .line 1274
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mScuCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V

    .line 1275
    return-void
.end method

.method private addVcuManagerCallback()V
    .locals 3

    .line 1132
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1133
    .local v0, "files":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const v1, 0x21601225

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vcu_raw_car_speed.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1136
    .local v1, "signals":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;>;"
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->loadSignalMapArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1138
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$4;

    invoke-direct {v2, p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$4;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Landroid/util/ArrayMap;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 1167
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 1168
    return-void
.end method

.method private addVpmManagerCallback()V
    .locals 3

    .line 1171
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1172
    .local v0, "files":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const v1, 0x2140265d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vpm_ldw_left_warning_st.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    const v1, 0x2140265c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vpm_ldw_right_warning_st.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    const v1, 0x214026d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vpm_rdp_left_warning_st.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    const v1, 0x214026d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vpm_rdp_right_warning_st.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1178
    .local v1, "signals":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;>;"
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->loadSignalMapArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1180
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$5;

    invoke-direct {v2, p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$5;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Landroid/util/ArrayMap;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mVpmCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    .line 1201
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mVpmCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addVpmManagerListener(Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;)V

    .line 1202
    return-void
.end method

.method private addXpuManagerCallback()V
    .locals 5

    .line 1046
    const v0, 0x21703811

    .line 1047
    .local v0, "signalId":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1048
    .local v1, "signals":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1050
    .local v2, "files":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    add-int/lit8 v3, v0, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "rdmodulecom_11.json"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    add-int/lit8 v3, v0, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "rdmodulecom_13.json"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->loadSignalMapArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1054
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;ILandroid/util/ArrayMap;)V

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mXpuCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 1076
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mXpuCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V

    .line 1077
    return-void
.end method

.method private declared-synchronized dispatch(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;II)V
    .locals 7
    .param p1, "signalMap"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;
    .param p2, "signalId"    # I
    .param p3, "signalVal"    # I

    monitor-enter p0

    .line 1009
    if-eqz p1, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasInit:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasIgOn:Z

    if-eqz v0, :cond_0

    .line 1010
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasDuplicated(II)Z

    move-result v0

    .line 1011
    .local v0, "duplicated":Z
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->makeSignal(II)I

    move-result v1

    .line 1013
    .local v1, "signal":I
    if-nez v0, :cond_0

    .line 1014
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1016
    .local v2, "ts":J
    const-string v4, "SmartAlarmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;->access$1400(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ], ts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mLastSignal:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    invoke-virtual {p1, p3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;->getTtsPolicy(I)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->dispatchSpeech(Ljava/util/List;IJ)V

    .line 1022
    invoke-virtual {p1, p3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;->getSoundPolicy(I)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;

    move-result-object v4

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->dispatchSound(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;IJ)V

    .line 1023
    invoke-virtual {p1, p3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;->getOsdPolicy(I)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Osd;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->dispatchOsd(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Osd;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "duplicated":Z
    .end local v1    # "signal":I
    .end local v2    # "ts":J
    goto :goto_0

    .line 1008
    .end local p1    # "signalMap":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;
    .end local p2    # "signalId":I
    .end local p3    # "signalVal":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    throw p1

    .line 1026
    .restart local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .restart local p1    # "signalMap":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;
    .restart local p2    # "signalId":I
    .restart local p3    # "signalVal":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private dispatchOsd(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Osd;I)V
    .locals 2
    .param p1, "osd"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Osd;
    .param p2, "signalId"    # I

    .line 993
    if-eqz p1, :cond_0

    .line 994
    iget v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Osd;->type:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->handleStartOsd(I)V

    .line 995
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigSetOsd:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigSetOsd:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigSetOsd:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 998
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigSetOsd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->handleStopOsd()V

    .line 1002
    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchSound(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;IJ)V
    .locals 11
    .param p1, "sound"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;
    .param p2, "signal"    # I
    .param p3, "ts"    # J

    .line 873
    shr-int/lit8 v0, p2, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 874
    .local v0, "signalId":I
    and-int/2addr v1, p2

    .line 876
    .local v1, "signalVal":I
    if-eqz p1, :cond_3

    .line 877
    iget-boolean v2, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->hasSimpleMute:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasSimpleMode:Z

    if-eqz v2, :cond_0

    return-void

    .line 879
    :cond_0
    iget-object v2, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasConditionSimpleSound(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasSimpleMode:Z

    if-nez v2, :cond_1

    return-void

    .line 881
    :cond_1
    iget-object v2, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasConditionLdwType(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 882
    const-string v2, "SmartAlarmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ldwMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getLdwMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", param="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    iget v4, v4, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->parameter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getLdwMode()I

    move-result v3

    shl-int/2addr v2, v3

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    iget v3, v3, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->parameter:I

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    return-void

    .line 887
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSound:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;

    move-object v5, v2

    move-object v6, p0

    move-object v7, p1

    move v8, p2

    move-wide v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;IJ)V

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->handlePlaySound(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;)V

    goto :goto_0

    .line 889
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSound:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 890
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSound:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->makeSignal(II)I

    move-result v2

    .line 892
    .local v2, "last":I
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->handleStopSound(I)V

    .line 893
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSound:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .end local v2    # "last":I
    :cond_4
    :goto_0
    return-void
.end method

.method private dispatchSpeech(Ljava/util/List;IJ)V
    .locals 17
    .param p2, "signal"    # I
    .param p3, "ts"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;",
            ">;IJ)V"
        }
    .end annotation

    .local p1, "ttsArray":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;>;"
    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 898
    shr-int/lit8 v0, v2, 0x10

    const v3, 0xffff

    and-int/2addr v3, v0

    .line 899
    .local v3, "signalId":I
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapName:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 901
    .local v4, "name":Ljava/lang/String;
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSpeech:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSpeech:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 904
    .local v0, "last":I
    if-eq v0, v2, :cond_0

    .line 905
    const-string v5, "SmartAlarmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove delay message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-object v5, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 908
    iget-object v5, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSpeech:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    .end local v0    # "last":I
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;

    .line 913
    .local v5, "tts":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;
    iget v6, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->priority:I

    .line 914
    .local v6, "priority":I
    const/4 v7, 0x0

    .line 916
    .local v7, "useSimpleContent":Z
    iget-object v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    if-eqz v8, :cond_1

    iget-object v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    iget-object v8, v8, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 917
    const-string v8, "SmartAlarmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tts condition="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    iget-object v10, v10, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", parameter="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    iget v10, v10, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->parameter:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_1
    iget-boolean v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->hasOnlyOnce:Z

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigSetSpeech:Ljava/util/Set;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    return-void

    .line 924
    :cond_2
    iget-object v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    invoke-direct {v1, v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasConditionNgpTriggered(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mModeIndex:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;

    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->hasNgpTriggered()Z

    move-result v8

    if-eqz v8, :cond_3

    return-void

    .line 926
    :cond_3
    iget-object v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    invoke-direct {v1, v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasConditionBcmWiperSpeed(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 928
    :try_start_0
    iget-object v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    iget v8, v8, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->parameter:I

    .line 929
    .local v8, "value":I
    iget-object v9, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v9}, Landroid/car/hardware/bcm/CarBcmManager;->getWiperSpeedSwitchState()I

    move-result v9

    .line 931
    .local v9, "state":I
    const-string v10, "SmartAlarmService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getWiperSpeedSwitchState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    if-eq v9, v8, :cond_4

    return-void

    .line 937
    .end local v8    # "value":I
    .end local v9    # "state":I
    :cond_4
    goto :goto_1

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "SmartAlarmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getWiperSpeedSwitchState failed, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    return-void

    .line 940
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    iget-object v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    invoke-direct {v1, v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasConditionVcuRawCarSpeed(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 942
    :try_start_1
    iget-object v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    iget v8, v8, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->parameter:I

    .line 943
    .local v8, "limit":I
    iget-object v9, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v9}, Landroid/car/hardware/vcu/CarVcuManager;->getRawCarSpeed()F

    move-result v9

    .line 944
    .local v9, "speed":F
    iget-object v10, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v10}, Landroid/car/hardware/vcu/CarVcuManager;->getPureDriveModeFeedback()I

    move-result v10

    .line 946
    .local v10, "driveMode":I
    const-string v11, "SmartAlarmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getRawCarSpeed="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", limitSpeed="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", driveMode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 950
    int-to-float v11, v8

    cmpg-float v11, v9, v11

    if-lez v11, :cond_7

    if-eqz v10, :cond_6

    goto :goto_2

    .line 954
    .end local v8    # "limit":I
    .end local v9    # "speed":F
    .end local v10    # "driveMode":I
    :cond_6
    goto :goto_3

    .line 950
    .restart local v8    # "limit":I
    .restart local v9    # "speed":F
    .restart local v10    # "driveMode":I
    :cond_7
    :goto_2
    return-void

    .line 951
    .end local v8    # "limit":I
    .end local v9    # "speed":F
    .end local v10    # "driveMode":I
    :catch_1
    move-exception v0

    .line 952
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "SmartAlarmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRawCarSpeed or getPureDriveModeFeedback failed, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    return-void

    .line 957
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_3
    iget-object v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    invoke-direct {v1, v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasConditionUseSimpleTtsExceptFirstTime(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 958
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigSetSpeech:Ljava/util/Set;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 959
    const/4 v7, 0x1

    goto :goto_4

    .line 961
    :cond_9
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigSetSpeech:Ljava/util/Set;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 965
    :cond_a
    :goto_4
    sget-boolean v8, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasSimpleMode:Z

    if-eqz v8, :cond_b

    iget-boolean v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->hasSimpleContent:Z

    if-nez v8, :cond_c

    :cond_b
    if-eqz v7, :cond_d

    :cond_c
    const/4 v8, 0x1

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    .line 966
    .local v8, "hasSimple":Z
    :goto_5
    if-nez v8, :cond_f

    iget-object v11, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->resId:Ljava/lang/String;

    if-nez v11, :cond_e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->value:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_e
    iget-object v11, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->resId:Ljava/lang/String;

    goto :goto_6

    .line 967
    :cond_f
    iget-object v11, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->resSimpleId:Ljava/lang/String;

    if-nez v11, :cond_10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->value:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_simple"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_10
    iget-object v11, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->resSimpleId:Ljava/lang/String;

    .line 968
    .local v11, "stringId":Ljava/lang/String;
    :goto_6
    invoke-virtual {v5, v11}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->getTtsContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 970
    .local v12, "content":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 971
    iget v13, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->strategy:I

    const/4 v14, 0x5

    if-eqz v13, :cond_11

    move v13, v2

    goto :goto_7

    :cond_11
    move v13, v14

    .line 973
    .local v13, "messageId":I
    :goto_7
    if-eq v13, v14, :cond_12

    .line 974
    iget-object v14, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSpeech:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    :cond_12
    new-instance v9, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;

    move-wide/from16 v14, p3

    invoke-direct {v9, v1, v14, v15}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;J)V

    .line 978
    .local v9, "speech":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;
    invoke-virtual {v9, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->setSignal(I)V

    .line 979
    invoke-virtual {v9, v12}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->setContent(Ljava/lang/String;)V

    .line 980
    iget v10, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->priority:I

    invoke-virtual {v9, v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->setPriority(I)V

    .line 981
    iget v10, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->delay:I

    invoke-virtual {v9, v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->setDelay(I)V

    .line 982
    iget-boolean v10, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->hasShutUp:Z

    invoke-virtual {v9, v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->setShutUp(Z)V

    .line 983
    iget-object v10, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    invoke-direct {v1, v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getConditionNightDelay(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->setNightDelay(I)V

    .line 984
    iget v10, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->strategy:I

    move-object/from16 v16, v0

    const/4 v0, 0x2

    if-ne v10, v0, :cond_13

    const/4 v0, 0x1

    goto :goto_8

    :cond_13
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->setLoop(Z)V

    .line 985
    iget-boolean v0, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->hasOnlyOnce:Z

    invoke-virtual {v9, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->setOnlyOnce(Z)V

    .line 987
    invoke-direct {v1, v13, v9}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->handleSpeechTts(ILcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)V

    .end local v5    # "tts":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;
    .end local v6    # "priority":I
    .end local v7    # "useSimpleContent":Z
    .end local v8    # "hasSimple":Z
    .end local v9    # "speech":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;
    .end local v11    # "stringId":Ljava/lang/String;
    .end local v12    # "content":Ljava/lang/String;
    .end local v13    # "messageId":I
    goto :goto_9

    .line 989
    :cond_14
    move-wide/from16 v14, p3

    move-object/from16 v16, v0

    .line 912
    :goto_9
    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 990
    :cond_15
    move-wide/from16 v14, p3

    return-void
.end method

.method private getAlertBaseTime()Ljava/lang/String;
    .locals 2

    .line 196
    const-string v0, "persist.alert.basetime"

    const-string v1, "06:00"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConditionNightDelay(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)I
    .locals 2
    .param p1, "dependence"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    .line 848
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    .line 849
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    const-string v1, "night_delay"

    .line 850
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->parameter:I

    return v0

    .line 855
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getDoorsState(Z)I
    .locals 6
    .param p1, "leftSide"    # Z

    .line 860
    xor-int/lit8 v0, p1, 0x1

    .local v0, "front":I
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 861
    .local v1, "rear":I
    :goto_0
    const/4 v2, 0x7

    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v3}, Landroid/car/hardware/bcm/CarBcmManager;->getDoorsState()[I

    move-result-object v3

    .line 863
    .local v3, "states":[I
    aget v4, v3, v0

    aget v5, v3, v1

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 864
    :cond_1
    aget v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x6

    .line 863
    :goto_1
    return v2

    .line 865
    .end local v0    # "front":I
    .end local v1    # "rear":I
    .end local v3    # "states":[I
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartAlarmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoorsState failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .end local v0    # "e":Ljava/lang/Exception;
    return v2
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .locals 1

    .line 1598
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$InstanceHolder;->access$4300()Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    move-result-object v0

    return-object v0
.end method

.method private getLdwMode()I
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcc_ldw_type"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSimpleMode()Z
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ngp_broadcast_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private getSoundPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .line 152
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->isDrivingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private getVolume()F
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DangerousSoundEffectVolLevel"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private handleAccLccExitReason(II)V
    .locals 5
    .param p1, "signalId"    # I
    .param p2, "signalVal"    # I

    .line 738
    const/16 v0, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x214026ac

    if-ne p1, v3, :cond_1

    .line 739
    if-eq p2, v0, :cond_0

    const/16 v0, 0xf

    if-eq p2, v0, :cond_0

    move v1, v2

    nop

    :cond_0
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccExitPassively:Z

    .line 740
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccExitPassively:Z

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccLccExitPassively:Z

    .line 742
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccExitPassively "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccExitPassively:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccLccExitPassively "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccLccExitPassively:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 744
    :cond_1
    const v3, 0x214026ab

    if-ne p1, v3, :cond_3

    .line 745
    const/16 v0, 0x14

    if-eq p2, v0, :cond_2

    move v1, v2

    nop

    :cond_2
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mLccExitPassively:Z

    .line 747
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LccExitPassively "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mLccExitPassively:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 748
    :cond_3
    const v3, 0x21402627

    if-ne p1, v3, :cond_6

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    const/16 v4, 0x8

    if-ne p2, v4, :cond_6

    .line 750
    :cond_4
    if-eq p2, v3, :cond_5

    move v1, v2

    nop

    :cond_5
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccExitPassively:Z

    .line 752
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccExitPassively "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccExitPassively:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 753
    :cond_6
    const v3, 0x21402629

    if-ne p1, v3, :cond_9

    const/4 v3, 0x6

    if-eq p2, v3, :cond_7

    const/16 v4, 0xa

    if-eq p2, v4, :cond_7

    if-ne p2, v0, :cond_9

    .line 755
    :cond_7
    if-eq p2, v3, :cond_8

    move v1, v2

    nop

    :cond_8
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mLccExitPassively:Z

    .line 756
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mLccExitPassively:Z

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccLccExitPassively:Z

    .line 758
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LccExitPassively "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mLccExitPassively:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccLccExitPassively "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mAccLccExitPassively:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_9
    :goto_0
    return-void
.end method

.method private handleDelayedModeIndex(I)V
    .locals 4
    .param p1, "signalVal"    # I

    .line 729
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 730
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 731
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 732
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 734
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 735
    return-void
.end method

.method private handlePlaySound(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;)V
    .locals 4
    .param p1, "playSound"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;

    .line 701
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePlaySound after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->sound:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;

    iget v2, v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->delay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s, signal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->signal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 706
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 707
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 708
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 710
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->sound:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;

    iget v1, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->delay:I

    if-lez v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->sound:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;

    iget v2, v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->delay:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 715
    :goto_0
    return-void
.end method

.method private handleSpeechTts(ILcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)V
    .locals 7
    .param p1, "messageId"    # I
    .param p2, "speech"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;

    .line 764
    const-string v0, "%tR"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "now":Ljava/lang/String;
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getAlertBaseTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    move v4, v1

    nop

    :cond_0
    move v2, v4

    .line 766
    .local v2, "hasNight":Z
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v2, :cond_1

    invoke-static {p2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->access$1200(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)I

    move-result v3

    .line 768
    .local v3, "delay":I
    :goto_0
    const-string v4, "SmartAlarmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSpeechTts after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "s, signal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 771
    .local v4, "message":Landroid/os/Message;
    iput p1, v4, Landroid/os/Message;->what:I

    .line 772
    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 773
    invoke-virtual {v4, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 775
    if-lez v3, :cond_2

    .line 776
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v5, v3, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 778
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 780
    :goto_1
    return-void
.end method

.method private handleStartOsd(I)V
    .locals 2
    .param p1, "type"    # I

    .line 783
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 784
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 785
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 786
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 788
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 789
    return-void
.end method

.method private handleStopOsd()V
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 793
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 794
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 796
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 797
    return-void
.end method

.method private handleStopSound(I)V
    .locals 3
    .param p1, "signal"    # I

    .line 718
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStopSound, signal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 721
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 722
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 723
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 725
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 726
    return-void
.end method

.method private hasConditionBcmWiperSpeed(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z
    .locals 2
    .param p1, "dependence"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    .line 824
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    .line 825
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    const-string v1, "bcm_wiper_speed_equal"

    .line 826
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 824
    :goto_0
    return v0
.end method

.method private hasConditionDoorsStatus(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z
    .locals 2
    .param p1, "dependence"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    .line 806
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    .line 807
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    const-string v1, "doors_status"

    .line 808
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 806
    :goto_0
    return v0
.end method

.method private hasConditionFixedVolume(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z
    .locals 2
    .param p1, "dependence"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    .line 812
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    .line 813
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    const-string v1, "fixed_volume"

    .line 814
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 812
    :goto_0
    return v0
.end method

.method private hasConditionLdwType(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z
    .locals 2
    .param p1, "dependence"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    .line 842
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    .line 843
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    const-string v1, "ldw_switch_mask"

    .line 844
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 842
    :goto_0
    return v0
.end method

.method private hasConditionNgpTriggered(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z
    .locals 2
    .param p1, "dependence"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    .line 836
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    .line 837
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    const-string v1, "check_ngp_triggered"

    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 836
    :goto_0
    return v0
.end method

.method private hasConditionSimpleSound(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z
    .locals 2
    .param p1, "dependence"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    .line 800
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    .line 801
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    const-string v1, "use_simple_sound"

    .line 802
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 800
    :goto_0
    return v0
.end method

.method private hasConditionUseSimpleTtsExceptFirstTime(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z
    .locals 2
    .param p1, "dependence"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    .line 818
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    .line 819
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    const-string v1, "use_simple_tts_except_first_time"

    .line 820
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 818
    :goto_0
    return v0
.end method

.method private hasConditionVcuRawCarSpeed(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z
    .locals 2
    .param p1, "dependence"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    .line 830
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    .line 831
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->condition:Ljava/lang/String;

    const-string v1, "vcu_car_speed_greater"

    .line 832
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 830
    :goto_0
    return v0
.end method

.method private hasDuplicated(II)Z
    .locals 2
    .param p1, "signalId"    # I
    .param p2, "signalVal"    # I

    .line 1005
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mLastSignal:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mLastSignal:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasFullScreenAppsAvailable()Z
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "curXPilotStatus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static synthetic lambda$onInit$0(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;III)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "signal"    # I
    .param p3, "streamId"    # I

    .line 1369
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1371
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1372
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1373
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1374
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1376
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1377
    return-void
.end method

.method public static synthetic lambda$onInit$1(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "ttsId"    # Ljava/lang/String;

    .line 1383
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1385
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1386
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1387
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1389
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1390
    return-void
.end method

.method private declared-synchronized loadSignalMapArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;",
            ">;)V"
        }
    .end annotation

    .line 1031
    .local p1, "files":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p2, "signals":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;>;"
    monitor-enter p0

    .line 1031
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1032
    .local v1, "signalId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xpilot/signalmap/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/util/xpSysConfigUtil;->getConfigContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1033
    .local v2, "content":Ljava/lang/String;
    const-class v3, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->readFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    .line 1034
    .local v3, "signalMap":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->makeSignal(II)I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 1036
    .local v4, "key":I
    if-eqz v3, :cond_0

    .line 1037
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapName:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;->getSignalName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1040
    :cond_0
    const-string v5, "SmartAlarmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    .end local v1    # "signalId":I
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "signalMap":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;
    .end local v4    # "key":I
    :goto_1
    goto :goto_0

    .line 1043
    :cond_1
    monitor-exit p0

    return-void

    .line 1030
    .end local p1    # "files":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local p2    # "signals":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 1030
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    throw p1
.end method

.method private parseEvent(I)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I

    .line 680
    packed-switch p1, :pswitch_data_0

    .line 693
    const-string v0, "Unknown"

    return-object v0

    .line 690
    :pswitch_0
    const-string v0, "restart"

    return-object v0

    .line 688
    :pswitch_1
    const-string v0, "stop"

    return-object v0

    .line 686
    :pswitch_2
    const-string v0, "error"

    return-object v0

    .line 684
    :pswitch_3
    const-string v0, "done"

    return-object v0

    .line 682
    :pswitch_4
    const-string v0, "start"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerObserver()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ngp_broadcast_type"

    .line 187
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSimpleMode:Landroid/database/ContentObserver;

    .line 186
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    return-void
.end method

.method private removeCarListener()V
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mXpuCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mXpuCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->removeXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 1282
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 1283
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mVpmCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->removeVpmManagerListener(Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;)V

    .line 1284
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mScuCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->removeScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V

    .line 1285
    return-void
.end method

.method private removeCommonEventListener()V
    .locals 2

    .line 1298
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCommonEventListener:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->unregisterListener(Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    :cond_0
    goto :goto_0

    .line 1301
    :catch_0
    move-exception v0

    .line 1303
    :goto_0
    return-void
.end method

.method private restrictFullScreenApps(Z)V
    .locals 4
    .param p1, "status"    # Z

    .line 173
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasFullScreenAppsAvailable()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 174
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restrictFullScreenApps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "curXPilotStatus"

    .line 176
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_1
    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartAlarmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restrictFullScreenApps failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private declared-synchronized stopSpeechAndSound()V
    .locals 5

    monitor-enter p0

    .line 1080
    :try_start_0
    const-string v0, "SmartAlarmService"

    const-string v1, "stopSpeechAndSound"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1084
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSpeech:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1085
    .local v1, "signalId":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSpeech:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1086
    .end local v1    # "signalId":I
    goto :goto_0

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSound:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1089
    .restart local v1    # "signalId":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSound:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->makeSignal(II)I

    move-result v2

    .line 1090
    .local v2, "signal":I
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->handleStopSound(I)V

    .line 1091
    .end local v1    # "signalId":I
    .end local v2    # "signal":I
    goto :goto_1

    .line 1093
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->handleStopOsd()V

    .line 1095
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mModeIndex:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->clearStatus()V

    .line 1096
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigSetSpeech:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1097
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigSetOsd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1098
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mLastSignal:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1099
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSpeech:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1100
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSigMapSound:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    monitor-exit p0

    return-void

    .line 1079
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    throw v0
.end method

.method private unregisterObserver()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSimpleMode:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 193
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1603
    const-string v0, "*dump-SmartAlarmService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1605
    if-eqz p2, :cond_4

    .line 1606
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 1607
    aget-object v2, p2, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x100eb81f

    if-eq v4, v5, :cond_1

    const v5, 0xa7efef8

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "--getLocaleStringArray"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const-string v4, "--getLocaleString"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 1616
    :pswitch_0
    array-length v2, p2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_3

    .line 1617
    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/util/LocaleStrings;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1619
    .local v2, "contents":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocaleStringArray: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1620
    .end local v2    # "contents":[Ljava/lang/String;
    goto :goto_3

    .line 1609
    :pswitch_1
    array-length v2, p2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_3

    .line 1610
    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1612
    .local v2, "content":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocaleString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    .end local v2    # "content":Ljava/lang/String;
    nop

    .line 1606
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1627
    .end local v1    # "i":I
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 1631
    const-string v0, "SmartAlarmService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 0

    .line 1289
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addXpuManagerCallback()V

    .line 1290
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addMcuManagerCallback()V

    .line 1291
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addVcuManagerCallback()V

    .line 1292
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addVpmManagerCallback()V

    .line 1293
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->addScuManagerCallback()V

    .line 1294
    return-void
.end method

.method protected initXUIManager()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1307
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->initXUIManager()V

    .line 1309
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1311
    :cond_0
    const/4 v0, 0x3

    .line 1312
    .local v0, "MSG_NAVI_EVENT":I
    const v1, 0xbc6151    # 1.7299984E-38f

    .line 1314
    .local v1, "signalId":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1315
    .local v2, "files":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const v3, 0xbc6151    # 1.7299984E-38f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "xui_context_common_navi.json"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1318
    .local v3, "signals":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;>;"
    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->loadSignalMapArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1320
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    .line 1321
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$7;

    invoke-direct {v4, p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$7;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Landroid/util/ArrayMap;)V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCommonEventListener:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;

    .line 1331
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCommonEventListener:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->registerListener(Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    goto :goto_0

    .line 1332
    :catch_0
    move-exception v4

    .line 1334
    :goto_0
    return-void
.end method

.method public makeSignal(II)I
    .locals 2
    .param p1, "signalId"    # I
    .param p2, "signalVal"    # I

    .line 697
    shl-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 1636
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 4

    .line 1338
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    .line 1340
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasIgOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    goto :goto_1

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartAlarmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIgStatusFromMcu failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 1346
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 1348
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarManagerInited, hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasIgOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    return-void
.end method

.method protected onInit()V
    .locals 5

    .line 1353
    const-string v0, "SmartAlarmService"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->registerObserver()V

    .line 1356
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->restrictFullScreenApps(Z)V

    .line 1357
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->getSimpleMode()Z

    move-result v1

    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasSimpleMode:Z

    .line 1358
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mToast:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->access$2300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;)V

    .line 1360
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSoundPlay:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    .line 1361
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSoundPlay:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    if-eqz v1, :cond_1

    .line 1362
    const-string v1, "/system/media/audio/xiaopeng/xpilot/wav/"

    const-string/jumbo v2, "wav"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1364
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1365
    .local v3, "file":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSoundPlay:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->load(Ljava/lang/String;)V

    .line 1366
    .end local v3    # "file":Ljava/lang/String;
    goto :goto_0

    .line 1368
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSoundPlay:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    new-instance v3, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartAlarmService$HfIMSIA28micUjuZNka_EYqMdeg;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartAlarmService$HfIMSIA28micUjuZNka_EYqMdeg;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->addPlaySoundEventListener(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySoundEventListener;)V

    .line 1380
    .end local v1    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSpeechTts:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    .line 1381
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSpeechTts:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    if-eqz v1, :cond_2

    .line 1382
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSpeechTts:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartAlarmService$c1WetnvjFIleUA8HfigAjOkShnk;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartAlarmService$c1WetnvjFIleUA8HfigAjOkShnk;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->addSpeechTtsEventListener(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;)V

    .line 1393
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSoundPlay:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mSpeechTts:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    nop

    :cond_3
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasInit:Z

    .line 1395
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasInit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasIgOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasSimpleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->hasSimpleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 1402
    const-string v0, "SmartAlarmService"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->unregisterObserver()V

    .line 1405
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->removeCarListener()V

    .line 1406
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->removeCommonEventListener()V

    .line 1407
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1408
    return-void
.end method
