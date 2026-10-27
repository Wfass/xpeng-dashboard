.class public final synthetic Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AbstractManagerImpl$Tw48vX2_i-5XTv6lKeSRJAx3Iyw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/LiveData;

.field public final synthetic f$1:Landroidx/lifecycle/Observer;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AbstractManagerImpl$Tw48vX2_i-5XTv6lKeSRJAx3Iyw;->f$0:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AbstractManagerImpl$Tw48vX2_i-5XTv6lKeSRJAx3Iyw;->f$1:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AbstractManagerImpl$Tw48vX2_i-5XTv6lKeSRJAx3Iyw;->f$0:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AbstractManagerImpl$Tw48vX2_i-5XTv6lKeSRJAx3Iyw;->f$1:Landroidx/lifecycle/Observer;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;->lambda$setLiveDataObserver$0(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method
