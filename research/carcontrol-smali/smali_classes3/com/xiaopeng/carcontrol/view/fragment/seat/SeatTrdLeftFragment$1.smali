.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$1;
.super Ljava/lang/Object;
.source "SeatTrdLeftFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadRestVerTouched(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isTouch",
            "direction"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    iget-boolean p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->isStowSuccess:Z

    if-nez p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowLeftSeatStart(II)Z

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowLeftSeatEnd(I)V

    :goto_0
    return-void
.end method

.method public onTiltTouched(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isTouch",
            "direction"
        }
    .end annotation

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    iget-boolean p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->isStowSuccess:Z

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowLeftSeatStart(II)Z

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowLeftSeatEnd(I)V

    :goto_0
    return-void
.end method
