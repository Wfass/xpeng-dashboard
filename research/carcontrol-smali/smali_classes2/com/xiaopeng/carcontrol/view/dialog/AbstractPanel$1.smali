.class Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$1;
.super Landroid/os/Handler;
.source "AbstractPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;Landroid/os/Looper;)V
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

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->access$200(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->access$100(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;I)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onInitView()V

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onViewAttach()V

    goto :goto_0

    .line 96
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->access$000(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V

    :goto_0
    return-void
.end method
