.class Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$1;
.super Landroid/os/Handler;
.source "WindowControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 540
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 543
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;I)V

    goto :goto_0

    .line 551
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;I)V

    goto :goto_0

    .line 548
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;I)V

    goto :goto_0

    .line 545
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;I)V

    :goto_0
    return-void
.end method
