.class Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;
.super Ljava/lang/Object;
.source "AbstractPopPanel.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->initPanelListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;)V
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
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onHide$1$AbstractPopPanel$2()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->access$300(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->onDismiss()V

    return-void
.end method

.method public synthetic lambda$onShow$0$AbstractPopPanel$2()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->access$300(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onHide()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPanel onHide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->access$202(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;Z)Z

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$2$OGt5dFvQSib2_omeTunSI6unIKE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$2$OGt5dFvQSib2_omeTunSI6unIKE;-><init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPanel onShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    iget-object v2, v2, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->access$202(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;Z)Z

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$2$T77UF7vWqqSmOZyn1fEOED1cf6Y;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$2$T77UF7vWqqSmOZyn1fEOED1cf6Y;-><init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
