.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;
.super Ljava/lang/Object;
.source "SeatTrdRightFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadRestVerTouched(ZI)V
    .locals 3
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

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-boolean p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isStowSuccess:Z

    if-nez p1, :cond_2

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v2, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowMidSeatStart(II)Z

    goto :goto_2

    .line 135
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v2, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowRightSeatStart(II)Z

    goto :goto_2

    .line 140
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 142
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowMidSeatEnd(I)V

    goto :goto_2

    .line 141
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowRightSeatEnd(I)V

    :cond_5
    :goto_2
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

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-boolean p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isStowSuccess:Z

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowRightSeatStart(II)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowRightSeatEnd(I)V

    :goto_0
    return-void
.end method
