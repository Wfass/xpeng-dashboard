.class Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;
.super Ljava/lang/Object;
.source "InstrumentClusterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/cluster/InstrumentClusterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClusterActivityInfo"
.end annotation


# instance fields
.field launchOptions:Landroid/os/Bundle;

.field state:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/cluster/InstrumentClusterService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/cluster/InstrumentClusterService$1;

    .line 293
    invoke-direct {p0}, Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;-><init>()V

    return-void
.end method
