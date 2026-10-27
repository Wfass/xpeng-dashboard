.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;
.super Ljava/lang/Object;
.source "SeatRRFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;


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

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLumbarHorTouched$2$SeatRRFragment$1(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "direction"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f080347

    goto :goto_0

    :cond_0
    const p1, 0x7f080345

    :goto_0
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$500(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;I)V

    return-void
.end method

.method public synthetic lambda$onLumbarHorTouched$3$SeatRRFragment$1()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    return-void
.end method

.method public synthetic lambda$onLumbarVerTouched$0$SeatRRFragment$1(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "direction"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f080348

    goto :goto_0

    :cond_0
    const p1, 0x7f080346

    :goto_0
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$500(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;I)V

    return-void
.end method

.method public synthetic lambda$onLumbarVerTouched$1$SeatRRFragment$1()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

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

    .line 255
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(II)Z

    goto :goto_0

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatEnd(I)V

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

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(II)Z

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatEnd(I)V

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

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(II)Z

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatEnd(I)V

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

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(II)Z

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatEnd(I)V

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

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(II)Z

    .line 225
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$G83SEFF-nHVHxzXXMZW7Jn7DcZk;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$G83SEFF-nHVHxzXXMZW7Jn7DcZk;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;I)V

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$302(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatEnd(I)V

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$302(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$FJamMs8xpUbDFNbQRf0FPHqF5p0;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$FJamMs8xpUbDFNbQRf0FPHqF5p0;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;)V

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$102(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

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

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(II)Z

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$TsKlU38IsYBj42Adtm51rw18bGc;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$TsKlU38IsYBj42Adtm51rw18bGc;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;I)V

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$202(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatEnd(I)V

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$202(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 213
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$x9-Zka9yPJkboKfCuElhQ-yrsyk;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$x9-Zka9yPJkboKfCuElhQ-yrsyk;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;)V

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$002(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;

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

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(II)Z

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatEnd(I)V

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

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatStart(II)Z

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatEnd(I)V

    :goto_0
    return-void
.end method
