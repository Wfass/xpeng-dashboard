.class Lcom/xiaopeng/xui/app/XPopPanel$TN$2;
.super Ljava/lang/Object;
.source "XPopPanel.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XPopPanel$TN;-><init>(Landroid/content/Context;IIIIZIIIZLandroid/view/View;ZZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 417
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCancel()V
    .locals 2

    .line 428
    const-string v0, "XPopPanel"

    const-string v1, "onActionCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$900(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->setCode(I)V

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$900(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 431
    return-void
.end method

.method public onActionDown()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$600(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    .line 421
    return-void
.end method

.method public onActionUp()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->reHidePanel()V

    .line 425
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 435
    const-string v0, "XPopPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow  mNotAttachNeedHide : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v2}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1000(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;->onShow()V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1000(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$900(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->setCode(I)V

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$900(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1200(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    .line 444
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;->onHide()V

    .line 451
    :cond_0
    return-void
.end method

.method public onPositionChange(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;->onPositionChange(I)V

    .line 458
    :cond_0
    return-void
.end method

.method public onUserMoveStateChange(Z)V
    .locals 1
    .param p1, "isMoving"    # Z

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;->onUserMoveStateChange(Z)V

    .line 465
    :cond_0
    return-void
.end method
