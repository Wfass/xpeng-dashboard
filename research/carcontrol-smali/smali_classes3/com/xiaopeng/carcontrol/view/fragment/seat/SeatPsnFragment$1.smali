.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;
.super Ljava/lang/Object;
.source "SeatPsnFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;


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

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLegHorTouched(ZI)V
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

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(II)Z

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatEnd(I)V

    :goto_0
    return-void
.end method

.method public onLumbarHorTouched(ZI)V
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

    const/4 v0, 0x5

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(II)Z

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const p2, 0x7f0802c6

    goto :goto_0

    :cond_0
    const p2, 0x7f0802c4

    :goto_0
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;I)V

    goto :goto_1

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatEnd(I)V

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    :goto_1
    return-void
.end method

.method public onLumbarVerTouched(ZI)V
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

    const/4 v0, 0x6

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(II)Z

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const p2, 0x7f0802c7

    goto :goto_0

    :cond_0
    const p2, 0x7f0802c5

    :goto_0
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;I)V

    goto :goto_1

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatEnd(I)V

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    :goto_1
    return-void
.end method

.method public onSeatHorTouched(ZI)V
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

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(II)Z

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatEnd(I)V

    :goto_0
    return-void
.end method

.method public onSeatVerTouched(ZI)V
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

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(II)Z

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatEnd(I)V

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

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatStart(II)Z

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatEnd(I)V

    :goto_0
    return-void
.end method
