.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
.super Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;
.source "AmbientLightHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;,
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final AMBIENTLIGHT_DEFAULT_FADE:I

.field private static final AMBIENTLIGHT_LIGHT_VAL:I

.field private static final AMBIENTLIGHT_RECOVERY_FADE:I = 0x64

.field private static final AMBIENTLIGHT_SPEED_FADE:I = 0x2

.field private static final AMBIENTLIGHT_SPEED_LONG_FADE:I = 0x64

.field private static final DBG:Z = true

.field public static final EFFECT_FOLLOW_SPEED:Ljava/lang/String; = "follow_speed"

.field public static final EFFECT_GENTLE_BREATHING:Ljava/lang/String; = "gentle_breathing"

.field public static final EFFECT_MUSIC:Ljava/lang/String; = "music"

.field public static final EFFECT_STABLE_EFFECT:Ljava/lang/String; = "stable_effect"

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

.field public static final SPEECH_STATE_LISTENING:I = 0x2

.field public static final SPEECH_STATE_NO_VOICE:I = 0x3

.field public static final SPEECH_STATE_SPEAKERING:I = 0x0

.field public static final SPEECH_STATE_UNDERSTANDING:I = 0x1

.field public static final SPEECH_VOICE_DRIVER:I = 0x1

.field public static final SPEECH_VOICE_GLOBAL:I = 0x0

.field public static final SPEECH_VOICE_PASSAGER:I = 0x2

.field public static final SPEECH_VOICE_REAR_LEFT_PASSAGER:I = 0x3

.field public static final SPEECH_VOICE_REAR_RIGHT_PASSAGER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AmbientLightHalService"


# instance fields
.field private doubleFirstColor:I

.field private doubleSecondColor:I

.field private doubleThemeColorEnable:Z

.field private effectType:Ljava/lang/String;

.field private hvacColor:I

.field private hvacDriverBright:I

.field private hvacMode:I

.field private hvacPsnBright:I

.field private hvac_timeout_thread:Ljava/lang/Runnable;

.field private isAdjustHvac:Z

.field private isAmbientLightInit:Z

.field private isAmbientLightOpen:Z

.field private isCarIgOn:Z

.field private isDriving:Z

.field private isMcuAtlStart:Z

.field private isMusicRhythmMode:Z

.field private isMusicSpectrumEnable:Z

.field private isSpeechActive:Z

.field private lastAtlLogTime:J

.field private mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

.field private mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

.field private mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

.field private mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private mLightEffectManager:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

.field private mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

.field private mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

.field private mPlaybackListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;

.field private mVendorControlListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

.field private mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

.field private monoColor:I

.field private musicStyle:I

.field private music_spectrum_timeout_thread:Ljava/lang/Runnable;

.field private recovery_color_thread:Ljava/lang/Runnable;

.field private speechState:I

.field private speechVoicer:I

.field private update_ambilent_light_thread:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    const-string v0, "persist.atl.def.fadetime"

    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->AMBIENTLIGHT_DEFAULT_FADE:I

    .line 108
    const-string v0, "persist.atl.light.percent"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->AMBIENTLIGHT_LIGHT_VAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 227
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;-><init>(Landroid/content/Context;)V

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechVoicer:I

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isDriving:Z

    .line 130
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAdjustHvac:Z

    .line 132
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicRhythmMode:Z

    .line 133
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isSpeechActive:Z

    .line 136
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAmbientLightInit:Z

    .line 137
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMcuAtlStart:Z

    .line 138
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isCarIgOn:Z

    .line 140
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->musicStyle:I

    .line 141
    const/4 v1, 0x3

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechState:I

    .line 145
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvacMode:I

    .line 165
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->update_ambilent_light_thread:Ljava/lang/Runnable;

    .line 170
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->music_spectrum_timeout_thread:Ljava/lang/Runnable;

    .line 180
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$3;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvac_timeout_thread:Ljava/lang/Runnable;

    .line 190
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$4;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->recovery_color_thread:Ljava/lang/Runnable;

    .line 1242
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->lastAtlLogTime:J

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAudioManager:Landroid/media/AudioManager;

    .line 231
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    .line 233
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getMusicSpectrumEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicSpectrumEnable:Z

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->effectType:Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAmbientLightOpen:Z

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->effectType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->updateAmbientLightStatus(Ljava/lang/String;)V

    .line 239
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmbientLightHalService isMusicSpectrumEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicSpectrumEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " effectType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->effectType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isAmbientLightOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAmbientLightOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicSpectrumEnable:Z

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicSpectrumEnable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicSpectrumEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->tickMusicSpectrumTime()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->effectType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Landroid/car/hardware/vcu/CarVcuManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;IFI)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setFollowCarSpeedEffect(IFI)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvacMode:I

    return v0
.end method

.method static synthetic access$1502(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvacMode:I

    return p1
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isSpeechActive:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAmbientLightInit:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAmbientLightInit:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvacDriverBright:I

    return v0
.end method

.method static synthetic access$1802(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvacDriverBright:I

    return p1
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvacPsnBright:I

    return v0
.end method

.method static synthetic access$1902(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvacPsnBright:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Landroid/car/hardware/hvac/CarHvacManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->tickHvacTime()V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isDriving:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isDriving:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->stopLightBySpeed()V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # Z

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDoorAmbientLightOpen(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->resetGroutLightData()V

    return-void
.end method

.method static synthetic access$2602(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAmbientLightOpen:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMcuAtlStart:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMcuAtlStart:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isCarIgOn:Z

    return p1
.end method

.method static synthetic access$2900()I
    .locals 1

    .line 35
    sget v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->AMBIENTLIGHT_LIGHT_VAL:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    return v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .line 35
    sget v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->AMBIENTLIGHT_DEFAULT_FADE:I

    return v0
.end method

.method static synthetic access$3102(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->musicStyle:I

    return p1
.end method

.method static synthetic access$3202(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicRhythmMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAdjustHvac:Z

    return v0
.end method

.method static synthetic access$602(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAdjustHvac:Z

    return p1
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvacColor:I

    return v0
.end method

.method static synthetic access$702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvacColor:I

    return p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;IBBB)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # B
    .param p3, "x3"    # B
    .param p4, "x4"    # B

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setAmbientLightDataEffect(IBBB)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->updateAmbilentLight()V

    return-void
.end method

.method private dispatchEventToListener(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    .line 758
    const-string v0, "AmbientLightHalService"

    const-string v1, "handleHalEvents event: "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    return-void
.end method

.method private getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    if-nez v0, :cond_0

    .line 157
    const-string v0, "AmbientLightHalService"

    const-string v1, "getCarAtlManagerAgent()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->init()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    return-object v0
.end method

.method private getFloatArrayProperty(Landroid/car/hardware/CarPropertyValue;)[F
    .locals 5
    .param p1, "propertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 702
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 703
    .local v0, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 704
    .local v1, "result":[F
    if-eqz v0, :cond_1

    .line 705
    array-length v2, v0

    new-array v1, v2, [F

    .line 706
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 707
    aget-object v3, v0, v2

    .line 708
    .local v3, "objValue":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_0

    .line 709
    move-object v4, v3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v2

    .line 706
    .end local v3    # "objValue":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
    .locals 1

    .line 1230
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$InstanceHolder;->access$3300()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    move-result-object v0

    return-object v0
.end method

.method private getLightEffectManager()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;
    .locals 2

    .line 1195
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mLightEffectManager:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    if-nez v0, :cond_0

    .line 1197
    const-string v0, "AmbientLightHalService"

    const-string v1, "getLightEffectManager()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mLightEffectManager:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mLightEffectManager:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    return-object v0
.end method

.method private printAtlLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "logs"    # Ljava/lang/String;

    .line 1253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1254
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->lastAtlLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1255
    const-string v2, "AmbientLightHalService"

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

    .line 1256
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->lastAtlLogTime:J

    .line 1258
    :cond_0
    return-void
.end method

.method private printAtlLog(Ljava/lang/String;ZI)V
    .locals 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "flag1"    # Z
    .param p3, "logs"    # I

    .line 1245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1246
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->lastAtlLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1247
    const-string v2, "AmbientLightHalService"

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

    .line 1248
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->lastAtlLogTime:J

    .line 1250
    :cond_0
    return-void
.end method

.method private recoveryColor()V
    .locals 4

    .line 1215
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->recovery_color_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1216
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->recovery_color_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1217
    return-void
.end method

.method private registerVisualizerListener()V
    .locals 2

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->effectType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->effectType:Ljava/lang/String;

    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicSpectrumEnable:Z

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V

    goto :goto_0

    .line 352
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicSpectrumEnable:Z

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unRegisterVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_1
    :goto_0
    goto :goto_1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->handleException(Ljava/lang/Exception;)V

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private resetColor()V
    .locals 4

    .line 1220
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->recovery_color_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1221
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->recovery_color_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1222
    return-void
.end method

.method private resetGroutLightData()V
    .locals 10

    .line 914
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 915
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual/range {v2 .. v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setGroutLightData(BBIZBBB)V

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 917
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setAmbientLightDataEffect(IBBB)V
    .locals 2
    .param p1, "groupNum"    # I
    .param p2, "color"    # B
    .param p3, "bright"    # B
    .param p4, "fade"    # B

    .line 899
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setAmbientLightDataEffect(IBBB)V

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setDefaultOrMusicGroup(I)V
    .locals 3
    .param p1, "groupNum"    # I

    .line 854
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultOrMusicGroup groupNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setDefaultOrMusicGroup(I)V

    .line 857
    return-void
.end method

.method private setDoorAmbientLightOpen(Z)V
    .locals 5
    .param p1, "open"    # Z

    .line 217
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDoorAmbientLightOpen  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isDriving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isCarIgOn:Z

    if-eqz v0, :cond_5

    .line 219
    const-string v0, "persist.atl.group"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-ne v0, v1, :cond_2

    .line 220
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    :goto_0
    int-to-byte v0, v0

    if-eqz p1, :cond_1

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isDriving:Z

    if-nez v4, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setAmbientLightDataEffect(IBBB)V

    goto :goto_2

    .line 222
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    :goto_1
    int-to-byte v0, v0

    if-eqz p1, :cond_4

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isDriving:Z

    if-nez v4, :cond_4

    move v2, v3

    nop

    :cond_4
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setTwoLightData(IBBB)V

    .line 224
    :cond_5
    :goto_2
    return-void
.end method

.method private setFollowCarSpeedEffect(IFI)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "speed"    # F
    .param p3, "fade"    # I

    .line 883
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->effectType:Ljava/lang/String;

    const-string v1, "follow_speed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isSpeechActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isCarIgOn:Z

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setFollowCarSpeedEffect(IFI)V

    .line 886
    :cond_0
    return-void
.end method

.method private setOtherLightOffWhenSpeech()V
    .locals 4

    .line 891
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 892
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setAmbientLightDefaultGroupEffect(BBB)V

    .line 891
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private setSpeechEffect([ILjava/lang/String;)V
    .locals 1
    .param p1, "groupNum"    # [I
    .param p2, "effectType"    # Ljava/lang/String;

    .line 860
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->stopSpeechEffect()V

    .line 861
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setSpeechEffect([ILjava/lang/String;)V

    .line 862
    return-void
.end method

.method private setTwoLightData(IBBB)V
    .locals 8
    .param p1, "group"    # I
    .param p2, "color"    # B
    .param p3, "bright"    # B
    .param p4, "fade"    # B

    .line 208
    const/4 v0, 0x2

    new-array v3, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v3, v2

    int-to-byte v1, p1

    const/4 v7, 0x1

    aput-byte v1, v3, v7

    .line 209
    .local v3, "mlightPosition":[B
    new-array v4, v0, [B

    aput-byte p2, v4, v2

    aput-byte p2, v4, v7

    .line 210
    .local v4, "mcolor":[B
    new-array v5, v0, [B

    aput-byte p3, v5, v2

    aput-byte p3, v5, v7

    .line 211
    .local v5, "mbright":[B
    new-array v6, v0, [B

    aput-byte p4, v6, v2

    aput-byte p4, v6, v7

    .line 212
    .local v6, "mfade":[B
    const-string v0, "persist.atl.protocol"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 213
    .local v0, "protocol":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    int-to-byte v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setTwoLightData(B[B[B[B[B)V

    .line 214
    return-void
.end method

.method private stopAllLight()V
    .locals 3

    .line 910
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    :goto_0
    int-to-byte v0, v0

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setAmbientLightDataEffect(IBBB)V

    .line 911
    return-void
.end method

.method private stopLightBySpeed()V
    .locals 3

    .line 905
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    :goto_0
    int-to-byte v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setAmbientLightDataEffect(IBBB)V

    .line 906
    const/4 v0, 0x6

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    :goto_1
    int-to-byte v2, v2

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setAmbientLightDataEffect(IBBB)V

    .line 907
    return-void
.end method

.method private tickHvacTime()V
    .locals 4

    .line 1205
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvac_timeout_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1206
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvac_timeout_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1207
    return-void
.end method

.method private tickMusicSpectrumTime()V
    .locals 4

    .line 1225
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->music_spectrum_timeout_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1226
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->music_spectrum_timeout_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1227
    return-void
.end method

.method private updateAmbientLightStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "effectType"    # Ljava/lang/String;

    .line 695
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getDoubleThemeColorEnable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    .line 696
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    .line 697
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    .line 698
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightDoubleSecondColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleSecondColor:I

    .line 699
    return-void
.end method

.method private updateAmbilentLight()V
    .locals 4

    .line 1210
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->update_ambilent_light_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1211
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->update_ambilent_light_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1212
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 764
    const-string v0, "*AmbientLight HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method public getAmbientLightColor(ILjava/lang/String;)I
    .locals 1
    .param p1, "color_type"    # I
    .param p2, "effectType"    # Ljava/lang/String;

    .line 969
    if-nez p1, :cond_0

    .line 970
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 971
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 972
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 973
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 974
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightDoubleSecondColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 976
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getAmbientLightDoubleFirstColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "effectType"    # Ljava/lang/String;

    .line 1031
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

    .line 1039
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

    .line 1121
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AmbientLightEffectType"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1122
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

    .line 1191
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getLightEffectManager()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->getAmbientLightEffectTypeList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAmbientLightMonoColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "effectType"    # Ljava/lang/String;

    .line 984
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

    .line 1175
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

.method public getDoubleThemeColorEnable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "effectType"    # Ljava/lang/String;

    .line 1082
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

    .line 1085
    :cond_0
    return v1

    .line 1083
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

.method public getMusicSpectrumEnable()Z
    .locals 3

    .line 926
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isMusicSpectrumEnable"

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

.method public handleHalEvents()V
    .locals 1

    .line 747
    monitor-enter p0

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    .line 749
    .local v0, "listener":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    if-eqz v0, :cond_0

    .line 751
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->dispatchEventToListener(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;)V

    .line 753
    :cond_0
    return-void

    .line 749
    .end local v0    # "listener":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;
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

    .line 821
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isCarIgOn:Z

    if-eqz v0, :cond_0

    .line 823
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "AmbientLightHalService"

    const-string v2, "initAmbilentLightEffect()"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const/4 v1, 0x2

    new-array v4, v1, [B

    fill-array-data v4, :array_0

    .line 826
    .local v4, "lightPosition":[B
    new-array v6, v1, [B

    fill-array-data v6, :array_1

    .line 827
    .local v6, "color":[B
    new-array v7, v1, [B

    fill-array-data v7, :array_2

    .line 828
    .local v7, "bright":[B
    new-array v8, v1, [B

    fill-array-data v8, :array_3

    .line 829
    .local v8, "fade":[B
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setTwoLightData(B[BZ[B[B[B)V

    .line 830
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->stopAllLight()V

    .line 831
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDoorAmbientLightOpen(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    .end local v4    # "lightPosition":[B
    .end local v6    # "color":[B
    .end local v7    # "bright":[B
    .end local v8    # "fade":[B
    goto :goto_0

    .line 832
    :catch_0
    move-exception v1

    .line 833
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AmbientLightHalService"

    const-string v3, "initAmbilentLightEffect error"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAmbientLightInit:Z

    .line 836
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->effectType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setAmbientLightEffectType(Ljava/lang/String;)V

    .line 838
    :cond_0
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

.method protected initCarListener()V
    .locals 1

    .line 367
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$5;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    .line 469
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$6;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 508
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$7;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    .line 547
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$8;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 607
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->addHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->addAtlManagerListener(Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;)V

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 611
    return-void
.end method

.method protected initXUIManager()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 633
    :try_start_0
    const-string v0, "AmbientLightHalService"

    const-string v1, "initXUIManager()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "mediacenter"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    .line 635
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$9;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    .line 649
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$10;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$10;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mPlaybackListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;

    .line 664
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$11;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$11;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mVendorControlListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

    .line 685
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->registerVisualizerListener()V

    .line 686
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mPlaybackListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerPlaybackListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;)V

    .line 687
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mVendorControlListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->vendorSetControlListener(Landroid/content/Context;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->handleException(Ljava/lang/Exception;)V

    .line 692
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    return-void
.end method

.method public isSupportDoubleThemeColor(Ljava/lang/String;)Z
    .locals 1
    .param p1, "effectType"    # Ljava/lang/String;

    .line 1187
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

.method protected needConnectXUI()Z
    .locals 1

    .line 1262
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 4

    .line 615
    const-string v0, "AmbientLightHalService"

    const-string v1, "onCarManagerInited()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v0, "hvac"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 617
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 618
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

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
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isCarIgOn:Z

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getRawCarSpeed()F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isDriving:Z

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getWindModColor()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->hvacMode:I

    .line 623
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isDriving:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDoorAmbientLightOpen(Z)V

    .line 624
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->initAmbilentLightEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    goto :goto_1

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AmbientLightHalService"

    const-string v2, "initCarListener error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onConnectedCar()V
    .locals 0

    .line 363
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 725
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mVisualCaptureListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unRegisterVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V

    .line 733
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mPlaybackListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unRegisterPlaybackListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;)V

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mVendorControlListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->vendorUnSetControlListener(Landroid/content/Context;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :cond_0
    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    const-string v1, "AmbientLightHalService"

    const-string v2, "onRelease error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->removeHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V

    .line 740
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 741
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->removeAtlManagerListener(Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;)V

    .line 742
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 743
    return-void
.end method

.method public setAmbientLightDoubleColor(Ljava/lang/String;II)V
    .locals 8
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "first_color"    # I
    .param p3, "second_color"    # I

    .line 1051
    const-string v0, "AmbientLightHalService"

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

    .line 1054
    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    .line 1055
    iput p3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleSecondColor:I

    .line 1057
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DoubleFirstColor"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1058
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DoubleSecondColor"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1060
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    aput p3, v3, v1

    invoke-interface {v0, v2, p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 1064
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAmbientLightInit:Z

    if-nez v0, :cond_1

    .line 1065
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->initAmbilentLightEffect()V

    .line 1066
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicSpectrumEnable:Z

    .line 1070
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    goto :goto_0

    :goto_1
    iget v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleSecondColor:I

    const/4 v7, 0x5

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->updateLightEffectPara(Ljava/lang/String;ZIII)V

    .line 1072
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v2, :cond_3

    move v2, p2

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    :goto_2
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setThemeFirstColor(I)V

    .line 1073
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setThemeSecondColor(I)V

    .line 1074
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDoorAmbientLightOpen(Z)V

    .line 1075
    return-void
.end method

.method public setAmbientLightEffectType(Ljava/lang/String;)V
    .locals 9
    .param p1, "effectType"    # Ljava/lang/String;

    .line 1136
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightEffectType(String effectType) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->effectType:Ljava/lang/String;

    .line 1139
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->updateAmbientLightStatus(Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AmbientLightEffectType"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    new-array v3, v1, [I

    invoke-interface {v0, v2, p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 1147
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setDoubleThemeColor(I)V

    .line 1148
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    :goto_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setThemeFirstColor(I)V

    .line 1149
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleSecondColor:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setThemeSecondColor(I)V

    .line 1150
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->registerVisualizerListener()V

    .line 1152
    const-string v0, "music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1153
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->stopDefaultEffect()V

    .line 1154
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->updateAmbilentLight()V

    .line 1155
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->resetColor()V

    goto :goto_6

    .line 1156
    :cond_2
    const-string v0, "follow_speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1157
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->stopDefaultEffect()V

    .line 1158
    move v0, v1

    .line 1160
    .local v0, "rawSpeed":I
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v3}, Landroid/car/hardware/vcu/CarVcuManager;->getRawCarSpeed()F

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int v0, v3

    .line 1163
    goto :goto_1

    .line 1161
    :catch_0
    move-exception v3

    .line 1162
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->handleException(Ljava/lang/Exception;)V

    .line 1164
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .local v1, "i":I
    :goto_2
    const/4 v3, 0x6

    if-ge v1, v3, :cond_4

    .line 1165
    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    goto :goto_3

    :cond_3
    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    :goto_3
    int-to-float v4, v0

    const/16 v5, 0x64

    invoke-direct {p0, v3, v4, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setFollowCarSpeedEffect(IFI)V

    .line 1164
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1167
    .end local v0    # "rawSpeed":I
    .end local v1    # "i":I
    :cond_4
    goto :goto_6

    .line 1168
    :cond_5
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->updateAmbilentLight()V

    .line 1169
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    iget-boolean v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    :goto_4
    move v6, v0

    goto :goto_5

    :cond_6
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    goto :goto_4

    :goto_5
    iget v7, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleSecondColor:I

    const/4 v8, 0x5

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setAmbientLightEffect(Ljava/lang/String;ZIII)V

    .line 1171
    :goto_6
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDoorAmbientLightOpen(Z)V

    .line 1172
    return-void
.end method

.method public setAmbientLightMonoColor(Ljava/lang/String;I)V
    .locals 8
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 995
    const-string v0, "AmbientLightHalService"

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

    .line 998
    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    .line 999
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MonoColor"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1001
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    const/4 v2, 0x3

    new-array v3, v1, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    invoke-interface {v0, v2, p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 1005
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAmbientLightInit:Z

    if-nez v0, :cond_1

    .line 1006
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->initAmbilentLightEffect()V

    .line 1007
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicSpectrumEnable:Z

    .line 1011
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    goto :goto_0

    :goto_1
    iget v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleSecondColor:I

    const/4 v7, 0x5

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->updateLightEffectPara(Ljava/lang/String;ZIII)V

    .line 1013
    const-string v0, "follow_speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1014
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->recoveryColor()V

    .line 1015
    const/high16 v0, 0x42a00000    # 80.0f

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setFollowCarSpeedEffect(IFI)V

    goto :goto_2

    .line 1016
    :cond_3
    const-string v0, "music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1017
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->recoveryColor()V

    .line 1018
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isSpeechActive:Z

    if-nez v0, :cond_4

    .line 1019
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    int-to-byte v2, p2

    const/16 v3, 0x64

    sget v4, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->AMBIENTLIGHT_DEFAULT_FADE:I

    int-to-byte v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setMusicSpectrumEffect(BBB)V

    .line 1022
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setThemeFirstColor(I)V

    .line 1023
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDoorAmbientLightOpen(Z)V

    .line 1024
    return-void
.end method

.method public setAmbientLightOpen(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 1180
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightOpen(boolean enable) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setAtlOpen(I)V

    .line 1183
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDoorAmbientLightOpen(Z)V

    .line 1184
    return-void
.end method

.method public setDoubleThemeColorEnable(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1097
    const-string v0, "AmbientLightHalService"

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

    .line 1100
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1101
    move v0, p2

    .line 1102
    .local v0, "data":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    const/4 v3, 0x2

    new-array v4, v1, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-interface {v2, v3, p1, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 1105
    .end local v0    # "data":I
    :cond_0
    const-string v0, "stable_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gentle_breathing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1106
    :cond_1
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    .line 1107
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "isDoubleColorEnable"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1108
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    iget-boolean v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    goto :goto_0

    :goto_1
    iget v7, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleSecondColor:I

    const/4 v8, 0x5

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->updateLightEffectPara(Ljava/lang/String;ZIII)V

    .line 1109
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setDoubleThemeColor(I)V

    .line 1110
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleThemeColorEnable:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleFirstColor:I

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->monoColor:I

    :goto_2
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setThemeFirstColor(I)V

    .line 1111
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->doubleSecondColor:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setThemeSecondColor(I)V

    .line 1113
    :cond_4
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDoorAmbientLightOpen(Z)V

    .line 1114
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    .line 717
    monitor-enter p0

    .line 718
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$AmbientLightHalListener;

    .line 719
    monitor-exit p0

    .line 720
    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMusicRhythmMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 952
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMusicRhythmMode() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicRhythmMode:Z

    .line 955
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->updateAmbilentLight()V

    .line 956
    return-void
.end method

.method public setMusicSpectrum(BBB)V
    .locals 3
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 865
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicSpectrumEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechState:I

    if-eqz v0, :cond_0

    .line 866
    const-string v0, "setMusicSpectrum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bright:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fade:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->printAtlLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->tickMusicSpectrumTime()V

    .line 868
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setMusicSpectrumEffect(BBB)V

    goto :goto_0

    .line 870
    :cond_0
    const-string v0, "setMusicSpectrum"

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicSpectrumEnable:Z

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechState:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->printAtlLog(Ljava/lang/String;ZI)V

    .line 871
    :goto_0
    return-void
.end method

.method public setMusicSpectrumEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 937
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMusicSpectrumEnable(enable) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isMusicSpectrumEnable:Z

    .line 940
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isMusicSpectrumEnable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 941
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->updateAmbilentLight()V

    .line 942
    return-void
.end method

.method public setSpeechSpectrum(BBB)V
    .locals 3
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 874
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechState:I

    if-nez v0, :cond_0

    .line 876
    const-string v0, "AmbientLightHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeechSpectrum color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bright:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fade:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setSpeechSpectrumEffect(BBB)V

    .line 880
    :cond_0
    return-void
.end method

.method public stopAllAmbilentEffect()V
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->stopAllAmbilentEffect()V

    .line 850
    return-void
.end method

.method public stopDefaultEffect()V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->stopDefaultEffect()V

    .line 842
    return-void
.end method

.method public stopSpeechEffect()V
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->stopSpeechEffect()V

    .line 846
    return-void
.end method

.method public updateAmbientLightEffect()V
    .locals 4

    .line 769
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->effectType:Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->effectType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->updateAmbientLightStatus(Ljava/lang/String;)V

    .line 771
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 786
    :pswitch_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isAdjustHvac:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isDriving:Z

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isDriving:Z

    if-eqz v0, :cond_2

    move v1, v3

    nop

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDefaultOrMusicGroup(I)V

    .line 787
    goto :goto_3

    .line 775
    :pswitch_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechVoicer:I

    if-ne v0, v2, :cond_4

    .line 776
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isDriving:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xf

    goto :goto_1

    :cond_3
    const/16 v0, 0x11

    :goto_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDefaultOrMusicGroup(I)V

    goto :goto_3

    .line 777
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechVoicer:I

    if-ne v0, v3, :cond_6

    .line 778
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->isDriving:Z

    if-eqz v0, :cond_5

    const/16 v0, 0xe

    goto :goto_2

    :cond_5
    const/16 v0, 0x10

    :goto_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDefaultOrMusicGroup(I)V

    goto :goto_3

    .line 779
    :cond_6
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechVoicer:I

    if-ne v0, v1, :cond_7

    .line 780
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDefaultOrMusicGroup(I)V

    goto :goto_3

    .line 781
    :cond_7
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechVoicer:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 782
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setDefaultOrMusicGroup(I)V

    .line 792
    :cond_8
    :goto_3
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechState:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 793
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setSpeechEffectEnable(Z)V

    goto :goto_5

    .line 794
    :cond_9
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechState:I

    if-ne v0, v3, :cond_a

    .line 795
    new-array v0, v2, [I

    .line 796
    .local v0, "speechGroup":[I
    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->speechVoicer:I

    packed-switch v3, :pswitch_data_1

    goto :goto_4

    .line 807
    :pswitch_2
    const/16 v3, 0x15

    aput v3, v0, v1

    .line 808
    goto :goto_4

    .line 804
    :pswitch_3
    const/16 v3, 0x14

    aput v3, v0, v1

    .line 805
    goto :goto_4

    .line 801
    :pswitch_4
    const/16 v3, 0xa

    aput v3, v0, v1

    .line 802
    goto :goto_4

    .line 798
    :pswitch_5
    const/16 v3, 0xb

    aput v3, v0, v1

    .line 799
    nop

    .line 812
    :goto_4
    aget v1, v0, v1

    if-eqz v1, :cond_a

    .line 813
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->mAmbientLight:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setSpeechEffectEnable(Z)V

    .line 814
    const-string v1, "speecheffect1"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setSpeechEffect([ILjava/lang/String;)V

    .line 817
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
