.class Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;
.super Ljava/lang/Object;
.source "SeatControlRlScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

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

    .line 182
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(JZ)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->getCarSpeed()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    goto/16 :goto_1

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopSecRowLeftSeatMoving()V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    iput-boolean v3, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotRestActive:Z

    goto :goto_0

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    .line 194
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    .line 195
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    iget-object v4, v2, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v5, v2, p1

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v6, v2, v3

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v7, 0x2

    aget v7, v2, v7

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v8, 0x3

    aget v8, v2, v8

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v9, 0x4

    aget v9, v2, v9

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v10, 0x5

    aget v10, v2, v10

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v11, 0x6

    aget v11, v2, v11

    invoke-virtual/range {v4 .. v11}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatAllPositions(IIIIIII)V

    .line 197
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 203
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, "SeatControlRlScene"

    const-string v0, "onCheckedChanged: fast click"

    .line 183
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1103cb

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :goto_2
    return-void
.end method
