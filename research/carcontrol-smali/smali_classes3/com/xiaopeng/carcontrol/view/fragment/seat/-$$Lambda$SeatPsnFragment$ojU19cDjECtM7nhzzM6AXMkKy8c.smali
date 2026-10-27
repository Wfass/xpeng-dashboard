.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatPsnFragment$ojU19cDjECtM7nhzzM6AXMkKy8c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatPsnFragment$ojU19cDjECtM7nhzzM6AXMkKy8c;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatPsnFragment$ojU19cDjECtM7nhzzM6AXMkKy8c;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->lambda$onRegisterLiveData$2$SeatPsnFragment(Ljava/lang/Integer;)V

    return-void
.end method
