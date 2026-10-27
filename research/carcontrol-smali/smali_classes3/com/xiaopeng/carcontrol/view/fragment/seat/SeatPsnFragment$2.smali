.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$2;
.super Ljava/lang/Object;
.source "SeatPsnFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatHorzPos(I)V

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

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatLegPos(I)V

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

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPSeatTiltPos(I)V

    return-void
.end method
