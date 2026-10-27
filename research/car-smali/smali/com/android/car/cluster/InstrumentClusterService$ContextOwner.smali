.class Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
.super Ljava/lang/Object;
.source "InstrumentClusterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/cluster/InstrumentClusterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextOwner"
.end annotation


# instance fields
.field final pid:I

.field final uid:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p1, p0, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->uid:I

    .line 289
    iput p2, p0, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->pid:I

    .line 290
    return-void
.end method
