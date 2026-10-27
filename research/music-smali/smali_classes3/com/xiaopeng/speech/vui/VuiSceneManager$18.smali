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

    const-string v0, "VuiSceneManager"

    .line 1560
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$view:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1564
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1565
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 1567
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isUseDisplayLocationPlatForm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1568
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->content:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->vuiFeedBack(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1570
    :cond_2
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 1571
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "vuiFeedback"

    .line 1572
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1573
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1574
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "packageVersion"

    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "resourceName"

    .line 1575
    invoke-virtual {v3, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    iget v4, v4, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "state"

    .line 1576
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    .line 1577
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->getFeedbackType()Lbxz;

    move-result-object v3

    invoke-virtual {v3}, Lbxz;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$18;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    iget-object v3, v3, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->content:Ljava/lang/String;

    const-string v4, "content"

    .line 1578
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :try_start_0
    const-string v2, "vuiFeedBack "

    .line 1580
    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v1, "vuiFeedBack success"

    .line 1582
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1584
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
