.class public Landroid/car/hardware/spc/CarSpcManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarSpcManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/spc/CarSpcManager$CarSpcEventCallback;,
        Landroid/car/hardware/spc/CarSpcManager$PropertyId;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final ID_SPC_GROSS_GENERATION:I = 0x21603c02

.field public static final ID_SPC_RECENT_GENERATED_ENERGY:I = 0x21603c03

.field public static final ID_SPC_SOLAR_POWER:I = 0x21603c04

.field public static final ID_SPC_SOLAR_WORK_ST:I = 0x21403c01

.field public static final SPC_STATUS_OFF:I = 0x0

.field public static final SPC_STATUS_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarSpcManager"


# instance fields
.field private final mSpcPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarSpcManager"

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 75
    new-instance p1, Landroid/util/ArraySet;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21403c01

    .line 76
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21603c02

    .line 77
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21603c03

    .line 78
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21603c04

    .line 79
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    .line 75
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/spc/CarSpcManager;->mSpcPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_spc"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getGrossEnergyGeneration()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroid/car/hardware/spc/CarSpcManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSpcGrossEnergyGeneration()F

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

    .line 113
    iget-object v0, p0, Landroid/car/hardware/spc/CarSpcManager;->mSpcPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getRecentEnergyGeneration()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/car/hardware/spc/CarSpcManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSpcRecentEnergyGeneration()F

    move-result v0

    return v0
.end method

.method public getSolarPower()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroid/car/hardware/spc/CarSpcManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSpcSolarPower()F

    move-result v0

    return v0
.end method

.method public getSolarWorkSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Landroid/car/hardware/spc/CarSpcManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSpcSolarWorkSt()I

    move-result v0

    return v0
.end method
