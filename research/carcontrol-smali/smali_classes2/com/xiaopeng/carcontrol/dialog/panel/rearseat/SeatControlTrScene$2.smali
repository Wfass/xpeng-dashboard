.class Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;
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

    .line 250
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

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

    .line 253
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotFoldActive:Z

    .line 254
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 255
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;Z)V

    .line 257
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatFol(I)V

    .line 258
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
