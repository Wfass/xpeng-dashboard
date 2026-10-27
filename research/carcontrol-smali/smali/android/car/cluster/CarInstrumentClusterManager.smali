.class public Landroid/car/cluster/CarInstrumentClusterManager;
.super Landroid/car/CarManagerBase;
.source "CarInstrumentClusterManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/cluster/CarInstrumentClusterManager$Callback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CATEGORY_NAVIGATION:Ljava/lang/String; = "android.car.cluster.NAVIGATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final KEY_EXTRA_ACTIVITY_STATE:Ljava/lang/String; = "android.car.cluster.ClusterActivityState"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "cluster_service"

    return-object v0
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method

.method public registerCallback(Ljava/lang/String;Landroid/car/cluster/CarInstrumentClusterManager$Callback;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public unregisterCallback(Landroid/car/cluster/CarInstrumentClusterManager$Callback;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method
