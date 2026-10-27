.class public Lcom/xiaopeng/xuiservice/smart/SmartLluService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartLluService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;,
        Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;,
        Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;,
        Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;,
        Lcom/xiaopeng/xuiservice/smart/SmartLluService$InstanceHolder;,
        Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;,
        Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;
    }
.end annotation


# static fields
.field private static AiLluMode:I = 0x0

.field private static final DBG:Z = true

.field private static final ErrorCode_Common:I = -0x4

.field private static final ErrorCode_DanceError:I = -0x1000

.field private static final ErrorCode_Forbidden:I = -0x1

.field private static final ErrorCode_NoFocus:I = -0x2

.field public static INFINITE_FRONTLIGHT_COUNT:I = 0x0

.field public static INFINITE_REARLIGHT_COUNT:I = 0x0

.field private static final LIGHT_EFFECT_ACCHARGE:I = 0x6

.field private static final LIGHT_EFFECT_AWAKE:I = 0x2

.field private static final LIGHT_EFFECT_DCCHARGE:I = 0x7

.field private static final LIGHT_EFFECT_FINDCAR:I = 0x1

.field private static final LIGHT_EFFECT_SHOWOFF:I = 0xa

.field private static final LIGHT_EFFECT_SLEEP:I = 0x5

.field private static final LIGHT_EFFECT_TAKEPHOTO:I = 0x9

.field private static final LLU_EFFECT_CLOSE:I = 0x0

.field private static final LLU_EFFECT_MODE_A:I = 0x1

.field private static final LLU_EFFECT_MODE_B:I = 0x2

.field private static final LLU_EFFECT_MODE_C:I = 0x3

.field private static final LLU_MODE1:I = 0x1

.field private static final LLU_MODE2:I = 0x2

.field private static final LLU_MODE3:I = 0x3

.field static LluPrivatePrintCount:I = 0x0

.field private static final LluShowError:I = 0x4

.field private static final LluShowFinish:I = 0x3

.field private static final LluShowStart:I = 0x1

.field private static final LluShowStop:I = 0x2

.field private static final MSG_PLAY_LIGHT_DANCE:I = 0x2

.field private static final MSG_PLAY_LLU_EFFECT_MODE:I = 0x1

.field private static final MSG_START_LLU_EFFECT:I = 0x3

.field private static final MSG_STOP_LLU_EFFECT:I = 0x5

.field private static final MSG_STOP_LLU_EFFECT_NOREMOVE:I = 0x6

.field private static final MSG_STOP_LLU_SPECIAL_MODE:I = 0x7

.field private static final MSG_TURNOFF_AND_START_AIMODE:I = 0x4

.field private static final MUSIC_SPECRHYTHM_INTERVAL_TIME:I = 0x3e8

.field private static PrevTick:I = 0x0

.field private static SendingLluEffectName:Ljava/lang/String; = null

.field private static SendingLluEffectType:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SmartLluService"

.field private static final Type_Dance:Ljava/lang/String; = "dance"

.field private static final Type_LightDance:Ljava/lang/String; = "lightanddance"

.field private static final XP_XKEY_INTENT:Ljava/lang/String; = "com.xiaopeng.intent.action.xkey"

.field private static final X_SAYHI_LLU:Ljava/lang/String; = "android_xsayhi"

.field static fLightLast:I

.field private static final fTickTable:[I

.field private static finishcallback_triggered:Z

.field private static ig_status_on:Z

.field private static last_startLanglight_time:J

.field private static last_turnLamp_time:J

.field private static lluCallbackLock:Ljava/lang/Object;

.field private static llu_timeout_triggered_in_loop:Z

.field public static mHardwareType:Ljava/lang/String;

.field private static mLluAiListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;

.field static mirrorCmdLast:I

.field static printLogTime:J

.field static rfLightLast:I

.field private static sPlayer:Landroid/media/MediaPlayer;

.field static scissorsLgateCmdLast:I

.field static scissorsRgateCmdLast:I

.field private static timerLock:Ljava/lang/Object;

.field static windowCmdLast:I

.field static xpExpandControl:Z


# instance fields
.field private final DEFAULT_LDANCE_NAME:Ljava/lang/String;

.field private DownVolume:I

.field private LIGHT_DANCE_INTERVAL:I

.field private LluCduSelfCtlMode:Z

.field private final PERSONAL_LLU_PATH:Ljava/lang/String;

.field private RestoreVolume:I

.field private final SHOW_OFF_MODE_01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final SYSTEM_DANCE_MEIDA_PATH:Ljava/lang/String;

.field private final SYSTEM_LLU_PATH:Ljava/lang/String;

.field private final SYSTEM_LOCAL_DANCE_INFO_PATH:Ljava/lang/String;

.field private final USER_DANCE_MEIDA_PATH:Ljava/lang/String;

.field private brokenFftLlu:Z

.field private curAvhStatus:I

.field private curDanceEffect:Ljava/lang/String;

.field private curGear:I

.field private currentEffectName:Ljava/lang/String;

.field private currentEffectType:Ljava/lang/String;

.field private currentMcuEffectMode:I

.field private currentMcuEffectName:I

.field private danceLoop:I

.field private fData:[I

.field private frontData:[I

.field private frontDataFinish:Z

.field private frontIndex:I

.field private frontIndexNum:I

.field private isDriving:Z

.field private isInSpecialMode:Z

.field private isLLUEnable:Z

.field private isLLUFftEnable:Z

.field private volatile isPGear:Z

.field private isRearFogOn:Z

.field private isSayHi:Z

.field private isWaitingForSayHi:Z

.field private langLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

.field private lightLoop:I

.field private llu_stop_timeout_thread:Ljava/lang/Runnable;

.field private llu_timeout_thread:Ljava/lang/Runnable;

.field private mAiLluAudioTable:Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;

.field private mAudioConfig:Landroid/media/audioConfig/AudioConfig;

.field mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

.field private mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

.field private mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private mDancePlaying:Z

.field private mDownLangLightEffectNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLangLightEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/smart/LangLightEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mLangLightEffectNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

.field private mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

.field private mPreDance:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSayHiEffect:Ljava/lang/String;

.field private mSayHiEnable:Z

.field private mSayHiMode:I

.field private mSmartAvmManager:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

.field private mSmartLluServiceListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

.field private mSoundPlayHelper:Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;

.field private mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

.field private mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

.field private mpPrepareAsync:Z

.field private musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

.field private musicSpecrhythmTimeStamp:J

.field private musicSpectrumCount:I

.field private musicSpectrumDelayTime:I

.field private musicSpectrumIntrupt:Z

.field private musicSpectrumLampIntrupt:Z

.field private musicSpectrumPause:Z

.field private musicStartTick:I

.field private musicStopTick:I

.field private musicTable:I

.field private rData:[I

.field private rearData:[I

.field private rearIndex:I

.field private rearIndexNum:I

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private triggerEffectName:Ljava/lang/String;

.field private triggerEffectType:Ljava/lang/String;

.field private trrigerXuiSayHi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectName:Ljava/lang/String;

    .line 108
    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectType:Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timerLock:Ljava/lang/Object;

    .line 194
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    .line 196
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_triggered_in_loop:Z

    .line 197
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->finishcallback_triggered:Z

    .line 201
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->last_startLanglight_time:J

    .line 203
    const-string v4, ""

    sput-object v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mHardwareType:Ljava/lang/String;

    .line 204
    sput v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    .line 205
    sput v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    .line 558
    sput-wide v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->printLogTime:J

    .line 1627
    sput v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->AiLluMode:I

    .line 1629
    sput v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->PrevTick:I

    .line 1632
    const/16 v4, 0xd

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fTickTable:[I

    .line 1751
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sput-object v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lluCallbackLock:Ljava/lang/Object;

    .line 2487
    sput-wide v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->last_turnLamp_time:J

    .line 2643
    const/4 v2, -0x1

    sput v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fLightLast:I

    .line 2644
    sput v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rfLightLast:I

    .line 2646
    const-string v3, "persist.sys.xiaopeng.xui.ExpandControl"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->xpExpandControl:Z

    .line 2647
    sput v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->windowCmdLast:I

    .line 2648
    sput v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsLgateCmdLast:I

    .line 2649
    sput v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsRgateCmdLast:I

    .line 2650
    sput v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mirrorCmdLast:I

    .line 2741
    sput v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    return-void

    :array_0
    .array-data 4
        0x3
        0x8
        0xd
        0x12
        0x18
        0x1e
        0x11
        0x2b
        0x31
        0x37
        0x3c
        0x41
        0x46
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 226
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUEnable:Z

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUFftEnable:Z

    .line 86
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->brokenFftLlu:Z

    .line 87
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    .line 88
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curGear:I

    .line 89
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curAvhStatus:I

    .line 90
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isDriving:Z

    .line 91
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    .line 102
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectName:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectType:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontDataFinish:Z

    .line 112
    const/4 v3, -0x1

    iput v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentMcuEffectName:I

    .line 113
    iput v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentMcuEffectMode:I

    .line 114
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndex:I

    .line 115
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndexNum:I

    .line 116
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndex:I

    .line 117
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndexNum:I

    .line 124
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumPause:Z

    .line 125
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumIntrupt:Z

    .line 126
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumLampIntrupt:Z

    .line 127
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpecrhythmTimeStamp:J

    .line 128
    const/16 v4, 0xc

    iput v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicTable:I

    .line 129
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicStartTick:I

    .line 130
    const/16 v4, 0xc8

    iput v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicStopTick:I

    .line 131
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumDelayTime:I

    .line 132
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumCount:I

    .line 138
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->danceLoop:I

    .line 139
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lightLoop:I

    .line 140
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curDanceEffect:Ljava/lang/String;

    .line 141
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mDancePlaying:Z

    .line 142
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mPreDance:Z

    .line 143
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mpPrepareAsync:Z

    .line 144
    const/4 v4, 0x2

    iput v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LIGHT_DANCE_INTERVAL:I

    .line 145
    const-string v4, "PianoConcerto"

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->DEFAULT_LDANCE_NAME:Ljava/lang/String;

    .line 146
    const-string v4, "/data/xuiservice/llu"

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->PERSONAL_LLU_PATH:Ljava/lang/String;

    .line 147
    const-string v4, "/system/etc/xuiservice/llu"

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SYSTEM_LLU_PATH:Ljava/lang/String;

    .line 148
    const-string v4, "/data/xuiservice/dance/"

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->USER_DANCE_MEIDA_PATH:Ljava/lang/String;

    .line 149
    const-string v4, "/system/etc/xuiservice/dance/"

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SYSTEM_DANCE_MEIDA_PATH:Ljava/lang/String;

    .line 150
    const-string v4, "/system/etc/xuiservice/dance/LocalDance_Info.json"

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SYSTEM_LOCAL_DANCE_INFO_PATH:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluCduSelfCtlMode:Z

    .line 162
    const-string v4, "persist.sys.support.sayhi"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->trrigerXuiSayHi:Z

    .line 164
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEnable:Z

    .line 165
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHi:Z

    .line 166
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isWaitingForSayHi:Z

    .line 167
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiMode:I

    .line 168
    const-string v0, "notactive"

    const-string v4, "android_avh_sayhi_01"

    const-string v5, "android_avh_sayhi_02"

    const-string v6, "android_avh_sayhi_03"

    filled-new-array {v0, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SHOW_OFF_MODE_01:Ljava/util/List;

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SHOW_OFF_MODE_01:Ljava/util/List;

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiMode:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEffect:Ljava/lang/String;

    .line 176
    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 198
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    .line 210
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1360
    iput v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->RestoreVolume:I

    .line 1361
    iput v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->DownVolume:I

    .line 1381
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$9;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1630
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAiLluAudioTable:Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;

    .line 1631
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSoundPlayHelper:Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;

    .line 1875
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_thread:Ljava/lang/Runnable;

    .line 1897
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$12;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$12;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_stop_timeout_thread:Ljava/lang/Runnable;

    .line 3240
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isInSpecialMode:Z

    .line 228
    const/16 v0, 0x3c

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fData:[I

    .line 229
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rData:[I

    .line 230
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    .line 231
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    .line 233
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    new-instance v0, Landroid/media/audioConfig/AudioConfig;

    invoke-direct {v0, p1}, Landroid/media/audioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 235
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->initConfig()V

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUEnable:Z

    .line 237
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightMusicEffect()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLangLightMusicEffect(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isAiLluEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AVM"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->getInstance()Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartAvmManager:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    .line 242
    :cond_0
    return-void

    .line 233
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartLluService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService$1;

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private VolumeDownAndRestore(Z)V
    .locals 7
    .param p1, "down"    # Z

    .line 1364
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    .line 1365
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 1366
    .local v2, "curVol":I
    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 1367
    int-to-double v3, v2

    const-wide v5, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 1368
    .local v3, "downVol":I
    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->RestoreVolume:I

    .line 1369
    iput v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->DownVolume:I

    .line 1370
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->DownVolume:I

    invoke-virtual {v4, v1, v5, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1372
    .end local v2    # "curVol":I
    .end local v3    # "downVol":I
    :cond_0
    goto :goto_0

    .line 1373
    :cond_1
    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->RestoreVolume:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->DownVolume:I

    if-ne v2, v4, :cond_2

    .line 1374
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->RestoreVolume:I

    invoke-virtual {v2, v1, v4, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1376
    :cond_2
    iput v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->RestoreVolume:I

    .line 1377
    iput v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->DownVolume:I

    .line 1379
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleFftData(FF)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleLluSw(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleFrontLightGroupChange(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleRearFogLampChange(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleLRTurnlamp()V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleIgStatusChange(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleCarAvhStatusChanged(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->danceLoop:I

    return v0
.end method

.method static synthetic access$1610(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->danceLoop:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->danceLoop:I

    return v0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ILcom/xiaopeng/xuiservice/smart/LangLightEffect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    .param p3, "x3"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendReplayLightEffectEvent(ILcom/xiaopeng/xuiservice/smart/LangLightEffect;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # Z

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->VolumeDownAndRestore(Z)V

    return-void
.end method

.method static synthetic access$1900()I
    .locals 1

    .line 59
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->PrevTick:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 59
    sput p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->PrevTick:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleLluScriptSt(I)V

    return-void
.end method

.method static synthetic access$2000()Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;
    .locals 1

    .line 59
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluAiListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getNumberByPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200()[I
    .locals 1

    .line 59
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fTickTable:[I

    return-object v0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Landroid/car/hardware/llu/CarLluManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAiLluAudioTable:Lcom/xiaopeng/xuiservice/smart/SmartLluService$AiLluAudioTable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSoundPlayHelper:Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumIntrupt:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->brokenFftLlu:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->brokenFftLlu:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleLluFunction(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluToInitMode()V

    return-void
.end method

.method static synthetic access$3100(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetLastLightFlag()V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lightLoop:I

    return v0
.end method

.method static synthetic access$3210(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lightLoop:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lightLoop:I

    return v0
.end method

.method static synthetic access$3302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 59
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_triggered_in_loop:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/xiaopeng/xuiservice/smart/SmartLluService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartLluServiceListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

    return-object v0
.end method

.method static synthetic access$3602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 59
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->finishcallback_triggered:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleMcuLluShowOffSw(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->deactivateAndroidLluControl()V

    return-void
.end method

.method static synthetic access$4202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 59
    sput-object p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doLangLightEffectMode(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStartLDance(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Lcom/xiaopeng/xuiservice/smart/LangLightEffect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    .param p2, "x2"    # I

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetLluModeAndPlayLightEffect(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStartAiLlu(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/xiaopeng/xuiservice/smart/SmartLluService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doSetSpecialMode(IIZ)V

    return-void
.end method

.method static synthetic access$4900(Lcom/xiaopeng/xuiservice/smart/SmartLluService;[II)[I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # [I
    .param p2, "x2"    # I

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->copyArray([II)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleMcuLluSw(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;[Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # I

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->copyStrArray([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->tickLluTime()V

    return-void
.end method

.method static synthetic access$5200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->untickLluTime()V

    return-void
.end method

.method static synthetic access$5300(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # Z

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->removePlayLoopEvent(Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleCustomLightEffectFinish()V

    return-void
.end method

.method static synthetic access$5600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ZIIIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I

    .line 59
    invoke-direct/range {p0 .. p7}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluPrivateCtrl(ZIIIIII)V

    return-void
.end method

.method static synthetic access$5700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ZIIIIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I

    .line 59
    invoke-direct/range {p0 .. p8}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluPrivateCtrl(ZIIIIIII)V

    return-void
.end method

.method static synthetic access$5800(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;

    .line 59
    invoke-direct/range {p0 .. p6}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setInfiniteLluPrivateCtrl(ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleMcuLluChargingSw(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleMcuFbLluActive(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleCarGearLevelChanged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/smart/SmartLluService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p1, "x1"    # F

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleCarSpeed(F)V

    return-void
.end method

.method private banVolumeChangeMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1425
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    const/4 v1, 0x3

    .line 1427
    nop

    .line 1426
    invoke-virtual {v0, v1, p1}, Landroid/media/audioConfig/AudioConfig;->setBanVolumeChangeMode(II)V

    .line 1429
    :cond_0
    return-void
.end method

.method private callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "funcType"    # I
    .param p2, "effectName"    # Ljava/lang/String;
    .param p3, "effectType"    # Ljava/lang/String;
    .param p4, "errorcode"    # I

    .line 1753
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callBackLluShowStatusToClient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    if-eqz p2, :cond_4

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1758
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartLluServiceListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

    if-nez v0, :cond_1

    .line 1759
    return-void

    .line 1761
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lluCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1762
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1788
    :try_start_0
    const-string v1, "SmartLluService"

    goto/16 :goto_0

    .line 1780
    :pswitch_0
    const-string v2, "SmartLluService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLightEffectShowError  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    const-string v2, "dance"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "lightanddance"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1782
    :cond_2
    const/16 p4, -0x1000

    .line 1783
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartLluServiceListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

    invoke-interface {v2, p2, p4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;->onLightEffectShowError(Ljava/lang/String;I)V

    .line 1784
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    .line 1785
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectName:Ljava/lang/String;

    .line 1786
    goto/16 :goto_1

    .line 1774
    :pswitch_1
    const-string v2, "SmartLluService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLightEffectShowFinishEvent  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartLluServiceListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

    invoke-interface {v2, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;->onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    .line 1777
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectName:Ljava/lang/String;

    .line 1778
    goto :goto_1

    .line 1768
    :pswitch_2
    const-string v2, "SmartLluService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLightEffectShowStopEvent  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartLluServiceListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

    invoke-interface {v2, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;->onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    .line 1771
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectName:Ljava/lang/String;

    .line 1772
    goto :goto_1

    .line 1764
    :pswitch_3
    const-string v1, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLightEffectShowStartEvent  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartLluServiceListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

    invoke-interface {v1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;->onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    goto :goto_1

    .line 1788
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callBackLluShowStatusToClient NO such type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    :goto_1
    monitor-exit v0

    .line 1792
    return-void

    .line 1791
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1755
    :cond_4
    :goto_2
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callBackLluShowStatusToClient type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " effectName not legal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .line 1514
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1515
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1517
    const/4 v1, 0x0

    return v1

    .line 1520
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private checkIsSpecialMode(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)Z
    .locals 3
    .param p1, "LLEffect"    # Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 3236
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsSpecialMode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getSpecial_mode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getSpecial_mode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkMediaNameExist(Ljava/lang/String;)Z
    .locals 7
    .param p1, "mediaName"    # Ljava/lang/String;

    .line 1525
    const-string v0, "PianoConcerto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1526
    return v1

    .line 1527
    :cond_0
    const-string v0, "/data/xuiservice/llu"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getDownloadAllMediaName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1528
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1529
    const-string v4, "SmartLluService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMediaNameExist  mediaName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " listName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1531
    return v1

    .line 1528
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1533
    .end local v3    # "i":I
    :cond_2
    return v2
.end method

.method private convertInfiniteStringToLluData(Ljava/lang/String;Ljava/lang/String;II)[B
    .locals 10
    .param p1, "fType"    # Ljava/lang/String;
    .param p2, "rType"    # Ljava/lang/String;
    .param p3, "flight"    # I
    .param p4, "rlight"    # I

    .line 2707
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    sget v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    add-int/2addr v0, v1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 2708
    .local v0, "length":I
    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    .line 2709
    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    .line 2710
    new-array v2, v0, [B

    .line 2711
    .local v2, "data":[B
    if-ne p3, v3, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 2713
    sget v5, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    if-eqz v5, :cond_3

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2714
    sget v5, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    div-int/2addr v5, v1

    new-array v5, v5, [B

    .line 2715
    .local v5, "dataFront":[B
    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_3

    .line 2717
    .end local v5    # "dataFront":[B
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 2719
    .restart local v5    # "dataFront":[B
    :goto_3
    array-length v6, v5

    sget v7, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    div-int/2addr v7, v1

    if-ne v6, v7, :cond_4

    .line 2720
    array-length v6, v5

    invoke-static {v5, v4, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2722
    :cond_4
    sget v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    const/4 v7, 0x4

    if-eqz v6, :cond_7

    .line 2723
    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2724
    sget v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    div-int/2addr v6, v1

    new-array v6, v6, [B

    .line 2725
    .local v6, "dataRear":[B
    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_4

    .line 2727
    .end local v6    # "dataRear":[B
    :cond_5
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 2729
    .restart local v6    # "dataRear":[B
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertInfiniteStringToLluData  length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " fLength:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " rLength:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v7, v7}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->printLogInterval(Ljava/lang/String;II)V

    .line 2731
    sget v7, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    div-int/2addr v7, v1

    add-int/2addr v7, v3

    if-ne p4, v3, :cond_6

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    int-to-byte v3, v3

    aput-byte v3, v2, v7

    .line 2732
    array-length v3, v6

    sget v7, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    div-int/2addr v7, v1

    if-ne v3, v7, :cond_8

    .line 2733
    sget v3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    div-int/2addr v3, v1

    add-int/2addr v1, v3

    array-length v3, v6

    invoke-static {v6, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_6

    .line 2736
    .end local v6    # "dataRear":[B
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertInfiniteStringToLluData  length:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fLength:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v7, v7}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->printLogInterval(Ljava/lang/String;II)V

    .line 2738
    :cond_8
    :goto_6
    return-object v2
.end method

.method private copyArray([II)[I
    .locals 5
    .param p1, "srcArray"    # [I
    .param p2, "num"    # I

    .line 2613
    if-nez p1, :cond_0

    .line 2614
    const-string v0, "copyArray src is null"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->printLogInterval(Ljava/lang/String;II)V

    .line 2615
    const/4 v0, 0x0

    return-object v0

    .line 2617
    :cond_0
    array-length v0, p1

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    .line 2618
    .local v0, "destArray":[I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 2619
    array-length v3, p1

    mul-int/2addr v3, v2

    array-length v4, p1

    invoke-static {p1, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2618
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2621
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private copyStrArray([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .param p1, "srcArray"    # [Ljava/lang/String;
    .param p2, "num"    # I

    .line 2631
    if-nez p1, :cond_0

    .line 2632
    const-string v0, "copyStrArray src is null"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->printLogInterval(Ljava/lang/String;II)V

    .line 2633
    const/4 v0, 0x0

    return-object v0

    .line 2635
    :cond_0
    array-length v0, p1

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 2636
    .local v0, "destArray":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 2637
    array-length v3, p1

    mul-int/2addr v3, v2

    array-length v4, p1

    invoke-static {p1, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2636
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2639
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private deactivateAndroidLluControl()V
    .locals 2

    .line 2441
    :try_start_0
    const-string v0, "SmartLluService"

    const-string v1, "deactivateAndroidLluControl"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->deactivateAndroidLluControl()V

    .line 2443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluSelfActiveMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2446
    goto :goto_0

    .line 2444
    :catch_0
    move-exception v0

    .line 2445
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2447
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private doLangLightEffectMode(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V
    .locals 10
    .param p1, "LLEffect"    # Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 3265
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isInSpecialMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3266
    invoke-direct {p0, v1, v1, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doSetSpecialMode(IIZ)V

    .line 3267
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    .line 3268
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    .line 3269
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v0, v2, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 3270
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doLangLightEffectMode  getNotResetFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getNotResetFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getNotResetFlag()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 3273
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetPirvateLluControl()V

    goto :goto_0

    .line 3275
    :cond_1
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doLangLightEffectMode  getNotResetFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getNotResetFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEffect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    const-string v1, "android_sayhi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    const-string v1, "android_xsayhi"

    .line 3278
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->xpExpandControl:Z

    if-nez v0, :cond_2

    .line 3279
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    const/4 v3, -0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 3280
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const/16 v9, 0xc8

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendEventMessage(IIILjava/lang/Object;I)V

    .line 3281
    return-void

    .line 3283
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->brokenFftLlu:Z

    if-nez v0, :cond_3

    .line 3284
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->brokenFftLlu:Z

    .line 3287
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->checkIsSpecialMode(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3288
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getSpecial_mode()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getSpecial_duration()I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doSetSpecialMode(IIZ)V

    .line 3289
    return-void

    .line 3292
    :cond_4
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V

    .line 3521
    .local v0, "mtimerTask":Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_5

    .line 3522
    sget-object v7, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timerLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3524
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;->init(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V

    .line 3525
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3530
    goto :goto_1

    .line 3531
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 3526
    :catch_0
    move-exception v1

    .line 3527
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 3528
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetLoopFlag()V

    .line 3529
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleCustomLightEffectFinish()V

    .line 3531
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v7

    goto :goto_3

    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3533
    :cond_5
    const-string v1, "SmartLluService"

    const-string v2, "doLangLightEffectMode timer == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetLoopFlag()V

    .line 3535
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleCustomLightEffectFinish()V

    .line 3537
    :goto_3
    return-void
.end method

.method private doRealSayHiAfterWait()V
    .locals 3

    .line 1563
    const-string v0, "SmartLluService"

    const-string v1, "doRealSayHiAfterWait()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isWaitingForSayHi:Z

    .line 1565
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEffect:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEffect:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStartLangLightEffectShow(Ljava/lang/String;IZ)V

    .line 1577
    :cond_0
    return-void
.end method

.method private doSetSpecialMode(IIZ)V
    .locals 8
    .param p1, "activeMode"    # I
    .param p2, "duration"    # I
    .param p3, "on"    # Z

    .line 3242
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetSpecialMode  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3244
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->removeDelayedEvent(I)V

    .line 3245
    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isInSpecialMode:Z

    .line 3247
    if-eqz p3, :cond_0

    .line 3248
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    move v2, p1

    move v3, p1

    move v4, p1

    move v5, p1

    move v6, p1

    move v7, p1

    invoke-virtual/range {v1 .. v7}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluModeCtrl(IIIIII)V

    .line 3249
    if-lez p2, :cond_1

    .line 3250
    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendEventMessage(IIILjava/lang/Object;I)V

    goto :goto_0

    .line 3257
    :catch_0
    move-exception v0

    goto :goto_1

    .line 3252
    :cond_0
    const/4 v0, 0x0

    .line 3253
    .local v0, "inactive":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluModeCtrl(IIIIII)V

    .line 3254
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->deactivateAndroidLluControl()V

    .line 3255
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3259
    .end local v0    # "inactive":I
    :cond_1
    :goto_0
    goto :goto_2

    .line 3257
    :goto_1
    nop

    .line 3258
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSetSpecialMode  e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3261
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method private doStartAiLlu(I)V
    .locals 1
    .param p1, "type"    # I

    .line 1696
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$j2pEfQgrfGuRhjW6lyXj3C3qGSA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$j2pEfQgrfGuRhjW6lyXj3C3qGSA;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 1712
    return-void
.end method

.method private doStartLDance(Ljava/lang/String;)V
    .locals 2
    .param p1, "dance_name"    # Ljava/lang/String;

    .line 1432
    const-string v0, "SmartLluService"

    const-string v1, "doStartLDance()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1434
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1436
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setPause(Z)V

    .line 1437
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mDancePlaying:Z

    .line 1438
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mPreDance:Z

    .line 1439
    invoke-direct {p0, p1, v1, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStartLangLightEffectShow(Ljava/lang/String;IZ)V

    .line 1440
    const-string v0, "persist.sys.light.dancing"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    return-void
.end method

.method private doStartLangLightEffectShow(Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "loop"    # I
    .param p3, "needPGearLimit"    # Z

    .line 3191
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStartLangLightEffectShow effectName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isLLUEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPGear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isRearFogOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", loop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUFftEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->removePlayLoopEvent(Z)V

    .line 3194
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lightLoop:I

    .line 3196
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUEnable:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    if-nez v1, :cond_5

    if-eqz p3, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 3205
    :cond_0
    const-string v1, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStartLangLightEffectShow  currentEffectName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3207
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 3208
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->last_startLanglight_time:J

    .line 3209
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->checkMediaNameExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3210
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStopDanceMusic()V

    .line 3211
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->danceLoop:I

    .line 3213
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    move-result-object v1

    .line 3214
    .local v1, "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    if-eqz v1, :cond_4

    .line 3215
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getNotResetFlag()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 3216
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->updateTimer(Z)V

    .line 3217
    :cond_3
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doLangLightEffectMode(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V

    .line 3219
    :cond_4
    return-void

    .line 3197
    .end local v1    # "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    move-result-object v0

    .line 3198
    .local v0, "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    const-string v1, ""

    .line 3199
    .local v1, "effectType":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 3200
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_type()Ljava/lang/String;

    move-result-object v1

    .line 3201
    :cond_6
    const/4 v2, 0x4

    const/4 v3, -0x4

    invoke-direct {p0, v2, p1, v1, v3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 3202
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const/16 v9, 0xc8

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendEventMessage(IIILjava/lang/Object;I)V

    .line 3203
    return-void
.end method

.method private doStopDanceMusic()V
    .locals 4

    .line 1444
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1446
    :try_start_0
    const-string v0, "SmartLluService"

    const-string v1, "doStopDanceMusic()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1448
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1449
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    goto :goto_0

    .line 1450
    :catch_0
    move-exception v0

    .line 1451
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 1454
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleVolumePolicy(Z)Z

    .line 1455
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mDancePlaying:Z

    .line 1456
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mPreDance:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1457
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1458
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectType:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1461
    :cond_1
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mPreDance:Z

    .line 1462
    const-string v0, "persist.sys.light.dancing"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    return-void
.end method

.method private doStopLDance()V
    .locals 2

    .line 1466
    const-string v0, "SmartLluService"

    const-string v1, "doStopLDance()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStopDanceMusic()V

    .line 1468
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStopLightEffectShow_l()V

    .line 1469
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 1470
    return-void
.end method

.method private doTurnoffAndWait(Ljava/lang/String;I)V
    .locals 5
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 1280
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    move-result-object v0

    .line 1281
    .local v0, "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getNotResetFlag()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1282
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetPirvateLluControl()V

    .line 1283
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1285
    :cond_0
    invoke-direct {p0, p2, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 1286
    const-wide/16 v1, 0xfa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    .end local v0    # "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    goto :goto_0

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOffLightAndSetEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getAllLightDanceEffect()Ljava/lang/String;
    .locals 10

    .line 2097
    const/4 v0, 0x0

    .line 2098
    .local v0, "effectString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2099
    .local v1, "danceNum":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2100
    .local v2, "effectNum":I
    if-nez v2, :cond_0

    .line 2101
    const/4 v3, 0x0

    return-object v3

    .line 2104
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2105
    .local v3, "effectObject":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 2106
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 2107
    .local v5, "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_name()Ljava/lang/String;

    move-result-object v6

    .line 2108
    .local v6, "effectName":Ljava/lang/String;
    const-string v7, "SmartLluService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAllLightDanceEffect "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " effectName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    invoke-direct {p0, v6}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLDanceMediaFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 2110
    add-int/lit8 v1, v1, 0x1

    .line 2111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "effectName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2105
    .end local v5    # "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    .end local v6    # "effectName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2114
    .end local v4    # "i":I
    :cond_2
    const-string v4, "effectNum"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2115
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 2118
    .end local v3    # "effectObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 2116
    :catch_0
    move-exception v3

    .line 2117
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2119
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private getAllLightEffect()Ljava/lang/String;
    .locals 8

    .line 2069
    const/4 v0, 0x0

    .line 2070
    .local v0, "effectString":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2071
    .local v1, "effectNum":I
    if-nez v1, :cond_0

    .line 2072
    const/4 v2, 0x0

    return-object v2

    .line 2075
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2076
    .local v2, "effectObject":Lorg/json/JSONObject;
    const-string v3, "effectNum"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2077
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 2078
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 2080
    .local v4, "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    const-string v5, "SmartLluService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAllLightEffect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " effectName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "effectName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2077
    .end local v4    # "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2083
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 2086
    .end local v2    # "effectObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 2084
    :catch_0
    move-exception v2

    .line 2085
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2087
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private getContentFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "fileName"    # Ljava/io/File;

    .line 2246
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2247
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 2248
    .local v1, "reader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2250
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2251
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2253
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 2254
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 2255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 2256
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2259
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method private getDownLoadDanceMediaFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "dance_name"    # Ljava/lang/String;

    .line 1496
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownLoadDanceMediaFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1498
    return-object v0

    .line 1499
    :cond_0
    const-string v1, "/data/xuiservice/llu"

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getDownloadAllMediaPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1500
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1501
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1502
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1503
    .local v3, "name":Ljava/lang/String;
    const-string v4, "SmartLluService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " NAME:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1505
    const-string v0, "SmartLluService"

    const-string v4, "getDownLoadDanceMediaFile GOT!"

    invoke-static {v0, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1500
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1510
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private getDownloadAllEffectName(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2179
    .local v0, "s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "json"

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->parseAllFileInFolder(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    .line 2180
    return-object v0
.end method

.method private getDownloadAllEffectPath(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2173
    .local v0, "s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "json"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->parseAllFileInFolder(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    .line 2174
    return-object v0
.end method

.method private getDownloadAllId(ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "type"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2155
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 2156
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 2157
    const-string v2, "SmartLluService"

    const-string v3, "empty folder"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    const/4 v2, 0x0

    return-object v2

    .line 2160
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2161
    .local v2, "s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 2162
    const-string v4, "SmartLluService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File folder Name(id) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 2164
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2166
    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2161
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2168
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method private getDownloadAllMediaName(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2191
    .local v0, "s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "mp3"

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->parseAllFileInFolder(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    .line 2192
    return-object v0
.end method

.method private getDownloadAllMediaPath(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2185
    .local v0, "s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "mp3"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->parseAllFileInFolder(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    .line 2186
    return-object v0
.end method

.method private getFilesAllName(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2139
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2140
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 2141
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 2142
    const-string v2, "SmartLluService"

    const-string v3, "empty folder"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    const/4 v2, 0x0

    return-object v2

    .line 2145
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2146
    .local v2, "s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 2147
    const-string v4, "SmartLluService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File path"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2146
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2150
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .locals 1

    .line 497
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$InstanceHolder;->access$1500()Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    move-result-object v0

    return-object v0
.end method

.method private getLDanceMediaFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "dance_name"    # Ljava/lang/String;

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/etc/xuiservice/dance/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1479
    .local v0, "music_file":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/etc/xuiservice/dance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1482
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/xuiservice/dance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1485
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/xuiservice/dance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1488
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1489
    const-string v1, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media file of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    const/4 v1, 0x0

    return-object v1

    .line 1492
    :cond_3
    return-object v0
.end method

.method private getLampOffstatus()Z
    .locals 3

    .line 675
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isLluTriggerLampOff"

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

.method private getLangLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    .locals 5
    .param p1, "effectName"    # Ljava/lang/String;

    .line 2124
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2126
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 2128
    .local v1, "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    const-string v2, "SmartLluService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLangLightEffectByName effectName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2131
    return-object v1

    .line 2125
    .end local v1    # "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2135
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNumberByPos(I)I
    .locals 4
    .param p1, "pos"    # I

    .line 1635
    const/4 v0, 0x0

    .line 1636
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fTickTable:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1637
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fTickTable:[I

    aget v1, v1, v0

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fTickTable:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fTickTable:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    .line 1638
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 1636
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1641
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fTickTable:[I

    array-length v1, v1

    return v1
.end method

.method private handleCarAvhStatusChanged(I)V
    .locals 3
    .param p1, "avhStatus"    # I

    .line 885
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCarAvhStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curAvhStatus:I

    if-eq v0, p1, :cond_3

    .line 887
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curGear:I

    if-ne v1, v0, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->startSayHi()V

    goto :goto_0

    .line 890
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 892
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopSayHi()V

    goto :goto_0

    .line 893
    :cond_1
    if-nez p1, :cond_2

    .line 895
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopSayHi()V

    .line 897
    :cond_2
    :goto_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curAvhStatus:I

    .line 899
    :cond_3
    return-void
.end method

.method private handleCarGearLevelChanged(I)V
    .locals 3
    .param p1, "level"    # I

    .line 906
    const-string v0, "persist.sys.xiaopeng.xui.ExpandControl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->xpExpandControl:Z

    .line 907
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->xpExpandControl:Z

    if-eqz v0, :cond_1

    .line 908
    const-string v0, "SmartLluService"

    const-string/jumbo v1, "xpExpandControl MODE do not trigger LLU when gear change"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    return-void

    .line 911
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curGear:I

    if-ne v0, p1, :cond_2

    .line 912
    return-void

    .line 914
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    move v1, v2

    nop

    :cond_3
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    .line 916
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    if-eqz v0, :cond_4

    .line 918
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->startSayHi()V

    goto :goto_1

    .line 921
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightDancing()I

    .line 924
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopSayHi()V

    .line 925
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightEffectShow()V

    .line 927
    :goto_1
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curGear:I

    .line 928
    return-void
.end method

.method private handleCarSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 902
    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isDriving:Z

    .line 903
    return-void
.end method

.method private handleCustomLightEffectFinish()V
    .locals 4

    .line 2985
    const-string v0, "SmartLluService"

    const-string v1, "Custom Light Effect Show has finished "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SHOW_OFF_MODE_01:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2990
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SHOW_OFF_MODE_01:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2991
    .local v2, "autoSayhiName":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2992
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopSayHi()V

    .line 2993
    goto :goto_1

    .line 2989
    .end local v2    # "autoSayhiName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3001
    .end local v1    # "i":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curDanceEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3003
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->danceLoop:I

    if-eqz v1, :cond_2

    .line 3004
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Light Dance need to loop, do not finish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lightLoop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3005
    return-void

    .line 3008
    :cond_2
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 3009
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 3010
    return-void
.end method

.method private handleFftData(FF)V
    .locals 4
    .param p1, "ratio"    # F
    .param p2, "minRatio"    # F

    .line 931
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUFftEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->brokenFftLlu:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    if-eqz v0, :cond_1

    .line 932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->last_turnLamp_time:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumLampIntrupt:Z

    if-nez v0, :cond_1

    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->AiLluMode:I

    if-nez v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isKaraokeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setMusicSpectrumToLangLight(F)V

    .line 937
    :cond_1
    return-void
.end method

.method private handleFrontLightGroupChange(I)V
    .locals 2
    .param p1, "value"    # I

    .line 1058
    if-nez p1, :cond_0

    .line 1059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumLampIntrupt:Z

    .line 1061
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isWaitingForSayHi:Z

    if-eqz v0, :cond_1

    .line 1062
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doRealSayHiAfterWait()V

    goto :goto_0

    .line 1065
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumLampIntrupt:Z

    .line 1070
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getInstance()Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->recoveryLampSaveMode(I)V

    .line 1071
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightEffectShow()V

    .line 1073
    :cond_1
    :goto_0
    return-void
.end method

.method private handleIgStatusChange(I)V
    .locals 4
    .param p1, "value"    # I

    .line 1095
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1096
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumIntrupt:Z

    .line 1097
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetLoopFlag()V

    .line 1098
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->updateTimer(Z)V

    .line 1099
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluToInitMode()V

    .line 1101
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getInstance()Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->recoveryTurnOnoffSaveMode(I)V

    .line 1102
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->saveLampOffstatus(Z)V

    .line 1103
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluSelfActiveMode(Z)V

    .line 1104
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    .line 1105
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_triggered_in_loop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartLluServiceListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1106
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1107
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_triggered_in_loop:Z

    goto :goto_0

    .line 1109
    :cond_0
    if-ne p1, v0, :cond_1

    .line 1110
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumIntrupt:Z

    .line 1111
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    .line 1113
    :cond_1
    :goto_0
    return-void
.end method

.method private handleLRTurnlamp()V
    .locals 0

    .line 1091
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightEffectShow_turnLamp()V

    .line 1092
    return-void
.end method

.method private handleLluFunction(I)V
    .locals 4
    .param p1, "value"    # I

    .line 948
    const/16 v0, 0xd

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 949
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluCduSelfCtlMode:Z

    goto :goto_0

    .line 950
    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 951
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumIntrupt:Z

    goto :goto_0

    .line 952
    :cond_1
    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluCduSelfCtlMode:Z

    if-eqz v3, :cond_2

    if-eq p1, v0, :cond_2

    .line 953
    const-string v0, "SmartLluService"

    const-string v3, "LluCduSelfCtlMode to not SelfCtlMode!"

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluCduSelfCtlMode:Z

    .line 955
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumIntrupt:Z

    .line 956
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->updateTimer(Z)V

    .line 958
    :cond_2
    :goto_0
    return-void
.end method

.method private handleLluScriptSt(I)V
    .locals 3
    .param p1, "value"    # I

    .line 961
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 995
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluScriptStRequest(I)V

    .line 996
    goto/16 :goto_1

    .line 991
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontDataFinish:Z

    .line 992
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendPacket()V

    .line 993
    goto/16 :goto_1

    .line 988
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendPacket()V

    .line 989
    goto/16 :goto_1

    .line 985
    :pswitch_4
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendPacket()V

    .line 986
    goto/16 :goto_1

    .line 999
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartLluServiceListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartLluServiceListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentMcuEffectName:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentMcuEffectMode:I

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;->onLightEffectFinishEvent(II)V

    goto/16 :goto_1

    .line 963
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    if-eqz v0, :cond_1

    .line 964
    new-instance v0, Landroid/car/hardware/llu/LluScriptParameter$Builder;

    invoke-direct {v0}, Landroid/car/hardware/llu/LluScriptParameter$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 965
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_id()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->effectName(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 966
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getPeriod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->frontEffectPeriod(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 967
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getLoop()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->frontEffectLoop(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 968
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getRetain()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->frontEffectRetain(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 969
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getData()[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->frontEffectDataTotalLength(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 970
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getPeriod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->rearEffectPeriod(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 971
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getLoop()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->rearEffectLoop(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 972
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getRetain()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->rearEffectRetain(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 973
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getData()[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->rearEffectDataTotalLength(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    .line 974
    invoke-virtual {v0}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->build()Landroid/car/hardware/llu/LluScriptParameter;

    move-result-object v0

    .line 976
    .local v0, "mLluScriptParameter":Landroid/car/hardware/llu/LluScriptParameter;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-eqz v1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/llu/CarLluManager;->setLluScriptParameter(Landroid/car/hardware/llu/LluScriptParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :cond_0
    goto :goto_0

    .line 979
    :catch_0
    move-exception v1

    .line 980
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 982
    .end local v0    # "mLluScriptParameter":Landroid/car/hardware/llu/LluScriptParameter;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 1009
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleLluSw(I)V
    .locals 1
    .param p1, "value"    # I

    .line 940
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluToInitMode()V

    .line 943
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluSelfActiveMode(Z)V

    .line 945
    :cond_0
    return-void
.end method

.method private handleMcuFbLluActive(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1048
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1049
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumLampIntrupt:Z

    .line 1050
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightEffectShow()V

    .line 1052
    :cond_0
    return-void
.end method

.method private handleMcuLluChargingSw(I)V
    .locals 1
    .param p1, "propvalue"    # I

    .line 1044
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;->generateBigPictureStyleNotification(I)V

    .line 1045
    return-void
.end method

.method private handleMcuLluShowOffSw(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1021
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->trrigerXuiSayHi:Z

    if-nez v0, :cond_1

    .line 1022
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluSayHiEnable(Z)V

    .line 1024
    :cond_1
    return-void
.end method

.method private handleMcuLluSw(I)V
    .locals 4
    .param p1, "value"    # I

    .line 1028
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1029
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectEnable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1030
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLangLightEffectEnable(Z)V

    goto :goto_0

    .line 1038
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1033
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1034
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLangLightEffectEnable(Z)V

    .line 1035
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLightDancing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1036
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStopLDance()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    :cond_2
    :goto_0
    goto :goto_2

    .line 1038
    :goto_1
    nop

    .line 1039
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private handleRearFogLampChange(I)V
    .locals 3
    .param p1, "value"    # I

    .line 1078
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    .line 1079
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluType()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1080
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    if-eqz v2, :cond_1

    .line 1081
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumLampIntrupt:Z

    .line 1082
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopSayHi()V

    .line 1083
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightEffectShow()V

    goto :goto_1

    .line 1085
    :cond_1
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumLampIntrupt:Z

    .line 1088
    :cond_2
    :goto_1
    return-void
.end method

.method private handleVolumePolicy(Z)Z
    .locals 1
    .param p1, "request"    # Z

    .line 1407
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->requestAudioFocus(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->banVolumeChangeMode(Z)V

    .line 1409
    const/4 v0, 0x1

    return v0

    .line 1411
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initConfig()V
    .locals 3

    .line 2416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    .line 2417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectNameList:Ljava/util/ArrayList;

    .line 2418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mDownLangLightEffectNameList:Ljava/util/ArrayList;

    .line 2419
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->updateEffectFiles()V

    .line 2423
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLightEffect(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiMode:I

    .line 2424
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiMode:I

    const/4 v1, 0x3

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiMode:I

    if-gt v0, v1, :cond_0

    .line 2425
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SHOW_OFF_MODE_01:Ljava/util/List;

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiMode:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEffect:Ljava/lang/String;

    .line 2427
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2428
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluFrontNumType()I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    .line 2429
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluRearNumType()I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    .line 2431
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLampOffstatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2432
    const-string v0, "SmartLluService"

    const-string v2, "Find lamp off by llu before reboot , need restore to AUTO"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getInstance()Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->recoveryLampSaveMode(I)V

    .line 2435
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 2437
    :cond_2
    return-void
.end method

.method private isDanceEffect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "lightEffect"    # Ljava/lang/String;

    .line 1537
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLDanceMediaFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1538
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**this is Dance Effect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const/4 v0, 0x1

    return v0

    .line 1541
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSayHing()Z
    .locals 1

    .line 1589
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHi:Z

    return v0
.end method

.method private isSayhiEffect(Ljava/lang/String;)Z
    .locals 6
    .param p1, "lightEffect"    # Ljava/lang/String;

    .line 1593
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SHOW_OFF_MODE_01:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1594
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SHOW_OFF_MODE_01:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1595
    .local v2, "autoSayhiName":Ljava/lang/String;
    const-string v3, "SmartLluService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoSayhiName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1597
    const-string v0, "SmartLluService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**this is SayHi Effect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const/4 v0, 0x1

    return v0

    .line 1593
    .end local v2    # "autoSayhiName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1605
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static synthetic lambda$doStartAiLlu$2(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 4

    .line 1698
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleVolumePolicy(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1699
    const-string v0, "SmartLluService"

    const-string v1, "Request AudioFocus Failed & do not start AI Light"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    return-void

    .line 1702
    :cond_0
    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->AiLluMode:I

    .line 1703
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetPirvateLluControl()V

    .line 1704
    const-wide/16 v1, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1705
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 1706
    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1707
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartAvmManager:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->startSmartAvm()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1710
    goto :goto_0

    .line 1708
    :catch_0
    move-exception v0

    .line 1709
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOffLightAndSetEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$preloadAndPlay$1(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Ljava/lang/String;Landroid/media/MediaPlayer;)V
    .locals 7
    .param p1, "dance_name"    # Ljava/lang/String;
    .param p2, "mp"    # Landroid/media/MediaPlayer;

    .line 1339
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doTurnoffAndWait(Ljava/lang/String;I)V

    .line 1340
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x96

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendLightEffectEventMessage(IILcom/xiaopeng/xuiservice/smart/LangLightEffect;Ljava/lang/String;I)V

    .line 1342
    return-void
.end method

.method public static synthetic lambda$turnOffLightAndStartEffect$0(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "loop"    # I
    .param p3, "needPGearLimit"    # Z

    .line 544
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    move-result-object v0

    .line 545
    .local v0, "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getNotResetFlag()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetPirvateLluControl()V

    .line 547
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 549
    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 550
    const-wide/16 v1, 0xfa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 551
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStartLangLightEffectShow(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v0    # "LLEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOffLightAndSetEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private loadLightEffectFromFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "llu_file"    # Ljava/lang/String;

    .line 2197
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2198
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 2199
    .local v1, "effectFiles":Ljava/lang/String;
    nop

    .line 2200
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2203
    if-eqz v1, :cond_1

    .line 2205
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 2206
    .local v2, "langLightEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_name()Ljava/lang/String;

    move-result-object v3

    .line 2207
    .local v3, "llu_name":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2208
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2211
    const-string v4, "SmartLluService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadLightEffectFromFile getEffect_name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2216
    .end local v2    # "langLightEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    .end local v3    # "llu_name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2214
    :catch_0
    move-exception v2

    .line 2215
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2218
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private loadLightEffectFromPath(Ljava/lang/String;)V
    .locals 5
    .param p1, "llu_path"    # Ljava/lang/String;

    .line 2222
    const-string v0, "/data/xuiservice/llu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2223
    const-string v0, "/data/xuiservice/llu"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getDownloadAllEffectPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .local v0, "effectFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 2225
    .end local v0    # "effectFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getFilesAllName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2226
    .restart local v0    # "effectFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 2227
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2229
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Ljava/io/FileReader;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->langLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 2230
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectNameList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->langLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2231
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->langLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2232
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectNameList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->langLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2234
    const-string v2, "SmartLluService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadLightEffectFromPath getEffect_name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->langLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2239
    :cond_1
    goto :goto_2

    .line 2237
    :catch_0
    move-exception v2

    .line 2238
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2227
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2242
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private parseAllLightEffectFromJsons()V
    .locals 1

    .line 2273
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2274
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2277
    const-string v0, "/data/xuiservice/llu"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->loadLightEffectFromPath(Ljava/lang/String;)V

    .line 2280
    const-string v0, "/system/etc/xuiservice/llu"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->loadLightEffectFromPath(Ljava/lang/String;)V

    .line 2281
    return-void
.end method

.method private parseEffectInfoByID(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "idPath"    # Ljava/lang/String;

    .line 2292
    const/4 v0, 0x0

    .line 2293
    .local v0, "jsonObj":Lorg/json/JSONObject;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getDownloadAllEffectName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2295
    .local v1, "s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2296
    .local v2, "id":Ljava/lang/String;
    const-string v4, "SmartLluService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseEffectInfoByID id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2298
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v4

    .line 2299
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2300
    .local v4, "content":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2301
    const-string v5, "category"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2302
    const-string v3, "effectName"

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mp4"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2305
    .local v3, "videoPath":Ljava/lang/String;
    const-string/jumbo v5, "videoPath"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2306
    const-string v5, "content"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2310
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "videoPath":Ljava/lang/String;
    .end local v4    # "content":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 2308
    :catch_0
    move-exception v2

    .line 2309
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SmartLluService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseEffectInfoByID ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private preloadAndPlay(Ljava/lang/String;)I
    .locals 12
    .param p1, "dance_name"    # Ljava/lang/String;

    .line 1293
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLDanceMediaFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    .local v0, "music_file":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1295
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getDownLoadDanceMediaFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1297
    :cond_0
    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 1301
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHing()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1302
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHi:Z

    .line 1304
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->last_startLanglight_time:J

    .line 1305
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectName:Ljava/lang/String;

    .line 1306
    const-string v2, "dance"

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectType:Ljava/lang/String;

    .line 1307
    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_3

    .line 1308
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    .line 1310
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mPreDance:Z

    .line 1311
    const-string v4, "SmartLluService"

    const-string v5, "mPreDance = TRUE"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1314
    sget-object v5, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 1315
    sget-object v5, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1316
    sget-object v5, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService$8;

    invoke-direct {v6, p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$8;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1329
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleVolumePolicy(Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1330
    const/4 v2, 0x4

    const-string v3, "dance"

    const/4 v5, -0x2

    invoke-direct {p0, v2, p1, v3, v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1331
    const-string v2, "SmartLluService"

    const-string v3, "Request AudioFocus Failed & do not start Light Dance"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    iput-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curDanceEffect:Ljava/lang/String;

    .line 1333
    return v1

    .line 1335
    :cond_4
    iget-boolean v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mpPrepareAsync:Z

    if-eqz v5, :cond_5

    .line 1336
    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1337
    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$hWGlbQb4Y2CvWKltSaZ4Y8_w1_c;

    invoke-direct {v5, p0, p1}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$hWGlbQb4Y2CvWKltSaZ4Y8_w1_c;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_0

    .line 1344
    :cond_5
    sget-object v5, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 1346
    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doTurnoffAndWait(Ljava/lang/String;I)V

    .line 1347
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x96

    move-object v6, p0

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendLightEffectEventMessage(IILcom/xiaopeng/xuiservice/smart/LangLightEffect;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    :goto_0
    return v3

    .line 1353
    :catch_0
    move-exception v2

    .line 1354
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 1356
    .end local v2    # "e":Ljava/lang/Exception;
    iput-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curDanceEffect:Ljava/lang/String;

    .line 1357
    return v1

    .line 1298
    :cond_6
    :goto_1
    const-string v2, "SmartLluService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preloadAndPlay file not exist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    return v1
.end method

.method private printLogInterval(Ljava/lang/String;II)V
    .locals 7
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "num"    # I

    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 561
    .local v0, "curTime":J
    move v2, p2

    .line 562
    .local v2, "mCount":I
    sget-wide v3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->printLogTime:J

    sub-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget v5, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 563
    const-string v3, "SmartLluService"

    invoke-static {v3, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    if-lt p3, v2, :cond_0

    .line 565
    sput-wide v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->printLogTime:J

    .line 567
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 437
    const-string v0, "SmartLluService"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 439
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.xiaopeng.intent.action.xkey"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 441
    return-void
.end method

.method private removeDelayedEvent(I)V
    .locals 3
    .param p1, "messageId"    # I

    .line 2001
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDelayedEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2003
    return-void
.end method

.method private removePlayLoopEvent(Z)V
    .locals 5
    .param p1, "needCallBack"    # Z

    .line 1987
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePlayLoopEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1989
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1990
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1991
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1992
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1993
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1994
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectName:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1995
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectName:Ljava/lang/String;

    sget-object v3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectType:Ljava/lang/String;

    const/4 v4, -0x4

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1996
    const/4 v1, 0x0

    sput-object v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectName:Ljava/lang/String;

    .line 1998
    :cond_0
    return-void
.end method

.method private requestAudioFocus(Z)Z
    .locals 4
    .param p1, "request"    # Z

    .line 1415
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1416
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1419
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1420
    return v0
.end method

.method private resetLastLightFlag()V
    .locals 2

    .line 2653
    const-string v0, "SmartLluService"

    const-string v1, "resetLastLightFlag()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    const/4 v0, -0x1

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fLightLast:I

    .line 2655
    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rfLightLast:I

    .line 2656
    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->windowCmdLast:I

    .line 2657
    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsLgateCmdLast:I

    .line 2658
    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsRgateCmdLast:I

    .line 2659
    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mirrorCmdLast:I

    .line 2660
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    .line 2661
    return-void
.end method

.method private resetLluModeAndPlayLightEffect(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;I)V
    .locals 8
    .param p1, "LLEffect"    # Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    .param p2, "loop"    # I

    .line 3223
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getNotResetFlag()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3224
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetPirvateLluControl()V

    .line 3225
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 3226
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 3227
    const/4 v3, 0x1

    const-string v6, ""

    const/16 v7, 0xfa

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendLightEffectEventMessage(IILcom/xiaopeng/xuiservice/smart/LangLightEffect;Ljava/lang/String;I)V

    goto :goto_0

    .line 3229
    :cond_0
    const/4 v2, 0x1

    const-string v5, ""

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendLightEffectEventMessage(IILcom/xiaopeng/xuiservice/smart/LangLightEffect;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3232
    :goto_0
    goto :goto_1

    .line 3230
    :catch_0
    move-exception v0

    .line 3231
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetLluModeAndPlayLightEffect  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private resetLoopFlag()V
    .locals 1

    .line 2664
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->danceLoop:I

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lightLoop:I

    .line 2665
    return-void
.end method

.method private saveLampOffstatus(Z)V
    .locals 2
    .param p1, "turnOff"    # Z

    .line 671
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isLluTriggerLampOff"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 672
    return-void
.end method

.method private sendEventMessage(IIILjava/lang/Object;I)V
    .locals 4
    .param p1, "messageid"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "delay"    # I

    .line 1977
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEventMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1979
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1980
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1981
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1982
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1983
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, p5

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1984
    return-void
.end method

.method private sendLightEffectEventMessage(IILcom/xiaopeng/xuiservice/smart/LangLightEffect;Ljava/lang/String;I)V
    .locals 5
    .param p1, "messageid"    # I
    .param p2, "loop"    # I
    .param p3, "lighteffect"    # Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    .param p4, "danceName"    # Ljava/lang/String;
    .param p5, "delay"    # I

    .line 1958
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendLightEffectEventMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1960
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1961
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Lcom/xiaopeng/xuiservice/smart/SmartLluService$1;)V

    .line 1962
    .local v1, "mLluPlayClass":Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;
    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->setLoop(I)V

    .line 1963
    invoke-virtual {v1, p3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->setLanglightEffect(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V

    .line 1964
    invoke-virtual {v1, p4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->setDanceName(Ljava/lang/String;)V

    .line 1965
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1966
    invoke-virtual {p3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_name()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectName:Ljava/lang/String;

    .line 1967
    invoke-virtual {p3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_type()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectType:Ljava/lang/String;

    goto :goto_0

    .line 1968
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    if-eqz p4, :cond_1

    const-string v2, ""

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1969
    sput-object p4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectName:Ljava/lang/String;

    .line 1970
    const-string v2, "dance"

    sput-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectType:Ljava/lang/String;

    .line 1972
    :cond_1
    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1973
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    int-to-long v3, p5

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1974
    return-void
.end method

.method private sendPacket()V
    .locals 8

    .line 3540
    const/4 v0, 0x0

    .line 3541
    .local v0, "dataLength":I
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontDataFinish:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3c

    if-nez v1, :cond_6

    .line 3542
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    array-length v1, v1

    if-lez v1, :cond_5

    .line 3543
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    array-length v1, v1

    rem-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 3544
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    array-length v1, v1

    div-int/2addr v1, v4

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndex:I

    goto :goto_0

    .line 3545
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    array-length v1, v1

    div-int/2addr v1, v4

    add-int/2addr v1, v3

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndex:I

    .line 3547
    :goto_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndexNum:I

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndex:I

    if-ge v1, v5, :cond_6

    .line 3548
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndexNum:I

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndex:I

    sub-int/2addr v5, v3

    if-eq v1, v5, :cond_1

    .line 3549
    const/16 v0, 0x3c

    .line 3550
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndexNum:I

    mul-int/2addr v5, v4

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fData:[I

    invoke-static {v1, v5, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 3552
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    array-length v1, v1

    rem-int/2addr v1, v4

    if-nez v1, :cond_2

    .line 3553
    const/16 v0, 0x3c

    .line 3554
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndexNum:I

    mul-int/2addr v5, v4

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fData:[I

    invoke-static {v1, v5, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 3556
    :cond_2
    move v1, v2

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fData:[I

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 3557
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fData:[I

    aput v2, v5, v1

    .line 3556
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3559
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    array-length v1, v1

    rem-int/2addr v1, v4

    .line 3560
    .end local v0    # "dataLength":I
    .local v1, "dataLength":I
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndexNum:I

    mul-int/2addr v5, v4

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fData:[I

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    array-length v7, v7

    rem-int/2addr v7, v4

    invoke-static {v0, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3564
    move v0, v1

    .end local v1    # "dataLength":I
    .restart local v0    # "dataLength":I
    :goto_2
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndexNum:I

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fData:[I

    invoke-virtual {p0, v1, v2, v0, v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendLluScriptData(III[I)V

    .line 3566
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    array-length v1, v1

    if-gt v1, v4, :cond_4

    .line 3567
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontDataFinish:Z

    goto :goto_3

    .line 3569
    :cond_4
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndexNum:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndexNum:I

    goto :goto_3

    .line 3573
    :cond_5
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontDataFinish:Z

    .line 3577
    :cond_6
    :goto_3
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontDataFinish:Z

    if-eqz v1, :cond_d

    .line 3578
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    array-length v1, v1

    if-lez v1, :cond_c

    .line 3580
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    array-length v1, v1

    rem-int/2addr v1, v4

    if-nez v1, :cond_7

    .line 3581
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    array-length v1, v1

    div-int/2addr v1, v4

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndex:I

    goto :goto_4

    .line 3582
    :cond_7
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    array-length v1, v1

    div-int/2addr v1, v4

    add-int/2addr v1, v3

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndex:I

    .line 3583
    :goto_4
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndexNum:I

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndex:I

    if-ge v1, v5, :cond_d

    .line 3585
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndexNum:I

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndex:I

    sub-int/2addr v5, v3

    if-eq v1, v5, :cond_8

    .line 3586
    const/16 v0, 0x3c

    .line 3587
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndexNum:I

    mul-int/2addr v5, v4

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rData:[I

    invoke-static {v1, v5, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 3589
    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    array-length v1, v1

    rem-int/2addr v1, v4

    if-nez v1, :cond_9

    .line 3590
    const/16 v0, 0x3c

    .line 3591
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndexNum:I

    mul-int/2addr v5, v4

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rData:[I

    invoke-static {v1, v5, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 3593
    :cond_9
    move v1, v2

    .local v1, "i":I
    :goto_5
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rData:[I

    array-length v5, v5

    if-ge v1, v5, :cond_a

    .line 3594
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rData:[I

    aput v2, v5, v1

    .line 3593
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3596
    .end local v1    # "i":I
    :cond_a
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    array-length v1, v1

    rem-int/2addr v1, v4

    .line 3597
    .end local v0    # "dataLength":I
    .local v1, "dataLength":I
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndexNum:I

    mul-int/2addr v5, v4

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rData:[I

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    array-length v7, v7

    rem-int/2addr v7, v4

    invoke-static {v0, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3601
    move v0, v1

    .end local v1    # "dataLength":I
    .restart local v0    # "dataLength":I
    :goto_6
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndexNum:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rData:[I

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendLluScriptData(III[I)V

    .line 3603
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    array-length v1, v1

    if-gt v1, v4, :cond_b

    goto :goto_7

    .line 3605
    :cond_b
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndexNum:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndexNum:I

    goto :goto_7

    .line 3610
    :cond_c
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluScriptStRequest(I)V

    .line 3613
    :cond_d
    :goto_7
    return-void
.end method

.method private sendReplayLightEffectEvent(ILcom/xiaopeng/xuiservice/smart/LangLightEffect;Ljava/lang/String;)V
    .locals 5
    .param p1, "messageid"    # I
    .param p2, "lighteffect"    # Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    .param p3, "danceName"    # Ljava/lang/String;

    .line 1938
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendReplayLightEffectEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lightLoop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1940
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1941
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Lcom/xiaopeng/xuiservice/smart/SmartLluService$1;)V

    .line 1942
    .local v1, "mLluPlayClass":Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;
    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lightLoop:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->setLoop(I)V

    .line 1943
    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->setLanglightEffect(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V

    .line 1944
    invoke-virtual {v1, p3}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->setDanceName(Ljava/lang/String;)V

    .line 1946
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1947
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_name()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectName:Ljava/lang/String;

    .line 1948
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_type()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectType:Ljava/lang/String;

    goto :goto_0

    .line 1949
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    if-eqz p3, :cond_1

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1950
    sput-object p3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectName:Ljava/lang/String;

    .line 1951
    const-string v2, "dance"

    sput-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SendingLluEffectType:Ljava/lang/String;

    .line 1953
    :cond_1
    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1954
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LIGHT_DANCE_INTERVAL:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1955
    return-void
.end method

.method private setInfiniteLluPrivateCtrl(ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 5
    .param p1, "start"    # Z
    .param p2, "fType"    # Ljava/lang/String;
    .param p3, "rType"    # Ljava/lang/String;
    .param p4, "flight"    # I
    .param p5, "rlight"    # I
    .param p6, "expandControl"    # Ljava/lang/String;

    .line 2689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInfiniteLluPrivateCtrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " expand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->printLogInterval(Ljava/lang/String;II)V

    .line 2690
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2694
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->printLogInterval(Ljava/lang/String;II)V

    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->printLogInterval(Ljava/lang/String;II)V

    .line 2696
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->convertInfiniteStringToLluData(Ljava/lang/String;Ljava/lang/String;II)[B

    move-result-object v0

    .line 2697
    .local v0, "data":[B
    if-nez v0, :cond_1

    .line 2698
    return-void

    .line 2700
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/llu/CarLluManager;->setMcuLLuSelfControlData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2703
    goto :goto_0

    .line 2701
    :catch_0
    move-exception v1

    .line 2702
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartLluService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInfiniteLluPrivateCtrl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2691
    .end local v0    # "data":[B
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfiniteLluPrivateCtrl  not ready!!! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->printLogInterval(Ljava/lang/String;II)V

    .line 2692
    return-void
.end method

.method private setLluPrivateCtrl(ZIIIIII)V
    .locals 4
    .param p1, "start"    # Z
    .param p2, "fType"    # I
    .param p3, "fTick"    # I
    .param p4, "rType"    # I
    .param p5, "rTick"    # I
    .param p6, "fLight"    # I
    .param p7, "rfLight"    # I

    .line 2830
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2831
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_0

    .line 2832
    const-string v0, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLluPrivateCtrl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    :cond_0
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    .line 2834
    return-void

    .line 2837
    :cond_1
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_2

    .line 2838
    const-string v0, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLluPrivateCtrl start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " fType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fTick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rTick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fLight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rfLight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fLightLast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fLightLast:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rfLightLast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rfLightLast:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    :cond_2
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    .line 2844
    if-nez p6, :cond_3

    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fLightLast:I

    if-eq p6, v0, :cond_3

    .line 2845
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setHighBeamOnOff(I)V

    .line 2847
    :cond_3
    if-ne p6, v1, :cond_4

    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fLightLast:I

    if-eq p6, v0, :cond_4

    .line 2848
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setHighBeamOnOff(I)V

    .line 2851
    :cond_4
    if-nez p7, :cond_5

    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rfLightLast:I

    if-eq p7, v0, :cond_5

    .line 2852
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setBrakeLightOnOff(I)V

    .line 2854
    :cond_5
    if-ne p7, v1, :cond_6

    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rfLightLast:I

    if-eq p7, v0, :cond_6

    .line 2855
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setBrakeLightOnOff(I)V

    .line 2858
    :cond_6
    if-eqz p6, :cond_7

    if-ne p6, v1, :cond_8

    :cond_7
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fLightLast:I

    if-eq v0, p6, :cond_8

    .line 2859
    sput p6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fLightLast:I

    .line 2861
    :cond_8
    if-eqz p7, :cond_9

    if-ne p7, v1, :cond_a

    :cond_9
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rfLightLast:I

    if-eq v0, p7, :cond_a

    .line 2862
    sput p7, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rfLightLast:I

    .line 2863
    :cond_a
    invoke-virtual/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluPrivateCtrl(ZIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2866
    goto :goto_0

    .line 2864
    :catch_0
    move-exception v0

    .line 2865
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2867
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setLluPrivateCtrl(ZIIIIIII)V
    .locals 18
    .param p1, "start"    # Z
    .param p2, "fType"    # I
    .param p3, "fTick"    # I
    .param p4, "rType"    # I
    .param p5, "rTick"    # I
    .param p6, "fLight"    # I
    .param p7, "rfLight"    # I
    .param p8, "expandControl"    # I

    move-object/from16 v1, p0

    move/from16 v2, p6

    move/from16 v3, p7

    .line 2745
    move/from16 v4, p8

    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    const/4 v5, 0x1

    if-nez v0, :cond_1

    .line 2746
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    rem-int/lit16 v0, v0, 0xc8

    if-nez v0, :cond_0

    .line 2747
    const-string v0, "SmartLluService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setLluPrivateCtrl "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    :cond_0
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    add-int/2addr v0, v5

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    .line 2749
    return-void

    .line 2752
    :cond_1
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    rem-int/lit16 v0, v0, 0xc8

    if-nez v0, :cond_2

    .line 2753
    const-string v0, "SmartLluService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setLluPrivateCtrl start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move/from16 v7, p1

    :try_start_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " fType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move/from16 v8, p2

    :try_start_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " fTick: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v9, p3

    :try_start_3
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " rType: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v10, p4

    :try_start_4
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " rTick: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v11, p5

    :try_start_5
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " fLight: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " rfLight: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " expandControl:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2823
    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 2756
    :cond_2
    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    :goto_0
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    add-int/2addr v0, v5

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->LluPrivatePrintCount:I

    .line 2759
    if-nez v2, :cond_3

    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fLightLast:I

    if-eq v2, v0, :cond_3

    .line 2760
    invoke-virtual {v1, v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setHighBeamOnOff(I)V

    .line 2762
    :cond_3
    const/4 v0, 0x2

    if-ne v2, v5, :cond_4

    sget v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fLightLast:I

    if-eq v2, v6, :cond_4

    .line 2763
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setHighBeamOnOff(I)V

    .line 2766
    :cond_4
    const/4 v6, 0x0

    if-nez v3, :cond_5

    sget v12, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rfLightLast:I

    if-eq v3, v12, :cond_5

    .line 2767
    invoke-virtual {v1, v6}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setBrakeLightOnOff(I)V

    .line 2769
    :cond_5
    if-ne v3, v5, :cond_6

    sget v12, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rfLightLast:I

    if-eq v3, v12, :cond_6

    .line 2770
    invoke-virtual {v1, v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setBrakeLightOnOff(I)V

    .line 2773
    :cond_6
    and-int/lit8 v12, v4, 0x40

    shr-int/lit8 v12, v12, 0x6

    .line 2774
    .local v12, "ExpendControl":I
    sget-boolean v13, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->xpExpandControl:Z

    if-eqz v13, :cond_18

    if-ne v12, v5, :cond_18

    .line 2775
    and-int/lit8 v13, v4, 0x3

    .line 2776
    .local v13, "lgateCmd":I
    and-int/lit8 v14, v4, 0xc

    shr-int/2addr v14, v0

    .line 2777
    .local v14, "rgateCmd":I
    and-int/lit8 v15, v4, 0x10

    shr-int/lit8 v15, v15, 0x4

    .line 2778
    .local v15, "windowCmd":I
    and-int/lit8 v16, v4, 0x20

    shr-int/lit8 v6, v16, 0x5

    .line 2779
    .local v6, "mirrorCmd":I
    const-string v0, "SmartLluService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    const/4 v0, 0x1

    if-ne v13, v0, :cond_7

    sget v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsLgateCmdLast:I

    if-eq v13, v4, :cond_7

    .line 2781
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setScissorsLeftGateOnOff(I)V

    .line 2782
    :cond_7
    const/4 v0, 0x2

    if-ne v13, v0, :cond_8

    sget v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsLgateCmdLast:I

    if-eq v13, v4, :cond_8

    .line 2783
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setScissorsLeftGateOnOff(I)V

    .line 2784
    :cond_8
    const/4 v0, 0x3

    if-ne v13, v0, :cond_9

    sget v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsLgateCmdLast:I

    if-eq v13, v4, :cond_9

    .line 2785
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setScissorsLeftGateOnOff(I)V

    .line 2787
    :cond_9
    const/4 v4, 0x1

    if-ne v14, v4, :cond_a

    sget v5, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsRgateCmdLast:I

    if-eq v14, v5, :cond_a

    .line 2788
    invoke-virtual {v1, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setScissorsRightGateOnOff(I)V

    .line 2789
    :cond_a
    const/4 v4, 0x2

    if-ne v14, v4, :cond_b

    sget v5, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsRgateCmdLast:I

    if-eq v14, v5, :cond_b

    .line 2790
    invoke-virtual {v1, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setScissorsRightGateOnOff(I)V

    .line 2791
    :cond_b
    if-ne v14, v0, :cond_c

    sget v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsRgateCmdLast:I

    if-eq v14, v4, :cond_c

    .line 2792
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setScissorsRightGateOnOff(I)V

    .line 2794
    :cond_c
    if-nez v15, :cond_d

    sget v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->windowCmdLast:I

    if-eq v15, v4, :cond_d

    .line 2795
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setWindowOnOff(I)V

    .line 2797
    :cond_d
    const/4 v4, 0x1

    if-ne v15, v4, :cond_e

    sget v5, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->windowCmdLast:I

    if-eq v15, v5, :cond_e

    .line 2798
    invoke-virtual {v1, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setWindowOnOff(I)V

    .line 2800
    :cond_e
    if-nez v6, :cond_f

    sget v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mirrorCmdLast:I

    if-eq v6, v4, :cond_f

    .line 2801
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setMirrorOnOff(I)V

    .line 2803
    :cond_f
    const/4 v4, 0x1

    if-ne v6, v4, :cond_10

    sget v5, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mirrorCmdLast:I

    if-eq v6, v5, :cond_10

    .line 2804
    invoke-virtual {v1, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setMirrorOnOff(I)V

    .line 2806
    :cond_10
    if-eqz v13, :cond_11

    const/4 v4, 0x1

    if-eq v13, v4, :cond_11

    const/4 v4, 0x2

    if-eq v13, v4, :cond_11

    if-ne v13, v0, :cond_12

    :cond_11
    sget v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsLgateCmdLast:I

    if-eq v4, v13, :cond_12

    .line 2807
    sput v13, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsLgateCmdLast:I

    .line 2808
    :cond_12
    if-eqz v14, :cond_13

    const/4 v4, 0x1

    if-eq v14, v4, :cond_13

    const/4 v4, 0x2

    if-eq v14, v4, :cond_13

    if-ne v14, v0, :cond_14

    :cond_13
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsRgateCmdLast:I

    if-eq v0, v14, :cond_14

    .line 2809
    sput v14, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->scissorsRgateCmdLast:I

    .line 2810
    :cond_14
    if-eqz v15, :cond_15

    const/4 v0, 0x1

    if-ne v15, v0, :cond_16

    :cond_15
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->windowCmdLast:I

    if-eq v0, v15, :cond_16

    .line 2811
    sput v15, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->windowCmdLast:I

    .line 2812
    :cond_16
    if-eqz v6, :cond_17

    const/4 v0, 0x1

    if-ne v6, v0, :cond_18

    :cond_17
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mirrorCmdLast:I

    if-eq v0, v6, :cond_18

    .line 2813
    sput v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mirrorCmdLast:I

    .line 2816
    .end local v6    # "mirrorCmd":I
    .end local v13    # "lgateCmd":I
    .end local v14    # "rgateCmd":I
    .end local v15    # "windowCmd":I
    :cond_18
    if-eqz v2, :cond_19

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1a

    :cond_19
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fLightLast:I

    if-eq v0, v2, :cond_1a

    .line 2817
    sput v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->fLightLast:I

    .line 2819
    :cond_1a
    if-eqz v3, :cond_1b

    const/4 v0, 0x1

    if-ne v3, v0, :cond_1c

    :cond_1b
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rfLightLast:I

    if-eq v0, v3, :cond_1c

    .line 2820
    sput v3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rfLightLast:I

    .line 2822
    :cond_1c
    invoke-virtual/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluPrivateCtrl(ZIIII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2825
    .end local v12    # "ExpendControl":I
    goto :goto_6

    .line 2823
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move/from16 v7, p1

    :goto_1
    move/from16 v8, p2

    :goto_2
    move/from16 v9, p3

    :goto_3
    move/from16 v10, p4

    :goto_4
    move/from16 v11, p5

    .line 2824
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2826
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method private setLluSayHiEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 1013
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getSayHiEnable()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1014
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSayHiEnable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :cond_0
    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setLluSelfActiveMode(Z)V
    .locals 9
    .param p1, "active"    # Z

    .line 2881
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2882
    move v3, p1

    .line 2883
    .local v3, "activeMode":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-virtual/range {v2 .. v8}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluModeCtrl(IIIIII)V

    .line 2884
    .end local v3    # "activeMode":I
    goto :goto_1

    .line 2885
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setLluSelfActive(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2889
    :goto_1
    goto :goto_2

    .line 2887
    :catch_0
    move-exception v0

    .line 2888
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2890
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private setLluToInitMode()V
    .locals 16

    .line 2870
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluType()I

    move-result v0

    if-nez v0, :cond_0

    .line 2871
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluPrivateCtrl(ZIIIIII)V

    goto :goto_0

    .line 2873
    :cond_0
    const-string v0, ""

    .line 2874
    .local v0, "sfType":Ljava/lang/String;
    const-string v1, ""

    .line 2875
    .local v1, "srType":Ljava/lang/String;
    const/4 v10, 0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const-string v15, ""

    move-object/from16 v9, p0

    move-object v11, v0

    move-object v12, v1

    invoke-direct/range {v9 .. v15}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setInfiniteLluPrivateCtrl(ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2877
    .end local v0    # "sfType":Ljava/lang/String;
    .end local v1    # "srType":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private startSayHi()V
    .locals 3

    .line 1547
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSayHi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEnable:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUEnable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiMode:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1549
    :cond_0
    const-string v0, "SmartLluService"

    const-string v1, "startSayHi()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEffect:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1551
    return-void

    .line 1553
    :cond_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->removeDelayedEvent(I)V

    .line 1554
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 1555
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHi:Z

    .line 1557
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isWaitingForSayHi:Z

    if-nez v0, :cond_2

    .line 1558
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doRealSayHiAfterWait()V

    .line 1560
    :cond_2
    return-void

    .line 1548
    :cond_3
    :goto_0
    return-void
.end method

.method private stopLightEffectShow_turnLamp()V
    .locals 6

    .line 2489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->last_turnLamp_time:J

    .line 2490
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLightDancing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2491
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStopDanceMusic()V

    .line 2492
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2493
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopSayHi()V

    .line 2494
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getAiLluMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2495
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopAiLluMode()V

    .line 2497
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isInSpecialMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2498
    invoke-direct {p0, v1, v1, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doSetSpecialMode(IIZ)V

    .line 2499
    :cond_3
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumIntrupt:Z

    .line 2500
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetLoopFlag()V

    .line 2501
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->removePlayLoopEvent(Z)V

    .line 2502
    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2503
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    if-eqz v3, :cond_4

    .line 2504
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 2505
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    .line 2506
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2507
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 2508
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2509
    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_triggered_in_loop:Z

    if-eqz v3, :cond_5

    .line 2510
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2511
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_triggered_in_loop:Z

    goto :goto_0

    .line 2512
    :cond_5
    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->finishcallback_triggered:Z

    if-nez v3, :cond_6

    .line 2513
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2514
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->finishcallback_triggered:Z

    .line 2516
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->deactivateAndroidLluControl()V

    .line 2517
    return-void

    .line 2506
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private stopSayHi()V
    .locals 2

    .line 1580
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1581
    const-string v0, "SmartLluService"

    const-string v1, "stopSayHi()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 1583
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightEffectShow()V

    .line 1584
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHi:Z

    .line 1586
    :cond_0
    return-void
.end method

.method private tickLluStopTime()V
    .locals 4

    .line 1933
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_stop_timeout_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1934
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_stop_timeout_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1935
    return-void
.end method

.method private tickLluTime()V
    .locals 4

    .line 1922
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->finishcallback_triggered:Z

    .line 1923
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_triggered_in_loop:Z

    .line 1924
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1925
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1926
    return-void
.end method

.method private turnOffAndRestoreLight(IZ)V
    .locals 2
    .param p1, "turnoffReason"    # I
    .param p2, "turnoff"    # Z

    .line 2601
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getInstance()Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->turnOffAndRestoreLight(IZ)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2602
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isWaitingForSayHi:Z

    .line 2604
    :cond_0
    return-void
.end method

.method private turnOffLightAndStartEffect(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "loop"    # I
    .param p3, "needPGearLimit"    # Z

    .line 542
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$DL_ip_yc5uXPFZBtVnemlSJuxCg;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLluService$DL_ip_yc5uXPFZBtVnemlSJuxCg;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Ljava/lang/String;IZ)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 556
    return-void
.end method

.method private untickLluTime()V
    .locals 2

    .line 1929
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1930
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public doMcuLangLightEffect(II)V
    .locals 6
    .param p1, "effectName"    # I
    .param p2, "effectMode"    # I

    .line 3013
    shl-int/lit8 v0, p2, 0x10

    add-int/2addr v0, p1

    .line 3014
    .local v0, "effectId":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontDataFinish:Z

    .line 3015
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndex:I

    .line 3016
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontIndexNum:I

    .line 3017
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndex:I

    .line 3018
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearIndexNum:I

    .line 3021
    const-string v2, "SmartLluService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMcuLangLightEffect effectName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " effectId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " effectMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 3024
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3025
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3026
    const-string v3, "SmartLluService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcuLightEffect i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " effectId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_id()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getEffect_id()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 3028
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 3029
    goto :goto_1

    .line 3025
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3034
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    if-eqz v2, :cond_2

    .line 3035
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getData()[I

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    .line 3036
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getData()[I

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    .line 3037
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getData()[I

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->frontData:[I

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getData()[I

    move-result-object v4

    array-length v4, v4

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3038
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getData()[I

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->rearData:[I

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mcuLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getData()[I

    move-result-object v4

    array-length v4, v4

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3040
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluScriptStRequest(I)V

    .line 3042
    :cond_2
    return-void
.end method

.method public doMusicSpectrumToLangLight(F)V
    .locals 24
    .param p1, "ratio"    # F

    move-object/from16 v8, p0

    .line 3124
    iget-wide v0, v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpecrhythmTimeStamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 3126
    invoke-virtual {v8, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->updateTimer(Z)V

    .line 3127
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetPirvateLluControl()V

    .line 3130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpecrhythmTimeStamp:J

    .line 3132
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->tickLluStopTime()V

    .line 3134
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluType()I

    move-result v0

    if-nez v0, :cond_3

    .line 3135
    const/4 v0, 0x0

    .local v0, "fnum":I
    const/4 v2, 0x0

    .local v2, "fType":I
    const/4 v3, 0x0

    .local v3, "fTick":I
    const/4 v4, 0x0

    .local v4, "rnum":I
    const/4 v5, 0x0

    .local v5, "rType":I
    const/4 v6, 0x0

    .line 3137
    .local v6, "rTick":I
    iget-object v7, v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getData()[I

    move-result-object v9

    .line 3138
    .local v9, "frontData":[I
    iget-object v7, v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getData()[I

    move-result-object v10

    .line 3140
    .local v10, "rearData":[I
    array-length v7, v9

    const v11, 0xff00

    if-eqz v7, :cond_1

    .line 3141
    array-length v7, v9

    sub-int/2addr v7, v1

    int-to-float v7, v7

    mul-float v7, v7, p1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3142
    aget v7, v9, v0

    and-int/2addr v7, v11

    shr-int/lit8 v2, v7, 0x8

    .line 3143
    aget v7, v9, v0

    and-int/lit16 v3, v7, 0xff

    .line 3149
    .end local v0    # "fnum":I
    .end local v2    # "fType":I
    .end local v3    # "fTick":I
    .local v12, "fType":I
    .local v13, "fTick":I
    .local v14, "fnum":I
    :goto_0
    move v14, v0

    move v12, v2

    move v13, v3

    goto :goto_1

    .line 3145
    .end local v12    # "fType":I
    .end local v13    # "fTick":I
    .end local v14    # "fnum":I
    .restart local v0    # "fnum":I
    .restart local v2    # "fType":I
    .restart local v3    # "fTick":I
    :cond_1
    const/4 v2, -0x1

    .line 3146
    const/4 v3, -0x1

    goto :goto_0

    .line 3149
    .end local v0    # "fnum":I
    .end local v2    # "fType":I
    .end local v3    # "fTick":I
    .restart local v12    # "fType":I
    .restart local v13    # "fTick":I
    .restart local v14    # "fnum":I
    :goto_1
    array-length v0, v10

    if-eqz v0, :cond_2

    .line 3150
    array-length v0, v10

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3151
    aget v0, v10, v4

    and-int/2addr v0, v11

    shr-int/lit8 v0, v0, 0x8

    .line 3152
    .end local v5    # "rType":I
    .local v0, "rType":I
    aget v1, v10, v4

    and-int/lit16 v1, v1, 0xff

    .line 3157
    .end local v0    # "rType":I
    .end local v4    # "rnum":I
    .end local v6    # "rTick":I
    .local v1, "rTick":I
    .local v11, "rType":I
    .local v15, "rTick":I
    .local v16, "rnum":I
    :goto_2
    move v11, v0

    move v15, v1

    move/from16 v16, v4

    goto :goto_3

    .line 3154
    .end local v1    # "rTick":I
    .end local v11    # "rType":I
    .end local v15    # "rTick":I
    .end local v16    # "rnum":I
    .restart local v4    # "rnum":I
    .restart local v5    # "rType":I
    .restart local v6    # "rTick":I
    :cond_2
    const/4 v0, -0x1

    .line 3155
    .end local v5    # "rType":I
    .restart local v0    # "rType":I
    const/4 v1, -0x1

    goto :goto_2

    .line 3157
    .end local v0    # "rType":I
    .end local v4    # "rnum":I
    .end local v6    # "rTick":I
    .restart local v11    # "rType":I
    .restart local v15    # "rTick":I
    .restart local v16    # "rnum":I
    :goto_3
    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    move v2, v12

    move v3, v13

    move v4, v11

    move v5, v15

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluPrivateCtrl(ZIIIIII)V

    .line 3158
    .end local v9    # "frontData":[I
    .end local v10    # "rearData":[I
    .end local v11    # "rType":I
    .end local v12    # "fType":I
    .end local v13    # "fTick":I
    .end local v14    # "fnum":I
    .end local v15    # "rTick":I
    .end local v16    # "rnum":I
    goto/16 :goto_8

    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluType()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 3159
    const-string v0, ""

    .local v0, "sfType":Ljava/lang/String;
    const-string v2, ""

    .local v2, "srType":Ljava/lang/String;
    const-string v7, ""

    .line 3160
    .local v7, "expandCmd":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "fLight":I
    const/4 v10, 0x0

    .line 3161
    .local v10, "rLight":I
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getPeriod()I

    move-result v11

    .line 3162
    .local v11, "frontPeriod":I
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getRetain()I

    move-result v12

    .line 3163
    .local v12, "frontRetain":I
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getLoop()I

    move-result v13

    .line 3164
    .local v13, "frontLoop":I
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getFront_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Front_Effect;->getSdata()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3, v13}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->copyStrArray([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 3166
    .local v14, "sfrontData":[Ljava/lang/String;
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getPeriod()I

    move-result v15

    .line 3167
    .local v15, "rearPeriod":I
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getRetain()I

    move-result v16

    .line 3168
    .local v16, "rearRetain":I
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getLoop()I

    move-result v6

    .line 3169
    .local v6, "rearLoop":I
    iget-object v3, v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect;->getRear_Effect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->getSdata()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3, v6}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->copyStrArray([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 3171
    .local v5, "srearData":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "fnum":I
    const/4 v4, 0x0

    .line 3172
    .restart local v4    # "rnum":I
    array-length v1, v14

    move-object/from16 v18, v0

    const/4 v0, 0x0

    .end local v0    # "sfType":Ljava/lang/String;
    .local v18, "sfType":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 3173
    array-length v1, v14

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 3174
    aget-object v1, v14, v3

    move-object/from16 v19, v2

    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    .end local v2    # "srType":Ljava/lang/String;
    .local v19, "srType":Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3179
    .end local v3    # "fnum":I
    .end local v18    # "sfType":Ljava/lang/String;
    .local v1, "sfType":Ljava/lang/String;
    .local v20, "fnum":I
    :goto_4
    move-object/from16 v18, v1

    move/from16 v20, v3

    goto :goto_5

    .line 3176
    .end local v1    # "sfType":Ljava/lang/String;
    .end local v19    # "srType":Ljava/lang/String;
    .end local v20    # "fnum":I
    .restart local v2    # "srType":Ljava/lang/String;
    .restart local v3    # "fnum":I
    .restart local v18    # "sfType":Ljava/lang/String;
    :cond_4
    move-object/from16 v19, v2

    .end local v2    # "srType":Ljava/lang/String;
    .restart local v19    # "srType":Ljava/lang/String;
    const-string v1, ""

    goto :goto_4

    .line 3179
    .end local v3    # "fnum":I
    .restart local v20    # "fnum":I
    :goto_5
    array-length v1, v5

    if-eqz v1, :cond_5

    .line 3180
    array-length v1, v5

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3181
    aget-object v1, v5, v4

    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3185
    .end local v4    # "rnum":I
    .end local v19    # "srType":Ljava/lang/String;
    .local v0, "srType":Ljava/lang/String;
    .local v17, "srType":Ljava/lang/String;
    :goto_6
    move-object/from16 v17, v0

    move/from16 v19, v4

    goto :goto_7

    .line 3183
    .end local v0    # "srType":Ljava/lang/String;
    .end local v17    # "srType":Ljava/lang/String;
    .restart local v4    # "rnum":I
    .restart local v19    # "srType":Ljava/lang/String;
    :cond_5
    const-string v0, ""

    goto :goto_6

    .line 3185
    .end local v4    # "rnum":I
    .restart local v17    # "srType":Ljava/lang/String;
    .local v19, "rnum":I
    :goto_7
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/16 v21, -0x1

    const-string v22, ""

    move-object v0, v8

    move-object/from16 v2, v18

    move-object/from16 v3, v17

    move-object/from16 v23, v5

    move/from16 v5, v21

    .end local v5    # "srearData":[Ljava/lang/String;
    .local v23, "srearData":[Ljava/lang/String;
    move/from16 v21, v6

    move-object/from16 v6, v22

    .end local v6    # "rearLoop":I
    .local v21, "rearLoop":I
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setInfiniteLluPrivateCtrl(ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 3187
    .end local v7    # "expandCmd":Ljava/lang/String;
    .end local v9    # "fLight":I
    .end local v10    # "rLight":I
    .end local v11    # "frontPeriod":I
    .end local v12    # "frontRetain":I
    .end local v13    # "frontLoop":I
    .end local v14    # "sfrontData":[Ljava/lang/String;
    .end local v15    # "rearPeriod":I
    .end local v16    # "rearRetain":I
    .end local v17    # "srType":Ljava/lang/String;
    .end local v18    # "sfType":Ljava/lang/String;
    .end local v19    # "rnum":I
    .end local v20    # "fnum":I
    .end local v21    # "rearLoop":I
    .end local v23    # "srearData":[Ljava/lang/String;
    :cond_6
    :goto_8
    return-void
.end method

.method public doSetLightEffect(II)V
    .locals 5
    .param p1, "effectName"    # I
    .param p2, "effectMode"    # I

    .line 3046
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetLightEffect effectName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " effectMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentMcuEffectName:I

    .line 3049
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentMcuEffectMode:I

    .line 3050
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 3109
    :pswitch_0
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLightEffect unhandle effectName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " effectMode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3097
    :pswitch_1
    goto/16 :goto_6

    .line 3100
    :pswitch_2
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluPhotoSwitch(I)V

    .line 3101
    if-ne p2, v2, :cond_1

    .line 3102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluPhotoSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3105
    :cond_1
    goto/16 :goto_6

    .line 3103
    :catch_0
    move-exception v0

    .line 3104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 3106
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_6

    .line 3081
    :pswitch_3
    if-ne p2, v2, :cond_2

    .line 3082
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluChargingSwitch(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3083
    :catch_1
    move-exception v0

    .line 3084
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 3086
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_6

    .line 3085
    :cond_2
    :goto_1
    goto/16 :goto_6

    .line 3072
    :pswitch_4
    if-ne p2, v2, :cond_3

    .line 3073
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluChargingSwitch(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 3074
    :catch_2
    move-exception v0

    .line 3075
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 3077
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 3076
    :cond_3
    :goto_2
    goto :goto_6

    .line 3089
    :pswitch_5
    :try_start_3
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-nez p2, :cond_4

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluSleepSwitch(I)V

    .line 3090
    if-ne p2, v2, :cond_5

    .line 3091
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluSleepSwitch(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3094
    :cond_5
    goto :goto_6

    .line 3092
    :catch_3
    move-exception v0

    .line 3093
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 3095
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 3062
    :pswitch_6
    :try_start_4
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-nez p2, :cond_6

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluWakeWaitSwitch(I)V

    .line 3063
    if-ne p2, v2, :cond_7

    .line 3064
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluWakeWaitSwitch(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 3067
    :cond_7
    goto :goto_6

    .line 3065
    :catch_4
    move-exception v0

    .line 3066
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 3068
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 3053
    :pswitch_7
    :try_start_5
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-nez p2, :cond_8

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    move v0, v2

    :goto_5
    invoke-virtual {v3, v0}, Landroid/car/hardware/llu/CarLluManager;->setLluFindCarSwitch(I)V

    .line 3054
    if-ne p2, v2, :cond_9

    .line 3055
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setLluFindCarSwitch(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 3058
    :cond_9
    goto :goto_6

    .line 3056
    :catch_5
    move-exception v0

    .line 3057
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 3059
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 3114
    :goto_6
    if-eqz p2, :cond_a

    if-eq p2, v2, :cond_a

    .line 3115
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setMcuLangLightEffect(II)V

    .line 3117
    :cond_a
    const/16 v0, 0xa

    if-ne p1, v0, :cond_b

    if-lt p2, v2, :cond_b

    .line 3118
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiMode:I

    .line 3119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->SHOW_OFF_MODE_01:Ljava/util/List;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiMode:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEffect:Ljava/lang/String;

    .line 3121
    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public doStopLightEffectShow()V
    .locals 1

    .line 2450
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLightDancing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mPreDance:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2452
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStopLightEffectShow_l()V

    goto :goto_1

    .line 2451
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightDancing()I

    .line 2453
    :goto_1
    return-void
.end method

.method public doStopLightEffectShow_l()V
    .locals 6

    .line 2456
    const-string v0, "SmartLluService"

    const-string v1, "doStopLightEffectShow_l()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumIntrupt:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUFftEnable:Z

    if-eqz v0, :cond_0

    .line 2459
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->tickLluTime()V

    .line 2460
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getAiLluMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2461
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopAiLluMode()V

    .line 2463
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isInSpecialMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2464
    invoke-direct {p0, v1, v1, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doSetSpecialMode(IIZ)V

    .line 2465
    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumIntrupt:Z

    .line 2466
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lightLoop:I

    .line 2467
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->removePlayLoopEvent(Z)V

    .line 2468
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetLastLightFlag()V

    .line 2469
    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2470
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    if-eqz v3, :cond_3

    .line 2471
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 2472
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    .line 2473
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2474
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 2475
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluToInitMode()V

    .line 2476
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2477
    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_triggered_in_loop:Z

    if-eqz v3, :cond_4

    .line 2478
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2479
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->llu_timeout_triggered_in_loop:Z

    goto :goto_0

    .line 2480
    :cond_4
    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->finishcallback_triggered:Z

    if-nez v3, :cond_5

    .line 2481
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2482
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->finishcallback_triggered:Z

    .line 2484
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->deactivateAndroidLluControl()V

    .line 2485
    return-void

    .line 2473
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getAiLluMode()I
    .locals 1

    .line 1735
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->AiLluMode:I

    return v0
.end method

.method public getFftLLUEnable()Z
    .locals 1

    .line 586
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUFftEnable:Z

    return v0
.end method

.method public getLangLightEffectEnable()Z
    .locals 3

    .line 701
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "langLightEffectEnable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getLangLightEffectList(I)Ljava/lang/String;
    .locals 1
    .param p1, "effectType"    # I

    .line 812
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 813
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getAllLightDanceEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 815
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getAllLightEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLangLightEffectNameList(I)Ljava/util/List;
    .locals 1
    .param p1, "effectType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2288
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLangLightEffectNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLangLightMusicEffect()Ljava/lang/String;
    .locals 2

    .line 711
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LangLightMusicEffect"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 712
    const-string v0, "expomode_music1"

    return-object v0

    .line 714
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LangLightMusicEffect"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLightEffect(I)I
    .locals 3
    .param p1, "effectName"    # I

    .line 1159
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LIGHT_EFFECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLluDownLoadEffectNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 2325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/xuiservice/llu/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->parseEffectInfoByID(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2326
    .local v0, "jsonObj":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 2327
    const/4 v1, 0x0

    return-object v1

    .line 2328
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLluDownLoadEffectNameList()Ljava/lang/String;
    .locals 9

    .line 2343
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2344
    .local v0, "jsonArr":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2346
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, ""

    .line 2347
    .local v2, "danceNameJson":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2348
    .local v3, "danceNum":I
    const-string v4, "SmartLluService"

    const-string v5, "getLluDownLoadEffectNameList()"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    const-string v4, "/data/xuiservice/llu"

    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getDownloadAllId(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2350
    .local v4, "idLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "SmartLluService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ID size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    nop

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2352
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->parseEffectInfoByID(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2353
    if-eqz v1, :cond_0

    .line 2354
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2351
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2356
    .end local v5    # "i":I
    :cond_1
    const-string v5, "SmartLluService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLluDownLoadEffectNameList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getLluLocalDanceNameList()Ljava/lang/String;
    .locals 5

    .line 2263
    const/4 v0, 0x0

    .line 2264
    .local v0, "LocalDanceNameJson":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/xuiservice/dance/LocalDance_Info.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2265
    .local v1, "mfile":Ljava/io/File;
    nop

    .line 2266
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 2268
    const-string v2, "SmartLluService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLluLocalDanceNameList PATH:/system/etc/xuiservice/dance/LocalDance_Info.json  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    return-object v0
.end method

.method public getLluSleepMode()I
    .locals 3

    .line 655
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lluSleepMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLluWakeWaitMode()I
    .locals 3

    .line 631
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lluWakeWaitMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 246
    const-string v0, "SmartLluService"

    return-object v0
.end method

.method public getRunnningLluEffectName()Ljava/lang/String;
    .locals 1

    .line 1199
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lightLoop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->danceLoop:I

    if-nez v0, :cond_0

    .line 1200
    const/4 v0, 0x0

    return-object v0

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    return-object v0
.end method

.method public getSayHiEnable()Z
    .locals 3

    .line 840
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSayHiEnable"

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

.method public handleSayHiBroadcast()V
    .locals 12

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-eqz v0, :cond_9

    .line 451
    const-string v0, "SmartLluService"

    const-string v1, "handleSayHiBroadcast"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUEnable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 453
    const-string v0, "SmartLluService"

    const-string v2, "do not start sayhi lluEnable off"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mContext:Landroid/content/Context;

    const v2, 0x7f0e006e

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 455
    return-void

    .line 456
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->last_turnLamp_time:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v0, v2, v4

    if-ltz v0, :cond_8

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isDriving:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 460
    :cond_1
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    if-nez v0, :cond_2

    .line 461
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do not start sayhi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isDriving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->getMcuLluEnableStatus()I

    move-result v0

    .line 465
    .local v0, "lluStatus":I
    if-ne v0, v1, :cond_9

    .line 466
    const-string v2, "SmartLluService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSayHiBroadcast mPreDance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mPreDance:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLightDancing()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 468
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStopLDance()V

    .line 469
    iput v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->danceLoop:I

    goto :goto_0

    .line 470
    :cond_3
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mPreDance:Z

    if-eqz v2, :cond_4

    .line 471
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 472
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectName:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->triggerEffectType:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v5, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 475
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 476
    iput-boolean v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHi:Z

    .line 478
    :cond_5
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 479
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectName:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->currentEffectType:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v5, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->callBackLluShowStatusToClient(ILjava/lang/String;Ljava/lang/String;I)V

    .line 481
    :cond_6
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 482
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    const/16 v11, 0x320

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendEventMessage(IIILjava/lang/Object;I)V

    .line 485
    :cond_7
    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 486
    const-wide/16 v2, 0x96

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 487
    const-string v2, "android_xsayhi"

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiMode:I

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->startLangLightEffectShow(Ljava/lang/String;IIZ)V

    .line 488
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0070

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;II)V

    .end local v0    # "lluStatus":I
    goto :goto_2

    .line 457
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mContext:Landroid/content/Context;

    const v2, 0x7f0e006f

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 458
    const-string v0, "SmartLluService"

    const-string v1, "turning lamp on do not start sayhi"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    return-void

    .line 493
    :cond_9
    :goto_2
    goto :goto_3

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 494
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method protected initCarListener()V
    .locals 1

    .line 273
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    .line 315
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$4;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 333
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$5;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 369
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$6;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 393
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$7;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->addLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->addEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V

    .line 414
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getSayHiEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setSayHiEnable(Z)V

    .line 415
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->registerReceiver()V

    .line 416
    return-void
.end method

.method protected initXUIManager()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "mediacenter"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    .line 257
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    .line 269
    return-void
.end method

.method public isLightDanceAvailable()I
    .locals 3

    .line 1214
    const/4 v0, 0x0

    .line 1215
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    if-nez v1, :cond_0

    .line 1216
    const-string v1, "SmartLluService"

    const-string v2, "Current is not P Gear, cannot display light dance"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    add-int/lit8 v0, v0, 0x1

    .line 1219
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->getTurnLampStatus()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    if-eqz v1, :cond_2

    .line 1220
    :cond_1
    const-string v1, "SmartLluService"

    const-string v2, "Current turn lamp is on, cannot display light dance"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    add-int/lit8 v0, v0, 0x2

    .line 1223
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_4

    .line 1224
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaopeng.btphone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1225
    const-string v1, "SmartLluService"

    const-string v2, "BT phone is on call, cannot display light dance"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 1227
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    invoke-virtual {v1}, Landroid/media/audioConfig/AudioConfig;->getBtCallOnFlag()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1228
    const-string v1, "SmartLluService"

    const-string v2, "BT phone is on call, cannot display light dance"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    add-int/lit8 v0, v0, 0x4

    .line 1232
    :cond_4
    :goto_0
    neg-int v1, v0

    return v1
.end method

.method public isLightDancing()Z
    .locals 1

    .line 1474
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mDancePlaying:Z

    return v0
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 1813
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 4

    .line 420
    const-string v0, "SmartLluService"

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string/jumbo v0, "xp_llu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    .line 422
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 423
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 424
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getStallState()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curGear:I

    .line 428
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curGear:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, v2}, Landroid/car/hardware/bcm/CarBcmManager;->setDayLightMode(I)V

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getRearFogLamp()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    goto :goto_2

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartLluService"

    const-string v2, "initCarListener error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method protected onInit()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->start()V

    .line 252
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->removeLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V

    .line 1126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 1127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 1128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 1129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->removeEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V

    .line 1130
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->quit()Z

    .line 1131
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->unregisterReceiver()V

    .line 1132
    return-void
.end method

.method public resetPirvateLluControl()V
    .locals 3

    .line 2669
    :try_start_0
    const-string v0, "SmartLluService"

    const-string v1, "resetPirvateLluControl()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluToInitMode()V

    .line 2672
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-eqz v0, :cond_1

    .line 2674
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->activateAndroidLluControl()V

    .line 2675
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2676
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluType()I

    move-result v0

    const-wide/16 v1, 0x1e

    if-nez v0, :cond_0

    .line 2677
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluSelfActiveMode(Z)V

    .line 2678
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 2680
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluSelfActiveMode(Z)V

    .line 2681
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2685
    :cond_1
    goto :goto_0

    .line 2683
    :catch_0
    move-exception v0

    .line 2684
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2686
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendLluScriptData(III[I)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pos"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [I

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/car/hardware/llu/CarLluManager;->sendLluScriptData(III[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :cond_0
    goto :goto_0

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 872
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setAiLluListener(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;)V
    .locals 2
    .param p1, "carAiLluListener"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;

    .line 1716
    const-string v0, "SmartLluService"

    const-string v1, "setListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    sput-object p1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mLluAiListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluAiListener;

    .line 1719
    return-void
.end method

.method public setBrakeLightOnOff(I)V
    .locals 3
    .param p1, "type"    # I

    .line 2919
    :try_start_0
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrakeLightOnOff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    if-eqz v0, :cond_0

    .line 2921
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setBrakeLightOnOff(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2925
    :cond_0
    goto :goto_0

    .line 2923
    :catch_0
    move-exception v0

    .line 2924
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2926
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setFftLLUEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 596
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFftLLUEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    if-eqz v0, :cond_1

    .line 599
    if-eqz p1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unRegisterVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :cond_1
    :goto_0
    goto :goto_1

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 607
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUFftEnable:Z

    .line 608
    return-void
.end method

.method public setHighBeamOnOff(I)V
    .locals 3
    .param p1, "type"    # I

    .line 2908
    :try_start_0
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHighBeamOnOff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2909
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_0

    .line 2910
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setHighBeamOnOff(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2914
    :cond_0
    goto :goto_0

    .line 2912
    :catch_0
    move-exception v0

    .line 2913
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2915
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setLangLightEffectEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 685
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLangLightEffectEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUEnable:Z

    .line 687
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "langLightEffectEnable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 688
    if-nez p1, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightEffectShow()V

    .line 690
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopSayHi()V

    .line 692
    :cond_0
    return-void
.end method

.method public setLangLightMusicEffect(Ljava/lang/String;)V
    .locals 4
    .param p1, "effectName"    # Ljava/lang/String;

    .line 725
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getLangLightEffectByName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    move-result-object v0

    .line 726
    .local v0, "lightEffect":Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    if-eqz v0, :cond_0

    .line 728
    const-string v1, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLangLightMusicEffect effectName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 731
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LangLightMusicEffect"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 733
    :cond_0
    return-void
.end method

.method public setLightEffect(II)V
    .locals 3
    .param p1, "effectName"    # I
    .param p2, "effectMode"    # I

    .line 1180
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightEffect effectName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " effectMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doSetLightEffect(II)V

    .line 1183
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LIGHT_EFFECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1184
    return-void
.end method

.method public setLightEffectAndMusic(III)V
    .locals 0
    .param p1, "messageID"    # I
    .param p2, "effectName"    # I
    .param p3, "effectMusic"    # I

    .line 1196
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;)V
    .locals 2
    .param p1, "carLluServiceListener"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

    .line 1207
    const-string v0, "SmartLluService"

    const-string v1, "setListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartLluServiceListener:Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

    .line 1210
    return-void
.end method

.method public setLluPrivateCtrl(ZIIII)V
    .locals 7
    .param p1, "start"    # Z
    .param p2, "fType"    # I
    .param p3, "fTick"    # I
    .param p4, "rType"    # I
    .param p5, "rTick"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2902
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->ig_status_on:Z

    if-eqz v0, :cond_0

    .line 2903
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/car/hardware/llu/CarLluManager;->setLluPrivateCtrl(ZIIII)V

    .line 2904
    :cond_0
    return-void
.end method

.method public setLluScriptStRequest(I)V
    .locals 1
    .param p1, "request"    # I

    .line 876
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/llu/CarLluManager;->setLluScriptStRequest(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_0
    goto :goto_0

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 882
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setLluSleepMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 667
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lluSleepMode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 668
    return-void
.end method

.method public setLluWakeWaitMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 643
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lluWakeWaitMode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 644
    return-void
.end method

.method public setMcuLangLightEffect(II)V
    .locals 0
    .param p1, "effectName"    # I
    .param p2, "effectMode"    # I

    .line 1138
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doMcuLangLightEffect(II)V

    .line 1139
    return-void
.end method

.method public setMirrorOnOff(I)V
    .locals 3
    .param p1, "type"    # I

    .line 2972
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_0

    .line 2973
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMirrorOnOff :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setRearViewMirror(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2981
    :cond_0
    goto :goto_0

    .line 2979
    :catch_0
    move-exception v0

    .line 2980
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2982
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setMusicDelayTimeForDebug(I)V
    .locals 0
    .param p1, "delayTime"    # I

    .line 808
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumDelayTime:I

    .line 809
    return-void
.end method

.method public setMusicSpectrumToLangLight(F)V
    .locals 1
    .param p1, "ratio"    # F

    .line 766
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumIntrupt:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicLightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doMusicSpectrumToLangLight(F)V

    .line 769
    :cond_0
    return-void
.end method

.method public setMusicSpectrumToLangLight(I)V
    .locals 10
    .param p1, "tickNum"    # I

    .line 742
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpecrhythmTimeStamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 744
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->updateTimer(Z)V

    .line 745
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetPirvateLluControl()V

    .line 747
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpecrhythmTimeStamp:J

    .line 749
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumIntrupt:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumPause:Z

    if-nez v0, :cond_2

    .line 750
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->tickLluStopTime()V

    .line 752
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumCount:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumDelayTime:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 753
    const/4 v3, 0x1

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicTable:I

    iget v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicTable:I

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v2, p0

    move v5, p1

    move v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluPrivateCtrl(ZIIIIII)V

    .line 754
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumCount:I

    .line 755
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumCount:I

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumCount:I

    .line 757
    :cond_2
    return-void
.end method

.method public setMusicStartTickNumForDebug(I)V
    .locals 0
    .param p1, "tickNum"    # I

    .line 788
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicStartTick:I

    .line 789
    return-void
.end method

.method public setMusicStopTickNumForDebug(I)V
    .locals 0
    .param p1, "tickNum"    # I

    .line 798
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicStopTick:I

    .line 799
    return-void
.end method

.method public setMusicTableForDebug(I)V
    .locals 0
    .param p1, "musicTable"    # I

    .line 778
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicTable:I

    .line 779
    return-void
.end method

.method public setPause(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .line 576
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->musicSpectrumPause:Z

    .line 577
    return-void
.end method

.method public setSayHiEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-eqz v0, :cond_2

    .line 852
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->trrigerXuiSayHi:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 853
    .local v0, "mcuEnable":Z
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    :goto_1
    invoke-virtual {v2, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluShowOffSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v0    # "mcuEnable":Z
    :cond_2
    goto :goto_2

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 858
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->trrigerXuiSayHi:Z

    if-eqz v0, :cond_3

    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSayHiEnable:Z

    .line 859
    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSayHiEnable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 860
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 861
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopSayHi()V

    .line 862
    :cond_4
    return-void
.end method

.method public setScissorsLeftGateOnOff(I)V
    .locals 1
    .param p1, "type"    # I

    .line 2948
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_0

    .line 2949
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setLeftSdcAutoControl(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2953
    :cond_0
    goto :goto_0

    .line 2951
    :catch_0
    move-exception v0

    .line 2952
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2954
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setScissorsRightGateOnOff(I)V
    .locals 1
    .param p1, "type"    # I

    .line 2960
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setRightSdcAutoControl(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2965
    :cond_0
    goto :goto_0

    .line 2963
    :catch_0
    move-exception v0

    .line 2964
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2966
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setWindowOnOff(I)V
    .locals 5
    .param p1, "type"    # I

    .line 2932
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_1

    .line 2934
    const/4 v0, 0x0

    .line 2935
    .local v0, "pos":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2936
    const/16 v0, 0x64

    .line 2937
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    int-to-float v2, v0

    int-to-float v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/car/hardware/bcm/CarBcmManager;->setWindowsMovePositions(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2941
    .end local v0    # "pos":I
    :cond_1
    goto :goto_0

    .line 2939
    :catch_0
    move-exception v0

    .line 2940
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 2942
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public startAiLluMode(I)V
    .locals 7
    .param p1, "type"    # I

    .line 1645
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartAvmManager:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    if-nez v0, :cond_0

    .line 1646
    return-void

    .line 1647
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightEffectShow()V

    .line 1648
    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x12c

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendEventMessage(IIILjava/lang/Object;I)V

    .line 1650
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAiLluMode, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartAvmManager:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->initSmartAvmManager(I)V

    .line 1653
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartAvmManager:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$10;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->registerListener(Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$SmartAvmEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1692
    goto :goto_0

    .line 1690
    :catch_0
    move-exception v0

    .line 1691
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleException(Ljava/lang/Exception;)V

    .line 1693
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public startLangLightEffectShow(Ljava/lang/String;I)V
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "loop"    # I

    .line 508
    const-string v0, "persist.sys.xiaopeng.xui.ExpandControl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->xpExpandControl:Z

    .line 509
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayHi:Z

    .line 512
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isDanceEffect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->startLightDancing(Ljava/lang/String;I)I

    goto :goto_1

    .line 514
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isSayhiEffect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 515
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->startSayHi()V

    goto :goto_1

    .line 517
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUEnable:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->xpExpandControl:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    if-nez v0, :cond_4

    goto :goto_2

    .line 520
    :cond_4
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->xpExpandControl:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffLightAndStartEffect(Ljava/lang/String;IZ)V

    .line 522
    :goto_1
    return-void

    .line 518
    :cond_5
    :goto_2
    return-void
.end method

.method public startLangLightEffectShow(Ljava/lang/String;IIZ)V
    .locals 4
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "loop"    # I
    .param p4, "needPGearLimit"    # Z

    .line 532
    if-nez p2, :cond_0

    .line 533
    const-string v0, "SmartLluService"

    const-string v1, "startLangLightEffectShow LLU_EFFECT_CLOSE  NO NEED SHOW"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void

    .line 536
    :cond_0
    const/16 v0, 0xa

    if-lt p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_0"

    goto :goto_0

    .line 537
    .local v0, "realEffectName":Ljava/lang/String;
    :goto_1
    const-string v1, "SmartLluService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLangLightEffectShow  realEffectName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-direct {p0, v0, p3, p4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStartLangLightEffectShow(Ljava/lang/String;IZ)V

    .line 539
    return-void
.end method

.method public startLightDancing(I)I
    .locals 1
    .param p1, "loop"    # I

    .line 1236
    const-string v0, "PianoConcerto"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->startLightDancing(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public startLightDancing(Ljava/lang/String;I)I
    .locals 3
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "loop"    # I

    .line 1241
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLightDacing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v0, "persist.sys.xiaopeng.xui.ExpandControl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->xpExpandControl:Z

    .line 1244
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->xpExpandControl:Z

    if-eqz v0, :cond_5

    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUEnable:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1249
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mDancePlaying:Z

    if-eqz v0, :cond_4

    .line 1250
    const/4 v0, 0x1

    .line 1251
    .local v0, "forceRestart":Z
    if-eqz v0, :cond_3

    .line 1252
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightDancing()I

    goto :goto_0

    .line 1254
    :cond_3
    const-string v1, "SmartLluService"

    const-string v2, "startLightDacing is Playing"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const/4 v1, -0x1

    return v1

    .line 1258
    .end local v0    # "forceRestart":Z
    :cond_4
    :goto_0
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->lightLoop:I

    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->danceLoop:I

    .line 1259
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curDanceEffect:Ljava/lang/String;

    .line 1260
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->preloadAndPlay(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1245
    :cond_5
    :goto_1
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLightDacing :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isPGear:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLLUEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isRearFogOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/4 v0, -0x2

    return v0
.end method

.method public stopAiLluMode()V
    .locals 2

    .line 1722
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartAvmManager:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    if-nez v0, :cond_0

    .line 1723
    return-void

    .line 1724
    :cond_0
    const-string v0, "SmartLluService"

    const-string v1, "stopAiLluMode"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->AiLluMode:I

    if-eqz v0, :cond_1

    .line 1726
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->AiLluMode:I

    .line 1727
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSmartAvmManager:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->stopSmartAvm()V

    .line 1728
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->turnOffAndRestoreLight(IZ)V

    .line 1729
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mSoundPlayHelper:Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->releaseSoundPool()V

    .line 1730
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->handleVolumePolicy(Z)Z

    .line 1732
    :cond_1
    return-void
.end method

.method public stopLightDancing()I
    .locals 8

    .line 1265
    const-string v0, "SmartLluService"

    const-string v1, "stopLightDancing"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->isLightDancing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1268
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStopLDance()V

    goto :goto_0

    .line 1269
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mPreDance:Z

    if-eqz v0, :cond_1

    .line 1270
    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const/16 v7, 0x320

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendEventMessage(IIILjava/lang/Object;I)V

    .line 1271
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mPreDance:Z

    .line 1273
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetLoopFlag()V

    .line 1274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->curDanceEffect:Ljava/lang/String;

    .line 1275
    return v1
.end method

.method public stopLightEffectShow()V
    .locals 10

    .line 824
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 825
    .local v0, "currenttime":J
    sget-wide v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->last_startLanglight_time:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 826
    const-string v2, "SmartLluService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopLightEffectShow() timeGap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->last_startLanglight_time:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    sget-wide v2, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->last_startLanglight_time:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-int v2, v2

    rsub-int v9, v2, 0x5dc

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->sendEventMessage(IIILjava/lang/Object;I)V

    .line 828
    return-void

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStopLightEffectShow()V

    .line 831
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 444
    const-string v0, "SmartLluService"

    const-string v1, "unregisterReceiver."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 446
    return-void
.end method

.method public updateEffectFiles()V
    .locals 0

    .line 615
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->parseAllLightEffectFromJsons()V

    .line 616
    return-void
.end method

.method public updateEffectFiles(Ljava/lang/String;)V
    .locals 0
    .param p1, "llu_file"    # Ljava/lang/String;

    .line 619
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->loadLightEffectFromFile(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public updateTimer(Z)V
    .locals 2
    .param p1, "stopMusic"    # Z

    .line 1909
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1910
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 1911
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1912
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->timer:Ljava/util/Timer;

    .line 1913
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1914
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->setLluSelfActiveMode(Z)V

    .line 1915
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->removePlayLoopEvent(Z)V

    .line 1916
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->resetLastLightFlag()V

    .line 1917
    if-eqz p1, :cond_1

    .line 1918
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStopDanceMusic()V

    .line 1919
    :cond_1
    return-void

    .line 1913
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
