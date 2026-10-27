.class Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;
.super Ljava/lang/Object;
.source "SeatControlRrScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const-wide/16 v0, 0x1f4

    const/4 p1, 0x0

    .line 170
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(JZ)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->getCarSpeed()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    goto/16 :goto_1

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopSecRowRightSeatMoving()V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    iput-boolean v3, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotRestActive:Z

    goto :goto_0

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    .line 182
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    .line 183
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, p1

    if-eqz v2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    iget-object v4, v2, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v5, v2, p1

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v6, p1, v3

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v2, 0x2

    aget v7, p1, v2

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v2, 0x3

    aget v8, p1, v2

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v2, 0x4

    aget v9, p1, v2

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v2, 0x5

    aget v10, p1, v2

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v2, 0x6

    aget v11, p1, v2

    invoke-virtual/range {v4 .. v11}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatAllPositions(IIIIIII)V

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, "SeatControlRrScene"

    const-string v0, "onCheckedChanged: fast click"

    .line 171
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1103cb

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :goto_2
    return-void
.end method
