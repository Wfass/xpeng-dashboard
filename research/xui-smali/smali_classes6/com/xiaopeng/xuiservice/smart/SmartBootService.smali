.class public Lcom/xiaopeng/xuiservice/smart/SmartBootService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartBootService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;,
        Lcom/xiaopeng/xuiservice/smart/SmartBootService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final BI_PARAMS_DEFAULT:Ljava/lang/String; = "0"

.field private static final BI_SCENE_NAME:Ljava/lang/String; = "SmartBootService"

.field private static final BI_TRIGGER_EVENT_BOOT:Ljava/lang/String; = "boot"

.field private static final BI_TYPE_WELCOME_SOUND:Ljava/lang/String; = "welcomeSound"

.field private static final BOOT_SOUND_EFFECT_DISABLE:I = 0x0

.field private static BOOT_SOUND_VALID_VOLUME:I = 0x0

.field private static BootSoundPlaying:Z = false

.field private static final DEFAULT_INVALID_STREAM_ID:I = -0x1

.field private static final KEY_VOL_LEVEL:Ljava/lang/String; = "DangerousSoundEffectVolLevel"

.field private static final SEAT_WELCOME_HORZ_POS:I = 0x19

.field private static final TAG:Ljava/lang/String; = "SmartBootService"

.field private static final TEMPVOLCHANGE_FLAG_BOOT:I = 0x40

.field private static final WELCOME_MODE_SPD_THRESHOLD:F = 3.0f

.field private static final XP_BOOT_SOUND_STOP:Ljava/lang/String; = "com.xiaopeng.intent.action.bootsound.stop"

.field private static final XP_BOOT_SOUND_TRIGGER:Ljava/lang/String; = "com.xiaopeng.intent.action.bootsound"

.field private static hasAtl:Z = false

.field private static hasIgOn:Z = false

.field private static hasLastStatusGearP:Z = false

.field private static hasSuspend:Z = false

.field private static last_ig_on_time:J = 0x0L

.field private static mBootSndTiggered:Z = false

.field private static mBootStreamType:I = 0x0

.field private static mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService; = null

.field private static mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService; = null

.field private static mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager; = null

.field private static final needHomeWhenIgOff:Z = false

.field private static softMusicMute:Z

.field private static softMusicUnMuteDelayTime:I

.field private static supportBreak:Z

.field private static systemTypeNeedBreak:Z

.field private static final triggerSoundByATLS:Z


# instance fields
.field private INTERVAL_HOME_DURATION:J

.field private SHC_Change_thread:Ljava/lang/Runnable;

.field private SHC_RAISE_DELAY:J

.field private final XUIPKGNAME:Ljava/lang/String;

.field private hasLockedBootComplete:Z

.field private isDriverBeltBuck:Z

.field private isDrvDoorOpen:Z

.field private isRightRudder:Z

.field private isSCHEnable:Z

.field private lastSuspendtime:J

.field private mAudioConfig:Landroid/media/audioConfig/AudioConfig;

.field private mAudioManager:Landroid/media/AudioManager;

.field mAudioStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;

.field private mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

.field private mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private mCarMsmManager:Landroid/car/hardware/msm/CarMsmManager;

.field private mCarPowerListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

.field private mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

.field private mCarRemindManager:Landroid/car/xpeng/remind/CarRemindManager;

.field private mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mNativeCallListener:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

.field private mPhoneMentionTime:J

.field private final mReceiver:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mWelcomeSoundList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mXpRemindEventCallback:Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

.field private soundData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private streamID:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 94
    const-string v0, "ATLS"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasAtl:Z

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasSuspend:Z

    .line 102
    const-string v1, "AMP"

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "persist.sys.bootsound.amp.streamtype"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 103
    :cond_0
    const-string v1, "persist.sys.bootsound.streamtype"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    sput v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootStreamType:I

    .line 104
    const-string v1, "persist.sys.bootsound.fixedvolume"

    const/16 v3, 0xf

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->BOOT_SOUND_VALID_VOLUME:I

    .line 105
    sget v1, Lcom/xiaopeng/util/FeatureOption;->FO_AMP_TYPE:I

    if-ne v1, v2, :cond_1

    const-string v1, "persist.sys.bootsound.softmusic.mute"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->softMusicMute:Z

    .line 106
    sget v1, Lcom/xiaopeng/util/FeatureOption;->FO_AMP_TYPE:I

    if-ne v1, v2, :cond_2

    const-string v1, "persist.sys.bootsound.support.break"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->supportBreak:Z

    .line 107
    const-string v1, "persist.sys.bootsound.systemtype.break"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->systemTypeNeedBreak:Z

    .line 109
    const-string v1, "persist.sys.softmusic.unmute.delay"

    const/16 v3, 0x320

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->softMusicUnMuteDelayTime:I

    .line 111
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->BootSoundPlaying:Z

    .line 114
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->last_ig_on_time:J

    .line 115
    sput-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasIgOn:Z

    .line 116
    sput-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLastStatusGearP:Z

    .line 119
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootSndTiggered:Z

    .line 124
    const/4 v1, 0x0

    sput-object v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    .line 133
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getBootSoundSupportType()I

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    nop

    :cond_3
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->triggerSoundByATLS:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 217
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 92
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->lastSuspendtime:J

    .line 93
    const-string v1, "persist.sys.susendhome.duration"

    const/16 v2, 0xf

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->INTERVAL_HOME_DURATION:J

    .line 97
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mSoundPool:Landroid/media/SoundPool;

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isRightRudder:Z

    .line 99
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 101
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->streamID:I

    .line 120
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mPhoneMentionTime:J

    .line 127
    const-string v0, "com.xiaopeng.xuiservice"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->XUIPKGNAME:Ljava/lang/String;

    .line 135
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDriverBeltBuck:Z

    .line 136
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDrvDoorOpen:Z

    .line 137
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isSCHEnable:Z

    .line 138
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLockedBootComplete:Z

    .line 139
    const-string v0, "persist.sys.shcraise.delay"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->SHC_RAISE_DELAY:J

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mEventListeners:Ljava/util/List;

    .line 142
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->SHC_Change_thread:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$GyzHuI7QkGH3UgQ1Nm73x53qvZw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$GyzHuI7QkGH3UgQ1Nm73x53qvZw;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mNativeCallListener:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

    .line 220
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mReceiver:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    .line 290
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;

    .line 218
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartBootService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService$1;

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # Z

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleSHCWithCarDoorStateChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # Z

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->stopSurroundWelcomeSoundEffect(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # Z

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->setAndRecoveryFixedVolume(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->broadcastSoundComplete(IJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/smart/SmartBootService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # I

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleATLstatus(I)V

    return-void
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasIgOn:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 64
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasIgOn:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDebugIgOnMiss()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # Z

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleIgStatusChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isRightRudder:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Landroid/car/hardware/power/CarPowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->lastSuspendtime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/xiaopeng/xuiservice/smart/SmartBootService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # J

    .line 64
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->lastSuspendtime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->INTERVAL_HOME_DURATION:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->playSurroundWelcomeSoundEffect(IZ)V

    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasSuspend:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 64
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasSuspend:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isIgStatusOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->prepareBootPlayer()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDebugPeriodicTask()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->runPeriodicTask(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # Z

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleGearStatusChanged(Z)V

    return-void
.end method

.method static synthetic access$2802(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDriverBeltBuck:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasPhoneMention()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootSndTiggered:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mPhoneMentionTime:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/xiaopeng/xuiservice/smart/SmartBootService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # J

    .line 64
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mPhoneMentionTime:J

    return-wide p1
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 64
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootSndTiggered:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # I

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handlePhoneMention(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isWelcomeAutoShow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->SHC_Change_thread:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->SHC_RAISE_DELAY:J

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->supportBreak:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->systemTypeNeedBreak:Z

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 64
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootStreamType:I

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->BootSoundPlaying:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 64
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->BootSoundPlaying:Z

    return p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->checkNeedBreakBootSound(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;
    .locals 1

    .line 64
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    return-object v0
.end method

.method private broadcastSoundComplete(IJ)V
    .locals 5
    .param p1, "soundId"    # I
    .param p2, "duration"    # J

    .line 1042
    const/4 v0, 0x0

    .line 1044
    .local v0, "igstatus":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1047
    goto :goto_0

    .line 1045
    :catch_0
    move-exception v1

    .line 1046
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartBootService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastSoundComplete :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1049
    const-string v1, "SmartBootService"

    const-string v2, "broadcastSoundComplete"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaopeng.xui.WELCOME_SOUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1053
    const-string v2, "soundid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1054
    const-string v2, "duration"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1055
    const-string v2, "status"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1056
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1057
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->notifyListenersSoundCompleted(IJ)V

    .line 1059
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static changePosition(I)I
    .locals 1
    .param p0, "position"    # I

    .line 841
    packed-switch p0, :pswitch_data_0

    .line 852
    return p0

    .line 849
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 847
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 845
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 843
    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkNeedBreakBootSound(IILjava/lang/String;)Z
    .locals 3
    .param p1, "audioSession"    # I
    .param p2, "usage"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 282
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const-string v2, "com.xiaopeng.xuiservice"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 283
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->checkPkgInPassenger(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    return v0

    .line 285
    :cond_0
    return v1

    .line 287
    :cond_1
    return v0
.end method

.method private checkPkgInPassenger(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->checkPlayingRouteByPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPkgInPassenger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  true!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    return v1

    .line 277
    :cond_0
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPkgInPassenger error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private doSurroundWelcomeSoundEffect(IZ)V
    .locals 4
    .param p1, "soundEffect"    # I
    .param p2, "needNotifyComplete"    # Z

    .line 966
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 970
    :cond_0
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSurroundWelcomeSoundEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    sget v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootStreamType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->setStreamType(I)V

    .line 972
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService$13;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$13;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->setCompleteListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 985
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService$14;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$14;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->setErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 999
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootStreamType:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1000
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->setAndRecoveryFixedVolume(Z)V

    .line 1001
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->play(I)V

    .line 1002
    return-void

    .line 967
    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->BootSoundPlaying:Z

    .line 968
    return-void
.end method

.method private getCarSpeed()F
    .locals 1

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getRawCarSpeed()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 814
    :cond_0
    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 815
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    .locals 1

    .line 627
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$InstanceHolder;->access$3200()Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    move-result-object v0

    return-object v0
.end method

.method private handleATLstatus(I)V
    .locals 10
    .param p1, "atlStatus"    # I

    .line 892
    const/4 v0, 0x1

    .line 893
    .local v0, "atlOpen":Z
    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->triggerSoundByATLS:Z

    if-nez v1, :cond_0

    .line 894
    return-void

    .line 896
    :cond_0
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleATLstatus atlStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 899
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    invoke-virtual {v1}, Landroid/car/hardware/atl/CarAtlManager;->getAtlOpen()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .line 902
    goto :goto_1

    .line 900
    :catch_0
    move-exception v1

    .line 901
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SmartBootService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCarAtlManager.getAtlOpen() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasAtl:Z

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 905
    .local v1, "isAtlEnable":Z
    :goto_2
    if-ne p1, v3, :cond_4

    .line 906
    if-eqz v1, :cond_7

    .line 907
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->playWelcomeSoundEffect()V

    goto :goto_3

    .line 908
    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_7

    .line 909
    if-nez v1, :cond_5

    .line 910
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->playWelcomeSoundEffect()V

    .line 912
    :cond_5
    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->BootSoundPlaying:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasAtl:Z

    if-eqz v3, :cond_7

    .line 913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 914
    .local v3, "current_time":J
    sget-wide v5, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->last_ig_on_time:J

    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 915
    .local v5, "delaytime":J
    const-wide/16 v7, 0x9c4

    cmp-long v9, v5, v7

    if-lez v9, :cond_6

    .line 916
    const-wide/16 v7, 0x0

    invoke-direct {p0, v2, v7, v8}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->broadcastSoundComplete(IJ)V

    goto :goto_3

    .line 918
    :cond_6
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    new-instance v9, Lcom/xiaopeng/xuiservice/smart/SmartBootService$12;

    invoke-direct {v9, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$12;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    sub-long/2addr v7, v5

    invoke-virtual {v2, v9, v7, v8}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 927
    .end local v3    # "current_time":J
    .end local v5    # "delaytime":J
    :cond_7
    :goto_3
    return-void
.end method

.method private declared-synchronized handleAnimationFinished()V
    .locals 2

    monitor-enter p0

    .line 209
    :try_start_0
    const-string v0, "SmartBootService"

    const-string v1, "animation finished, play selfCheck video"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasSelfCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasIgOn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLastStatusGearP:Z

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->SELF_CHECK_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$KBV7i4lvj1DVoh0WA-9Pffxnmqw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$KBV7i4lvj1DVoh0WA-9Pffxnmqw;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->builder(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->play()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    throw v0
.end method

.method private declared-synchronized handleBootAnimationCompleted()V
    .locals 4

    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    instance-of v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    .line 333
    .local v0, "hasOtaPlayer":Z
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBootAnimationCompleted, hasOtaPlayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasIgOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasIgOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasLastStatusGearP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLastStatusGearP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasIgOn:Z

    if-eqz v1, :cond_1

    .line 338
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLastStatusGearP:Z

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;->play()V

    goto :goto_0

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->notifyWelcomeSoundFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 330
    .end local v0    # "hasOtaPlayer":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    throw v0
.end method

.method private declared-synchronized handleGearStatusChanged(Z)V
    .locals 2
    .param p1, "hasStatusGearP"    # Z

    monitor-enter p0

    .line 646
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLastStatusGearP:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    if-eqz v0, :cond_0

    .line 647
    const-string v0, "SmartBootService"

    const-string v1, "leave P gear, stop boot player"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;->stop()V

    .line 650
    :cond_0
    sput-boolean p1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLastStatusGearP:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    monitor-exit p0

    return-void

    .line 645
    .end local p1    # "hasStatusGearP":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    throw p1
.end method

.method private declared-synchronized handleIgStatusChanged(Z)V
    .locals 4
    .param p1, "isOn"    # Z

    monitor-enter p0

    .line 679
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 680
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isPGear()Z

    move-result v1

    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLastStatusGearP:Z

    .line 682
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IgOn, hasSuspend="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasSuspend:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasGearP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLastStatusGearP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mBootPlayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasSuspend:Z

    .line 687
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 688
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLastStatusGearP:Z

    if-eqz v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    instance-of v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->setWelcomeSoundPlayed(Z)V

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 691
    const-string v0, "SmartBootService"

    const-string v1, "boot video started, cancel periodicTask"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;->play()V

    goto :goto_0

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;->release()V

    goto :goto_0

    .line 678
    .end local p1    # "isOn":Z
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 699
    .restart local p1    # "isOn":Z
    :cond_3
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IgOff, mBootPlayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->setWelcomeSoundPlayed(Z)V

    .line 705
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    if-eqz v0, :cond_4

    .line 706
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->stop()V

    .line 708
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    if-eqz v0, :cond_5

    .line 709
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    .line 678
    .end local p1    # "isOn":Z
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    throw p1
.end method

.method private declared-synchronized handleLockedBootCompleted()V
    .locals 3

    monitor-enter p0

    .line 311
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLockedBootComplete:Z

    if-nez v0, :cond_2

    .line 312
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasOtaVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->OTA_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$efLhZwHReBneJuAAcOQcF51LVZA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$efLhZwHReBneJuAAcOQcF51LVZA;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->builder(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->build()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 316
    :cond_0
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLockedBootCompleted, hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasIgOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasLastStatusGearP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLastStatusGearP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasWelcomeSoundPlayed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasWelcomeSoundPlayed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mBootPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "1"

    const-string v1, "service.bootanim.exit"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleBootAnimationCompleted()V

    goto :goto_0

    .line 324
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->getInstance()Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    move-result-object v0

    const-string v1, "bootanimation"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mNativeCallListener:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->registerNativeCallListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;)V

    .line 326
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLockedBootComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :cond_2
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    throw v0
.end method

.method private declared-synchronized handleOtaVideoFinished()V
    .locals 2

    monitor-enter p0

    .line 196
    :try_start_0
    const-string v0, "SmartBootService"

    const-string v1, "ota video finished"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasOtaVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->notifyOtaVideoFinished()V

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->notifyWelcomeSoundFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    throw v0
.end method

.method private handlePhoneMention(I)V
    .locals 6
    .param p1, "position"    # I

    .line 856
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePhoneMention, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isRightRudder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isRightRudder:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mContext:Landroid/content/Context;

    .line 859
    const v2, 0x7f0e008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 860
    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isRightRudder:Z

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->changePosition(I)I

    move-result v3

    goto :goto_0

    .line 858
    :cond_0
    move v3, p1

    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speakByNormal(Ljava/lang/String;ZII)Ljava/lang/String;

    .line 862
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 863
    return-void
.end method

.method private handleSHCWithCarDoorStateChanged(Z)V
    .locals 4
    .param p1, "isOpen"    # Z

    .line 719
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSHCWithCarDoorStateChanged() isOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasIgOn:Z

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setShcReq(I)V

    .line 724
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isSCHEnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :cond_1
    goto :goto_1

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSHCWithCarDoorStateChanged error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private declared-synchronized handleSelfCheckVideoFinished()V
    .locals 2

    monitor-enter p0

    .line 205
    :try_start_0
    const-string v0, "SmartBootService"

    const-string v1, "selfCheck video finished"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartBootService;
    throw v0
.end method

.method private hasAnimation()Z
    .locals 1

    .line 1116
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isAnimationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.theme.style"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasOtaVideo()Z
    .locals 2

    .line 307
    const-string v0, "1"

    const-string v1, "persist.sys.xiaopeng.ota_play_media"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private hasPersonOnSeat()Z
    .locals 6

    .line 239
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 242
    .local v0, "bcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDriverOnSeat()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    nop

    :cond_0
    return v1

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SmartBootService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasPersonOnSeat failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private hasPhoneMention()Z
    .locals 3

    .line 1125
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phone_mention_sw"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private hasSelfCheck()Z
    .locals 3

    .line 1120
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isInternationalEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1121
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "XP_Allow_Self_Check"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1120
    :goto_0
    return v1
.end method

.method private hasTestDriveMode()Z
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "model_setting_disable"

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

.method private static hasWelcomeSoundPlayed()Z
    .locals 2

    .line 172
    const-string v0, "sys.xp.welcome_sound_played"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private initSound()V
    .locals 3

    .line 867
    const-string v0, "SmartBootService"

    const-string v1, "initSound"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 869
    .local v0, "attrBuild":Landroid/media/AudioAttributes$Builder;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 870
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 871
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 872
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 873
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mSoundPool:Landroid/media/SoundPool;

    .line 874
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->soundData:Ljava/util/HashMap;

    .line 875
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartBootService$11;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$11;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 882
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    if-nez v1, :cond_0

    .line 883
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    .line 885
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    if-nez v1, :cond_1

    .line 886
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    .line 888
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getBootSoundEffect()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->setBootSoundEffect(I)V

    .line 889
    return-void
.end method

.method private isDebugIgOnMiss()Z
    .locals 3

    .line 655
    const-string v0, "sys.xiaopeng.debug.igon_miss"

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

.method private isDebugPeriodicTask()Z
    .locals 2

    .line 659
    const-string v0, "sys.xiaopeng.debug.periodic_task"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isDriverOnSeat()Z
    .locals 3

    .line 831
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v1, :cond_1

    .line 832
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getDriverOnSeat()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 836
    :cond_1
    goto :goto_0

    .line 834
    :catch_0
    move-exception v1

    .line 835
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 837
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private static isFirstTimeInit()Z
    .locals 2

    .line 162
    const-string v0, "sys.xp.first_time_init"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isIgStatusOn()Z
    .locals 5

    .line 360
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartBootService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIgStatusFromMcu failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private isPGear()Z
    .locals 5

    .line 820
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    if-eqz v1, :cond_1

    .line 821
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getDisplayGearLevel()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 825
    :cond_1
    goto :goto_1

    .line 823
    :catch_0
    move-exception v1

    .line 824
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartBootService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayGearLevel exception, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method private isTestDriveMode()Z
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "model_setting_disable"

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

.method private isWelcomeAutoShow()Z
    .locals 5

    .line 791
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "welcome_disable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 792
    .local v0, "welcomeDisable":I
    const-string v1, "SmartBootService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWelcomeAutoShow() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isWelcomeMode()Z
    .locals 3

    .line 798
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v1, :cond_1

    .line 799
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getChairWelcomeMode()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 803
    :cond_1
    goto :goto_0

    .line 801
    :catch_0
    move-exception v1

    .line 802
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 804
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static synthetic lambda$KBV7i4lvj1DVoh0WA-9Pffxnmqw(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleSelfCheckVideoFinished()V

    return-void
.end method

.method public static synthetic lambda$Rfl3Wrs3csF9ePA5B6P9KFNV01s(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleLockedBootCompleted()V

    return-void
.end method

.method public static synthetic lambda$SAGGr6_IJ9MCkBQiQ0mI8ERSOhI(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleAnimationFinished()V

    return-void
.end method

.method public static synthetic lambda$efLhZwHReBneJuAAcOQcF51LVZA(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleOtaVideoFinished()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .line 150
    const-string v0, "exit"

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "SmartBootService"

    const-string v1, "onNativeCall, handleBootAnimationCompleted"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->getInstance()Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    move-result-object v0

    const-string v1, "bootanimation"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mNativeCallListener:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->unregisterNativeCallListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;)V

    .line 153
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleBootAnimationCompleted()V

    .line 155
    :cond_0
    return-void
.end method

.method public static synthetic lambda$playSurroundWelcomeSoundEffect$1(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IZ)V
    .locals 3
    .param p1, "soundEffect"    # I
    .param p2, "needNotifyComplete"    # Z

    .line 959
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSurroundWelcomeSoundEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->doSurroundWelcomeSoundEffect(IZ)V

    .line 962
    return-void
.end method

.method private notifyListenersSoundCompleted(IJ)V
    .locals 3
    .param p1, "soundId"    # I
    .param p2, "duration"    # J

    .line 1145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1146
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;

    .line 1148
    .local v2, "listener":Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;
    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;->onSoundComplete(IJ)V

    .line 1149
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;
    goto :goto_0

    .line 1151
    :cond_0
    monitor-exit v0

    .line 1152
    return-void

    .line 1151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOtaVideoFinished()V
    .locals 3

    .line 182
    const-string v0, "SmartBootService"

    const-string v1, "notifyOtaVideoFinished"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaopeng.intent.action.OTA_MEDIA_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 185
    return-void
.end method

.method private notifySoundDuration(I)V
    .locals 8
    .param p1, "soundId"    # I

    .line 1062
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    return-void

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundList:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1066
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1067
    .local v1, "mmr":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1070
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 1071
    .local v2, "durationstr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1072
    .local v3, "duration":J
    const-string v5, "SmartBootService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifySoundDuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    return-void

    .line 1075
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/xuiservice/smart/SmartBootService$16;

    invoke-direct {v6, p0, p1, v3, v4}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$16;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IJ)V

    invoke-virtual {v5, v6, v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1085
    return-void
.end method

.method private notifyWelcomeSoundFinished()V
    .locals 2

    .line 188
    const-string v0, "SmartBootService"

    const-string v1, "notifyWelcomeSoundFinished"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xui.WELCOME_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 193
    return-void
.end method

.method private playSurroundWelcomeSoundEffect(IZ)V
    .locals 9
    .param p1, "soundEffect"    # I
    .param p2, "needNotifyComplete"    # Z

    .line 954
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->BootSoundPlaying:Z

    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 956
    .local v0, "current_time":J
    sget-wide v2, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->last_ig_on_time:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 958
    .local v2, "elapsed":J
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$Gw2RSDlm6WnIy9orBTxIHAU8L4g;

    invoke-direct {v5, p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$Gw2RSDlm6WnIy9orBTxIHAU8L4g;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IZ)V

    .line 962
    const-wide/16 v6, 0x9c4

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_0
    sub-long/2addr v6, v2

    .line 958
    :goto_0
    invoke-virtual {v4, v5, v6, v7}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 963
    return-void
.end method

.method private playWelcomeAmbientEffect()V
    .locals 4

    .line 930
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;

    move-result-object v0

    const-string v1, "all"

    const-string/jumbo v2, "welcome"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->playAmbientLightEffect(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 932
    .local v0, "ret":I
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play welcome ambient "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v3, "succeed"

    goto :goto_0

    :cond_0
    const-string v3, "failed"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method private prepareBootPlayer()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;
    .locals 2

    .line 667
    const-string v0, "SmartBootService"

    const-string v1, "prepareBootPlayer"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasOtaVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->OTA_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$efLhZwHReBneJuAAcOQcF51LVZA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$efLhZwHReBneJuAAcOQcF51LVZA;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->builder(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->build()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v0

    return-object v0

    .line 671
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasSelfCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->SELF_CHECK_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$KBV7i4lvj1DVoh0WA-9Pffxnmqw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$KBV7i4lvj1DVoh0WA-9Pffxnmqw;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->builder(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->build()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v0

    return-object v0

    .line 675
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private registerBootHandler()V
    .locals 2

    .line 347
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isFirstTimeInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "SmartBootService"

    const-string v1, "registerBootCompleteHandler"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->setFirstTimeInit()V

    .line 351
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$Rfl3Wrs3csF9ePA5B6P9KFNV01s;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$Rfl3Wrs3csF9ePA5B6P9KFNV01s;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addLockedBootCompleteTask(Ljava/lang/Runnable;)V

    .line 352
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isLockedBootComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleLockedBootCompleted()V

    .line 356
    :cond_0
    return-void
.end method

.method private registerNewMediaStreamEvent()V
    .locals 2

    .line 632
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->getInstance()Lcom/xiaopeng/xuiservice/base/event/EventCenter;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$10;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->registerMediaEventListener(Lcom/xiaopeng/xuiservice/base/event/MediaEventListener;)V

    .line 643
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v0, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SmartBootService"

    const-string v2, "registerReceiver"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "com.xiaopeng.intent.action.bootsound"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v1, "com.xiaopeng.intent.action.bootsound.stop"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mReceiver:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListenerDynamically(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 262
    return-void
.end method

.method private runPeriodicTask(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 663
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method private setAndRecoveryFixedVolume(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 1021
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndRecoveryFixedVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootStreamType:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 1024
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->softMusicMute:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setSoftTypeVolumeMute(IZ)V

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioManager:Landroid/media/AudioManager;

    sget v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootStreamType:I

    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->BOOT_SOUND_VALID_VOLUME:I

    const/16 v3, 0x40

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioManager;->temporaryChangeVolumeDown(IIIZ)V

    .line 1027
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->softMusicMute:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1028
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService$15;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$15;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V

    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->softMusicUnMuteDelayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :cond_1
    goto :goto_0

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndRecoveryFixedVolume ERROR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method private static setFirstTimeInit()V
    .locals 2

    .line 166
    const-string v0, "SmartBootService"

    const-string v1, "setFirstTimeInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "sys.xp.first_time_init"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private static setWelcomeSoundPlayed(Z)V
    .locals 3
    .param p0, "played"    # Z

    .line 176
    const-string v0, "SmartBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWelcomeSoundPlayed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "sys.xp.welcome_sound_played"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private stopSurroundWelcomeSoundEffect(Z)V
    .locals 4
    .param p1, "needNotifyComplete"    # Z

    .line 1005
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1010
    :cond_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->BootSoundPlaying:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1011
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mWelcomeSoundManager:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->stop()V

    .line 1012
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->BootSoundPlaying:Z

    .line 1013
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootSndTiggered:Z

    .line 1014
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->setAndRecoveryFixedVolume(Z)V

    .line 1015
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1016
    if-eqz p1, :cond_2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->broadcastSoundComplete(IJ)V

    .line 1018
    :cond_2
    return-void

    .line 1006
    :cond_3
    :goto_0
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->BootSoundPlaying:Z

    .line 1007
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootSndTiggered:Z

    .line 1008
    return-void
.end method


# virtual methods
.method public addSmartBootEventListener(Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;

    .line 1129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1130
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    :cond_0
    monitor-exit v0

    .line 1134
    return-void

    .line 1133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1156
    const/4 v0, 0x0

    .line 1157
    .local v0, "value":I
    const-string v1, "*dump-SmartBootService"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    if-eqz p2, :cond_2

    .line 1159
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 1160
    aget-object v3, p2, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "--stopBootPlayer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_1
    const-string v5, "--prepareSelfCheckMedia"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_2
    const-string v5, "--playOtaMedia"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_3
    const-string v5, "--playSelfCheckMedia"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_4
    const-string v5, "--releaseBootPlayer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_5
    const-string v5, "--playWelcomeAnimation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_6
    const-string v5, "--prepareWelcomeAnimation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_7
    const-string v5, "--prepareOtaMedia"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_2

    :cond_0
    :goto_1
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 1192
    :pswitch_0
    const-string v3, "test release BootPlayer"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    if-eqz v3, :cond_1

    .line 1194
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    invoke-interface {v3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;->release()V

    goto/16 :goto_3

    .line 1186
    :pswitch_1
    const-string v3, "test stop BootPlayer"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1187
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    if-eqz v3, :cond_1

    .line 1188
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    invoke-interface {v3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;->stop()V

    goto/16 :goto_3

    .line 1182
    :pswitch_2
    const-string v3, "test playSelfCheckMedia"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->SELF_CHECK_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$KBV7i4lvj1DVoh0WA-9Pffxnmqw;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$KBV7i4lvj1DVoh0WA-9Pffxnmqw;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->builder(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->play()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 1184
    goto :goto_3

    .line 1178
    :pswitch_3
    const-string v3, "test prepareSelfCheckMedia"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1179
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->SELF_CHECK_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$KBV7i4lvj1DVoh0WA-9Pffxnmqw;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$KBV7i4lvj1DVoh0WA-9Pffxnmqw;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->builder(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->build()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 1180
    goto :goto_3

    .line 1174
    :pswitch_4
    const-string v3, "test playWelcomeAnimation"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1175
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->WELCOME_ANIMATION:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$SAGGr6_IJ9MCkBQiQ0mI8ERSOhI;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$SAGGr6_IJ9MCkBQiQ0mI8ERSOhI;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->builder(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->play()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 1176
    goto :goto_3

    .line 1170
    :pswitch_5
    const-string v3, "test prepareWelcomeAnimation"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1171
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->WELCOME_ANIMATION:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$SAGGr6_IJ9MCkBQiQ0mI8ERSOhI;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$SAGGr6_IJ9MCkBQiQ0mI8ERSOhI;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->builder(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->build()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 1172
    goto :goto_3

    .line 1166
    :pswitch_6
    const-string v3, "test playOtaMedia"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->OTA_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$efLhZwHReBneJuAAcOQcF51LVZA;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$efLhZwHReBneJuAAcOQcF51LVZA;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->builder(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->play()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 1168
    goto :goto_3

    .line 1162
    :pswitch_7
    const-string v3, "test prepareOtaMedia"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    sget-object v3, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->OTA_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$efLhZwHReBneJuAAcOQcF51LVZA;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$efLhZwHReBneJuAAcOQcF51LVZA;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->builder(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->build()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mBootPlayer:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 1164
    nop

    .line 1159
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1200
    .end local v2    # "i":I
    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c359d51 -> :sswitch_7
        -0x86da837 -> :sswitch_6
        0xb822b36 -> :sswitch_5
        0xcbc1a3a -> :sswitch_4
        0x1470061c -> :sswitch_3
        0x2426f31c -> :sswitch_2
        0x31b83b6f -> :sswitch_1
        0x4c7f3bb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public getBootSoundEffect()I
    .locals 3

    .line 1095
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "BootSoundEffect"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 1204
    const-string v0, "SmartBootService"

    return-object v0
.end method

.method protected handleDriverDoorOpen(Z)V
    .locals 5
    .param p1, "isOpen"    # Z

    .line 732
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDrvDoorOpen:Z

    if-eq v0, p1, :cond_3

    .line 733
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasPersonOnSeat()Z

    move-result v0

    .line 734
    .local v0, "hasPerson":Z
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeDoorOpen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    if-eqz p1, :cond_0

    const-string v3, "open"

    goto :goto_0

    .line 736
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close, hasPersonOnSeat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasWelcomeSoundPlayed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasWelcomeSoundPlayed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", hasIgOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasIgOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 734
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isWelcomeAutoShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 741
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleSHCWithCarDoorStateChanged(Z)V

    .line 744
    :cond_1
    if-nez p1, :cond_2

    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasIgOn:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasWelcomeSoundPlayed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 745
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->playWelcomeSoundEffect()V

    .line 746
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->playWelcomeAmbientEffect()V

    .line 747
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->setWelcomeSoundPlayed(Z)V

    .line 750
    :cond_2
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDrvDoorOpen:Z

    .line 752
    .end local v0    # "hasPerson":Z
    :cond_3
    return-void
.end method

.method protected handleSendoffProcess()V
    .locals 9

    .line 758
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDriverOnSeat()Z

    move-result v0

    .line 759
    .local v0, "dirverSeatStatus":Z
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isWelcomeMode()Z

    move-result v1

    .line 760
    .local v1, "welcomeMode":Z
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isPGear()Z

    move-result v2

    .line 761
    .local v2, "pGear":Z
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getCarSpeed()F

    move-result v3

    .line 762
    .local v3, "speed":F
    const-string v4, "SmartBootService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSendoffProcess isWelcomeMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isPGear:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " speed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " isDriverOnSeat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isDrvDoorOpen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDrvDoorOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isDriverBeltBuck:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDriverBeltBuck:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDrvDoorOpen:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDriverBeltBuck:Z

    if-nez v4, :cond_2

    .line 770
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMsmManager:Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v4}, Landroid/car/hardware/msm/CarMsmManager;->getDriverSeatHorizPosition()I

    move-result v4

    .line 771
    .local v4, "curSeat":I
    const/16 v5, 0x19

    if-le v4, v5, :cond_1

    .line 772
    const/16 v6, 0x2d

    if-le v4, v6, :cond_0

    add-int/lit8 v5, v4, -0x14

    nop

    .line 773
    .local v5, "adjustSeat":I
    :cond_0
    const-string v6, "SmartBootService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSendoffProcess start set horizpositon:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " curSeat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMsmManager:Landroid/car/hardware/msm/CarMsmManager;

    invoke-virtual {v6, v5}, Landroid/car/hardware/msm/CarMsmManager;->setDriverSeatHorizPosition(I)V

    .line 775
    .end local v5    # "adjustSeat":I
    goto :goto_0

    .line 776
    :cond_1
    const-string v5, "SmartBootService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSendoffProcess horz curSeat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", do not need adjust seat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .end local v4    # "curSeat":I
    :goto_0
    goto :goto_1

    .line 778
    :catch_0
    move-exception v4

    .line 779
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleException(Ljava/lang/Exception;)V

    .line 782
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method protected initCarListener()V
    .locals 2

    .line 427
    const-string v0, "SmartBootService"

    const-string v1, "initCarListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$4;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 462
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$5;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 485
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarPowerListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    .line 554
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$7;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 567
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$8;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    .line 587
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$9;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mXpRemindEventCallback:Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

    .line 618
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 619
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 620
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->addSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mXpRemindEventCallback:Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->addCarRemindManagerListener(Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;)V

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarPowerListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->addPowerStateListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V

    .line 624
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 5

    .line 385
    const-string/jumbo v0, "xp_icm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    .line 386
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    .line 387
    const-string/jumbo v0, "xp_atl"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    .line 388
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 389
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 390
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/power/CarPowerManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    .line 391
    const-string/jumbo v0, "xp_remind"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/remind/CarRemindManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarRemindManager:Landroid/car/xpeng/remind/CarRemindManager;

    .line 393
    invoke-static {}, Landroid/car/XpCarFeatures;->getVehicleRudderType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isRightRudder:Z

    .line 396
    :try_start_0
    const-string v0, "SmartBootService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarManagerInited, igStaus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v4}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasIgOn:Z

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getDisplayGearLevel()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasLastStatusGearP:Z

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDoorsState()[I

    move-result-object v0

    .line 401
    .local v0, "doorsState":[I
    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isRightRudder:Z

    aget v3, v0, v3

    if-ne v3, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->isDrvDoorOpen:Z

    .line 402
    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasIgOn:Z

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->setWelcomeSoundPlayed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v0    # "doorsState":[I
    goto :goto_3

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCarManagerInited failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method protected onInit()V
    .locals 2

    .line 370
    const-string v0, "SmartBootService"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioManager:Landroid/media/AudioManager;

    .line 373
    new-instance v0, Landroid/media/audioConfig/AudioConfig;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/audioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 374
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->initSound()V

    .line 375
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->registerBootHandler()V

    .line 376
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->registerReceiver()V

    .line 377
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->registerNewMediaStreamEvent()V

    .line 378
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 379
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mAudioStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->addAudioStatusListener(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$AudioStatusListener;)V

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->setAndRecoveryFixedVolume(Z)V

    .line 381
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->removeSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mXpRemindEventCallback:Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->removeCarRemindManagerListener(Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;)V

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {v0}, Landroid/car/hardware/power/CarPowerManager;->clearListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_0
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartBootService"

    const-string v2, "onRelease error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->unregisterReceiver()V

    .line 423
    return-void
.end method

.method public playWelcomeSoundEffect()V
    .locals 10

    .line 936
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->getBootSoundEffect()I

    move-result v0

    .line 937
    .local v0, "soundEffect":I
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->hasTestDriveMode()Z

    move-result v1

    .line 939
    .local v1, "hasTestDriveMode":Z
    const-string v2, "SmartBootService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playWelcomeSoundEffect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", hasTestDriveMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 944
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->playSurroundWelcomeSoundEffect(IZ)V

    .line 946
    new-instance v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;

    const-string v4, "SmartBootService"

    const-string/jumbo v5, "welcomeSound"

    .line 947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    const-string v8, "boot"

    const-string v9, "0"

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .local v2, "bi":Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->sendBiLog()V

    .line 949
    .end local v2    # "bi":Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;
    goto :goto_1

    .line 942
    :cond_1
    :goto_0
    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->broadcastSoundComplete(IJ)V

    .line 951
    :goto_1
    return-void
.end method

.method public removeSmartBootEventListener(Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService$SmartBootEventListener;

    .line 1137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1138
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1141
    :cond_0
    monitor-exit v0

    .line 1142
    return-void

    .line 1141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBootSoundEffect(I)V
    .locals 4
    .param p1, "type"    # I

    .line 1099
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "BootSoundEffect"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1100
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    if-eqz v0, :cond_1

    .line 1102
    if-nez p1, :cond_0

    .line 1103
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->setBootSoundOnOff(Z)I

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1105
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->setBootSoundOnOff(Z)I

    .line 1106
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mSoundResourceService:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->setBootSoundResource(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    :goto_0
    goto :goto_2

    .line 1108
    :goto_1
    nop

    .line 1109
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBootSoundEffect error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void
.end method

.method public stop(I)V
    .locals 1
    .param p1, "streamID"    # I

    .line 1088
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 1090
    const/4 p1, -0x1

    .line 1092
    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 265
    const-string v0, "SmartBootService"

    const-string v1, "unregisterReceiver."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->mReceiver:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->unRegisterListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;)V

    .line 267
    return-void
.end method
