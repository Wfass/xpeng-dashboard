.class public final Landroid/car/hardware/dhc/CarDhcManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarDhcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/dhc/CarDhcManager$CarDhcEventCallback;,
        Landroid/car/hardware/dhc/CarDhcManager$PropertyId;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DHC_STATUS_ACTIVE:I = 0x1

.field public static final DHC_STATUS_INACTIVE:I = 0x0

.field public static final ID_DHC_ACTIVE_SW:I = 0x21401c6f

.field private static final TAG:Ljava/lang/String; = "CarDhcManager"


# instance fields
.field private final mDhcPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarDhcManager"

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 70
    new-instance p1, Landroid/util/ArraySet;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21401c6f

    .line 71
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    .line 70
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/dhc/CarDhcManager;->mDhcPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_dhc"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getDhcActiveSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/car/hardware/dhc/CarDhcManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isDhcDoorknobAutoOpenEnabled()I

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

    .line 113
    iget-object v0, p0, Landroid/car/hardware/dhc/CarDhcManager;->mDhcPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public setDhcActiveSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/car/hardware/dhc/CarDhcManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setDhcDoorknobAutoOpenEnabled(I)V

    return-void
.end method
