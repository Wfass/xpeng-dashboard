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

    .line 844
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iput-boolean p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->val$needCheckEnterScene:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 848
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 851
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribe\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiSceneManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "processName"

    const-string v3, "packageVersion"

    const-string v4, "packageName"

    if-eqz v0, :cond_6

    const-string v0, "mObserver == null"

    .line 854
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    :try_start_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 857
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "subscribeVuiFeatureProcess"

    .line 858
    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 859
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 860
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 861
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 863
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscribeVuiFeature\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "dm_start"

    .line 866
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 867
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1402(Lcom/xiaopeng/speech/vui/VuiSceneManager;Z)Z

    goto :goto_0

    :cond_1
    const-string v1, "dm_end"

    .line 868
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 869
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v0, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1402(Lcom/xiaopeng/speech/vui/VuiSceneManager;Z)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "vui_disabled"

    .line 870
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 871
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setFeatureState(Z)V

    .line 872
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->disableVuiFeature()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "vui_enable"

    .line 873
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 874
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setFeatureState(Z)V

    .line 875
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->enableVuiFeature()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :catch_0
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->val$needCheckEnterScene:Z

    if-eqz v0, :cond_5

    .line 882
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handleSceneDataInfo()V

    :cond_5
    return-void

    :cond_6
    const-string v0, "command://scene.control"

    .line 886
    filled-new-array {v0}, [Ljava/lang/String;

    .line 889
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1100(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, "sceneList"

    const-string v5, ""

    const-string v6, "param"

    const-string v7, "observer"

    if-eqz v0, :cond_7

    .line 890
    :try_start_2
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 891
    invoke-static {v8}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v8, "subscribeProcess"

    .line 892
    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 893
    invoke-static {v8}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 894
    invoke-virtual {v0, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 895
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 896
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 897
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1500(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 898
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 900
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    goto :goto_1

    .line 902
    :cond_7
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 903
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "subscribe"

    .line 904
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 905
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 906
    invoke-virtual {v0, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 907
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 908
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 909
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1500(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 910
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 911
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    .line 913
    :goto_1
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->val$needCheckEnterScene:Z

    if-eqz v0, :cond_8

    .line 914
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->handleSceneDataInfo()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 917
    :catch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$9;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1600(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$9$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager$9$1;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager$9;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_2
    return-void
.end method
