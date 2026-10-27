.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$2;
.super Ljava/lang/Object;
.source "SeatTrdLeftFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;


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

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeatHeadVerTouched(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->isStowSuccess:Z

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeatHeadVerTouched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatHeadVerticalPos(I)V

    return-void
.end method

.method public onSeatTiltTouched(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->isStowSuccess:Z

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeatTiltTouched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatTiltPos(I)V

    return-void
.end method
