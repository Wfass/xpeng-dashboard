.class Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$2;
.super Landroid/os/Handler;
.source "ValuePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "x0"
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$2;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 418
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 419
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$2;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->setEnabled(Z)V

    goto :goto_0

    .line 421
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$2;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->requestLayout()V

    goto :goto_0

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$2;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$1300(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;IILjava/lang/Object;)V

    :goto_0
    return-void
.end method
