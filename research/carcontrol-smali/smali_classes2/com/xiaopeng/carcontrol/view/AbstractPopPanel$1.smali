.class Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$1;
.super Landroid/os/Handler;
.source "AbstractPopPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;Landroid/os/Looper;)V
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

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

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

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->access$100(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;II)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->onInitView()V

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->onViewAttach()V

    goto :goto_0

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->access$000(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;)V

    :goto_0
    return-void
.end method
