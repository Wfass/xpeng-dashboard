.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;
.super Ljava/lang/Object;
.source "SeatDrvFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLumbarHorTouched$2$SeatDrvFragment$1(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "direction"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f0802c6

    goto :goto_0

    :cond_0
    const p1, 0x7f0802c4

    :goto_0
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$500(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;I)V

    return-void
.end method

.method public synthetic lambda$onLumbarHorTouched$3$SeatDrvFragment$1()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    return-void
.end method

.method public synthetic lambda$onLumbarVerTouched$0$SeatDrvFragment$1(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "direction"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f0802c7

    goto :goto_0

    :cond_0
    const p1, 0x7f0802c5

    :goto_0
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$500(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;I)V

    return-void
.end method

.method public synthetic lambda$onLumbarVerTouched$1$SeatDrvFragment$1()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

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

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(II)Z

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

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

    .line 231
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(II)Z

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$7O5iDtzms95rClE4oVm79E3Nvzw;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$7O5iDtzms95rClE4oVm79E3Nvzw;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;I)V

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$302(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$302(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 242
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$NEv6CzFMtDE7KRclp2HF7BRVuJE;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$NEv6CzFMtDE7KRclp2HF7BRVuJE;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;)V

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$102(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 245
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

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

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(II)Z

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 213
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$dzoOMTSWY3InSmU4hGxD7w5vxgk;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$dzoOMTSWY3InSmU4hGxD7w5vxgk;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;I)V

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$202(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    .line 219
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$202(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$x3PjcTH1HRCOdwewow48bVvSko4;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$x3PjcTH1HRCOdwewow48bVvSko4;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;)V

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$002(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;

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

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(II)Z

    goto :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

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

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(II)Z

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

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

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatStart(II)Z

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    :goto_0
    return-void
.end method
