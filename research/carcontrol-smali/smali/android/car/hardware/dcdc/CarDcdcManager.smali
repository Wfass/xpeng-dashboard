.class public final Landroid/car/hardware/dcdc/CarDcdcManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarDcdcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/dcdc/CarDcdcManager$CarDcdcEventCallback;,
        Landroid/car/hardware/dcdc/CarDcdcManager$PropertyId;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final ID_DCDC_FAIL_ST:I = 0x21403001

.field public static final ID_DCDC_INPUT_CURRENT:I = 0x21603006

.field public static final ID_DCDC_INPUT_VOLTAGE:I = 0x21403005

.field public static final ID_DCDC_OPERATING_MODE:I = 0x21403002

.field private static final TAG:Ljava/lang/String; = "CarDcdcManager"


# instance fields
.field private final mDcdcPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarDcdcManager"

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 82
    new-instance p1, Landroid/util/ArraySet;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21403001

    .line 83
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21403002

    .line 84
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21403005

    .line 85
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21603006

    .line 86
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    .line 82
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/dcdc/CarDcdcManager;->mDcdcPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_dcdc"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getDcdcFailStInfo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/car/hardware/dcdc/CarDcdcManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDcdcFailStInfo()I

    move-result v0

    return v0
.end method

.method public getDcdcInputCurrent()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Landroid/car/hardware/dcdc/CarDcdcManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDcdcInputCurrent()F

    move-result v0

    return v0
.end method

.method public getDcdcInputVoltage()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Landroid/car/hardware/dcdc/CarDcdcManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDcdcInputVoltage()I

    move-result v0

    return v0
.end method

.method public getDcdcStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/car/hardware/dcdc/CarDcdcManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDcdcStatus()I

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

    .line 124
    iget-object v0, p0, Landroid/car/hardware/dcdc/CarDcdcManager;->mDcdcPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method
