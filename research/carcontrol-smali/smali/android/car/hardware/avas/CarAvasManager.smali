.class public final Landroid/car/hardware/avas/CarAvasManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarAvasManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;,
        Landroid/car/hardware/avas/CarAvasManager$PropertyId;
    }
.end annotation


# static fields
.field public static final AVAS_SOUND_MODE_1:I = 0x1

.field public static final AVAS_SOUND_MODE_2:I = 0x2

.field public static final AVAS_SOUND_MODE_3:I = 0x3

.field public static final AVAS_SOUND_MODE_4:I = 0x4

.field public static final AVAS_SOUND_MODE_5:I = 0x5

.field public static final AVAS_SOUND_TYPE_1:I = 0x1

.field public static final AVAS_SOUND_TYPE_2:I = 0x2

.field public static final AVAS_SOUND_TYPE_3:I = 0x3

.field public static final AVAS_SOUND_TYPE_4:I = 0x4

.field public static final AVAS_SOUND_TYPE_5:I = 0x5

.field public static final AVAS_SWITCH_CLOSE:I = 0x0

.field public static final AVAS_SWITCH_OPEN:I = 0x1

.field private static final DBG:Z = false

.field public static final ID_AVAS_ACCHRGIN_SETCMD:I = 0x21403204

.field public static final ID_AVAS_ACIVE_ST:I = 0x21403210

.field public static final ID_AVAS_CARSLEEP_SETCMD:I = 0x21403203

.field public static final ID_AVAS_CHARGE_SOUND_SW:I = 0x21403215

.field public static final ID_AVAS_CHARGE_SOUND_VOL:I = 0x21403216

.field public static final ID_AVAS_DCCHRGIN_SETCMD:I = 0x21403205

.field public static final ID_AVAS_DISCONNECTCHRG_SETCMD:I = 0x21403206

.field public static final ID_AVAS_EXTERNALSOUNDFILE_CMD:I = 0x21403209

.field public static final ID_AVAS_EXTERNALSOUNDMODE_CMD:I = 0x2140320d

.field public static final ID_AVAS_EXTVOLADJUST_CMD:I = 0x2140320b

.field public static final ID_AVAS_FAULT:I = 0x2140320f

.field public static final ID_AVAS_FRIENDLY_SAYHICFG:I = 0x2140320a

.field public static final ID_AVAS_FULLCHRGWAKEUPSETCMD:I = 0x21403202

.field public static final ID_AVAS_LOCKSOUND_CFG:I = 0x21403213

.field public static final ID_AVAS_LOCK_UNLOCK_SOUND_SW:I = 0x21403211

.field public static final ID_AVAS_LOWSPDVOLADJUST_CFG:I = 0x2140320c

.field public static final ID_AVAS_LOWSPEEDSOUND_CFG:I = 0x21403208

.field public static final ID_AVAS_PHOTOSOUND_SW:I = 0x2140320e

.field public static final ID_AVAS_SOC_SOUND_SW:I = 0x21403217

.field public static final ID_AVAS_SOC_SOUND_VOL:I = 0x21403218

.field public static final ID_AVAS_SOC_SOUND_VOL_CMD:I = 0x21403219

.field public static final ID_AVAS_SWSTCMD:I = 0x21403207

.field public static final ID_AVAS_UNLOCKSOUND_CFG:I = 0x21403212

.field public static final ID_AVAS_UNLOCKSOUND_VOL:I = 0x21403214

.field public static final ID_AVAS_UNLOCK_SOUND_SW:I = 0x21401dda

.field public static final ID_AVAS_WAKEUP_WAITSETCMD:I = 0x21403201

.field public static final ID_BCM_MCU_LOCK_AUDIO_TRANS:I = 0x2110544a

.field public static final ID_BCM_MCU_UNLOCK_AUDIO_TRANS:I = 0x21105449

.field public static final MCU_AVAS_STATUS_ACIVE:I = 0x1

.field public static final MCU_AVAS_STATUS_INACIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarAvasManager"


# instance fields
.field private final mAvasPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    const/4 p3, 0x0

    const-string p4, "CarAvasManager"

    .line 473
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 425
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x19

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21403201

    .line 426
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21403202

    .line 427
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21403203

    .line 428
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21403204

    .line 429
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21403205

    .line 430
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21403206

    .line 431
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21403207

    .line 432
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x21403208

    .line 433
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x21403209

    .line 434
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x2140320a

    .line 435
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x2140320b

    .line 436
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x2140320c

    .line 437
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x2140320d

    .line 438
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x2140320e

    .line 439
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x2140320f

    .line 440
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21403210

    .line 441
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21403211

    .line 442
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21403212

    .line 443
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21403213

    .line 444
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x21403215

    .line 445
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x21105449

    .line 446
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x2110544a

    .line 447
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x21403217

    .line 448
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x21403219

    .line 449
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x21401dda

    .line 450
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    .line 425
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/avas/CarAvasManager;->mAvasPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_avas"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAvasAcChargingSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 609
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasAcChargingSoundState()I

    move-result v0

    return v0
.end method

.method public getAvasDcChargingSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 641
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasDcChargingSoundState()I

    move-result v0

    return v0
.end method

.method public getAvasDisconnectChargingSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 673
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasDisconnectChargingSoundState()I

    move-result v0

    return v0
.end method

.method public getAvasExternalVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 824
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasExternalVolume()I

    move-result v0

    return v0
.end method

.method public getAvasFaultStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 929
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasFaultStatus()I

    move-result v0

    return v0
.end method

.method public getAvasFriendlySayHiSound()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 793
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasFriendlySayHiSound()I

    move-result v0

    return v0
.end method

.method public getAvasLowSpeedSound()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasLowSpeedSoundEffect()I

    move-result v0

    return v0
.end method

.method public getAvasLowSpeedSoundSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasLowSpeedSoundSwitch()I

    move-result v0

    return v0
.end method

.method public getAvasPhotoSoundSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasPhotoSoundSwitch()I

    move-result v0

    return v0
.end method

.method public getAvasSleepSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 577
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasSleepSoundState()I

    move-result v0

    return v0
.end method

.method public getAvasWakeWaitFullChargeSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasFullChargeWaitForWakeUpSoundState()I

    move-result v0

    return v0
.end method

.method public getAvasWakeWaitSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 529
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasWaitForWakeUpSoundState()I

    move-result v0

    return v0
.end method

.method public getChargeSoundSpeedVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasChargeSoundSpeedVolume()I

    move-result v0

    return v0
.end method

.method public getChargeSoundSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasChargeSoundSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getLockSoundEffect()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1127
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasLockSoundEffect()I

    move-result v0

    return v0
.end method

.method public getLockUnlockSoundSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 963
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasLockUnlockSoundSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getLowSpeedVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasLowSpeedVolume()I

    move-result v0

    return v0
.end method

.method public getMCULockAudio()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2110544a

    const/4 v1, 0x0

    .line 1253
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/avas/CarAvasManager;->getStringProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMCUUnlockAudio()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21105449

    const/4 v1, 0x0

    .line 1273
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/avas/CarAvasManager;->getStringProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcuAvasRunnningStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasMcuAvasRunnningStatus()I

    move-result v0

    return v0
.end method

.method protected getPropertyIds()Landroid/util/ArraySet;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mAvasPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSocSoundSpeedVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1191
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasSocSoundSpeedVolume()I

    move-result v0

    return v0
.end method

.method public getSocSoundSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1059
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasSocSoundSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getUnlockSoundEffect()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1093
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasUnlockSoundEffect()I

    move-result v0

    return v0
.end method

.method public getUnlockSoundSpeedVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasUnlockSoundSpeedVolume()I

    move-result v0

    return v0
.end method

.method public getUnlockSoundSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 995
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAvasUnlockSoundSwitchStatus()I

    move-result v0

    return v0
.end method

.method public setAvasAcChargingSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 625
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasAcChargingSoundSwitch(I)V

    return-void
.end method

.method public setAvasDcChargingSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasDcChargingSoundSwitch(I)V

    return-void
.end method

.method public setAvasDisconnectChargingSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 689
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasDisconnectChargingSoundSwitch(I)V

    return-void
.end method

.method public setAvasExternalSound(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 776
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasExternalSoundCmd(I)V

    return-void
.end method

.method public setAvasExternalVolume(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 838
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasExternalVolume(I)V

    return-void
.end method

.method public setAvasFriendlySayHiSound(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 810
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasFriendlySayHiSound(I)V

    return-void
.end method

.method public setAvasLowSpeedSound(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 759
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasLowSpeedSoundEffect(I)V

    return-void
.end method

.method public setAvasLowSpeedSoundSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 721
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasLowSpeedSoundSwitch(I)V

    return-void
.end method

.method public setAvasPhotoSoundSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasPhotoSoundSwitch(I)V

    return-void
.end method

.method public setAvasSleepSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasSleepSoundSwitch(I)V

    return-void
.end method

.method public setAvasWakeWaitFullChargeSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasFullChargeWaitForWakeUpSoundSwitch(I)V

    return-void
.end method

.method public setAvasWakeWaitSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasWaitForWakeUpSoundSwitch(I)V

    return-void
.end method

.method public setChargeSoundSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasChargeSoundSwitchStatus(I)V

    return-void
.end method

.method public setExternalSoundModeCmd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 885
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasExternalSoundModeCmd(I)V

    return-void
.end method

.method public setLockSoundEffect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1110
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasLockSoundEffect(I)V

    return-void
.end method

.method public setLockUnlockSoundSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 946
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasLockUnlockSoundSwitchStatus(I)V

    return-void
.end method

.method public setLowSpeedVolume(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 866
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasLowSpeedVolume(I)V

    return-void
.end method

.method public setMCULockAudio(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2110544a

    const/4 v1, 0x0

    .line 1233
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/avas/CarAvasManager;->setStringProperty(IILjava/lang/String;)V

    return-void
.end method

.method public setMCUUnlockAudio(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21105449

    const/4 v1, 0x0

    .line 1219
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/avas/CarAvasManager;->setStringProperty(IILjava/lang/String;)V

    return-void
.end method

.method public setSocSoundSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasSocSoundSwitchStatus(I)V

    return-void
.end method

.method public setSocSoundVolumeToMcu(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasSocSoundVolumeToMcu(I)V

    return-void
.end method

.method public setUnlockSoundEffect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1076
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasUnlockSoundEffect(I)V

    return-void
.end method

.method public setUnlockSoundSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 979
    iget-object v0, p0, Landroid/car/hardware/avas/CarAvasManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAvasUnlockSoundSwitchStatus(I)V

    return-void
.end method
