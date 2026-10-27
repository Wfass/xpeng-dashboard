.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->subscribe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

.field final synthetic val$needCheckEnterScene:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 661
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iput-boolean p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->val$needCheckEnterScene:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 665
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    const-string v0, "VuiSceneToolManager"

    const-string v1, "mObserver == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    :try_start_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 672
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "subscribeTestVuiFeatureProcess"

    .line 673
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 674
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packageVersion"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 675
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "processName"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 676
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 678
    .local v0, "targetUrl":Landroid/net/Uri;
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 679
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setFeatureState(Z)V

    .line 680
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->enableVuiFeature()V

    .line 681
    const-string v2, "VuiSceneToolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribeTestVuiFeatureProcess\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v0    # "targetUrl":Landroid/net/Uri;
    .end local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    .line 685
    :goto_0
    return-void

    .line 687
    :cond_1
    const-string v0, "VuiSceneToolManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v0, "command://scene.control"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "events":[Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$100(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 692
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 693
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "subscribeProcessTest"

    .line 694
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "observer"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 695
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "param"

    const-string v3, ""

    .line 696
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "packageName"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 697
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "packageVersion"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 698
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sceneList"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 699
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "processName"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 700
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "carType"

    .line 701
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getVuiCarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "hardWardId"

    .line 702
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getHwVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 703
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 704
    .local v1, "targetUrl":Landroid/net/Uri;
    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    .line 706
    .end local v1    # "targetUrl":Landroid/net/Uri;
    :cond_2
    iget-boolean v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->val$needCheckEnterScene:Z

    if-eqz v1, :cond_3

    .line 707
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->handleSceneDataInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 712
    :cond_3
    goto :goto_1

    .line 709
    :catch_1
    move-exception v1

    .line 710
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VuiSceneToolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribe e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$9;->val$needCheckEnterScene:Z

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->subscribe(Z)V

    .line 714
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
