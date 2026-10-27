.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$2;
.super Ljava/lang/Object;
.source "SeatTrdRightFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;


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

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeatHeadVerTouched(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isStowSuccess:Z

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowMidSeatHeadVerticalPos(I)V

    goto :goto_1

    .line 163
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatHeadVerticalPos(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onSeatTiltTouched(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isStowSuccess:Z

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatTiltPos(I)V

    return-void
.end method
