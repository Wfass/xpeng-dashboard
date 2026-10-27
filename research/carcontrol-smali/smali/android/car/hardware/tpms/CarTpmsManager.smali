.class public final Landroid/car/hardware/tpms/CarTpmsManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarTpmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;,
        Landroid/car/hardware/tpms/CarTpmsManager$PropertyId;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final ID_TPMS_ABNORMAL_TIRE_PRESSURE_WARN:I = 0x21401e07

.field public static final ID_TPMS_ALL_SENSOR_ST:I = 0x21411e10

.field public static final ID_TPMS_PRFL:I = 0x21601e02

.field public static final ID_TPMS_PRFR:I = 0x21601e03

.field public static final ID_TPMS_PRRL:I = 0x21601e04

.field public static final ID_TPMS_PRRR:I = 0x21601e05

.field public static final ID_TPMS_PR_WARN_FL:I = 0x21401e08
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TPMS_PR_WARN_FR:I = 0x21401e09
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TPMS_PR_WARN_RL:I = 0x21401e0a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TPMS_PR_WARN_RR:I = 0x21401e0b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TPMS_SYS_FAULT_WARN:I = 0x21401e06

.field public static final ID_TPMS_TEMP_ALL:I = 0x21411e0f

.field public static final ID_TPMS_TIRE_PRESSURE:I = 0x21401e01

.field public static final ID_TPMS_TIRE_PRESSURE_SENSOR_STATUS_ALL:I = 0x21411e0d

.field public static final ID_TPMS_VMC_BLOT_ACT_ST:I = 0x21401e12

.field public static final ID_TPMS_VMC_BLOT_ST:I = 0x21411e11

.field public static final ID_TPMS_WARNING_TIRE_PRESSURE_ALL:I = 0x21411e0c

.field public static final ID_TPMS_WARNING_TIRE_TEMPERATURE_ALL:I = 0x21411e0e

.field private static final TAG:Ljava/lang/String; = "CarTpmsManager"

.field public static final TPMS_HAS_WARNING:I = 0x1

.field public static final TPMS_HIGH_PRESSURE_WARNING:I = 0x4

.field public static final TPMS_LEFT_FRONT:I = 0x1

.field public static final TPMS_LEFT_REAR:I = 0x3

.field public static final TPMS_LITTLE_LOW_PRESSURE_WARNING:I = 0x1

.field public static final TPMS_LOW_PRESSURE_WARNING:I = 0x2

.field public static final TPMS_NO_WARNING:I = 0x0

.field public static final TPMS_RIGHT_FRONT:I = 0x2

.field public static final TPMS_RIGHT_REAR:I = 0x4

.field public static final TPMS_SENSOR_HAS_ACTIVE:I = 0x1

.field public static final TPMS_SENSOR_HAS_FAULT:I = 0x1

.field public static final TPMS_SENSOR_NORMAL:I = 0x0

.field public static final TPMS_TIRE_PRESSURE_FAIL:I = 0x3

.field public static final TPMS_TIRE_PRESSURE_FIXED:I = 0x2

.field public static final TPMS_TIRE_PRESSURE_FIXING:I = 0x1

.field public static final TPMS_TIRE_PRESSURE_NOT_FIX:I = 0x0

.field public static final TPMS_TIRE_TYPE_NOT_FIX:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TPMS_TIRE_TYRE_FAIL:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TPMS_TIRE_TYRE_FIXED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TPMS_TIRE_TYRE_FIXING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TPMS_WARNING_INVALID:I = 0x7

.field public static final TPMS_WARN_LAMP_OFF:I = 0x0

.field public static final TPMS_WARN_LAMP_ON:I = 0x1

.field public static final WHEEL_SENSOR_BATTERY_VOLTAGE_LOW:I = 0x1

.field public static final WHEEL_SENSOR_BATTERY_VOLTAGE_NORMAL:I


# instance fields
.field private final mTpmsPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarTpmsManager"

    .line 435
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 401
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0xe

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21401e01

    .line 402
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21601e02

    .line 403
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21601e03

    .line 404
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21601e04

    .line 405
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21601e05

    .line 406
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21401e06

    .line 407
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21401e07

    .line 408
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x21411e0c

    .line 409
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x21411e0e

    .line 410
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x21411e0d

    .line 411
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x21411e0f

    .line 412
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x21411e10

    .line 413
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21401e12

    .line 414
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21411e11

    .line 415
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    .line 401
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mTpmsPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_tpms"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public calibrateTirePressure()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->calibrateTpmsTirePressure()V

    return-void
.end method

.method public getAbnormalTirePressureWarnLampStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTpmsAbnormalTirePressureWarnLampStatus()I

    move-result v0

    return v0
.end method

.method public getAllSensorStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTpmsAllSensorStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getAllTirePerssureSensorStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 615
    iget-object v0, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTpmsllTirePerssureSensorStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getAllTirePressureWarnings()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTpmsAllTirePressureWarnings()[I

    move-result-object v0

    return-object v0
.end method

.method public getAllTireTemperature()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTpmsAllTireTemperature()[I

    move-result-object v0

    return-object v0
.end method

.method public getAllTireTemperatureWarnings()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTpmsAllTireTemperatureWarnings()[I

    move-result-object v0

    return-object v0
.end method

.method public getAllVmcBlotStatus()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21411e11

    const/4 v1, 0x0

    .line 660
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tpms/CarTpmsManager;->getIntVectorProperty(II)[I

    move-result-object v0

    return-object v0
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

    .line 453
    iget-object v0, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mTpmsPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSystemFaultWarnLampStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTpmsSystemFaultWarnLampStatus()I

    move-result v0

    return v0
.end method

.method public getTirePressureStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTpmsTirePressureStatus()I

    move-result v0

    return v0
.end method

.method public getTirePressureValue(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTpmsTirePressureValue(I)F

    move-result p1

    return p1
.end method

.method public getTirePressureWarningInfo(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    iget-object v0, p0, Landroid/car/hardware/tpms/CarTpmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTpmsTirePressureWarningInfo(I)I

    move-result p1

    return p1
.end method

.method public getVmcBlotActiveStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401e12

    const/4 v1, 0x0

    .line 676
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tpms/CarTpmsManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method
