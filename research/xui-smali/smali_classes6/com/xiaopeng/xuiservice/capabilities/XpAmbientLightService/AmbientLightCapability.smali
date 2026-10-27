.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
.super Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;
.source "AmbientLightCapability.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;,
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;,
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BrightPara;,
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;,
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;,
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;,
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$InstanceHolder;
    }
.end annotation


# static fields
.field private static final AMBIENTLIGHT_DEFAULT_FADE:I

.field private static final AMBIENTLIGHT_LIGHT_VAL:I

.field private static final AMBIENTLIGHT_RECOVERY_FADE:I = 0x64

.field private static final AMBIENTLIGHT_SPEED_FADE:I = 0x2

.field private static final AMBIENTLIGHT_SPEED_LONG_FADE:I = 0x64

.field private static final DBG:Z = true

.field public static final EVENT_BRIGHT:I = 0x5

.field public static final EVENT_COLORTYPE:I = 0x6

.field public static final EVENT_DOUBLECOLOR:I = 0x4

.field public static final EVENT_EFFECT:I = 0x2

.field public static final EVENT_MODE:I = 0x1

.field public static final EVENT_MONOCOLOR:I = 0x3

.field public static final EVENT_POWER:I = 0x0

.field public static final LIGHT_COLOR_1:I = 0x1

.field public static final LIGHT_COLOR_10:I = 0xa

.field public static final LIGHT_COLOR_11:I = 0xb

.field public static final LIGHT_COLOR_12:I = 0xc

.field public static final LIGHT_COLOR_13:I = 0xd

.field public static final LIGHT_COLOR_14:I = 0xe

.field public static final LIGHT_COLOR_15:I = 0xf

.field public static final LIGHT_COLOR_16:I = 0x10

.field public static final LIGHT_COLOR_17:I = 0x11

.field public static final LIGHT_COLOR_18:I = 0x12

.field public static final LIGHT_COLOR_19:I = 0x13

.field public static final LIGHT_COLOR_2:I = 0x2

.field public static final LIGHT_COLOR_20:I = 0x14

.field public static final LIGHT_COLOR_3:I = 0x3

.field public static final LIGHT_COLOR_4:I = 0x4

.field public static final LIGHT_COLOR_5:I = 0x5

.field public static final LIGHT_COLOR_6:I = 0x6

.field public static final LIGHT_COLOR_7:I = 0x7

.field public static final LIGHT_COLOR_8:I = 0x8

.field public static final LIGHT_COLOR_9:I = 0x9

.field public static final LIGHT_GROUP_0:I = 0x0

.field public static final LIGHT_GROUP_1:I = 0x1

.field public static final LIGHT_GROUP_10:I = 0xa

.field public static final LIGHT_GROUP_11:I = 0xb

.field public static final LIGHT_GROUP_12:I = 0xc

.field public static final LIGHT_GROUP_13:I = 0xd

.field public static final LIGHT_GROUP_14:I = 0xe

.field public static final LIGHT_GROUP_15:I = 0xf

.field public static final LIGHT_GROUP_16:I = 0x10

.field public static final LIGHT_GROUP_17:I = 0x11

.field public static final LIGHT_GROUP_18:I = 0x12

.field public static final LIGHT_GROUP_19:I = 0x13

.field public static final LIGHT_GROUP_2:I = 0x2

.field public static final LIGHT_GROUP_20:I = 0x14

.field public static final LIGHT_GROUP_21:I = 0x15

.field public static final LIGHT_GROUP_22:I = 0x16

.field public static final LIGHT_GROUP_23:I = 0x17

.field public static final LIGHT_GROUP_24:I = 0x18

.field public static final LIGHT_GROUP_25:I = 0x19

.field public static final LIGHT_GROUP_26:I = 0x1a

.field public static final LIGHT_GROUP_27:I = 0x1b

.field public static final LIGHT_GROUP_28:I = 0x1c

.field public static final LIGHT_GROUP_29:I = 0x1d

.field public static final LIGHT_GROUP_3:I = 0x3

.field public static final LIGHT_GROUP_30:I = 0x1e

.field public static final LIGHT_GROUP_31:I = 0x1f

.field public static final LIGHT_GROUP_4:I = 0x4

.field public static final LIGHT_GROUP_5:I = 0x5

.field public static final LIGHT_GROUP_6:I = 0x6

.field public static final LIGHT_GROUP_7:I = 0x7

.field public static final LIGHT_GROUP_8:I = 0x8

.field public static final LIGHT_GROUP_9:I = 0x9

.field private static final MODULE_NAME:Ljava/lang/String; = "AmbientLight"

.field public static final MSG_DEFAULT_EFFECT:I = 0x1

.field public static final NORMAL_EFFECT:I = 0x1

.field private static final RESOURCE_TYPE:Ljava/lang/String; = "Ambient Light"

.field public static final SCRIPT_EFFECT:I = 0x2

.field public static final SPEECH_STATE_LISTENING:I = 0x2

.field public static final SPEECH_STATE_NO_VOICE:I = 0x3

.field public static final SPEECH_STATE_SPEAKERING:I = 0x0

.field public static final SPEECH_STATE_UNDERSTANDING:I = 0x1

.field public static final SPEECH_VOICE_DRIVER:I = 0x1

.field public static final SPEECH_VOICE_PASSAGER:I = 0x2

.field public static final SPEECH_VOICE_REAR_LEFT_PASSAGER:I = 0x3

.field public static final SPEECH_VOICE_REAR_RIGHT_PASSAGER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AmbientLightCapability"

.field public static final TIME_INTERVAL:Ljava/lang/String; = "timeInterval"


# instance fields
.field private SHC_Change_thread:Ljava/lang/Runnable;

.field private SHC_RAISE_DELAY:J

.field private ambientLightEffectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;",
            ">;"
        }
    .end annotation
.end field

.field private carSpeed:F

.field private closeRandomGroup:I

.field private currentBright:I

.field private currentColor:I

.field private currentDelayTime:I

.field private currentEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

.field private currentFade:I

.field private currentGroupNum:I

.field private currentMaxEffectNum:I

.field private final defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;

.field private doubleFirstColor:I

.field private doubleSecondColor:I

.field private doubleThemeColorEnable:Z

.field private effectType:Ljava/lang/String;

.field private hvacColor:I

.field private hvacDriverBright:I

.field private hvacPsnBright:I

.field private hvac_timeout_thread:Ljava/lang/Runnable;

.field private isAdjustHvac:Z

.field private isAmbientLightInit:Z

.field private isCarIgOn:Z

.field private isDriving:Z

.field private isEnableAtlController:Z

.field private isLite:Z

.field private isMusicRhythmMode:Z

.field private volatile isPNGear:Z

.field private isShcRised:Z

.field private isSpeechActive:Z

.field private isStartWelcomeEffect:Z

.field private lastAtlLogTime:J

.field private loopingNum:I

.field private mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

.field private mAmbientLightEffectTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

.field private mAtlConfiguration:Landroid/car/hardware/atl/AtlConfiguration;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private mCarResourceInfo:Lcom/car/opensdk/resourcemanager/CarResourceInfo;

.field private mCarResourceManager:Lcom/car/opensdk/resourcemanager/CarResourceManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

.field private mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

.field private final mModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpeechPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;

.field private mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

.field private monoColor:I

.field private music_spectrum_timeout_thread:Ljava/lang/Runnable;

.field private originalOpenStatus:Z

.field private previousGroupNum:I

.field private recovery_color_thread:Ljava/lang/Runnable;

.field private scriptEffectFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private speechEnable:Z

.field private speechFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private speechGroupNum:[I

.field private speechState:I

.field private speechVoicer:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 142
    const-string v0, "persist.atl.def.fadetime"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->AMBIENTLIGHT_DEFAULT_FADE:I

    .line 143
    const-string v0, "persist.atl.light.percent"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->AMBIENTLIGHT_LIGHT_VAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 316
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;-><init>(Landroid/content/Context;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "stable_effect"

    const-string v3, "gentle_breathing"

    const-string v4, "follow_speed"

    const-string v5, "music"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mModeList:Ljava/util/List;

    .line 166
    const/4 v1, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechVoicer:I

    .line 167
    const/4 v2, 0x3

    iput v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechState:I

    .line 168
    const/4 v3, 0x0

    iput v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->loopingNum:I

    .line 169
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->lastAtlLogTime:J

    .line 170
    const-string v4, "persist.sys.shcraise.delay"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->SHC_RAISE_DELAY:J

    .line 171
    const/4 v4, 0x0

    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->carSpeed:F

    .line 173
    iput v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentGroupNum:I

    .line 174
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentColor:I

    .line 175
    const/16 v4, 0x64

    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentBright:I

    .line 176
    const/16 v4, 0x3e8

    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentFade:I

    .line 177
    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentDelayTime:I

    .line 178
    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentMaxEffectNum:I

    .line 179
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->closeRandomGroup:I

    .line 180
    iput v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->previousGroupNum:I

    .line 185
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechEnable:Z

    .line 186
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isSpeechActive:Z

    .line 187
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAdjustHvac:Z

    .line 188
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isDriving:Z

    .line 189
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    .line 190
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isShcRised:Z

    .line 191
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isMusicRhythmMode:Z

    .line 192
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    .line 193
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->originalOpenStatus:Z

    .line 194
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getAtlType()I

    move-result v4

    if-ne v4, v1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isLite:Z

    .line 195
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getAtlType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isEnableAtlController:Z

    .line 196
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isPNGear:Z

    .line 197
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isStartWelcomeEffect:Z

    .line 215
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->ambientLightEffectMap:Ljava/util/HashMap;

    .line 217
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->recovery_color_thread:Ljava/lang/Runnable;

    .line 245
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->music_spectrum_timeout_thread:Ljava/lang/Runnable;

    .line 266
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$3;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->hvac_timeout_thread:Ljava/lang/Runnable;

    .line 286
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$4;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->SHC_Change_thread:Ljava/lang/Runnable;

    .line 319
    const-string v1, "AmbientLightCapability"

    const-string v3, "Start AmbientLightCapability(Context context)"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAudioManager:Landroid/media/AudioManager;

    .line 323
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->effectType:Ljava/lang/String;

    .line 324
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$1;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;

    .line 325
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$1;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mSpeechPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;->setGroupNum(I)V

    .line 327
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightEffectTypeList:Ljava/util/List;

    .line 329
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    .line 330
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->parseATLEffectFromJsons()V

    .line 331
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isEnableAtlController:Z

    if-nez v0, :cond_2

    .line 332
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    goto :goto_2

    .line 334
    :cond_2
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    .line 335
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mCarResourceManager:Lcom/car/opensdk/resourcemanager/CarResourceManager;

    invoke-static {}, Lcom/car/opensdk/resourcemanager/CarResourceManager;->getInstance()Lcom/car/opensdk/resourcemanager/CarResourceManager;

    .line 337
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$5;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$5;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mHandler:Landroid/os/Handler;

    .line 357
    return-void
.end method

.method private SHCChange()V
    .locals 4

    .line 293
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isShcRised:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 294
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isShcRised:Z

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "AmbientLightCapability"

    const-string v2, "SHC Rised "

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setShcReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AmbientLightCapability"

    const-string v3, "handleSHCWithCarDoorStateChanged error"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    .line 306
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isPNGear:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isShcRised:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->sendAtlControl(Z)V

    .line 307
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->recoveryColorThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->musicSpectrumTimeout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->effectType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->loopingNum:I

    return v0
.end method

.method static synthetic access$1502(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->loopingNum:I

    return p1
.end method

.method static synthetic access$1512(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .param p1, "x1"    # I

    .line 72
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->loopingNum:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->loopingNum:I

    return v0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentGroupNum:I

    return v0
.end method

.method static synthetic access$1702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentGroupNum:I

    return p1
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDrivingGroup()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentColor:I

    return v0
.end method

.method static synthetic access$1902(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->hvacTimeout()V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleFirstColor:I

    return v0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    return v0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentBright:I

    return v0
.end method

.method static synthetic access$2302(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentBright:I

    return p1
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentFade:I

    return v0
.end method

.method static synthetic access$2402(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentFade:I

    return p1
.end method

.method static synthetic access$2502(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentDelayTime:I

    return p1
.end method

.method static synthetic access$2600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->closeRandomGroup:I

    return v0
.end method

.method static synthetic access$2602(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->closeRandomGroup:I

    return p1
.end method

.method static synthetic access$2700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentMaxEffectNum:I

    return v0
.end method

.method static synthetic access$2800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->stopEffect()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->SHCChange()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mSpeechPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 72
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechEnable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->printDebugLog(Ljava/lang/String;II)V

    return-void
.end method

.method private dispatchEventToListener(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    .line 1467
    const-string v0, "AmbientLightCapability"

    const-string v1, "handleHalEvents event: "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .locals 1

    .line 1476
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$InstanceHolder;->access$1100()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    move-result-object v0

    return-object v0
.end method

.method private handleEffectData()V
    .locals 9

    .line 1738
    :try_start_0
    const-string v0, "AmbientLightCapability"

    const-string v1, "handleEffectData() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->stopEffect()V

    .line 1740
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->previousGroupNum:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 1741
    invoke-virtual {p0, v3, v2, v3, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    .line 1742
    :cond_0
    iput v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->loopingNum:I

    .line 1743
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentMaxEffectNum:I

    .line 1744
    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$8;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V

    .line 1787
    .local v3, "timerTask":Ljava/lang/Runnable;
    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->loopingNum:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getTimeInterval()I

    move-result v0

    int-to-long v6, v0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->scriptEffectFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1788
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentMaxEffectNum:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getGroupNum()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->previousGroupNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1791
    .end local v3    # "timerTask":Ljava/lang/Runnable;
    goto :goto_0

    .line 1789
    :catch_0
    move-exception v0

    .line 1790
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AmbientLightCapability"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEffectData run exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private hvacTimeout()V
    .locals 4

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAdjustHvac:Z

    .line 276
    const-string v1, "hvacColor"

    const/16 v2, 0x64

    const/16 v3, 0x12

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightDataEffect(ILjava/lang/String;BB)V

    .line 277
    const-string v1, "hvacColor"

    const/16 v3, 0x13

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightDataEffect(ILjava/lang/String;BB)V

    .line 278
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateAmbientLightEffect()V

    .line 279
    return-void
.end method

.method private jsonToIntArr(Lorg/json/JSONObject;Ljava/lang/String;)[I
    .locals 5
    .param p1, "jsonData"    # Lorg/json/JSONObject;
    .param p2, "infoType"    # Ljava/lang/String;

    .line 1827
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1828
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 1829
    .local v1, "len":I
    new-array v2, v1, [I

    .line 1830
    .local v2, "infoAarr":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1831
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1830
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1833
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 1834
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .end local v1    # "len":I
    .end local v2    # "infoAarr":[I
    :catch_0
    move-exception v0

    .line 1835
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AmbientLightCapability"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonToIntArr exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method private musicSpectrumTimeout()V
    .locals 4

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getMusicSpectrumEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 254
    const-string v0, "AmbientLightCapability"

    const-string v1, "music_spectrum_timeout_thread"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "effectType":Ljava/lang/String;
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    int-to-byte v1, v1

    const/16 v2, 0x1e

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrumEffect(BBB)V

    .line 259
    .end local v0    # "effectType":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private parseATLEffectFromJsons()V
    .locals 7

    .line 526
    const-string v0, "AmbientLightCapability"

    const-string v1, "parseATLEffectFromJsons()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v0, "/system/etc/xuiservice/atl"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getFilesAllName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 554
    .local v0, "effectFilesName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 555
    return-void

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->ambientLightEffectMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 557
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->ambientLightEffectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 558
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightEffectTypeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 559
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v3, :cond_2

    .line 561
    :try_start_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Ljava/io/FileReader;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    .line 562
    .local v3, "effect":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightEffectTypeList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 563
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightEffectTypeList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->ambientLightEffectMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_1
    const-string v4, "AmbientLightCapability"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseATLEffectFromJsons EffectName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/gson/JsonIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "effect":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    goto :goto_1

    .line 572
    :catch_0
    move-exception v3

    .line 573
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    goto :goto_2

    .line 570
    :catch_1
    move-exception v3

    .line 571
    .local v3, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v3}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .end local v3    # "e":Lcom/google/gson/JsonSyntaxException;
    goto :goto_1

    .line 568
    :catch_2
    move-exception v3

    .line 569
    .local v3, "e":Lcom/google/gson/JsonIOException;
    invoke-virtual {v3}, Lcom/google/gson/JsonIOException;->printStackTrace()V

    .line 574
    .end local v3    # "e":Lcom/google/gson/JsonIOException;
    :goto_1
    nop

    .line 559
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    .end local v2    # "i":I
    :cond_2
    monitor-exit v1

    .line 577
    return-void

    .line 576
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private printAtlLog(IBBB)V
    .locals 6
    .param p1, "groupNum"    # I
    .param p2, "color"    # B
    .param p3, "bright"    # B
    .param p4, "fade"    # B

    .line 1494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1495
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->lastAtlLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1496
    const-string v2, "AmbientLightCapability"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printAtlLog groupNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", color:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bright:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", fade:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->lastAtlLogTime:J

    .line 1499
    :cond_0
    return-void
.end method

.method private printAtlLog(Ljava/lang/String;II)V
    .locals 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "pamram1"    # I
    .param p3, "pamram2"    # I

    .line 1526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1527
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->lastAtlLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1528
    const-string v2, "AmbientLightCapability"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printAtlLog isIgOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " func:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->lastAtlLogTime:J

    .line 1531
    :cond_0
    return-void
.end method

.method private printAtlLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "logs"    # Ljava/lang/String;

    .line 1518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1519
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->lastAtlLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1520
    const-string v2, "AmbientLightCapability"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printAtlLog func:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", logs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->lastAtlLogTime:J

    .line 1523
    :cond_0
    return-void
.end method

.method private printAtlLog(Ljava/lang/String;ZI)V
    .locals 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "flag1"    # Z
    .param p3, "logs"    # I

    .line 1510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1511
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->lastAtlLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1512
    const-string v2, "AmbientLightCapability"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printAtlLog func:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", flag1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", logs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->lastAtlLogTime:J

    .line 1515
    :cond_0
    return-void
.end method

.method private printDebugLog(Ljava/lang/String;II)V
    .locals 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "flag1"    # I
    .param p3, "flag2"    # I

    .line 1502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1503
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->lastAtlLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1504
    const-string v2, "AmbientLightCapability"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printDebugLog func:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->lastAtlLogTime:J

    .line 1507
    :cond_0
    return-void
.end method

.method private recoveryColorThread()V
    .locals 4

    .line 224
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isLite:Z

    if-nez v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "effectType":Ljava/lang/String;
    const-string v1, "follow_speed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x64

    if-eqz v1, :cond_0

    .line 227
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->carSpeed:F

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setFollowCarSpeedEffect(FI)V

    goto :goto_0

    .line 228
    :cond_0
    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    int-to-byte v1, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrumEffect(BBB)V

    .line 233
    .end local v0    # "effectType":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private setAmbientLightEffectData(Ljava/lang/String;)V
    .locals 5
    .param p1, "effectName"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->ambientLightEffectMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->ambientLightEffectMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    const/4 v1, 0x0

    .line 373
    .local v1, "executeTime":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->ambientLightEffectMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    .line 374
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 375
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getTimeInterval()I

    move-result v3

    add-int/2addr v1, v3

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->setExecuteTime(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    .line 378
    const-string v2, "AmbientLightCapability"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAmbientLightEffectData effectName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->ambientLightEffectMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " executeTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .end local v1    # "executeTime":I
    goto :goto_1

    .line 380
    :cond_1
    const-string v1, "AmbientLightCapability"

    const-string v2, "Effect name not found "

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_1
    monitor-exit v0

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setAtlConfiguration(Landroid/car/hardware/atl/AtlConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/car/hardware/atl/AtlConfiguration;

    .line 1251
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setAtlConfiguration(Landroid/car/hardware/atl/AtlConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    goto :goto_0

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 1255
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setAtlOpen(I)V
    .locals 1
    .param p1, "status"    # I

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setAtlOpen(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    goto :goto_0

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 1247
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setBrightness(I)V
    .locals 1
    .param p1, "bright"    # I

    .line 1235
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setBrightnessLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    goto :goto_0

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 1239
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setDoubleThemeColor(I)V
    .locals 1
    .param p1, "status"    # I

    .line 1227
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setDoubleThemeColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    goto :goto_0

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 1231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setDrivingGroup()I
    .locals 2

    .line 1726
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableDrivingGroup()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1727
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->carSpeed:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 1728
    const/4 v0, 0x2

    return v0

    .line 1730
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 1733
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->loopingNum:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getGroupNum()I

    move-result v0

    return v0
.end method

.method private setThemeFirstColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1211
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setThemeFirstColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    goto :goto_0

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 1215
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setThemeSecondColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1219
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setThemeSecondColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    goto :goto_0

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 1223
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private startSpeechEffect([I[B[B[I)V
    .locals 22
    .param p1, "groupNum"    # [I
    .param p2, "color"    # [B
    .param p3, "bright"    # [B
    .param p4, "fade"    # [I

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 446
    move-object/from16 v8, p4

    const-wide/16 v0, 0x0

    .line 447
    .local v0, "period_time":J
    const-wide/16 v2, 0x0

    .line 448
    .local v2, "delay_time":J
    const-string v4, "AmbientLightCapability"

    const-string v5, "startSpeechEffect()"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    move-object/from16 v9, p1

    iput-object v9, v6, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechGroupNum:[I

    .line 451
    const/4 v4, 0x0

    move-wide/from16 v16, v0

    move v0, v4

    .local v0, "i":I
    .local v16, "period_time":J
    :goto_0
    array-length v1, v8

    if-ge v0, v1, :cond_0

    .line 452
    aget v1, v8, v0

    int-to-long v10, v1

    add-long v16, v16, v10

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechEnable:Z

    .line 455
    move-wide/from16 v18, v2

    .end local v2    # "delay_time":J
    .local v4, "i":I
    .local v18, "delay_time":J
    :goto_1
    move v15, v4

    .end local v4    # "i":I
    .local v15, "i":I
    array-length v0, v7

    if-ge v15, v0, :cond_1

    .line 456
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "started speechTimer length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    aget-byte v20, v7, v15

    .line 458
    .local v20, "color_value":B
    aget-byte v21, p3, v15

    .line 459
    .local v21, "bright_value":B
    aget v0, v8, v15

    div-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-byte v13, v0

    .line 461
    .local v13, "fade_value":B
    new-instance v10, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$6;

    move-object v0, v10

    move-object v1, v6

    move-object v2, v9

    move/from16 v3, v20

    move/from16 v4, v21

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$6;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;[IBBB)V

    .line 472
    .local v10, "timerTask":Ljava/lang/Runnable;
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v11, v18

    move v1, v13

    move-wide/from16 v13, v16

    .end local v13    # "fade_value":B
    .local v1, "fade_value":B
    move v2, v15

    move-object v15, v0

    .end local v15    # "i":I
    .local v2, "i":I
    invoke-static/range {v10 .. v15}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v6, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 473
    aget v0, v8, v2

    int-to-long v3, v0

    add-long v18, v18, v3

    .line 455
    .end local v1    # "fade_value":B
    .end local v10    # "timerTask":Ljava/lang/Runnable;
    .end local v20    # "color_value":B
    .end local v21    # "bright_value":B
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 475
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method private stopEffect()V
    .locals 2

    .line 1718
    const-string v0, "AmbientLightCapability"

    const-string v1, "stopEffect() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->scriptEffectFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->scriptEffectFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->scriptEffectFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1723
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 1472
    const-string v0, "*AmbientLight HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    return-void
.end method

.method public getAdjustHvacStatus()Z
    .locals 1

    .line 1363
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAdjustHvac:Z

    return v0
.end method

.method public getAmbientInitStatus()Z
    .locals 1

    .line 1375
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    return v0
.end method

.method public getAmbientLightBright()I
    .locals 3

    .line 1168
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AmbientLightBright"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAmbientLightDoubleFirstColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "effectType"    # Ljava/lang/String;

    .line 1152
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DoubleFirstColor"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAmbientLightDoubleSecondColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "effectType"    # Ljava/lang/String;

    .line 1160
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DoubleSecondColor"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAmbientLightEffectType()Ljava/lang/String;
    .locals 3

    .line 1123
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AmbientLightEffectType"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, "effectType":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "stable_effect"

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "AmbientLightEffectType"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getAmbientLightEffectTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1351
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightEffectTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getAmbientLightMonoColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "effectType"    # Ljava/lang/String;

    .line 1144
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MonoColor"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAmbientLightOpen()Z
    .locals 3

    .line 1111
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isAmbientLightOpen"

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

.method public getCarIgStatus()Z
    .locals 1

    .line 1359
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    return v0
.end method

.method public getDoubleThemeColorEnable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "effectType"    # Ljava/lang/String;

    .line 1132
    const-string v0, "stable_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "gentle_breathing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1135
    :cond_0
    return v1

    .line 1133
    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "isDoubleColorEnable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public getDrivingStatus()Z
    .locals 1

    .line 1355
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isDriving:Z

    return v0
.end method

.method public getEnableMusicSpectrum()I
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableMusicSpectrum()I

    move-result v0

    return v0
.end method

.method public getFilesAllName(Ljava/lang/String;)Ljava/util/List;
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

    .line 1085
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1087
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 1088
    const-string v2, "AmbientLightCapability"

    const-string/jumbo v3, "\u7a7a\u76ee\u5f55"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const/4 v2, 0x0

    return-object v2

    .line 1091
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .local v2, "s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1092
    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1094
    const-string v4, "AmbientLightCapability"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1097
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    return-object v0
.end method

.method public getMusicEffectFade()I
    .locals 1

    .line 1379
    sget v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->AMBIENTLIGHT_DEFAULT_FADE:I

    return v0
.end method

.method public getMusicSpectrumEnable()Z
    .locals 4

    .line 1105
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isLite:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1106
    return v1

    .line 1107
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "isMusicSpectrumEnable"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1
.end method

.method public getPNGear()Z
    .locals 1

    .line 1371
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isPNGear:Z

    return v0
.end method

.method public getSHCStatus()Z
    .locals 1

    .line 1367
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isShcRised:Z

    return v0
.end method

.method public getVisualCaptureListener()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;
    .locals 1

    .line 1387
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    return-object v0
.end method

.method public handleHalEvents()V
    .locals 1

    .line 1456
    monitor-enter p0

    .line 1457
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    .line 1458
    .local v0, "listener":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    if-eqz v0, :cond_0

    .line 1460
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->dispatchEventToListener(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;)V

    .line 1462
    :cond_0
    return-void

    .line 1458
    .end local v0    # "listener":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public initAmbilentLightEffect()V
    .locals 9

    .line 498
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    if-eqz v0, :cond_1

    .line 500
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "AmbientLightCapability"

    const-string v2, "initAmbientLightEffect()"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isEnableAtlController:Z

    if-nez v1, :cond_0

    .line 502
    const/4 v1, 0x2

    new-array v4, v1, [B

    fill-array-data v4, :array_0

    .line 503
    .local v4, "lightPosition":[B
    new-array v6, v1, [B

    fill-array-data v6, :array_1

    .line 504
    .local v6, "color":[B
    new-array v7, v1, [B

    fill-array-data v7, :array_2

    .line 505
    .local v7, "bright":[B
    new-array v8, v1, [B

    fill-array-data v8, :array_3

    .line 506
    .local v8, "fade":[B
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setTwoLightData(B[BZ[B[B[B)V

    .line 507
    const-string v1, "normalColor"

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightDataEffect(ILjava/lang/String;BB)V

    .line 508
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDoorAmbientLightOpen(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v4    # "lightPosition":[B
    .end local v6    # "color":[B
    .end local v7    # "bright":[B
    .end local v8    # "fade":[B
    :cond_0
    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AmbientLightCapability"

    const-string v3, "initAmbilentLightEffect error"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    .line 514
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightEffectType(Ljava/lang/String;)V

    .line 516
    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public isSupportDoubleThemeColor(Ljava/lang/String;)Z
    .locals 1
    .param p1, "effectType"    # Ljava/lang/String;

    .line 1115
    const-string v0, "stable_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gentle_breathing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isWelcomeAutoShow()Z
    .locals 5

    .line 1080
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Welcome mode status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "welcome_disable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "welcome_disable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 365
    const-string v0, "AmbientLightCapability"

    const-string v1, "onCarManagerInited()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 367
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 1486
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 1490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    .line 1491
    return-void
.end method

.method public pausePlay()I
    .locals 1

    .line 1814
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->stopEffect()V

    .line 1815
    const/4 v0, 0x0

    return v0
.end method

.method public recoveryColor()V
    .locals 4

    .line 236
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->recovery_color_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->recovery_color_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    return-void
.end method

.method public registerVisualizerListener()V
    .locals 3

    .line 1050
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1051
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableMusicSpectrum()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableMusicSpectrum()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrumEnable(Z)V

    .line 1056
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unRegisterVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V

    goto :goto_1

    .line 1052
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrumEnable(Z)V

    .line 1053
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :cond_2
    :goto_1
    goto :goto_2

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 1062
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public releaseResource()I
    .locals 3

    .line 1805
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AmbientLightEffectType"

    const-string v2, "effect_stable_effect_new"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1806
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1807
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightEffect(Ljava/lang/String;I)V

    .line 1809
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mCarResourceManager:Lcom/car/opensdk/resourcemanager/CarResourceManager;

    const-string v1, "AmbientLight"

    const-string v2, "Ambient Light"

    invoke-virtual {v0, v1, v2}, Lcom/car/opensdk/resourcemanager/CarResourceManager;->releaseResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestPermission(Z)I
    .locals 3
    .param p1, "apply"    # Z

    .line 1841
    const/4 v0, 0x0

    .line 1842
    .local v0, "ret":I
    if-eqz p1, :cond_0

    .line 1843
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setAtlOpen(I)V

    .line 1844
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setBrightness(I)V

    goto :goto_0

    .line 1846
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightBright()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightMemoryBright(I)V

    .line 1847
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightEffectType(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightOpen()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightOpen(Z)V

    .line 1850
    :goto_0
    return v0
.end method

.method public requestResource()I
    .locals 3

    .line 1795
    new-instance v0, Lcom/car/opensdk/resourcemanager/CarResourceInfo$Builder;

    invoke-direct {v0}, Lcom/car/opensdk/resourcemanager/CarResourceInfo$Builder;-><init>()V

    .line 1796
    .local v0, "mBuilder":Lcom/car/opensdk/resourcemanager/CarResourceInfo$Builder;
    const-string v1, "AmbientLight"

    invoke-virtual {v0, v1}, Lcom/car/opensdk/resourcemanager/CarResourceInfo$Builder;->setModule(Ljava/lang/String;)Lcom/car/opensdk/resourcemanager/CarResourceInfo$Builder;

    move-result-object v1

    const-string v2, "Ambient Light"

    .line 1797
    invoke-virtual {v1, v2}, Lcom/car/opensdk/resourcemanager/CarResourceInfo$Builder;->setResourceType(Ljava/lang/String;)Lcom/car/opensdk/resourcemanager/CarResourceInfo$Builder;

    move-result-object v1

    .line 1798
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/car/opensdk/resourcemanager/CarResourceInfo$Builder;->setPriority(I)Lcom/car/opensdk/resourcemanager/CarResourceInfo$Builder;

    move-result-object v1

    const-string v2, "Ambient Light Resource"

    .line 1799
    invoke-virtual {v1, v2}, Lcom/car/opensdk/resourcemanager/CarResourceInfo$Builder;->setDescription(Ljava/lang/String;)Lcom/car/opensdk/resourcemanager/CarResourceInfo$Builder;

    move-result-object v1

    .line 1800
    invoke-virtual {v1}, Lcom/car/opensdk/resourcemanager/CarResourceInfo$Builder;->createResourceInfo()Lcom/car/opensdk/resourcemanager/CarResourceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mCarResourceInfo:Lcom/car/opensdk/resourcemanager/CarResourceInfo;

    .line 1801
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mCarResourceManager:Lcom/car/opensdk/resourcemanager/CarResourceManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mCarResourceInfo:Lcom/car/opensdk/resourcemanager/CarResourceInfo;

    invoke-virtual {v1, v2}, Lcom/car/opensdk/resourcemanager/CarResourceManager;->acquireResource(Lcom/car/opensdk/resourcemanager/CarResourceInfo;)I

    move-result v1

    return v1
.end method

.method public resetColor()V
    .locals 4

    .line 241
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->recovery_color_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->recovery_color_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    return-void
.end method

.method public resetGroutLightData()V
    .locals 11

    .line 1065
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v8

    .line 1066
    .local v8, "effectType":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getDoubleThemeColorEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    move v9, v0

    .line 1067
    .local v9, "color":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    const/4 v0, 0x6

    if-ge v10, v0, :cond_1

    .line 1068
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0xa

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(BBIZBBB)V

    .line 1069
    const/4 v1, 0x1

    const/4 v2, 0x0

    int-to-byte v5, v9

    const/16 v6, 0x64

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(BBIZBBB)V

    .line 1067
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 1071
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public riseSHC()V
    .locals 6

    .line 310
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isWelcomeAutoShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->SHC_Change_thread:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->SHC_RAISE_DELAY:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    :cond_0
    return-void
.end method

.method public sendAtlControl(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 1018
    :try_start_0
    new-instance v0, Landroid/car/hardware/atl/AtlConfiguration$Builder;

    invoke-direct {v0}, Landroid/car/hardware/atl/AtlConfiguration$Builder;-><init>()V

    .line 1019
    .local v0, "mBuilder":Landroid/car/hardware/atl/AtlConfiguration$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isLeftAtlControlEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 1020
    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isRightAtlControlEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 1021
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->colorType(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 1022
    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isLedEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 1023
    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isFadeEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 1024
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->fadingTime(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 1025
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->intensity(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 1026
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->rgbRedOrPreDefinedColor(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 1027
    invoke-virtual {v0}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->build()Landroid/car/hardware/atl/AtlConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAtlConfiguration:Landroid/car/hardware/atl/AtlConfiguration;

    .line 1028
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAtlConfiguration:Landroid/car/hardware/atl/AtlConfiguration;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAtlConfiguration(Landroid/car/hardware/atl/AtlConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    .end local v0    # "mBuilder":Landroid/car/hardware/atl/AtlConfiguration$Builder;
    goto :goto_0

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 1032
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setAdjustHvacStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 1395
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAdjustHvac:Z

    .line 1396
    return-void
.end method

.method public setAllLightData([B[B[B)V
    .locals 2
    .param p1, "color"    # [B
    .param p2, "bright"    # [B
    .param p3, "fade"    # [B

    .line 984
    const-string v0, "AmbientLightCapability"

    const-string v1, "setAllLightData()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setAllLightData([B[B[B)V

    goto :goto_0

    .line 990
    :cond_0
    const-string v0, "setAllLightData"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->printAtlLog(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :goto_0
    goto :goto_1

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 994
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setAmbientInitStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 1424
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    .line 1425
    return-void
.end method

.method public setAmbientLightBright(I)V
    .locals 6
    .param p1, "bright"    # I

    .line 746
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightBright(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "effectType":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "AmbientLightBright"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 750
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightBright()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, p1, :cond_0

    .line 751
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 752
    .local v1, "pid":I
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, "pkg":Ljava/lang/String;
    new-instance v4, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v2, v5, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;ILjava/lang/String;Ljava/lang/String;)V

    .line 755
    .local v4, "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;)V

    .line 758
    .end local v1    # "pid":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 759
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput p1, v4, v5

    invoke-interface {v1, v2, v0, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 761
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setBrightness(I)V

    .line 762
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isLite:Z

    if-nez v1, :cond_6

    .line 763
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    if-nez v1, :cond_2

    .line 764
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->initAmbilentLightEffect()V

    .line 765
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 766
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrumEnable(Z)V

    .line 769
    :cond_2
    const-string v1, "stable_effect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 770
    const-string v1, "noeffect"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateLightEffectPara(Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :cond_3
    const-string v1, "gentle_breathing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 772
    const-string v1, "breath"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateLightEffectPara(Ljava/lang/String;)V

    .line 774
    :cond_4
    :goto_0
    const-string v1, "follow_speed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 775
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->recoveryColor()V

    .line 776
    const/high16 v1, 0x42a00000    # 80.0f

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setFollowCarSpeedEffect(FI)V

    goto :goto_1

    .line 777
    :cond_5
    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 778
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->recoveryColor()V

    .line 779
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isSpeechActive:Z

    if-nez v1, :cond_6

    .line 780
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    const/16 v2, 0x64

    sget v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->AMBIENTLIGHT_DEFAULT_FADE:I

    int-to-byte v3, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrumEffect(BBB)V

    .line 783
    :cond_6
    :goto_1
    return-void
.end method

.method public setAmbientLightDataEffect(ILjava/lang/String;BB)V
    .locals 3
    .param p1, "groupNum"    # I
    .param p2, "colorType"    # Ljava/lang/String;
    .param p3, "bright"    # B
    .param p4, "fade"    # B

    .line 1006
    const/4 v0, 0x0

    .line 1007
    .local v0, "color":B
    const-string v1, "normalColor"

    if-ne p2, v1, :cond_1

    .line 1008
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleFirstColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    :goto_0
    int-to-byte v0, v1

    goto :goto_1

    .line 1009
    :cond_1
    const-string v1, "hvacColor"

    if-ne p2, v1, :cond_2

    .line 1010
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->hvacColor:I

    int-to-byte v0, v1

    .line 1012
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    .line 1013
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    .line 1012
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1014
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public setAmbientLightDefaultGroupEffect(BBB)V
    .locals 1
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 1266
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;->getGroupNum()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    .line 1267
    return-void
.end method

.method public setAmbientLightDoubleColor(Ljava/lang/String;II)V
    .locals 10
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "first_color"    # I
    .param p3, "second_color"    # I

    .line 683
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightDoubleColor() effectType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " first_color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " second_color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleFirstColor:I

    .line 686
    iput p3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleSecondColor:I

    .line 687
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v0

    .line 689
    .local v0, "prevDoublebFirstColor":I
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, p2, :cond_0

    .line 690
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightDoubleSecondColor(Ljava/lang/String;)I

    move-result v5

    if-eq v5, p3, :cond_1

    .line 692
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 693
    .local v5, "pid":I
    invoke-static {v5}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    .line 694
    .local v6, "pkg":Ljava/lang/String;
    new-array v7, v3, [Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 695
    .local v7, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v1, v9, v6}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;ILjava/lang/String;Ljava/lang/String;)V

    .line 697
    .local v8, "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;)V

    .line 700
    .end local v5    # "pid":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "DoubleFirstColor"

    invoke-static {v5, v6, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 701
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "DoubleSecondColor"

    invoke-static {v5, v6, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 702
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    if-eqz v5, :cond_2

    .line 703
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    new-array v3, v3, [I

    aput p2, v3, v2

    aput p3, v3, v4

    invoke-interface {v5, v1, p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 706
    :cond_2
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isLite:Z

    if-nez v1, :cond_7

    .line 707
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    if-nez v1, :cond_3

    if-eq p2, v0, :cond_3

    .line 708
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->initAmbilentLightEffect()V

    .line 709
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 710
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrumEnable(Z)V

    .line 712
    :cond_3
    const-string v1, "stable_effect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 713
    const-string v1, "noeffect"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateLightEffectPara(Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :cond_4
    const-string v1, "gentle_breathing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 715
    const-string v1, "breath"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateLightEffectPara(Ljava/lang/String;)V

    .line 718
    :cond_5
    :goto_0
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    if-eqz v1, :cond_6

    move v1, p2

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    :goto_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setThemeFirstColor(I)V

    .line 719
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setThemeSecondColor(I)V

    .line 721
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDoorAmbientLightOpen(Z)V

    .line 723
    :cond_7
    return-void
.end method

.method public setAmbientLightEffect(Ljava/lang/String;I)V
    .locals 5
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "bright_low"    # I

    .line 386
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightEffect effectType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bright_low "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleFirstColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    .line 389
    .local v0, "firstThemeColor":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 390
    const-string v2, "AmbientLightCapability"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAmbientLightEffect doubleThemeColorEnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    if-eqz v2, :cond_2

    .line 392
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getColorswitch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleSecondColor:I

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setColor(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    goto :goto_2

    .line 395
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setColor(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    goto :goto_2

    .line 397
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setColor(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    .line 389
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 400
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleEffectData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v0    # "firstThemeColor":I
    goto :goto_3

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AmbientLightCapability"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAmbientLightEffect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public setAmbientLightEffectType(Ljava/lang/String;)V
    .locals 5
    .param p1, "effectType"    # Ljava/lang/String;

    .line 795
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mModeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid effectType! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    return-void

    .line 801
    :cond_0
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightEffectType() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 805
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 806
    .local v0, "pid":I
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, "pkg":Ljava/lang/String;
    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;ILjava/lang/String;Ljava/lang/String;)V

    .line 809
    .local v3, "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;)V

    .line 812
    .end local v0    # "pid":I
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    new-array v3, v2, [I

    invoke-interface {v0, v1, p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 815
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "privEffectType":Ljava/lang/String;
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->effectType:Ljava/lang/String;

    .line 817
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "AmbientLightEffectType"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 818
    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isLite:Z

    if-nez v3, :cond_a

    .line 819
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    if-nez v3, :cond_3

    .line 820
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->initAmbilentLightEffect()V

    .line 822
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightEffectData(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateAmbientLightStatus(Ljava/lang/String;)V

    .line 824
    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDoubleThemeColor(I)V

    .line 825
    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleFirstColor:I

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    :goto_0
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setThemeFirstColor(I)V

    .line 826
    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleSecondColor:I

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setThemeSecondColor(I)V

    .line 827
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->registerVisualizerListener()V

    .line 828
    const-string v3, "music"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 829
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->stopEffect()V

    .line 830
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateAmbientLightEffect()V

    .line 831
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->resetColor()V

    goto :goto_2

    .line 832
    :cond_5
    const-string v3, "follow_speed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 833
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->stopEffect()V

    .line 834
    nop

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_9

    .line 835
    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->carSpeed:F

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setFollowCarSpeedEffect(FI)V

    .line 834
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 838
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateAmbientLightEffect()V

    .line 839
    const-string v2, "stable_effect"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_7

    .line 840
    const-string v2, "noeffect"

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightEffect(Ljava/lang/String;I)V

    goto :goto_2

    .line 841
    :cond_7
    const-string v2, "gentle_breathing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 842
    const-string v2, "breath"

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightEffect(Ljava/lang/String;I)V

    goto :goto_2

    .line 844
    :cond_8
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightEffect(Ljava/lang/String;I)V

    .line 847
    :cond_9
    :goto_2
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDoorAmbientLightOpen(Z)V

    .line 849
    :cond_a
    return-void
.end method

.method public setAmbientLightMemoryBright(I)V
    .locals 6
    .param p1, "bright"    # I

    .line 726
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightMemoryBright(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "effectType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightBright()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, p1, :cond_0

    .line 730
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 731
    .local v1, "pid":I
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 732
    .local v3, "pkg":Ljava/lang/String;
    new-instance v4, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v2, v5, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;ILjava/lang/String;Ljava/lang/String;)V

    .line 734
    .local v4, "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;)V

    .line 737
    .end local v1    # "pid":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "AmbientLightBright"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 739
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    if-eqz v1, :cond_1

    .line 740
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    invoke-interface {v1, v2, v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 742
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setBrightness(I)V

    .line 743
    return-void
.end method

.method public setAmbientLightMonoColor(Ljava/lang/String;I)V
    .locals 6
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 586
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightMonoColor() effectType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    .line 589
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v0

    .line 591
    .local v0, "privMonoColor":I
    const/4 v1, 0x3

    if-eq v0, p2, :cond_0

    .line 592
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 593
    .local v2, "pid":I
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, "pkg":Ljava/lang/String;
    new-instance v4, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v1, v5, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;ILjava/lang/String;Ljava/lang/String;)V

    .line 596
    .local v4, "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;)V

    .line 599
    .end local v2    # "pid":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MonoColor"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 602
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-interface {v2, v1, p1, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 604
    :cond_1
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isLite:Z

    if-nez v1, :cond_7

    .line 605
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    if-nez v1, :cond_2

    if-eq v0, p2, :cond_2

    .line 606
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->initAmbilentLightEffect()V

    .line 607
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 608
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrumEnable(Z)V

    .line 610
    :cond_2
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDoorAmbientLightOpen(Z)V

    .line 612
    const-string v1, "stable_effect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 613
    const-string v1, "noeffect"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateLightEffectPara(Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_3
    const-string v1, "gentle_breathing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 615
    const-string v1, "breath"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateLightEffectPara(Ljava/lang/String;)V

    .line 617
    :cond_4
    :goto_0
    const-string v1, "follow_speed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 618
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->recoveryColor()V

    .line 619
    const/high16 v1, 0x42a00000    # 80.0f

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setFollowCarSpeedEffect(FI)V

    goto :goto_1

    .line 620
    :cond_5
    const-string v1, "music"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 621
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->recoveryColor()V

    .line 622
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isSpeechActive:Z

    if-nez v1, :cond_6

    .line 623
    int-to-byte v1, p2

    const/16 v2, 0x64

    sget v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->AMBIENTLIGHT_DEFAULT_FADE:I

    int-to-byte v3, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrumEffect(BBB)V

    .line 625
    :cond_6
    :goto_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setThemeFirstColor(I)V

    goto :goto_2

    .line 626
    :cond_7
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isLite:Z

    if-eqz v1, :cond_8

    .line 627
    if-eq p2, v0, :cond_8

    .line 628
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isPNGear:Z

    if-eqz v1, :cond_8

    .line 629
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->riseSHC()V

    .line 632
    :cond_8
    :goto_2
    return-void
.end method

.method public setAmbientLightOpen(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .line 1173
    :try_start_0
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightOpen(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightOpen()Z

    move-result v0

    .line 1175
    .local v0, "privOpenStatus":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isAmbientLightOpen"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1177
    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 1178
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1179
    .local v2, "pid":I
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 1180
    .local v3, "pkg":Ljava/lang/String;
    new-instance v4, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;

    if-eqz p1, :cond_0

    const-string v5, "on"

    goto :goto_0

    :cond_0
    const-string v5, "off"

    :goto_0
    invoke-direct {v4, p0, v1, v5, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;ILjava/lang/String;Ljava/lang/String;)V

    .line 1182
    .local v4, "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;)V

    .line 1185
    .end local v2    # "pid":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 1186
    move v2, p1

    .line 1187
    .local v2, "data":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->effectType:Ljava/lang/String;

    new-array v7, v3, [I

    aput v2, v7, v1

    invoke-interface {v4, v5, v6, v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 1189
    .end local v2    # "data":I
    :cond_2
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isLite:Z

    if-nez v2, :cond_4

    .line 1190
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setAtlOpen(I)V

    .line 1191
    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    if-nez v1, :cond_3

    if-eq v0, p1, :cond_3

    .line 1192
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->initAmbilentLightEffect()V

    .line 1194
    :cond_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDoorAmbientLightOpen(Z)V

    goto :goto_1

    .line 1196
    :cond_4
    if-eq v0, p1, :cond_7

    .line 1197
    if-eqz p1, :cond_5

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isPNGear:Z

    if-eqz v2, :cond_5

    .line 1198
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->riseSHC()V

    goto :goto_1

    .line 1200
    :cond_5
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isPNGear:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isShcRised:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    move v1, v3

    nop

    :cond_6
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->sendAtlControl(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    .end local v0    # "privOpenStatus":Z
    :cond_7
    :goto_1
    goto :goto_2

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 1207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public setCarAtlManager(Landroid/car/hardware/atl/CarAtlManager;)V
    .locals 0
    .param p1, "manager"    # Landroid/car/hardware/atl/CarAtlManager;

    .line 360
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    .line 361
    return-void
.end method

.method public setDefaultOrMusicGroup(I)V
    .locals 1
    .param p1, "groupNum"    # I

    .line 1436
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;->setGroupNum(I)V

    .line 1437
    return-void
.end method

.method public setDoorAmbientLightOpen(Z)V
    .locals 7
    .param p1, "open"    # Z

    .line 1327
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDoorAmbientLightOpen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string v0, "persist.atl.group"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-ne v0, v1, :cond_2

    .line 1329
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    .line 1330
    .local v0, "effectType":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getDoubleThemeColorEnable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v4

    .line 1331
    .local v4, "color":I
    :goto_0
    int-to-byte v5, v4

    if-eqz p1, :cond_1

    iget-boolean v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isDriving:Z

    if-nez v6, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {p0, v1, v5, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    .line 1332
    .end local v0    # "effectType":Ljava/lang/String;
    .end local v4    # "color":I
    goto :goto_2

    .line 1333
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleFirstColor:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    :goto_1
    int-to-byte v0, v0

    .line 1334
    if-eqz p1, :cond_4

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isDriving:Z

    if-nez v4, :cond_4

    move v2, v3

    nop

    .line 1333
    :cond_4
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setTwoLightData(IBBB)V

    .line 1336
    :goto_2
    return-void
.end method

.method public setDoubleThemeColorEnable(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 641
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDoubleThemeColorEnable() effectType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v0, "stable_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gentle_breathing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 644
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getDoubleThemeColorEnable(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, p2, :cond_2

    .line 645
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 646
    .local v0, "pid":I
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "pkg":Ljava/lang/String;
    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;

    const/4 v3, 0x6

    if-eqz p2, :cond_1

    const-string v4, "double"

    goto :goto_0

    :cond_1
    const-string v4, "mono"

    :goto_0
    invoke-direct {v2, p0, v3, v4, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;ILjava/lang/String;Ljava/lang/String;)V

    .line 649
    .local v2, "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;)V

    .line 652
    .end local v0    # "pid":I
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isDoubleColorEnable"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 655
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 656
    move v0, p2

    .line 657
    .local v0, "data":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    const/4 v3, 0x2

    new-array v4, v1, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-interface {v2, v3, p1, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 660
    .end local v0    # "data":I
    :cond_4
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isLite:Z

    if-nez v0, :cond_9

    const-string v0, "stable_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "gentle_breathing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 661
    :cond_5
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    .line 663
    const-string v0, "stable_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 664
    const-string v0, "noeffect"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateLightEffectPara(Ljava/lang/String;)V

    goto :goto_1

    .line 665
    :cond_6
    const-string v0, "gentle_breathing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 666
    const-string v0, "breath"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateLightEffectPara(Ljava/lang/String;)V

    .line 669
    :cond_7
    :goto_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDoubleThemeColor(I)V

    .line 670
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleFirstColor:I

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    :goto_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setThemeFirstColor(I)V

    .line 671
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleSecondColor:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setThemeSecondColor(I)V

    .line 673
    :cond_9
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDoorAmbientLightOpen(Z)V

    .line 674
    return-void
.end method

.method public setDrivingStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 1408
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isDriving:Z

    .line 1409
    return-void
.end method

.method public setFollowCarSpeedEffect(FI)V
    .locals 6
    .param p1, "speed"    # F
    .param p2, "fade"    # I

    .line 1300
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFollowCarSpeedEffect speed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const/4 v0, 0x1

    .line 1303
    .local v0, "bright":B
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    const/high16 v2, 0x429e0000    # 79.0f

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x42c60000    # 99.0f

    if-ltz v1, :cond_1

    .line 1304
    const/high16 v1, 0x42a00000    # 80.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    mul-float v1, p1, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-byte v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    :goto_0
    move v0, v1

    .line 1305
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableSpeedData()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 1306
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;->getGroupNum()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    int-to-byte v2, v2

    int-to-byte v3, p2

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    goto :goto_1

    .line 1307
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableSpeedData()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 1308
    mul-float/2addr v4, p1

    sub-float/2addr v4, v3

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentBright:I

    .line 1310
    :cond_3
    :goto_1
    return-void
.end method

.method public setGroupLightData(BBIZBBB)V
    .locals 11
    .param p1, "groupNum"    # B
    .param p2, "solution"    # B
    .param p3, "lightlist"    # I
    .param p4, "hold"    # Z
    .param p5, "color"    # B
    .param p6, "bright"    # B
    .param p7, "fade"    # B

    move-object v1, p0

    move/from16 v10, p6

    .line 966
    :try_start_0
    iget-boolean v0, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    if-nez v0, :cond_0

    if-nez v10, :cond_1

    :cond_0
    iget-boolean v0, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    if-eqz v0, :cond_1

    .line 967
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move v8, v10

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setGroutLightData(BBIZBBB)V

    .line 972
    move v2, p1

    goto :goto_0

    .line 969
    :cond_1
    const-string v0, "setGroutLightData"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v2, p1

    :try_start_1
    invoke-direct {v1, v0, v2, v10}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->printAtlLog(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 972
    :goto_0
    goto :goto_2

    .line 970
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move v2, p1

    .line 971
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 973
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public setGroupLightData(IBBB)V
    .locals 10
    .param p1, "groupNum"    # I
    .param p2, "color"    # B
    .param p3, "bright"    # B
    .param p4, "fade"    # B

    .line 946
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGroupLightData groupNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bright:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fade:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isCarIgOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->printAtlLog(IBBB)V

    .line 950
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 951
    .local v0, "groupNumber":B
    const/4 v9, 0x0

    .line 952
    .local v9, "solution":B
    const/4 v4, 0x0

    .line 954
    .local v4, "lightlist":I
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    if-nez v1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    if-eqz v1, :cond_1

    .line 955
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    const/4 v5, 0x0

    move v2, v0

    move v3, v9

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setGroutLightData(BBIZBBB)V

    goto :goto_0

    .line 957
    :cond_1
    const-string v1, "setGroutLightData"

    invoke-direct {p0, v1, p1, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->printAtlLog(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    goto :goto_1

    .line 959
    :catch_0
    move-exception v1

    .line 960
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 962
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setHvacColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 1399
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->hvacColor:I

    .line 1400
    return-void
.end method

.method public setIgOnStatus(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 1403
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Car Ig Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    .line 1405
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    .line 1449
    monitor-enter p0

    .line 1450
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$AmbientLightHalListener;

    .line 1451
    monitor-exit p0

    .line 1452
    return-void

    .line 1451
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMediaCenterManager(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    .line 1444
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    .line 1445
    return-void
.end method

.method public setMusicRhythmEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1420
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isMusicRhythmMode:Z

    .line 1421
    return-void
.end method

.method public setMusicRhythmMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 1319
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMusicRhythmMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isLite:Z

    if-nez v0, :cond_0

    .line 1321
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isMusicRhythmMode:Z

    .line 1322
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateAmbientLightEffect()V

    .line 1324
    :cond_0
    return-void
.end method

.method public setMusicSpectrum(BB)V
    .locals 5
    .param p1, "bright"    # B
    .param p2, "fade"    # B

    .line 1282
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1283
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    .line 1285
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleFirstColor:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    :goto_0
    int-to-byte v0, v0

    .line 1286
    .local v0, "color":B
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableMusicSpectrum()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableMusicSpectrum()I

    move-result v1

    if-ne v1, v3, :cond_4

    :cond_2
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechState:I

    if-eqz v1, :cond_4

    .line 1287
    const-string v1, "setMusicSpectrum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " bright:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", fade:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->printAtlLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEnableMusicSpectrum()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1289
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentBright:I

    .line 1290
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentColor:I

    int-to-byte v1, v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentBright:I

    int-to-byte v2, v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->currentFade:I

    int-to-byte v3, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrumEffect(BBB)V

    goto :goto_1

    .line 1292
    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrumEffect(BBB)V

    goto :goto_1

    .line 1295
    :cond_4
    const-string v1, "setMusicSpectrum"

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getMusicSpectrumEnable()Z

    move-result v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechState:I

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->printAtlLog(Ljava/lang/String;ZI)V

    .line 1296
    :goto_1
    return-void
.end method

.method public setMusicSpectrumEffect(BBB)V
    .locals 2
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 1258
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "effect_music_rhythm_left_right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    goto :goto_0

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;->getGroupNum()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    .line 1263
    :goto_0
    return-void
.end method

.method public setMusicSpectrumEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 1345
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMusicSpectrumEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isLite:Z

    if-nez v0, :cond_0

    .line 1347
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isMusicSpectrumEnable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1348
    :cond_0
    return-void
.end method

.method public setOtherLightOffWhenSpeech()V
    .locals 4

    .line 999
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 1000
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$GroupNum;->getGroupNum()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    .line 999
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1001
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setPNGear(Z)V
    .locals 0
    .param p1, "gearLevel"    # Z

    .line 1416
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isPNGear:Z

    .line 1417
    return-void
.end method

.method public setRawCarSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 1432
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->carSpeed:F

    .line 1433
    return-void
.end method

.method public setSHCStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 1412
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isShcRised:Z

    .line 1413
    return-void
.end method

.method public setSpeechEffect([ILjava/lang/String;)V
    .locals 10
    .param p1, "groupNum"    # [I
    .param p2, "effectType"    # Ljava/lang/String;

    .line 425
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeechEffect effectType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->ambientLightEffectMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->ambientLightEffectMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->ambientLightEffectMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    .line 429
    .local v1, "currentEffect":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 430
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 431
    .local v4, "num":I
    new-array v5, v4, [B

    .line 432
    .local v5, "color":[B
    new-array v6, v4, [B

    .line 433
    .local v6, "bright":[B
    new-array v7, v4, [I

    .line 434
    .local v7, "fade":[I
    move v8, v2

    .local v8, "j":I
    :goto_1
    if-ge v8, v4, :cond_0

    .line 435
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getColor()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 436
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getBrightness()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 437
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getFade()I

    move-result v9

    aput v9, v7, v8

    .line 434
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 439
    .end local v8    # "j":I
    :cond_0
    invoke-direct {p0, p1, v5, v6, v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->startSpeechEffect([I[B[B[I)V

    .line 429
    .end local v4    # "num":I
    .end local v5    # "color":[B
    .end local v6    # "bright":[B
    .end local v7    # "fade":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 442
    .end local v1    # "currentEffect":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSpeechEffectEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1270
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mSpeechPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$SpeechPara;->setEnable(Z)V

    .line 1271
    return-void
.end method

.method public setSpeechSpectrumEffect(BBB)V
    .locals 2
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 1274
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechGroupNum:[I

    if-eqz v0, :cond_0

    .line 1275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechGroupNum:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1276
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechGroupNum:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    .line 1275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1279
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setTwoLightData(B[BZ[B[B[B)V
    .locals 8
    .param p1, "protocol"    # B
    .param p2, "lightPosition"    # [B
    .param p3, "hold"    # Z
    .param p4, "color"    # [B
    .param p5, "bright"    # [B
    .param p6, "fade"    # [B

    .line 927
    const-string v0, "AmbientLightCapability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTwoLightData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-byte v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p4, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p5, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p6, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isIgOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    if-eqz v0, :cond_0

    .line 930
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setTwoLightData(B[BZ[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :cond_0
    goto :goto_0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 934
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setTwoLightData(IBBB)V
    .locals 8
    .param p1, "group"    # I
    .param p2, "color"    # B
    .param p3, "bright"    # B
    .param p4, "fade"    # B

    .line 911
    const-string v0, "AmbientLightCapability"

    const-string v1, "setTwoLightData()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const/4 v0, 0x2

    new-array v3, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v3, v2

    int-to-byte v1, p1

    const/4 v4, 0x1

    aput-byte v1, v3, v4

    .line 914
    .local v3, "mlightPosition":[B
    new-array v5, v0, [B

    aput-byte p2, v5, v2

    aput-byte p2, v5, v4

    .line 915
    .local v5, "mcolor":[B
    new-array v6, v0, [B

    aput-byte p3, v6, v2

    aput-byte p3, v6, v4

    .line 916
    .local v6, "mbright":[B
    new-array v7, v0, [B

    aput-byte p4, v7, v2

    aput-byte p4, v7, v4

    .line 917
    .local v7, "mfade":[B
    const-string v0, "persist.atl.protocol"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 919
    .local v0, "protocol":I
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isCarIgOn:Z

    if-eqz v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mAmbientLightHal:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;

    int-to-byte v2, v0

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;->setTwoLightData(B[BZ[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :cond_0
    goto :goto_0

    .line 921
    :catch_0
    move-exception v1

    .line 922
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleException(Ljava/lang/Exception;)V

    .line 924
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setVisualCaptureListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    .line 1440
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    .line 1441
    return-void
.end method

.method public setWelcomeEffectStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 1428
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isStartWelcomeEffect:Z

    .line 1429
    return-void
.end method

.method public startPlay([Ljava/lang/String;)I
    .locals 19
    .param p1, "effectData"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1645
    const-string v0, "AmbientLightCapability"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPlay effect name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const/4 v3, 0x0

    .line 1649
    .local v3, "res":I
    aget-object v0, p1, v4

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1650
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1651
    .local v0, "pid":I
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v5

    .line 1652
    .local v5, "pkg":Ljava/lang/String;
    new-instance v6, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;

    const/4 v7, 0x2

    aget-object v8, p1, v4

    invoke-direct {v6, v1, v7, v8, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;ILjava/lang/String;Ljava/lang/String;)V

    .line 1654
    .local v6, "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    invoke-static {v6}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;)V

    .line 1658
    .end local v0    # "pid":I
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "uploader":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
    :cond_0
    :try_start_0
    aget-object v0, p1, v4

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightEffectData(Ljava/lang/String;)V

    .line 1659
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->registerVisualizerListener()V

    .line 1660
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getDefaultData()I

    move-result v0

    if-nez v0, :cond_6

    .line 1661
    new-instance v0, Lorg/json/JSONObject;

    const/4 v5, 0x0

    aget-object v6, p1, v5

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 1662
    .local v6, "scriptEffect":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 1663
    .local v0, "maxLength":I
    const/4 v7, 0x0

    .line 1664
    .local v7, "periodTime":I
    const-string v8, "color"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "color"

    invoke-direct {v1, v8, v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->jsonToIntArr(Lorg/json/JSONObject;Ljava/lang/String;)[I

    move-result-object v8

    .line 1665
    .local v8, "color":[I
    const-string v9, "bright"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "bright"

    invoke-direct {v1, v9, v10}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->jsonToIntArr(Lorg/json/JSONObject;Ljava/lang/String;)[I

    move-result-object v9

    .line 1666
    .local v9, "bright":[I
    const-string v10, "fade"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "fade"

    invoke-direct {v1, v10, v11}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->jsonToIntArr(Lorg/json/JSONObject;Ljava/lang/String;)[I

    move-result-object v10

    .line 1667
    .local v10, "fade":[I
    array-length v11, v8

    array-length v12, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    array-length v12, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1668
    .end local v0    # "maxLength":I
    .local v11, "maxLength":I
    const-string v0, "timeInterval"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int v7, v0, v11

    .line 1669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, v0

    .line 1670
    .local v12, "effectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;>;"
    const/4 v0, 0x0

    .line 1671
    .local v0, "num":I
    move v13, v0

    move v0, v5

    .local v0, "i":I
    .local v13, "num":I
    :goto_0
    move v14, v0

    .end local v0    # "i":I
    .local v14, "i":I
    if-ge v14, v11, :cond_6

    .line 1673
    :try_start_1
    array-length v0, v8

    if-le v0, v4, :cond_1

    aget v0, v8, v14

    goto :goto_1

    :cond_1
    aget v0, v8, v5

    .line 1674
    .local v0, "effectColor":I
    :goto_1
    array-length v15, v9

    if-le v15, v4, :cond_2

    aget v15, v9, v14

    goto :goto_2

    :cond_2
    aget v15, v9, v5

    .line 1675
    .local v15, "effectBright":I
    :goto_2
    array-length v5, v10

    if-le v5, v4, :cond_3

    aget v5, v10, v14

    move/from16 v16, v5

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    aget v16, v10, v5

    :goto_3
    move/from16 v17, v16

    .line 1676
    .local v17, "effectFade":I
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_4

    .line 1677
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1679
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v13, v4, :cond_5

    .line 1680
    const/4 v13, 0x0

    .line 1682
    :cond_5
    new-instance v4, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;-><init>()V

    .line 1683
    .local v4, "effectInfo":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    nop

    .line 1684
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setColor(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v5

    .line 1685
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getBrightness()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setBrightness(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v2

    .line 1686
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getFade()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setFade(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v2

    const-string v5, "timeInterval"

    .line 1687
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setTimeInterval(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v2

    .line 1688
    invoke-virtual {v2, v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setPeriodTime(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v2

    .line 1689
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getEnableRandom()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setEnableRandom(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v2

    .line 1690
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getRandomMax()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setRandomMax(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v2

    .line 1691
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getRandomMin()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setRandomMin(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v2

    .line 1692
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getRandomArray()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setRandomArray(Ljava/util/List;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    .line 1693
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1694
    add-int/lit8 v13, v13, 0x1

    .line 1696
    .end local v4    # "effectInfo":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    :goto_4
    const-string v2, "AmbientLightCapability"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mATLEffect.getEffectData() size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    .line 1698
    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setColor(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v2

    .line 1699
    invoke-virtual {v2, v15}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setBrightness(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v2

    .line 1700
    move/from16 v4, v17

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setFade(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v2

    .end local v17    # "effectFade":I
    .local v4, "effectFade":I
    const-string v5, "timeInterval"

    .line 1701
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setTimeInterval(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    move-result-object v2

    .line 1702
    invoke-virtual {v2, v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setPeriodTime(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    .line 1703
    const-string v2, "AmbientLightCapability"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    const-string v0, "startPlay i "

    .end local v0    # "effectColor":I
    .local v18, "effectColor":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " effectColor "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getColor()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " effectBright "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getBrightness()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " effectFade "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getFade()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "startPlay color.length "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bright.length "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " fade.length "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1706
    .end local v4    # "effectFade":I
    .end local v15    # "effectBright":I
    .end local v18    # "effectColor":I
    goto :goto_5

    .line 1704
    :catch_0
    move-exception v0

    .line 1705
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "AmbientLightCapability"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPlay2 exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "i":I
    .local v0, "i":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1709
    .end local v0    # "i":I
    .end local v6    # "scriptEffect":Lorg/json/JSONObject;
    .end local v7    # "periodTime":I
    .end local v8    # "color":[I
    .end local v9    # "bright":[I
    .end local v10    # "fade":[I
    .end local v11    # "maxLength":I
    .end local v12    # "effectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;>;"
    .end local v13    # "num":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->handleEffectData()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1712
    goto :goto_6

    .line 1710
    :catch_1
    move-exception v0

    .line 1711
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AmbientLightCapability"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPlay exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return v3
.end method

.method public startWelcomeEffect()V
    .locals 4

    .line 478
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isStartWelcomeEffect:Z

    if-nez v0, :cond_1

    .line 479
    const-string v0, "AmbientLightCapability"

    const-string v1, "Ambient Light Welcome Effect Start."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isStartWelcomeEffect:Z

    .line 481
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAmbientLightInit:Z

    .line 483
    const-string/jumbo v0, "welcome_effect"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightEffectData(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v0, "welcome_effect"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightEffect(Ljava/lang/String;I)V

    .line 486
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$7;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)V

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    .line 492
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getExecuteTime()I

    move-result v2

    int-to-long v2, v2

    .line 486
    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 494
    :cond_1
    return-void
.end method

.method public stopAllAmbilentEffect()V
    .locals 0

    .line 1044
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->stopEffect()V

    .line 1045
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->stopSpeechEffect()V

    .line 1046
    return-void
.end method

.method public stopPlay()I
    .locals 3

    .line 1820
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->stopEffect()V

    .line 1821
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    .line 1822
    return v0
.end method

.method public stopSpeechEffect()V
    .locals 2

    .line 1035
    const-string v0, "AmbientLightCapability"

    const-string v1, "stopSpeechEffect()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1038
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1040
    :cond_0
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechEnable:Z

    .line 1041
    return-void
.end method

.method public tickHvacTime()V
    .locals 4

    .line 282
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->hvac_timeout_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->hvac_timeout_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    return-void
.end method

.method public tickMusicSpectrumTime()V
    .locals 4

    .line 262
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->music_spectrum_timeout_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->music_spectrum_timeout_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    return-void
.end method

.method public updateAmbientLightEffect()V
    .locals 4

    .line 852
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->effectType:Ljava/lang/String;

    .line 853
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->effectType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateAmbientLightStatus(Ljava/lang/String;)V

    .line 854
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 869
    :pswitch_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isAdjustHvac:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isDriving:Z

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isDriving:Z

    if-eqz v0, :cond_2

    move v1, v3

    nop

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDefaultOrMusicGroup(I)V

    .line 870
    goto :goto_3

    .line 858
    :pswitch_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechVoicer:I

    if-ne v0, v2, :cond_4

    .line 859
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isDriving:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xf

    goto :goto_1

    :cond_3
    const/16 v0, 0x11

    :goto_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDefaultOrMusicGroup(I)V

    goto :goto_3

    .line 860
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechVoicer:I

    if-ne v0, v3, :cond_6

    .line 861
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->isDriving:Z

    if-eqz v0, :cond_5

    const/16 v0, 0xe

    goto :goto_2

    :cond_5
    const/16 v0, 0x10

    :goto_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDefaultOrMusicGroup(I)V

    goto :goto_3

    .line 862
    :cond_6
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechVoicer:I

    if-ne v0, v1, :cond_7

    .line 863
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDefaultOrMusicGroup(I)V

    goto :goto_3

    .line 864
    :cond_7
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechVoicer:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 865
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDefaultOrMusicGroup(I)V

    .line 875
    :cond_8
    :goto_3
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechState:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 876
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setSpeechEffectEnable(Z)V

    goto :goto_5

    .line 877
    :cond_9
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechState:I

    if-ne v0, v3, :cond_a

    .line 878
    new-array v0, v2, [I

    .line 879
    .local v0, "speechGroup":[I
    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->speechVoicer:I

    packed-switch v3, :pswitch_data_1

    goto :goto_4

    .line 890
    :pswitch_2
    const/16 v3, 0x15

    aput v3, v0, v1

    .line 891
    goto :goto_4

    .line 887
    :pswitch_3
    const/16 v3, 0x14

    aput v3, v0, v1

    .line 888
    goto :goto_4

    .line 884
    :pswitch_4
    const/16 v3, 0xa

    aput v3, v0, v1

    .line 885
    goto :goto_4

    .line 881
    :pswitch_5
    const/16 v3, 0xb

    aput v3, v0, v1

    .line 882
    nop

    .line 895
    :goto_4
    aget v1, v0, v1

    if-eqz v1, :cond_a

    .line 896
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setSpeechEffectEnable(Z)V

    .line 897
    const-string v1, "speecheffect1"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setSpeechEffect([ILjava/lang/String;)V

    .line 900
    .end local v0    # "speechGroup":[I
    :cond_a
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public updateAmbientLightStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "effectType"    # Ljava/lang/String;

    .line 519
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getDoubleThemeColorEnable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    .line 520
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    .line 521
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleFirstColor:I

    .line 522
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightDoubleSecondColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleSecondColor:I

    .line 523
    return-void
.end method

.method public updateLightEffectPara(Ljava/lang/String;)V
    .locals 7
    .param p1, "effectType"    # Ljava/lang/String;

    .line 407
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleFirstColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->monoColor:I

    .line 408
    .local v0, "firstThemeColor":I
    :goto_0
    const-string v1, "AmbientLightCapability"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLightEffectPara effectType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doubleThemeColorEnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " firstThemeColor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doubleSecondColor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleSecondColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 410
    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleThemeColorEnable:Z

    if-eqz v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getColorswitch()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->doubleSecondColor:I

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setColor(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    goto :goto_2

    .line 414
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setColor(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    .line 415
    :goto_2
    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    .line 416
    const-string v3, "AmbientLightCapability"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLightEffectPara "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 418
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->setColor(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    .line 409
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 421
    .end local v2    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDrivingGroup()I

    move-result v2

    int-to-byte v3, v0

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getBrightness()I

    move-result v4

    int-to-byte v4, v4

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->mATLEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->getEffectData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->getFade()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setGroupLightData(IBBB)V

    .line 422
    return-void
.end method
