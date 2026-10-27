.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$2;
.super Ljava/lang/Object;
.source "SeatRRFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

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

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegHorPos(I)V

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

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHeadHorPos(I)V

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

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHeadVerPos(I)V

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

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatHorPos(I)V

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

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatLegVerPos(I)V

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

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatTiltPos(I)V

    return-void
.end method
