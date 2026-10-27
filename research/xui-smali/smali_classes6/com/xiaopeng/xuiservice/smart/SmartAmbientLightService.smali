.class public Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartAmbientLightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final AMBIENTLIGHT_LIGHT_VAL:I

.field private static final AMBIENTLIGHT_SPEED_FADE:I = 0x2

.field private static final BRIGHT:I

.field private static final DBG:Z = true

.field private static final DIFF:F

.field public static final EFFECT_FOLLOW_SPEED:Ljava/lang/String; = "follow_speed"

.field public static final EFFECT_GENTLE_BREATHING:Ljava/lang/String; = "gentle_breathing"

.field public static final EFFECT_MUSIC:Ljava/lang/String; = "music"

.field public static final EFFECT_STABLE_EFFECT:Ljava/lang/String; = "stable_effect"

.field private static final FADE:F

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

.field private static final LOWEST_RATIO:D

.field private static final REFRESH_TIME:F

.field public static final SPEECH_STATE_NO_VOICE:I = 0x3

.field public static final SPEECH_STATE_SPEAKERING:I = 0x0

.field public static final SPEECH_VOICE_DRIVER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SmartAmbientLightService"

.field private static mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private currentRatio:F

.field private doubleFirstColor:I

.field private doubleSecondColor:I

.field private enableProcessRatio:Z

.field private hvacColor:I

.field private hvacDriverBright:I

.field private hvacMode:I

.field private hvacPsnBright:I

.field private isAmbientLightOpen:Z

.field private isDriverDoorClose:Z

.field private isDriverOnSeat:Z

.field private isEnableAtlController:Z

.field private isLite:Z

.field private isMcuAtlStart:Z

.field private isSpeechActive:Z

.field private lastAtlLogTime:J

.field private mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

.field private mAtlConfiguration:Landroid/car/hardware/atl/AtlConfiguration;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

.field private mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private mPlaybackListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;

.field private mVendorControlListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

.field private monoColor:I

.field private musicStyle:I

.field private speechState:I

.field private speechVoicer:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    const-string v0, "persist.atl.light.percent"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->AMBIENTLIGHT_LIGHT_VAL:I

    .line 146
    const-string v0, "persist.atl.light.boundary"

    const-string v1, "0.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->DIFF:F

    .line 147
    const-string v0, "persist.atl.light.fountainFade"

    const-string v1, "50"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->FADE:F

    .line 148
    const-string v0, "persist.atl.light.fountainBright"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->BRIGHT:I

    .line 149
    const-string v0, "persist.atl.light.refreshTime"

    const-string v1, "100"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->REFRESH_TIME:F

    .line 150
    const-string v0, "persist.atl.light.lowestRatio"

    const-string v1, "0.6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    sput-wide v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->LOWEST_RATIO:D

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isSpeechActive:Z

    .line 133
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isMcuAtlStart:Z

    .line 134
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getAtlType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    .line 135
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getAtlType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isEnableAtlController:Z

    .line 136
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isDriverDoorClose:Z

    .line 137
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isDriverOnSeat:Z

    .line 139
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->musicStyle:I

    .line 140
    const/4 v1, 0x3

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->speechState:I

    .line 142
    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacMode:I

    .line 144
    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->speechVoicer:I

    .line 151
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->currentRatio:F

    .line 153
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->enableProcessRatio:Z

    .line 903
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->lastAtlLogTime:J

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAudioManager:Landroid/media/AudioManager;

    .line 165
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAmbientLightOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isAmbientLightOpen:Z

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->updateAmbientLightStatus(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleHvacWindModeChange(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # F

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleHvacDriverTempChange(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleMcuAtlStatusChange(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 48
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isSpeechActive:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAdjustHvacStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;F)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # F

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setMusicEffectRatio(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .line 48
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->AMBIENTLIGHT_LIGHT_VAL:I

    return v0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMusicEffectFade()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .line 48
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->BRIGHT:I

    return v0
.end method

.method static synthetic access$1800()F
    .locals 1

    .line 48
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->FADE:F

    return v0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;BBB)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # B
    .param p2, "x2"    # B
    .param p3, "x3"    # B

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setSpeechSpectrum(BBB)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # F

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleHvacPassengerTempChange(F)V

    return-void
.end method

.method static synthetic access$2002(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->musicStyle:I

    return p1
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->riseSHC()V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 48
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->currentRatio:F

    return v0
.end method

.method static synthetic access$2402(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # F

    .line 48
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->currentRatio:F

    return p1
.end method

.method static synthetic access$2502(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->enableProcessRatio:Z

    return p1
.end method

.method static synthetic access$2600()Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .line 48
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$2602(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/ScheduledFuture;

    .line 48
    sput-object p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$2700()F
    .locals 1

    .line 48
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->REFRESH_TIME:F

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # F

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleCarSpeedChange(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 48
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    return v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleGearChange(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleBcmDoorStateChange(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # Z

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleBcmDriverSeatStateChange(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleAtlChange(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .param p1, "x1"    # Z

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleIgChange(Z)V

    return-void
.end method

.method private getAdjustHvacStatus()Z
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAdjustHvacStatus()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getAmbientInitStatus()Z
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientInitStatus()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private getCarIgStatus()Z
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getCarIgStatus()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getDrivingStatus()Z
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getDrivingStatus()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getEnableMusicSpectrum()Z
    .locals 4

    .line 801
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getEnableMusicSpectrum()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getEnableMusicSpectrum()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    return v3

    .line 803
    :cond_2
    return v1
.end method

.method private getFloatArrayProperty(Landroid/car/hardware/CarPropertyValue;)[F
    .locals 5
    .param p1, "propertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 750
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 751
    .local v0, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 752
    .local v1, "result":[F
    if-eqz v0, :cond_1

    .line 753
    array-length v2, v0

    new-array v1, v2, [F

    .line 754
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 755
    aget-object v3, v0, v2

    .line 756
    .local v3, "objValue":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_0

    .line 757
    move-object v4, v3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v2

    .line 754
    .end local v3    # "objValue":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 761
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;
    .locals 1

    .line 896
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$InstanceHolder;->access$2200()Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    move-result-object v0

    return-object v0
.end method

.method private getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getMusicEffectEnable()Z
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getMusicEffectFade()I
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getMusicEffectFade()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private getPNGear()Z
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getPNGear()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getVisualCaptureListener()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getVisualCaptureListener()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private handleAtlChange(I)V
    .locals 3
    .param p1, "atlStatus"    # I

    .line 473
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    if-nez v0, :cond_3

    .line 474
    if-nez p1, :cond_1

    .line 475
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMusicEffectEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setMusicSpectrumEnable(Z)V

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->stopAllAmbilentEffect()V

    .line 478
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->resetGroutLightData()V

    .line 479
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isAmbientLightOpen:Z

    .line 480
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "isAmbientLightOpen"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 481
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 482
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isAmbientLightOpen:Z

    .line 483
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isAmbientLightOpen"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightEffectType(Ljava/lang/String;)V

    .line 485
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMusicEffectEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 486
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setMusicSpectrumEnable(Z)V

    .line 489
    :cond_3
    :goto_0
    return-void
.end method

.method private handleBcmDoorStateChange(I)V
    .locals 2
    .param p1, "driverDoorState"    # I

    .line 544
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    if-nez v0, :cond_1

    .line 545
    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isDriverDoorClose:Z

    if-nez v1, :cond_0

    .line 546
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isDriverDoorClose:Z

    .line 547
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->startWelcomeEffect()V

    goto :goto_0

    .line 548
    :cond_0
    if-ne p1, v0, :cond_1

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isDriverDoorClose:Z

    .line 552
    :cond_1
    :goto_0
    return-void
.end method

.method private handleBcmDriverSeatStateChange(Z)V
    .locals 1
    .param p1, "driverSeatState"    # Z

    .line 555
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    if-nez v0, :cond_0

    .line 556
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isDriverOnSeat:Z

    .line 557
    if-eqz p1, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->startWelcomeEffect()V

    .line 561
    :cond_0
    return-void
.end method

.method private handleCarSpeedChange(F)V
    .locals 3
    .param p1, "rawSpeed"    # F

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setRawCarSpeed(F)V

    .line 372
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    if-nez v0, :cond_3

    .line 373
    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getDrivingStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 375
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setDrivingStatus(Z)V

    .line 376
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->updateAmbientLightEffect()V

    .line 377
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->stopLightBySpeed()V

    .line 378
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setDoorAmbientLightOpen(Z)V

    goto :goto_0

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getDrivingStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setDrivingStatus(Z)V

    .line 383
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setDoorAmbientLightOpen(Z)V

    .line 384
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->updateAmbientLightEffect()V

    .line 385
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMusicEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->tickMusicSpectrumTime()V

    .line 389
    :cond_2
    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setFollowCarSpeedEffect(FI)V

    .line 391
    :cond_3
    return-void
.end method

.method private handleGearChange(I)V
    .locals 2
    .param p1, "gear"    # I

    .line 492
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setPNGear(Z)V

    .line 493
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->turnOnOffAtl(Z)V

    .line 494
    return-void
.end method

.method private handleHvacDriverTempChange(F)V
    .locals 6
    .param p1, "tempDriver"    # F

    .line 407
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isSpeechActive:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAmbientInitStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isEnableAtlController:Z

    if-nez v0, :cond_4

    .line 409
    const/4 v0, 0x1

    const/4 v1, 0x2

    :try_start_0
    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacMode:I

    const/high16 v3, 0x42040000    # 33.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x41700000    # 15.0f

    if-ne v2, v0, :cond_0

    .line 410
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setHvacColor(I)V

    .line 411
    sub-float v2, v3, p1

    div-float/2addr v2, v5

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacDriverBright:I

    .line 412
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v2}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempPsnValue()F

    move-result v2

    sub-float/2addr v3, v2

    div-float/2addr v3, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacPsnBright:I

    goto :goto_0

    .line 413
    :cond_0
    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacMode:I

    if-ne v2, v1, :cond_1

    .line 414
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setHvacColor(I)V

    .line 415
    sub-float v2, v3, p1

    div-float/2addr v2, v5

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacDriverBright:I

    .line 416
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v2}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempPsnValue()F

    move-result v2

    sub-float/2addr v3, v2

    div-float/2addr v3, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacPsnBright:I

    goto :goto_0

    .line 417
    :cond_1
    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 418
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setHvacColor(I)V

    .line 419
    const/high16 v2, 0x41880000    # 17.0f

    sub-float v3, p1, v2

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacDriverBright:I

    .line 420
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v3}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempPsnValue()F

    move-result v3

    sub-float/2addr v3, v2

    mul-float/2addr v4, v3

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacPsnBright:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_2
    :goto_0
    goto :goto_1

    .line 422
    :catch_0
    move-exception v2

    .line 423
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleException(Ljava/lang/Exception;)V

    .line 426
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "SmartAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hvacDriverBright:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacDriverBright:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hvacPsnBright:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacPsnBright:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAdjustHvacStatus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 430
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setAdjustHvacStatus(Z)V

    .line 431
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->updateAmbientLightEffect()V

    .line 433
    :cond_3
    const/16 v0, 0x12

    const-string v2, "hvacColor"

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacDriverBright:I

    int-to-byte v3, v3

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setAmbientLightDataEffect(ILjava/lang/String;BB)V

    .line 434
    const/16 v0, 0x13

    const-string v2, "hvacColor"

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacPsnBright:I

    int-to-byte v3, v3

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setAmbientLightDataEffect(ILjava/lang/String;BB)V

    .line 435
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->tickHvacTime()V

    .line 437
    :cond_4
    return-void
.end method

.method private handleHvacPassengerTempChange(F)V
    .locals 6
    .param p1, "tempPassenger"    # F

    .line 440
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isSpeechActive:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAmbientInitStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isEnableAtlController:Z

    if-nez v0, :cond_4

    .line 442
    const/4 v0, 0x1

    const/4 v1, 0x2

    :try_start_0
    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacMode:I

    const/high16 v3, 0x42040000    # 33.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x41700000    # 15.0f

    if-ne v2, v0, :cond_0

    .line 443
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setHvacColor(I)V

    .line 444
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v2}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempDriverValue()F

    move-result v2

    sub-float v2, v3, v2

    div-float/2addr v2, v5

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacDriverBright:I

    .line 445
    sub-float/2addr v3, p1

    div-float/2addr v3, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacPsnBright:I

    goto :goto_0

    .line 446
    :cond_0
    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacMode:I

    if-ne v2, v1, :cond_1

    .line 447
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setHvacColor(I)V

    .line 448
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v2}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempDriverValue()F

    move-result v2

    sub-float v2, v3, v2

    div-float/2addr v2, v5

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacDriverBright:I

    .line 449
    sub-float/2addr v3, p1

    div-float/2addr v3, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacPsnBright:I

    goto :goto_0

    .line 450
    :cond_1
    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 451
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setHvacColor(I)V

    .line 452
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v2}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempDriverValue()F

    move-result v2

    const/high16 v3, 0x41880000    # 17.0f

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacDriverBright:I

    .line 453
    sub-float v2, p1, v3

    mul-float/2addr v4, v2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacPsnBright:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_2
    :goto_0
    goto :goto_1

    .line 455
    :catch_0
    move-exception v2

    .line 456
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleException(Ljava/lang/Exception;)V

    .line 459
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "SmartAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hvacDriverBright:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacDriverBright:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hvacPsnBright:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacPsnBright:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAdjustHvacStatus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 463
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setAdjustHvacStatus(Z)V

    .line 464
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->updateAmbientLightEffect()V

    .line 466
    :cond_3
    const/16 v0, 0x12

    const-string v2, "hvacColor"

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacDriverBright:I

    int-to-byte v3, v3

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setAmbientLightDataEffect(ILjava/lang/String;BB)V

    .line 467
    const/16 v0, 0x13

    const-string v2, "hvacColor"

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacPsnBright:I

    int-to-byte v3, v3

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setAmbientLightDataEffect(ILjava/lang/String;BB)V

    .line 468
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->tickHvacTime()V

    .line 470
    :cond_4
    return-void
.end method

.method private handleHvacWindModeChange(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 394
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isEnableAtlController:Z

    if-nez v0, :cond_3

    .line 395
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 396
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacMode:I

    goto :goto_0

    .line 397
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 398
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacMode:I

    goto :goto_0

    .line 399
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 400
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacMode:I

    .line 402
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->updateAmbientLightEffect()V

    .line 404
    :cond_3
    return-void
.end method

.method private handleIgChange(Z)V
    .locals 3
    .param p1, "hasIgOn"    # Z

    .line 497
    const-string v0, "SmartAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIgChange, hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    if-nez p1, :cond_3

    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setWelcomeEffectStatus(Z)V

    .line 501
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setCarIgStatus(Z)V

    .line 502
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    if-nez v1, :cond_1

    .line 503
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->stopAllAmbilentEffect()V

    .line 504
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isMcuAtlStart:Z

    .line 505
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setDoorAmbientLightOpen(Z)V

    .line 506
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMusicEffectEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setMusicSpectrumEnable(Z)V

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->resetGroutLightData()V

    goto :goto_0

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setSHCStatus(Z)V

    .line 511
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->turnOnOffAtl(Z)V

    .line 513
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setAmbientInitStatus(Z)V

    goto :goto_1

    .line 515
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setCarIgStatus(Z)V

    .line 516
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    if-nez v1, :cond_5

    .line 517
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setDoorAmbientLightOpen(Z)V

    .line 518
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMusicEffectEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setMusicSpectrumEnable(Z)V

    .line 519
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->startWelcomeEffect()V

    .line 522
    :cond_5
    :goto_1
    return-void
.end method

.method private handleMcuAtlStatusChange(I)V
    .locals 4
    .param p1, "MCUAtlStatus"    # I

    .line 525
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    if-nez v0, :cond_3

    .line 526
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 527
    const-string v2, "SmartAmbientLightService"

    const-string v3, "MCU_ATLS_STATUS_START"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setAmbientInitStatus(Z)V

    .line 529
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isMcuAtlStart:Z

    .line 530
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMusicEffectEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 531
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setMusicSpectrumEnable(Z)V

    goto :goto_0

    .line 532
    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 533
    const-string v2, "SmartAmbientLightService"

    const-string v3, "MCU_ATLS_STATUS_FINISH"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAmbientInitStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isMcuAtlStart:Z

    if-eqz v2, :cond_2

    .line 535
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->initAmbilentLightEffect()V

    .line 536
    :cond_2
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isMcuAtlStart:Z

    .line 537
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMusicEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 538
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setMusicSpectrumEnable(Z)V

    .line 541
    :cond_3
    :goto_0
    return-void
.end method

.method private initAmbilentLightEffect()V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->initAmbilentLightEffect()V

    .line 731
    :cond_0
    return-void
.end method

.method private printAtlLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "logs"    # Ljava/lang/String;

    .line 914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 915
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->lastAtlLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 916
    const-string v2, "SmartAmbientLightService"

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

    .line 917
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->lastAtlLogTime:J

    .line 919
    :cond_0
    return-void
.end method

.method private printAtlLog(Ljava/lang/String;ZI)V
    .locals 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "flag1"    # Z
    .param p3, "logs"    # I

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 907
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->lastAtlLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 908
    const-string v2, "SmartAmbientLightService"

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

    .line 909
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->lastAtlLogTime:J

    .line 911
    :cond_0
    return-void
.end method

.method private registerNewMediaStreamEvent()V
    .locals 2

    .line 662
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->getInstance()Lcom/xiaopeng/xuiservice/base/event/EventCenter;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$9;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$9;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->registerMediaEventListener(Lcom/xiaopeng/xuiservice/base/event/MediaEventListener;)V

    .line 670
    return-void
.end method

.method private registerVisualizerListener()V
    .locals 2

    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getVisualCaptureListener()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setMusicSpectrumEnable(Z)V

    .line 182
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getVisualCaptureListener()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V

    goto :goto_0

    .line 184
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setMusicSpectrumEnable(Z)V

    .line 185
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getVisualCaptureListener()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unRegisterVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_1
    :goto_0
    goto :goto_1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleException(Ljava/lang/Exception;)V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private resetGroutLightData()V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->resetGroutLightData()V

    .line 747
    :cond_0
    return-void
.end method

.method private riseSHC()V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->riseSHC()V

    .line 743
    :cond_0
    return-void
.end method

.method private setAdjustHvacStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .line 864
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAdjustHvacStatus(Z)V

    .line 865
    :cond_0
    return-void
.end method

.method private setAmbientInitStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .line 880
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientInitStatus(Z)V

    .line 881
    :cond_0
    return-void
.end method

.method private setAmbientLightDataEffect(ILjava/lang/String;BB)V
    .locals 1
    .param p1, "groupNum"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "bright"    # B
    .param p4, "fade"    # B

    .line 847
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setAmbientLightDataEffect(ILjava/lang/String;BB)V

    .line 849
    :cond_0
    return-void
.end method

.method private setCarIgStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .line 856
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setIgOnStatus(Z)V

    .line 857
    :cond_0
    return-void
.end method

.method private setDefaultOrMusicGroup(I)V
    .locals 3
    .param p1, "groupNum"    # I

    .line 816
    const-string v0, "SmartAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultOrMusicGroup groupNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDefaultOrMusicGroup(I)V

    .line 819
    :cond_0
    return-void
.end method

.method private setDoorAmbientLightOpen(Z)V
    .locals 3
    .param p1, "open"    # Z

    .line 156
    const-string v0, "SmartAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDoorAmbientLightOpen  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getDrivingStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getCarIgStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDoorAmbientLightOpen(Z)V

    .line 160
    :cond_0
    return-void
.end method

.method private setDrivingStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .line 852
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setDrivingStatus(Z)V

    .line 853
    :cond_0
    return-void
.end method

.method private setFollowCarSpeedEffect(FI)V
    .locals 2
    .param p1, "speed"    # F
    .param p2, "fade"    # I

    .line 836
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "follow_speed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "effect_follow_speed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isSpeechActive:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getCarIgStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setFollowCarSpeedEffect(FI)V

    .line 839
    :cond_1
    return-void
.end method

.method private setHvacColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 860
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setHvacColor(I)V

    .line 861
    :cond_0
    return-void
.end method

.method private setMediaCenterManager(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    .line 892
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMediaCenterManager(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    .line 893
    :cond_0
    return-void
.end method

.method private setMusicEffectRatio(F)F
    .locals 2
    .param p1, "ratio"    # F

    .line 922
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->enableProcessRatio:Z

    if-nez v0, :cond_0

    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->enableProcessRatio:Z

    .line 924
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getCurrentRatioValue()V

    .line 926
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->currentRatio:F

    sub-float v0, p1, v0

    .line 927
    .local v0, "diff":F
    sget v1, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->DIFF:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 928
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->currentRatio:F

    .line 929
    return p1

    .line 931
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private setMusicSpectrumEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 876
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrumEnable(Z)V

    .line 877
    :cond_0
    return-void
.end method

.method private setPNGear(Z)V
    .locals 1
    .param p1, "gearLevel"    # Z

    .line 868
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setPNGear(Z)V

    .line 869
    :cond_0
    return-void
.end method

.method private setRawCarSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 872
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setRawCarSpeed(F)V

    .line 873
    :cond_0
    return-void
.end method

.method private setSpeechEffect([ILjava/lang/String;)V
    .locals 1
    .param p1, "groupNum"    # [I
    .param p2, "effectType"    # Ljava/lang/String;

    .line 822
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->stopSpeechEffect()V

    .line 823
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setSpeechEffect([ILjava/lang/String;)V

    .line 824
    :cond_0
    return-void
.end method

.method private setSpeechSpectrum(BBB)V
    .locals 3
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 827
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->speechState:I

    if-nez v0, :cond_0

    .line 829
    const-string v0, "SmartAmbientLightService"

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

    .line 831
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setSpeechSpectrumEffect(BBB)V

    .line 833
    :cond_0
    return-void
.end method

.method private setVisualCaptureListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    .line 888
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setVisualCaptureListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V

    .line 889
    :cond_0
    return-void
.end method

.method private setWelcomeEffectStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .line 884
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setWelcomeEffectStatus(Z)V

    .line 885
    :cond_0
    return-void
.end method

.method private startWelcomeEffect()V
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isDriverDoorClose:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isDriverOnSeat:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getCarIgStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isEnableAtlController:Z

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->startWelcomeEffect()V

    .line 568
    :cond_0
    return-void
.end method

.method private stopAllAmbilentEffect()V
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->stopAllAmbilentEffect()V

    .line 711
    :cond_0
    return-void
.end method

.method private stopLightBySpeed()V
    .locals 3

    .line 714
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isEnableAtlController:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 715
    const/4 v0, 0x4

    const-string v2, "normalColor"

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setAmbientLightDataEffect(ILjava/lang/String;BB)V

    .line 716
    const/4 v0, 0x6

    const-string v2, "normalColor"

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setAmbientLightDataEffect(ILjava/lang/String;BB)V

    goto :goto_0

    .line 718
    :cond_0
    const/4 v0, 0x7

    const-string v2, "normalColor"

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setAmbientLightDataEffect(ILjava/lang/String;BB)V

    .line 720
    :goto_0
    return-void
.end method

.method private stopSpeechEffect()V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->stopSpeechEffect()V

    .line 707
    :cond_0
    return-void
.end method

.method private tickHvacTime()V
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->tickHvacTime()V

    .line 739
    :cond_0
    return-void
.end method

.method private tickMusicSpectrumTime()V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->tickMusicSpectrumTime()V

    .line 735
    :cond_0
    return-void
.end method

.method private turnOnOffAtl(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_1

    .line 724
    const-string v0, "SmartAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAtlControl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getPNGear()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getCarIgStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getSHCStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAmbientLightOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getPNGear()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getCarIgStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getSHCStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAmbientLightOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->sendAtlControl(Z)V

    .line 727
    :cond_1
    return-void
.end method

.method private updateAmbientLightEffect()V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateAmbientLightEffect()V

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->updateAmbientLightStatus(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method private updateAmbientLightStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "effectType"    # Ljava/lang/String;

    .line 697
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->updateAmbientLightStatus(Ljava/lang/String;)V

    .line 698
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getAmbientLightEffectType()Ljava/lang/String;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "AmbientLightEffectType"

    :goto_0
    return-object v0
.end method

.method public getAmbientLightOpen()Z
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mAmbientLightCapability:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightOpen()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentRatioValue()V
    .locals 7

    .line 935
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$10;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$10;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V

    .line 956
    .local v0, "timerTask":Ljava/lang/Runnable;
    sget-object v6, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 957
    .local v6, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v6, :cond_0

    .line 958
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 961
    :cond_0
    const-wide/16 v1, 0x0

    sget v3, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->REFRESH_TIME:F

    float-to-int v3, v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 962
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 174
    const-string v0, "SmartAmbientLightService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 1

    .line 199
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    .line 237
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 267
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 306
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$4;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    .line 330
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$5;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->addHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->addAtlManagerListener(Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;)V

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 366
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->registerNewMediaStreamEvent()V

    .line 367
    return-void
.end method

.method protected initXUIManager()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 595
    :try_start_0
    const-string v0, "SmartAmbientLightService"

    const-string v1, "initXUIManager()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "mediacenter"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setMediaCenterManager(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    .line 598
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V

    .line 615
    .local v0, "mVisualCaptureListener":Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setVisualCaptureListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V

    .line 617
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$7;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mPlaybackListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;

    .line 632
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$8;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mVendorControlListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

    .line 652
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->registerVisualizerListener()V

    .line 653
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mPlaybackListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerPlaybackListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;)V

    .line 654
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mVendorControlListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->vendorSetControlListener(Landroid/content/Context;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .end local v0    # "mVisualCaptureListener":Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;
    goto :goto_0

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->handleException(Ljava/lang/Exception;)V

    .line 659
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    return-void
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 966
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 4

    .line 572
    const-string v0, "SmartAmbientLightService"

    const-string v1, "onCarManagerInited()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v0, "hvac"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 574
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 575
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

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
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setCarIgStatus(Z)V

    .line 578
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    if-nez v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getRawCarSpeed()F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setDrivingStatus(Z)V

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getWindModColor()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->hvacMode:I

    .line 581
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getDrivingStatus()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setDoorAmbientLightOpen(Z)V

    goto :goto_3

    .line 582
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->isLite:Z

    if-eqz v0, :cond_5

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getStallState()I

    move-result v0

    .line 584
    .local v0, "gear":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->setPNGear(Z)V

    .line 586
    .end local v0    # "gear":I
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->initAmbilentLightEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    goto :goto_4

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartAmbientLightService"

    const-string v2, "initCarListener error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public onConnectedCar()V
    .locals 0

    .line 195
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 675
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .line 681
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 682
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getVisualCaptureListener()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unRegisterVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V

    .line 683
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mPlaybackListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unRegisterPlaybackListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;)V

    .line 684
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mVendorControlListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->vendorUnSetControlListener(Landroid/content/Context;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_0
    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    const-string v1, "SmartAmbientLightService"

    const-string v2, "onRelease error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .end local v0    # "e":Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->removeHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 691
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->removeAtlManagerListener(Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;)V

    .line 692
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 693
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 694
    return-void
.end method
