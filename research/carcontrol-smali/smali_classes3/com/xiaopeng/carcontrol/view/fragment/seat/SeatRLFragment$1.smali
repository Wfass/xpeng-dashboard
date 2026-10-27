.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;
.super Ljava/lang/Object;
.source "SeatRLFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;


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

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLumbarHorTouched$2$SeatRLFragment$1(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "direction"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f080347

    goto :goto_0

    :cond_0
    const p1, 0x7f080345

    :goto_0
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$600(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;I)V

    return-void
.end method

.method public synthetic lambda$onLumbarHorTouched$3$SeatRLFragment$1()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$500(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    return-void
.end method

.method public synthetic lambda$onLumbarVerTouched$0$SeatRLFragment$1(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "direction"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f080348

    goto :goto_0

    :cond_0
    const p1, 0x7f080346

    :goto_0
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$600(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;I)V

    return-void
.end method

.method public synthetic lambda$onLumbarVerTouched$1$SeatRLFragment$1()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$500(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    return-void
.end method

.method public onHeadRestHorTouched(ZI)V
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

    const/16 v0, 0x9

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(II)Z

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatEnd(I)V

    :goto_0
    return-void
.end method

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

    .line 255
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(II)Z

    goto :goto_0

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatEnd(I)V

    :goto_0
    return-void
.end method

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

    const/4 v0, 0x7

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(II)Z

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatEnd(I)V

    :goto_0
    return-void
.end method

.method public onLegTouched(ZI)V
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

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(II)Z

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatEnd(I)V

    :goto_0
    return-void
.end method

.method public onLumbarHorTouched(ZI)V
    .locals 2
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

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(II)Z

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 237
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$1$VOVPEpaYnzHWzGYa2Fk6qVLMCOc;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$1$VOVPEpaYnzHWzGYa2Fk6qVLMCOc;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;I)V

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$402(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 238
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatEnd(I)V

    .line 243
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$402(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$1$bB0UbJN9k2oIi7UDLljcWMFXg-w;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$1$bB0UbJN9k2oIi7UDLljcWMFXg-w;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;)V

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$202(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onLumbarVerTouched(ZI)V
    .locals 2
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

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(II)Z

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$1$OWgzBcXJQAlGd_FCI_ASq-Ix2Ic;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$1$OWgzBcXJQAlGd_FCI_ASq-Ix2Ic;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;I)V

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$302(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 216
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatEnd(I)V

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$302(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$1$BgFmZJBTjiLakH_R3tSwYN3wzTk;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$1$BgFmZJBTjiLakH_R3tSwYN3wzTk;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;)V

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$102(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
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

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(II)Z

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatEnd(I)V

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

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatStart(II)Z

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatEnd(I)V

    :goto_0
    return-void
.end method
