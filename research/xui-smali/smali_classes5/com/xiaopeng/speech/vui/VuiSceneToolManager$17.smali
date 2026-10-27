.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiFeedBack(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

.field final synthetic val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiFeedback;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1303
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1306
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->val$view:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1309
    :cond_0
    const/4 v0, 0x0

    .line 1310
    .local v0, "resourceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->val$view:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1311
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1313
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isUseDisplayLocationPlatForm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1314
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    iget-object v2, v2, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->content:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiFeedBack(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1316
    :cond_2
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 1317
    .local v1, "builder":Landroid/net/Uri$Builder;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "vuiFeedback"

    .line 1318
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1319
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageVersion"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1320
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "resourceName"

    .line 1321
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "state"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    iget v5, v5, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1322
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "type"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    .line 1323
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->getFeedbackType()Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "content"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$17;->val$feedback:Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    iget-object v4, v4, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->content:Ljava/lang/String;

    .line 1324
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1326
    :try_start_0
    const-string v2, "VuiSceneToolManager"

    const-string v3, "vuiFeedBack "

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1328
    .local v2, "result":Ljava/lang/String;
    const-string v3, "VuiSceneToolManager"

    const-string v4, "vuiFeedBack success"

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    .end local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1329
    :catch_0
    move-exception v2

    .line 1330
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1333
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1307
    .end local v0    # "resourceName":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method
