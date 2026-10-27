.class public final Landroid/car/hardware/vlmu/CarVlmuManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarVlmuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/vlmu/CarVlmuManager$CarVlmuEventCallback;,
        Landroid/car/hardware/vlmu/CarVlmuManager$PropertyId;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final ID_VLMU_CAN_COMMUNICATTION_FAULT:I = 0x21415e03

.field public static final ID_VLMU_ETH_COMMUNICATTION_FAULT:I = 0x21415e04

.field public static final ID_VLMU_HARDWARE_FAULT:I = 0x21415e01

.field public static final ID_VLMU_SOFTWARE_SYSTEM_FAULT:I = 0x21415e02

.field public static final ID_VLMU_XMONITOR_SOC_SOFTWARE_FAULT:I = 0x21415e05

.field private static final TAG:Ljava/lang/String; = "CarVlmuManager"

.field public static final VLMU_COMMON_FAULT:I = 0x1

.field public static final VLMU_COMMON_NORMAL:I


# instance fields
.field private final mVlmuPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "CarVlmuManager"

    .line 133
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 108
    new-instance p1, Landroid/util/ArraySet;

    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/Integer;

    const v1, 0x21415e01

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const v0, 0x21415e02

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const v0, 0x21415e03

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    const v0, 0x21415e04

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p2, v1

    const v0, 0x21415e05

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p2, v1

    .line 108
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/vlmu/CarVlmuManager;->mVlmuPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_vlmu"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getCanCommunicationFault()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21415e03

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vlmu/CarVlmuManager;->getIntVectorProperty(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getEthCommunicationFault()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21415e04

    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vlmu/CarVlmuManager;->getIntVectorProperty(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getHardwareFault()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21415e01

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vlmu/CarVlmuManager;->getIntVectorProperty(II)[I

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

    .line 151
    iget-object v0, p0, Landroid/car/hardware/vlmu/CarVlmuManager;->mVlmuPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSoftwareSystemFault()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21415e02

    const/4 v1, 0x0

    .line 200
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vlmu/CarVlmuManager;->getIntVectorProperty(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getXmonitorSocSoftwareFault()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21415e05

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vlmu/CarVlmuManager;->getIntVectorProperty(II)[I

    move-result-object v0

    return-object v0
.end method
