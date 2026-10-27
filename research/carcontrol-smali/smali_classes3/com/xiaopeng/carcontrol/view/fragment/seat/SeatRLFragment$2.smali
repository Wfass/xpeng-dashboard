.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$2;
.super Ljava/lang/Object;
.source "SeatRLFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeatCushionTouched(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegHorPos(I)V

    return-void
.end method

.method public onSeatHeadHorTouched(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHeadHorPos(I)V

    return-void
.end method

.method public onSeatHeadVerTouched(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHeadVerPos(I)V

    return-void
.end method

.method public onSeatHorTouched(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatHorPos(I)V

    return-void
.end method

.method public onSeatSmallLegTouched(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatLegVerPos(I)V

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

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatTiltPos(I)V

    return-void
.end method
