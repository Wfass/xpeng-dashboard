.class public final Landroid/car/hardware/eps/CarEpsManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarEpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;,
        Landroid/car/hardware/eps/CarEpsManager$PropertyId;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final EPS_ANGLE_INVALID:I = 0x0

.field public static final EPS_ANGLE_VALID:I = 0x1

.field public static final EPS_POWER_ASSISTED_SOFT:I = 0x1

.field public static final EPS_POWER_ASSISTED_SPORT:I = 0x2

.field public static final EPS_POWER_ASSISTED_STANDARD:I = 0x0

.field public static final EPS_RATIO_CONSTANT_MODE:I = 0x0

.field public static final EPS_RATIO_COSTUM_CFACTOR:I = 0x1

.field public static final EPS_RATIO_MODE_2:I = 0x3

.field public static final EPS_RATIO_MODE_INVALID:I = 0xf

.field public static final EPS_RATIO_VARIABLE_MODE:I = 0x2

.field public static final EPS_SBW_SPECIAL_GEEKER_MODE:I = 0x0

.field public static final EPS_SBW_SPECIAL_MODE_INVALID:I = 0xf

.field public static final EPS_WARNING_STATUS_FAULT_LEVEL_1:I = 0x1

.field public static final EPS_WARNING_STATUS_FAULT_LEVEL_2:I = 0x2

.field public static final EPS_WARNING_STATUS_FAULT_LEVEL_3:I = 0x3

.field public static final EPS_WARNING_STATUS_FAULT_LEVEL_4:I = 0x4

.field public static final EPS_WARNING_STATUS_NO_WARNING:I = 0x0

.field public static final GAME_MODE_NORMAL_STATUS:I = 0x0

.field public static final GAME_MODE_STATUS:I = 0x1

.field public static final ID_EPS_GAME_MODE_REQ:I = 0x21402445

.field public static final ID_EPS_RATIO_MODE:I = 0x2140243c

.field public static final ID_EPS_SBW_SPECIAL_MODE:I = 0x2140243b

.field public static final ID_EPS_SBW_SPECIAL_MODE_REQ:I = 0x21402446

.field public static final ID_EPS_SBW_STEER_WHEEL_ANGLE:I = 0x21602441

.field public static final ID_EPS_SBW_TARGET_RWA_ANGLE:I = 0x21602440

.field public static final ID_EPS_SBW_TORSION_BAR_TORQ:I = 0x2160243d

.field public static final ID_EPS_SBW_WORK_ST:I = 0x21402442

.field public static final ID_EPS_STEERING_ANGLE:I = 0x21602406

.field public static final ID_EPS_STEERING_ANGLE_DOWN_FREQ:I = 0x2140242e

.field public static final ID_EPS_STEERING_ANGLE_SPD:I = 0x21402407

.field public static final ID_EPS_STEERING_ANGLE_SPD_DOWN_FREQ:I = 0x2140243f

.field public static final ID_EPS_STEER_WHEEL_EPS:I = 0x21402405

.field public static final ID_EPS_TORQ_CTRL_ST:I = 0x2140241c

.field public static final ID_EPS_TORSION_BAR_TORQ:I = 0x21602415

.field public static final ID_EPS_WARN_STATUS:I = 0x21402436

.field public static final ID_ESP_GAME_MODE_DATA:I = 0x21612443

.field public static final ID_ESP_GAME_MODE_STATUS:I = 0x21402444

.field public static final POWER_STATUS_ASSISTED_INVALID:I = 0x3

.field public static final POWER_STATUS_ASSISTED_SOFT:I = 0x1

.field public static final POWER_STATUS_ASSISTED_SPORT:I = 0x2

.field public static final POWER_STATUS_ASSISTED_STANDARD:I = 0x0

.field public static final SBW_SP_REQ_ADAS_MINOR_STEERING_MODE:I = 0x4

.field public static final SBW_SP_REQ_ADAS_SILENT_MODE:I = 0x5

.field public static final SBW_SP_REQ_FACTORY_MODE:I = 0x3

.field public static final SBW_SP_REQ_GAME_MODE:I = 0x1

.field public static final SBW_SP_REQ_NORMAL_MODE:I = 0x0

.field public static final SBW_SP_REQ_REST_MODE:I = 0x2

.field public static final SBW_WORK_ST_ALIGN_MODE:I = 0x1

.field public static final SBW_WORK_ST_GAME_MODE:I = 0x3

.field public static final SBW_WORK_ST_INGRESS_EGRESS_MODE:I = 0x2

.field public static final SBW_WORK_ST_MINOR_STEERING_MODE:I = 0x7

.field public static final SBW_WORK_ST_NORMAL_DRIVING:I = 0x0

.field public static final SBW_WORK_ST_READY:I = 0x6

.field public static final SBW_WORK_ST_REST_MODE:I = 0x4

.field public static final SBW_WORK_ST_SILENT_MODE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CarEpsManager"

.field public static final TORQ_CTRL_ST_CONTROL_REQUEST_NOT_ALLOWED_PERMANET:I = 0x3

.field public static final TORQ_CTRL_ST_CONTROL_REQUEST_NOT_ALLOWED_TEMPORARILY:I = 0x2

.field public static final TORQ_CTRL_ST_NO_REQUEST:I = 0x0

.field public static final TORQ_CTRL_ST_REQUEST_HONORED:I = 0x1


# instance fields
.field private final mEpsPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarEpsManager"

    .line 549
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 511
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x12

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21402405

    .line 512
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21602406

    .line 513
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21402407

    .line 514
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21602415

    .line 515
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x2140241c    # 6.509992E-19f

    .line 516
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x2140242e    # 6.5100014E-19f

    .line 517
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x2140243f

    .line 518
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x21402436    # 6.5100055E-19f

    .line 519
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x2140243b    # 6.510008E-19f

    .line 520
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x2140243c    # 6.5100086E-19f

    .line 521
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x2160243d

    .line 522
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x21602440

    .line 523
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21602441

    .line 524
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21402442

    .line 525
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21612443

    .line 526
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21402444

    .line 527
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21402445

    .line 528
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21402446

    .line 529
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    .line 511
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/eps/CarEpsManager;->mEpsPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_eps"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getEpsSbwSpecialMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140243b    # 6.510008E-19f

    const/4 v1, 0x0

    .line 701
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/eps/CarEpsManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEpsWarningStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402436    # 6.5100055E-19f

    const/4 v1, 0x0

    .line 685
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/eps/CarEpsManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getHwaSbwSteeringWheelAngle()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21602441

    const/4 v1, 0x0

    .line 855
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/eps/CarEpsManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getHwaSbwWorkingSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402442

    const/4 v1, 0x0

    .line 843
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/eps/CarEpsManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getHwaTargetRwaAngle()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21602440

    const/4 v1, 0x0

    .line 867
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/eps/CarEpsManager;->getFloatProperty(II)F

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

    .line 567
    iget-object v0, p0, Landroid/car/hardware/eps/CarEpsManager;->mEpsPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSbWTorsionBarTorque()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2160243d

    const/4 v1, 0x0

    .line 763
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/eps/CarEpsManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getSteeringAdjustableMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140243c    # 6.5100086E-19f

    const/4 v1, 0x0

    .line 750
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/eps/CarEpsManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSteeringAngle()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Landroid/car/hardware/eps/CarEpsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEpsSteeringAngle()F

    move-result v0

    return v0
.end method

.method public getSteeringAngleSpd()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 634
    iget-object v0, p0, Landroid/car/hardware/eps/CarEpsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEpsSteeringAngleSpeed()F

    move-result v0

    return v0
.end method

.method public getSteeringWheelEPS()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 608
    iget-object v0, p0, Landroid/car/hardware/eps/CarEpsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEpsWorkMode()I

    move-result v0

    return v0
.end method

.method public getTorqControlStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Landroid/car/hardware/eps/CarEpsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEpsTorqControlStatus()I

    move-result v0

    return v0
.end method

.method public getTorsionBarTorque()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 647
    iget-object v0, p0, Landroid/car/hardware/eps/CarEpsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEpsTorsionBarTorque()F

    move-result v0

    return v0
.end method

.method public sendGameModeData([F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21612443

    const/4 v1, 0x0

    .line 823
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/eps/CarEpsManager;->setFloatVectorProperty(II[F)V

    return-void
.end method

.method public setEpsSbwSpecialMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140243b    # 6.510008E-19f

    const/4 v1, 0x0

    .line 715
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/eps/CarEpsManager;->setIntProperty(III)V

    return-void
.end method

.method public setEpsSbwSpecialModeReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402446

    const/4 v1, 0x0

    .line 885
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/eps/CarEpsManager;->setIntProperty(III)V

    return-void
.end method

.method public setGameModeReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402445

    const/4 v1, 0x0

    .line 779
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/eps/CarEpsManager;->setIntProperty(III)V

    return-void
.end method

.method public setGameModeStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402444

    const/4 v1, 0x0

    .line 794
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/eps/CarEpsManager;->setIntProperty(III)V

    return-void
.end method

.method public setSteeringAdjustableMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140243c    # 6.5100086E-19f

    const/4 v1, 0x0

    .line 732
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/eps/CarEpsManager;->setIntProperty(III)V

    return-void
.end method

.method public setSteeringWheelEPS(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Landroid/car/hardware/eps/CarEpsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setEpsWorkMode(I)V

    return-void
.end method
