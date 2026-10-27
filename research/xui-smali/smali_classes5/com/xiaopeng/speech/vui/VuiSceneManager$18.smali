.class Lcom/xiaopeng/speech/vui/VuiSceneManager$18;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiFeedBack(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

.field final synthetic val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiFeedback;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1557
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1560
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$view:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1563
    :cond_0
    const/4 v0, 0x0

    .line 1564
    .local v0, "resourceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$view:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1565
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1567
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isUseDisplayLocationPlatForm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1568
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    iget-object v2, v2, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->content:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiFeedBack(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1570
    :cond_2
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 1571
    .local v1, "builder":Landroid/net/Uri$Builder;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "vuiFeedback"

    .line 1572
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1573
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageVersion"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1574
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "resourceName"

    .line 1575
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "state"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    iget v5, v5, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1576
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "type"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    .line 1577
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->getFeedbackType()Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "content"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    iget-object v4, v4, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->content:Ljava/lang/String;

    .line 1578
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1580
    :try_start_0
    const-string v2, "VuiSceneManager"

    const-string v3, "vuiFeedBack "

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1582
    .local v2, "result":Ljava/lang/String;
    const-string v3, "VuiSceneManager"

    const-string v4, "vuiFeedBack success"

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    .end local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1583
    :catch_0
    move-exception v2

    .line 1584
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1587
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1561
    .end local v0    # "resourceName":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method
