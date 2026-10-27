.class Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;
.super Ljava/lang/Object;
.source "SeatControlTlScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->setTrdListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

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

    .line 268
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotUnFoldActive:Z

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;Z)V

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatFol(I)V

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->access$400(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->access$400(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
