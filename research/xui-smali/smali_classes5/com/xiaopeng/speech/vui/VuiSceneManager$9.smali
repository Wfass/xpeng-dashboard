.class Lcom/xiaopeng/speech/vui/VuiSceneManager$9;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->subscribe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

.field final synthetic val$needCheckEnterScene:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 844
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iput-boolean p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->val$needCheckEnterScene:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 848
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    return-void

    .line 851
    :cond_0
    const-string v0, "VuiSceneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 854
    const-string v0, "VuiSceneManager"

    const-string v1, "mObserver == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    :try_start_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 857
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "subscribeVuiFeatureProcess"

    .line 858
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 859
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packageVersion"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 860
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "processName"

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 861
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 863
    .local v0, "targetUrl":Landroid/net/Uri;
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 864
    .local v1, "result":Ljava/lang/String;
    const-string v2, "VuiSceneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribeVuiFeature\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 866
    const-string v2, "dm_start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 867
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1402(Lcom/xiaopeng/speech/vui/VuiSceneManager;Z)Z

    goto :goto_0

    .line 868
    :cond_1
    const-string v2, "dm_end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 869
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1402(Lcom/xiaopeng/speech/vui/VuiSceneManager;Z)Z

    goto :goto_0

    .line 870
    :cond_2
    const-string v2, "vui_disabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 871
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setFeatureState(Z)V

    .line 872
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->disableVuiFeature()V

    goto :goto_0

    .line 873
    :cond_3
    const-string v2, "vui_enable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 874
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setFeatureState(Z)V

    .line 875
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->enableVuiFeature()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    .end local v0    # "targetUrl":Landroid/net/Uri;
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    :goto_0
    goto :goto_1

    .line 878
    :catch_0
    move-exception v0

    .line 881
    :goto_1
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->val$needCheckEnterScene:Z

    if-eqz v0, :cond_5

    .line 882
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handleSceneDataInfo()V

    .line 884
    :cond_5
    return-void

    .line 886
    :cond_6
    const-string v0, "command://scene.control"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "events":[Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1100(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 890
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 891
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "subscribeProcess"

    .line 892
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "observer"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 893
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "param"

    const-string v3, ""

    .line 894
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "packageName"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 895
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "packageVersion"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 896
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sceneList"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 897
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1500(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "processName"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 898
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 899
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 900
    .local v1, "targetUrl":Landroid/net/Uri;
    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    .line 901
    .end local v1    # "targetUrl":Landroid/net/Uri;
    goto :goto_2

    .line 902
    :cond_7
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 903
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "subscribe"

    .line 904
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "observer"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 905
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "param"

    const-string v3, ""

    .line 906
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "packageName"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 907
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "packageVersion"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 908
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sceneList"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 909
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1500(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 910
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 911
    .restart local v1    # "targetUrl":Landroid/net/Uri;
    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    .line 913
    .end local v1    # "targetUrl":Landroid/net/Uri;
    :goto_2
    iget-boolean v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->val$needCheckEnterScene:Z

    if-eqz v1, :cond_8

    .line 914
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handleSceneDataInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 924
    :cond_8
    goto :goto_3

    .line 916
    :catch_1
    move-exception v1

    .line 917
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1600(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/speech/vui/VuiSceneManager$9$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$9$1;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager$9;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 926
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
