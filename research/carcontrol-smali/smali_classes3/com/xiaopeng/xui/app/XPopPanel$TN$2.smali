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

    .line 421
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCancel()V
    .locals 2

    const-string v0, "XPopPanel"

    const-string v1, "onActionCancel"

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$900(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->setCode(I)V

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$900(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActionDown()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$600(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    return-void
.end method

.method public onActionUp()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->reHidePanel()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow  mNotAttachNeedHide : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1000(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPopPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;->onShow()V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1000(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$900(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->setCode(I)V

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$900(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1200(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const-string v0, "XPopPanel"

    const-string v1, "onDetachedFromWindow"

    .line 452
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;->onHide()V

    :cond_0
    return-void
.end method

.method public onPositionChange(I)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;->onPositionChange(I)V

    :cond_0
    return-void
.end method

.method public onUserMoveStateChange(Z)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;->onUserMoveStateChange(Z)V

    :cond_0
    return-void
.end method
