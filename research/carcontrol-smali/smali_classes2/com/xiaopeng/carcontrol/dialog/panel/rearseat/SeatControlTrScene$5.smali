.class Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;
.super Ljava/lang/Object;
.source "SeatControlTrScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->setTrdListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 298
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotStowActive:Z

    .line 299
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$500(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$500(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 301
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;Z)V

    .line 302
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    .line 303
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$700(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$700(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatRTStowInPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
