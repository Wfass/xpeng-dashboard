.class public final Landroid/car/hardware/srs/CarSrsManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarSrsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;,
        Landroid/car/hardware/srs/CarSrsManager$PropertyId;
    }
.end annotation


# static fields
.field public static final AIRBAG_FAULT:I = 0x1

.field public static final AIRBAG_NO_FAULT:I = 0x0

.field public static final CRASH_OUTPUT_ACTIVE:I = 0x1

.field public static final CRASH_OUTPUT_NOT_ACTIVE:I = 0x0

.field private static final DBG:Z = false

.field public static final ID_BCM_2NDLEFTSEAT_BELTSBR_WARNING:I = 0x21401c0e

.field public static final ID_BCM_2NDMIDSEAT_BELTSBR_WARNING:I = 0x21401c0f

.field public static final ID_BCM_2NDRIGHTSEAT_BELTSBR_WARNING:I = 0x21401c10

.field public static final ID_BCM_2ND_BELT_WARNING:I = 0x21401c24

.field public static final ID_BCM_AIRBAG_FAULT_ST:I = 0x21401c12

.field public static final ID_BCM_ALL_CRASH_OUTPUT_ST:I = 0x21411d5d

.field public static final ID_BCM_CRASH_OUTPUT_ST:I = 0x21401c11

.field public static final ID_BCM_DRVSEAT_BELTSBR_WARNING:I = 0x21401c0c

.field public static final ID_BCM_PSNGRSEAT_BELTSBR_WARNING:I = 0x21401c0d

.field public static final ID_BCM_SELF_CHECK:I = 0x21401c13

.field public static final ID_BCM_SRS_PSNGR_CRASH_OCCUR:I = 0x21401cdb

.field public static final ID_BCM_TRDROW_LT_SEAT_BELTSBR_WARNING:I = 0x21405408

.field public static final ID_BCM_TRDROW_MID_SEAT_BELTSBR_WARNING:I = 0x21405409

.field public static final ID_BCM_TRDROW_RT_SEAT_BELTSBR_WARNING:I = 0x2140540a

.field public static final ID_MSMT_LTSEAT_OCCUPANCY_ST:I = 0x21401ddd

.field public static final ID_MSMT_MIDSEAT_OCCUPANCY_ST:I = 0x21401dde

.field public static final ID_MSMT_RTSEAT_OCCUPANCY_ST:I = 0x21401ddf

.field public static final ID_SRS_PSNGR_OCCUPANCY_ST:I = 0x21401c4f

.field public static final ID_SRS_RLSEAT_OCCUPANCY_ST:I = 0x21401cc8

.field public static final ID_SRS_RMSEAT_OCCUPANCY_ST:I = 0x21401cc9

.field public static final ID_SRS_RRSEAT_OCCUPANCY_ST:I = 0x21401cca

.field public static final SEAT_NOT_OCCUPIED:I = 0x0

.field public static final SEAT_OCCUPIED:I = 0x1

.field public static final SRS_BACK_BELT_WARNING_ACTIVE:I = 0x1

.field public static final SRS_BACK_BELT_WARNING_NOT_ACTIVE:I = 0x0

.field public static final SRS_NO_WARNING:I = 0x0

.field public static final SRS_PASSENGER_NOT_ON_SEAT:I = 0x0

.field public static final SRS_PASSENGER_ON_SEAT:I = 0x1

.field public static final SRS_SELF_CHECK_CHECKING:I = 0x1

.field public static final SRS_SELF_CHECK_DEFAULT:I = 0x0

.field public static final SRS_SELF_CHECK_NOPASS:I = 0x3

.field public static final SRS_SELF_CHECK_PASS:I = 0x2

.field public static final SRS_WARNING:I = 0x1

.field public static final SWITCH_OFF:I = 0x0

.field public static final SWITCH_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarSrsManager"


# instance fields
.field private final mSrsPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarSrsManager"

    .line 343
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 308
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x15

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21401c4f

    .line 309
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21401c24

    .line 310
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21401c0c

    .line 311
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21401c0d

    .line 312
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21401c0e

    .line 313
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21401c0f

    .line 314
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21401c10

    .line 315
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x21405409

    .line 316
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x21405408

    .line 317
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x2140540a

    .line 318
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x21401c11

    .line 319
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x21401c12

    .line 320
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21401c13

    .line 321
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21401cc8

    .line 322
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21401cc9

    .line 323
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21401cca

    .line 324
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21401cdb

    .line 325
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21411d5d

    .line 326
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21401ddd

    .line 327
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x21401dde

    .line 328
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x21401ddf

    .line 329
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    .line 308
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/srs/CarSrsManager;->mSrsPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_srs"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAirbagFaultSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSrsAirbagFaultStatus()I

    move-result v0

    return v0
.end method

.method public getAllCrashOutputSt()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAllSrsCrashOutputStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getBackBeltSwStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isSrsBackBeltWarningEnabled()I

    move-result v0

    return v0
.end method

.method public getBackLeftBeltStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSrsBackLeftBeltFastenStatus()I

    move-result v0

    return v0
.end method

.method public getBackMiddleBeltStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSrsBackMiddleBeltFastenStatus()I

    move-result v0

    return v0
.end method

.method public getBackRightBeltStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSrsBackRightBeltFastenStatus()I

    move-result v0

    return v0
.end method

.method public getCrashOutputSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSrsCrashOutputStatus()I

    move-result v0

    return v0
.end method

.method public getDriverBeltStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSrsDrvBeltFastenStatus()I

    move-result v0

    return v0
.end method

.method public getPassengerCrashOccurSwSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSrsPassengerCrashOccurSwSt()I

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

    .line 366
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mSrsPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPsnBeltStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSrsPsnBeltFastenStatus()I

    move-result v0

    return v0
.end method

.method public getPsnOnSeat()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isSrsPsnOnSeat()I

    move-result v0

    return v0
.end method

.method public getRearLeftSeatOccupancyStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSrsRearLeftSeatOccupancyStatus()I

    move-result v0

    return v0
.end method

.method public getRearMiddleSeatOccupancyStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 638
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSrsRearMiddleSeatOccupancyStatus()I

    move-result v0

    return v0
.end method

.method public getRearRightSeatOccupancyStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 654
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSrsRearRightSeatOccupancyStatus()I

    move-result v0

    return v0
.end method

.method public getSelfCheckStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSrsSelfCheckStatus()I

    move-result v0

    return v0
.end method

.method public getTrdLeftSeatOccupancyStatus()I
    .locals 3

    .line 702
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdLeftSeatOccupancyStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 704
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarSrsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTrdMiddleSeatOccupancyStatus()I
    .locals 3

    .line 722
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdMiddleSeatOccupancyStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 724
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarSrsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTrdRightSeatOccupancyStatus()I
    .locals 3

    .line 742
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRightSeatOccupancyStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 744
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarSrsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTrdRowLtBeltStatus()I
    .locals 2

    const v0, 0x21405408

    const/4 v1, 0x0

    .line 510
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/srs/CarSrsManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTrdRowMidBeltStatus()I
    .locals 2

    const v0, 0x21405409

    const/4 v1, 0x0

    .line 525
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/srs/CarSrsManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTrdRowRtBeltStatus()I
    .locals 2

    const v0, 0x2140540a

    const/4 v1, 0x0

    .line 540
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/srs/CarSrsManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public setBackBeltSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSrsBackBeltWarningEnabled(I)V

    return-void
.end method

.method public setPassengerCrashOccurSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 686
    iget-object v0, p0, Landroid/car/hardware/srs/CarSrsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSrsPassengerCrashOccurSw(I)V

    return-void
.end method
