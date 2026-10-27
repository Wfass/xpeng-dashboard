.class public final Landroid/car/hardware/cdc/CarCdcManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarCdcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/cdc/CarCdcManager$CarCdcEventCallback;,
        Landroid/car/hardware/cdc/CarCdcManager$PropertyId;
    }
.end annotation


# static fields
.field public static final CDC_FUNCTION_MODE_COMFORT:I = 0x2

.field public static final CDC_FUNCTION_MODE_SPORT:I = 0x3

.field public static final CDC_FUNCTION_MODE_STANDARD:I = 0x1

.field private static final DBG:Z = false

.field public static final ID_CDC_FUNC_STYLE:I = 0x21403004

.field private static final TAG:Ljava/lang/String; = "CarCdcManager"


# instance fields
.field private final mCdcPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarCdcManager"

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 78
    new-instance p1, Landroid/util/ArraySet;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21403004

    .line 79
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    .line 78
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/cdc/CarCdcManager;->mCdcPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_cdc"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getCdcFunctionStyle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/car/hardware/cdc/CarCdcManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCdcFunctionMode()I

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

    .line 117
    iget-object v0, p0, Landroid/car/hardware/cdc/CarCdcManager;->mCdcPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public setCdcFunctionStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/car/hardware/cdc/CarCdcManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCdcFunctionMode(I)V

    return-void
.end method
