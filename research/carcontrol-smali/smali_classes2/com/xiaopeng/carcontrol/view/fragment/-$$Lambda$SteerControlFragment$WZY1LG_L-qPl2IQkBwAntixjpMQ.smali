.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SteerControlFragment$WZY1LG_L-qPl2IQkBwAntixjpMQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SteerControlFragment$WZY1LG_L-qPl2IQkBwAntixjpMQ;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SteerControlFragment$WZY1LG_L-qPl2IQkBwAntixjpMQ;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->lambda$registerLiveData$1$SteerControlFragment(Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;)V

    return-void
.end method
