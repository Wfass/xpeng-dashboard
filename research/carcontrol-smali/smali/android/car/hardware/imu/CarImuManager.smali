.class public Landroid/car/hardware/imu/CarImuManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarImuManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/imu/CarImuManager$CarImuEventCallback;,
        Landroid/car/hardware/imu/CarImuManager$PropertyId;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final ID_IMU_ADDDATA:I = 0x21513607

.field public static final ID_IMU_DIAGMSG:I = 0x21413608

.field public static final ID_IMU_NAVDATA:I = 0x21613609

.field public static final ID_IMU_NAVDATA_CAN:I = 0x21613610

.field public static final ID_IMU_QUAT:I = 0x21613602

.field public static final ID_IMU_SCULOCAT_CARSPEED:I = 0x2161360d

.field public static final ID_IMU_SCULOCAT_CARSPEED_CAN:I = 0x2161360f

.field public static final ID_IMU_SENSOR_DATA:I = 0x21613613

.field public static final ID_IMU_SYSST:I = 0x21613601

.field public static final ID_IMU_SYSST_CAN:I = 0x2161360e

.field public static final ID_IMU_TBOX_PACKGGA:I = 0x21413606

.field public static final ID_IMU_UBXPVT1:I = 0x21613603

.field public static final ID_IMU_UBXPVT1_NUM_SV:I = 0x2140360b

.field public static final ID_IMU_UBXPVT2:I = 0x21613604

.field public static final ID_IMU_UBXRAWX:I = 0x21613605

.field public static final ID_IMU_UBXSFRBX:I = 0x2161360a

.field public static final ID_IMU_UBX_PVT2_RSSI:I = 0x2140360c

.field private static final TAG:Ljava/lang/String; = "CarImuManager"


# instance fields
.field private final mImuPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarImuManager"

    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 159
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x11

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21613601

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21613602

    .line 160
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21613603

    .line 161
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21613604

    .line 162
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21613605

    .line 163
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21413606

    .line 164
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21513607

    .line 165
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x21413608

    .line 166
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x21613609

    .line 167
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x2161360a

    .line 168
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x2140360b

    .line 169
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x2140360c

    .line 170
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x2161360d

    .line 171
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x2161360e

    .line 172
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21613610

    .line 173
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x2161360f

    .line 174
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21613613

    .line 175
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    .line 159
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/imu/CarImuManager;->mImuPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_imu"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAddData()[J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuAddData()[J

    move-result-object v0

    return-object v0
.end method

.method public getDiagMessage()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuDiagMessage()[I

    move-result-object v0

    return-object v0
.end method

.method public getNavigationData()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuNavigationData()[F

    move-result-object v0

    return-object v0
.end method

.method public getNavigationDataFromCan()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuNavigationDataFromCan()[F

    move-result-object v0

    return-object v0
.end method

.method public getNavigationSatellitesNumber()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuSatellitesNumber()I

    move-result v0

    return v0
.end method

.method public getNavigationSatellitesRssi()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuNavigationSatellitesRssi()I

    move-result v0

    return v0
.end method

.method protected getPropertyIds()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mImuPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getQuatData()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuQuatData()[F

    move-result-object v0

    return-object v0
.end method

.method public getSystemState()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuSystemState()[F

    move-result-object v0

    return-object v0
.end method

.method public getSystemStateAndSpeed()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuSystemStateAndSpeed()[F

    move-result-object v0

    return-object v0
.end method

.method public getSystemStateAndSpeedFromCan()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuSystemStateAndSpeedFromCan()[F

    move-result-object v0

    return-object v0
.end method

.method public getSystemStateFromCan()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuSystemStateFromCan()[F

    move-result-object v0

    return-object v0
.end method

.method public getTboxPackGgaData()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuTboxPackGgaData()[I

    move-result-object v0

    return-object v0
.end method

.method public getUbxPvtData1()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuUbxPvtData1()[F

    move-result-object v0

    return-object v0
.end method

.method public getUbxPvtData2()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuUbxPvtData2()[F

    move-result-object v0

    return-object v0
.end method

.method public getUbxRawXData()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuUbxRawXData()[F

    move-result-object v0

    return-object v0
.end method

.method public getUbxSfrbxData()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Landroid/car/hardware/imu/CarImuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImuUbxSfrbxData()[F

    move-result-object v0

    return-object v0
.end method
