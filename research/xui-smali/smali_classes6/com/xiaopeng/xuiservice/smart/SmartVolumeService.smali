.class public Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartVolumeService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final ACTION_VOLUME_CHANGED:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static final AVAS_STREAM_ENABLE:Ljava/lang/String; = "avas_speaker"

.field private static AccessibilityVolDownInRGear:Z = false

.field private static final BCM_DOOR_CLOSE:I = 0x0

.field private static final BCM_DOOR_OPEN:I = 0x1

.field private static final CHECK_PASSENGER_DELIEVER_TIME:I = 0x1388

.field private static final DBG:Z = true

.field private static DISABLE_REASON_GEAR:I = 0x0

.field private static DISABLE_REASON_IG:I = 0x0

.field private static final EXTRA_VOLCHANGE_PACKAGENAME:Ljava/lang/String; = "android.media.vol_change.PACKAGE_NAME"

.field private static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field private static final NET_ECALL_ENABLE:Ljava/lang/String; = "XpNetECallEnable"

.field private static final PROP_VOLUME_MEDIA:Ljava/lang/String; = "persist.audio.volume.media"

.field private static final PROP_VOLUME_NAVIGATION:Ljava/lang/String; = "persist.audio.volume.navi"

.field private static final SPEED_VOLUME_SOFT:I = 0x3

.field private static final SPEED_VOLUME_STANDARD:I = 0x1

.field private static final SPEED_VOLUME_SURGE:I = 0x2

.field private static final STREAM_VOLUME_MIN_LEVEL:I = 0x1

.field private static SpeedMusicVolumeSetted:I = 0x0

.field private static SpeedVolumeEnabled:Z = false

.field private static SpeedVolumeMode:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SmartVolumeService"

.field private static final TEMPVOLCHANGE_FLAG_AEB:I = 0x80

.field private static final TEMPVOLCHANGE_FLAG_DOOR:I = 0x2

.field private static final TEMPVOLCHANGE_FLAG_GEAR:I = 0x1

.field private static final VOLUME_DOWN:I = 0x2

.field private static final VOLUME_MIN_LEVEL:I = 0x1

.field private static final VOLUME_NONE:I = 0x0

.field private static final VOLUME_UP:I = 0x1

.field private static dirverDoorOpened:Z

.field private static hasAmp:Z

.field private static final mVolumeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVolumeSoftMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVolumeStandardMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVolumeSurgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static muteByScu:Z

.field private static passengerDoorOpened:Z

.field private static passengerOccupancy:Z


# instance fields
.field private volatile adjudgeOnlyDriverDoor:Z

.field private curAudioDriverMode:I

.field private volatile isDoorOpen:Z

.field private isRightRudder:Z

.field private mAudioConfig:Landroid/media/audioConfig/AudioConfig;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCarAmpEventCallback:Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;

.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

.field private mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

.field private mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

.field private mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

.field private mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private mCarVcuSpeedEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mOriginalLevel:I

.field private mOriginalNavLevel:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mXpDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

.field private mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedVolumeEnabled:Z

    .line 63
    const/4 v1, 0x1

    sput v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedVolumeMode:I

    .line 64
    const/4 v2, -0x1

    sput v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedMusicVolumeSetted:I

    .line 66
    const-string v2, "AMP"

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->hasAmp:Z

    .line 78
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$1;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$1;-><init>()V

    sput-object v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mVolumeStandardMap:Ljava/util/Map;

    .line 89
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$2;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$2;-><init>()V

    sput-object v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mVolumeSoftMap:Ljava/util/Map;

    .line 100
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$3;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$3;-><init>()V

    sput-object v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mVolumeSurgeMap:Ljava/util/Map;

    .line 111
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$4;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$4;-><init>()V

    sput-object v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mVolumeMap:Ljava/util/Map;

    .line 135
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->muteByScu:Z

    .line 136
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->dirverDoorOpened:Z

    .line 137
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerDoorOpened:Z

    .line 138
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerOccupancy:Z

    .line 594
    const-string v2, "persist.sys.rgear.accessibility.voldown"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->AccessibilityVolDownInRGear:Z

    .line 626
    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->DISABLE_REASON_GEAR:I

    .line 627
    sput v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->DISABLE_REASON_IG:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mOriginalLevel:I

    .line 55
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mOriginalNavLevel:I

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->isDoorOpen:Z

    .line 57
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->adjudgeOnlyDriverDoor:Z

    .line 117
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 140
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->curAudioDriverMode:I

    .line 142
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->isRightRudder:Z

    .line 146
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    .line 149
    const-string v3, "persist.audio.volume.media"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mOriginalLevel:I

    .line 150
    const-string v3, "persist.audio.volume.navi"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mOriginalNavLevel:I

    .line 151
    const-string v0, "SmartVolumeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartVolumeService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mOriginalLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mOriginalNavLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Landroid/media/audioConfig/AudioConfig;

    invoke-direct {v0, p1}, Landroid/media/audioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 153
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isSpeedVolumeEnabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedVolumeEnabled:Z

    .line 154
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "SpeedVolumeMode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedVolumeMode:I

    .line 156
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->registerReceiver()V

    .line 158
    invoke-static {}, Landroid/car/XpCarFeatures;->getVehicleRudderType()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->isRightRudder:Z

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$1;

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mVolumeStandardMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mVolumeSurgeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->doDisableAvas(II)V

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->muteByScu:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 40
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->muteByScu:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handlePassengerOccupancy(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleECallMute(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/car/hardware/mcu/CarMcuManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;Landroid/car/hardware/mcu/CarMcuManager;)Landroid/car/hardware/mcu/CarMcuManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .param p1, "x1"    # Landroid/car/hardware/mcu/CarMcuManager;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/car/diagnostic/XpDiagnosticManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;Landroid/car/diagnostic/XpDiagnosticManager;)Landroid/car/diagnostic/XpDiagnosticManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .param p1, "x1"    # Landroid/car/diagnostic/XpDiagnosticManager;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    return-object p1
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerOccupancy:Z

    return v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerDoorOpened:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .param p1, "x1"    # Z

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->notifyPassengerStatus(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    .line 40
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mOriginalLevel:I

    return v0
.end method

.method static synthetic access$1902(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mOriginalLevel:I

    return p1
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mVolumeSoftMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    .line 40
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mOriginalNavLevel:I

    return v0
.end method

.method static synthetic access$2002(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mOriginalNavLevel:I

    return p1
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleNetECallMute(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleCarGearLevelChanged(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .param p1, "x1"    # F

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleSpeedVolumeChanged(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/car/hardware/bcm/CarBcmManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .param p1, "x1"    # [I

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleCarDoorChanged([I)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 40
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->DISABLE_REASON_IG:I

    return v0
.end method

.method private broadcastPassengerStatus(Z)V
    .locals 2
    .param p1, "onSeat"    # Z

    .line 472
    const-string v0, "SmartVolumeService"

    const-string v1, "broadcastPassengerStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xui.passenger.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 475
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 477
    return-void
.end method

.method private doDisableAvas(II)V
    .locals 6
    .param p1, "reason"    # I
    .param p2, "value"    # I

    .line 629
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "avas_speaker"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 631
    .local v0, "isAvasSpeakerEnable":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 632
    sget v3, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->DISABLE_REASON_GEAR:I

    if-ne p1, v3, :cond_1

    .line 633
    const-string v3, "SmartVolumeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**Shutoff avas speaker, because entered gear "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0030

    invoke-static {v3, v4, v1}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_1

    .line 635
    :cond_1
    sget v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->DISABLE_REASON_IG:I

    if-ne p1, v1, :cond_2

    .line 636
    const-string v1, "SmartVolumeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**Shutoff avas speaker, because ig change : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_2
    :goto_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "avas_speaker"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 640
    :cond_3
    return-void
.end method

.method private doVolumeProcess(III)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flag"    # I

    .line 643
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    .line 655
    goto :goto_0

    .line 649
    :pswitch_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lt v1, v0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMainDriverOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    .line 650
    invoke-virtual {v1, p1}, Landroid/media/audioConfig/AudioConfig;->getBanVolumeChangeMode(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 651
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p3, v2}, Landroid/media/AudioManager;->temporaryChangeVolumeDown(IIIZ)V

    goto :goto_0

    .line 646
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1, v0, p3, v0}, Landroid/media/AudioManager;->temporaryChangeVolumeDown(IIIZ)V

    .line 647
    goto :goto_0

    .line 658
    :cond_0
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t adjust volume because the stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is mute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;
    .locals 1

    .line 167
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$InstanceHolder;->access$300()Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    move-result-object v0

    return-object v0
.end method

.method private getSpeedLevel(F)I
    .locals 2
    .param p1, "speed"    # F

    .line 805
    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    const/high16 v1, 0x42480000    # 50.0f

    if-gtz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 806
    const/4 v0, 0x1

    return v0

    .line 807
    :cond_0
    cmpg-float v0, v1, p1

    const/high16 v1, 0x42700000    # 60.0f

    if-gtz v0, :cond_1

    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 808
    const/4 v0, 0x2

    return v0

    .line 809
    :cond_1
    cmpg-float v0, v1, p1

    const/high16 v1, 0x428c0000    # 70.0f

    if-gtz v0, :cond_2

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 810
    const/4 v0, 0x3

    return v0

    .line 811
    :cond_2
    cmpg-float v0, v1, p1

    const/high16 v1, 0x42a00000    # 80.0f

    if-gtz v0, :cond_3

    cmpg-float v0, p1, v1

    if-gez v0, :cond_3

    .line 812
    const/4 v0, 0x4

    return v0

    .line 813
    :cond_3
    cmpg-float v0, v1, p1

    const/high16 v1, 0x42b40000    # 90.0f

    if-gtz v0, :cond_4

    cmpg-float v0, p1, v1

    if-gez v0, :cond_4

    .line 814
    const/4 v0, 0x5

    return v0

    .line 815
    :cond_4
    cmpg-float v0, v1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    if-gtz v0, :cond_5

    cmpg-float v0, p1, v1

    if-gez v0, :cond_5

    .line 816
    const/4 v0, 0x6

    return v0

    .line 817
    :cond_5
    cmpg-float v0, v1, p1

    const/high16 v1, 0x42dc0000    # 110.0f

    if-gtz v0, :cond_6

    cmpg-float v0, p1, v1

    if-gez v0, :cond_6

    .line 818
    const/4 v0, 0x7

    return v0

    .line 819
    :cond_6
    cmpg-float v0, v1, p1

    if-gtz v0, :cond_7

    const/high16 v0, 0x42f00000    # 120.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    .line 820
    const/16 v0, 0x8

    return v0

    .line 822
    :cond_7
    const/16 v0, 0x9

    return v0
.end method

.method private getVolDownDoorState([I)Z
    .locals 4
    .param p1, "doorState"    # [I

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "volDownDoorOpen":Z
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->adjudgeOnlyDriverDoor:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 553
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->isRightRudder:Z

    if-eqz v1, :cond_1

    .line 554
    aget v1, p1, v3

    if-ne v1, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    move v0, v2

    goto :goto_1

    .line 556
    :cond_1
    aget v1, p1, v2

    if-ne v1, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    move v0, v2

    goto :goto_1

    .line 559
    :cond_3
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 560
    aget v2, p1, v1

    if-ne v2, v3, :cond_4

    const/4 v0, 0x1

    .line 559
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 563
    .end local v2    # "i":I
    :cond_5
    :goto_1
    return v0
.end method

.method private handleBootCompleted()V
    .locals 2

    .line 827
    const-string v0, "SmartVolumeService"

    const-string v1, "handleBootCompleted"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    invoke-virtual {v0}, Landroid/media/audioConfig/AudioConfig;->getMainDriverMode()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->curAudioDriverMode:I

    .line 830
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mOriginalLevel:I

    .line 831
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mOriginalNavLevel:I

    .line 832
    return-void
.end method

.method private handleCarDoorChanged([I)V
    .locals 4
    .param p1, "doorState"    # [I

    .line 525
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 526
    const-string v1, "SmartVolumeService"

    const-string v2, "handleCarDoorChanged not in ig on status!!"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    return-void

    .line 531
    :cond_0
    goto :goto_0

    .line 529
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartVolumeService"

    const-string v3, "handleCarDoorChanged error"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getVolDownDoorState([I)Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleVolDownByDoorStateChanged(ZZ)V

    .line 535
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 536
    aget v0, p1, v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handlePassengerDoorState(I)V

    .line 538
    :cond_1
    return-void
.end method

.method private handleCarGearLevelChanged(IZ)V
    .locals 9
    .param p1, "level"    # I
    .param p2, "forceChange"    # Z

    .line 597
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCarGearLevelChanged() gear = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 600
    .local v3, "isRGear":Z
    :goto_0
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    .line 601
    .local v4, "isPGear":Z
    :goto_1
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 602
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    invoke-virtual {v5, v1}, Landroid/media/audioConfig/AudioConfig;->doZenVolumeProcess(Z)V

    .line 604
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getVolumeDownInReverseMode()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p2, :cond_9

    .line 605
    :cond_3
    if-eqz v3, :cond_4

    const-string v5, "down with R gear"

    goto :goto_2

    :cond_4
    const-string v5, "up with P/D/N gear"

    .line 606
    .local v5, "log_str":Ljava/lang/String;
    :goto_2
    const-string v6, "SmartVolumeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Volume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    move v6, v3

    .line 609
    .local v6, "volDown":Z
    if-eqz p2, :cond_6

    .line 610
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getVolumeDownInReverseMode()Z

    move-result v7

    if-eqz v7, :cond_5

    move v1, v2

    nop

    :cond_5
    move v6, v1

    .line 612
    :cond_6
    if-eqz v6, :cond_7

    const/4 v1, 0x2

    goto :goto_3

    :cond_7
    move v1, v2

    .line 614
    .local v1, "direction":I
    :goto_3
    sget-boolean v7, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->AccessibilityVolDownInRGear:Z

    if-eqz v7, :cond_8

    .line 615
    const/16 v7, 0xa

    invoke-direct {p0, v7, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->doVolumeProcess(III)V

    .line 617
    :cond_8
    const/16 v7, 0x9

    invoke-direct {p0, v7, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->doVolumeProcess(III)V

    .line 618
    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->doVolumeProcess(III)V

    .line 620
    .end local v1    # "direction":I
    .end local v5    # "log_str":Ljava/lang/String;
    .end local v6    # "volDown":Z
    :cond_9
    if-nez v4, :cond_a

    .line 621
    const-string v0, "SmartVolumeService"

    const-string v1, "**check avas speaker status while out of P Gear"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->DISABLE_REASON_GEAR:I

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->doDisableAvas(II)V

    .line 624
    :cond_a
    return-void
.end method

.method private handleECallMute(I)V
    .locals 4
    .param p1, "muteflag"    # I

    .line 776
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isEcallEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleECallMute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 779
    .local v0, "mute":Z
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 780
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v1, v3}, Landroid/media/AudioManager;->setFixedVolume(ZII)Z

    .line 783
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v0, v1, v3}, Landroid/media/AudioManager;->setFixedVolume(ZII)Z

    .line 784
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xa

    invoke-virtual {v2, v0, v1, v3}, Landroid/media/AudioManager;->setFixedVolume(ZII)Z

    .line 785
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0x9

    invoke-virtual {v2, v0, v1, v3}, Landroid/media/AudioManager;->setFixedVolume(ZII)Z

    .line 788
    .end local v0    # "mute":Z
    :cond_1
    return-void
.end method

.method private handleNetECallMute(I)V
    .locals 4
    .param p1, "muteflag"    # I

    .line 791
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isEcallEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 792
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetECallMute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 794
    .local v0, "mute":Z
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 795
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setNetEcallEnable(Z)V

    .line 796
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v1, v3}, Landroid/media/AudioManager;->setFixedVolume(ZII)Z

    .line 799
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0x9

    invoke-virtual {v2, v0, v1, v3}, Landroid/media/AudioManager;->setFixedVolume(ZII)Z

    .line 802
    .end local v0    # "mute":Z
    :cond_1
    return-void
.end method

.method private handlePassengerDoorState(I)V
    .locals 5
    .param p1, "state"    # I

    .line 504
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePassengerOccupancy  doorState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|Occupancy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerOccupancy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 506
    .local v1, "stateOpen":Z
    :goto_0
    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerDoorOpened:Z

    if-eq v2, v1, :cond_2

    .line 507
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerDoorOpened:Z

    .line 508
    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerDoorOpened:Z

    if-nez v2, :cond_2

    .line 509
    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerOccupancy:Z

    if-eqz v2, :cond_1

    .line 510
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->notifyPassengerStatus(Z)V

    goto :goto_1

    .line 512
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$16;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$16;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 521
    :cond_2
    :goto_1
    return-void
.end method

.method private handlePassengerOccupancy(I)V
    .locals 5
    .param p1, "state"    # I

    .line 481
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePassengerOccupancy  state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|DoorOpened:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerDoorOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 483
    .local v0, "psngerStatus":Z
    :goto_0
    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerOccupancy:Z

    if-eq v1, v0, :cond_2

    .line 484
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerOccupancy:Z

    .line 485
    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->passengerOccupancy:Z

    const-wide/16 v2, 0x1388

    if-nez v1, :cond_1

    .line 486
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$14;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$14;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 493
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$15;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$15;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 501
    :cond_2
    :goto_1
    return-void
.end method

.method private handleSpeedVolumeChanged(F)V
    .locals 6
    .param p1, "speed"    # F

    .line 762
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedVolumeEnabled:Z

    if-nez v0, :cond_0

    .line 763
    return-void

    .line 765
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getSpeedLevel(F)I

    move-result v0

    .line 766
    .local v0, "level":I
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mVolumeMap:Ljava/util/Map;

    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedVolumeMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 767
    .local v1, "vMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 768
    .local v2, "volume":I
    sget v3, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedMusicVolumeSetted:I

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_1

    .line 769
    const-string v3, "SmartVolumeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSpeedVolumeChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " volume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 771
    sput v2, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedMusicVolumeSetted:I

    .line 773
    :cond_1
    return-void
.end method

.method private handleVolDownByDoorStateChanged(ZZ)V
    .locals 5
    .param p1, "isOpen"    # Z
    .param p2, "forceChange"    # Z

    .line 572
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleVolDownByDoorStateChanged() isOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->isDoorOpen:Z

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    .line 575
    const-string v0, "SmartVolumeService"

    const-string v1, "handleVolDownByDoorStateChanged door is already opened"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void

    .line 578
    :cond_0
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->isDoorOpen:Z

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 581
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    invoke-virtual {v0, v1}, Landroid/media/audioConfig/AudioConfig;->doZenVolumeProcess(Z)V

    .line 583
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getVolumeDownWithDoorOpen()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_7

    .line 584
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->isDoorOpen:Z

    if-eqz v0, :cond_3

    const-string v0, "down with door open"

    goto :goto_0

    :cond_3
    const-string v0, "up with door close"

    .line 585
    .local v0, "log_str":Ljava/lang/String;
    :goto_0
    const-string v2, "SmartVolumeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    move v2, p1

    .line 587
    .local v2, "volDown":Z
    const/4 v3, 0x1

    if-eqz p2, :cond_5

    .line 588
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getVolumeDownWithDoorOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    move v1, v3

    nop

    :cond_4
    move v2, v1

    .line 590
    :cond_5
    const/4 v1, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_6

    move v3, v4

    nop

    :cond_6
    invoke-direct {p0, v1, v3, v4}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->doVolumeProcess(III)V

    .line 592
    .end local v0    # "log_str":Ljava/lang/String;
    .end local v2    # "volDown":Z
    :cond_7
    return-void
.end method

.method private initCarProp()V
    .locals 3

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getPsnOnSeat()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handlePassengerOccupancy(I)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDoorsState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleCarDoorChanged([I)V

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getDisplayGearLevel()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleCarGearLevelChanged(IZ)V

    .line 445
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isEcallEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_3

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->getEcallMuteRequest()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleECallMute(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_3
    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartVolumeService"

    const-string v2, "initCarProp error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private isLightDancing()Z
    .locals 2

    .line 567
    const-string v0, "persist.sys.light.dancing"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private needSetDriverModeAutomatic()Z
    .locals 3

    .line 454
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_switch_main_driver_mode"

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

.method private notifyPassengerStatus(Z)V
    .locals 2
    .param p1, "onSeat"    # Z

    .line 458
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->broadcastPassengerStatus(Z)V

    .line 459
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->needSetDriverModeAutomatic()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    invoke-static {}, Landroid/media/audioConfig/AudioConfig;->isHighConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    invoke-virtual {v1}, Landroid/media/audioConfig/AudioConfig;->getMainDriverMode()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->curAudioDriverMode:I

    .line 462
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    invoke-virtual {v1, v0}, Landroid/media/audioConfig/AudioConfig;->setMainDriverMode(I)V

    goto :goto_0

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    invoke-virtual {v1}, Landroid/media/audioConfig/AudioConfig;->getMainDriverMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mAudioConfig:Landroid/media/audioConfig/AudioConfig;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->curAudioDriverMode:I

    invoke-virtual {v0, v1}, Landroid/media/audioConfig/AudioConfig;->setMainDriverMode(I)V

    .line 469
    :cond_1
    :goto_0
    return-void
.end method

.method private registerReceiver()V
    .locals 6

    .line 843
    const-string v0, "SmartVolumeService"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 845
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$17;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$17;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 867
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 868
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 871
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 872
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleBootCompleted()V

    goto :goto_0

    .line 874
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v1, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 879
    .end local v1    # "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isEcallEnable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 880
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "XpNetECallEnable"

    .line 881
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$18;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$18;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;Landroid/os/Handler;)V

    .line 880
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 892
    :cond_2
    return-void
.end method

.method private updateVolumeDownInReverseMode()V
    .locals 2

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getStallState()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleCarGearLevelChanged(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private updateVolumeDownWithDoorOpen()V
    .locals 3

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDoorsState()[I

    move-result-object v0

    .line 665
    .local v0, "doorsState":[I
    if-eqz v0, :cond_0

    .line 666
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getVolDownDoorState([I)Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleVolDownByDoorStateChanged(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    .end local v0    # "doorsState":[I
    :cond_0
    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 671
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableCarSpeedVolume(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 731
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCarSpeedVolume() enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSpeedVolumeEnabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 734
    sput-boolean p1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedVolumeEnabled:Z

    .line 735
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedVolumeEnabled:Z

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarVcuSpeedEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->addVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    goto :goto_0

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarVcuSpeedEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->removeVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 739
    :goto_0
    if-nez p1, :cond_1

    .line 740
    const/4 v0, -0x1

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedMusicVolumeSetted:I

    .line 741
    :cond_1
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 163
    const-string v0, "SmartVolumeService"

    return-object v0
.end method

.method public getVolumeDownInReverseMode()Z
    .locals 3

    .line 709
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isVolumeDownInReverseModeSet"

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

.method public getVolumeDownWithDoorOpen()Z
    .locals 3

    .line 688
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isVolumeDownWithDoorOpenSet"

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

.method protected initCarListener()V
    .locals 1

    .line 172
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$5;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 185
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$6;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarVcuSpeedEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 199
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 236
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$8;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 288
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$9;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    .line 323
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$10;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$10;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    .line 336
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$11;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$11;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    .line 349
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$12;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarAmpEventCallback:Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;

    .line 380
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$13;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$13;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mXpDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->addTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->addScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->addSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarAmpEventCallback:Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->addAmpManagerListener(Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;)V

    .line 417
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedVolumeEnabled:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarVcuSpeedEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->addVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->initCarProp()V

    .line 420
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 424
    const-string v0, "SmartVolumeService"

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 426
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 427
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    .line 428
    const-string/jumbo v0, "xp_srs"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/srs/CarSrsManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    .line 429
    const-string/jumbo v0, "xp_tbox"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    .line 430
    const-string/jumbo v0, "xp_diagnostic"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/diagnostic/XpDiagnosticManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    .line 431
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 901
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 836
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##onReceive,intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->handleBootCompleted()V

    .line 840
    :cond_0
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 906
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 907
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 908
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->removeScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V

    .line 909
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mCarVcuSpeedEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->removeVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 911
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->unregisterReceiver()V

    .line 912
    return-void
.end method

.method public setSpeedVolumeMode(I)V
    .locals 3
    .param p1, "type"    # I

    .line 751
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeedVolumeMode() type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 757
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SpeedVolumeMode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 758
    sput p1, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->SpeedVolumeMode:I

    .line 759
    return-void

    .line 754
    :cond_1
    :goto_0
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeedVolumeMode() type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of range!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method public setVolumeDownInReverseMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 719
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isVolumeDownInReverseModeSet"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 720
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->updateVolumeDownInReverseMode()V

    .line 721
    return-void
.end method

.method public setVolumeDownWithDoorOpen(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 698
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isVolumeDownWithDoorOpenSet"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 699
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->updateVolumeDownWithDoorOpen()V

    .line 700
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 895
    const-string v0, "SmartVolumeService"

    const-string v1, "unregisterReceiver.."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 897
    return-void
.end method
