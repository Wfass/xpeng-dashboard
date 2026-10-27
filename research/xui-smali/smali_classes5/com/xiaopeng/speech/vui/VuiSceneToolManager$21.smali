.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->enterScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

.field final synthetic val$displayLocation:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1699
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$displayLocation:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1703
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$100(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1712
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1714
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isUseDisplayLocationPlatForm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1715
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$sceneId:Ljava/lang/String;

    const-string v3, "SysDialog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "full"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAppAreaLocation()Ljava/lang/String;

    move-result-object v2

    .line 1716
    .local v2, "areaLocation":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "enterDisplayLocationScene"

    .line 1717
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "sceneId"

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$sceneId:Ljava/lang/String;

    .line 1718
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "displayLocation"

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$displayLocation:Ljava/lang/String;

    .line 1719
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "areaLocation"

    .line 1720
    invoke-virtual {v3, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "packageName"

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$packageName:Ljava/lang/String;

    .line 1721
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "packageVersion"

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1722
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "processName"

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1723
    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1724
    const-string v3, "VuiSceneToolManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enterScene, sceneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", areaLocation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", dispalyLocation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    .end local v2    # "areaLocation":Ljava/lang/String;
    goto :goto_1

    .line 1727
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "enterProcessScene"

    .line 1728
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "sceneId"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$sceneId:Ljava/lang/String;

    .line 1729
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$packageName:Ljava/lang/String;

    .line 1730
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageVersion"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1731
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "processName"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1732
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1733
    const-string v2, "VuiSceneToolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScene, sceneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1736
    .local v2, "enterResult":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1737
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1800(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1802(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Z)Z

    .line 1739
    :cond_2
    const-string v1, "VuiSceneToolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScene, success sceneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "enterResult":Ljava/lang/String;
    goto/16 :goto_2

    .line 1741
    :cond_3
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1742
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "enterScene"

    .line 1743
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "sceneId"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$sceneId:Ljava/lang/String;

    .line 1744
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$packageName:Ljava/lang/String;

    .line 1745
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageVersion"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1746
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1747
    const-string v2, "VuiSceneToolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScene: sceneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1749
    .restart local v2    # "enterResult":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1750
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1800(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1802(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Z)Z

    .line 1752
    :cond_4
    const-string v1, "VuiSceneToolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterScene, success sceneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$21;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "enterResult":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 1754
    :catch_0
    move-exception v0

    .line 1755
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VuiSceneToolManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterScene--------------e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1757
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
