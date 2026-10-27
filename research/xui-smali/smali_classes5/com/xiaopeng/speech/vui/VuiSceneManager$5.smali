.class Lcom/xiaopeng/speech/vui/VuiSceneManager$5;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateDisplayLocation(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

.field final synthetic val$handleCache:Z

.field final synthetic val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 621
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iput-boolean p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->val$handleCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 624
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-nez v0, :cond_1

    .line 628
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "sceneId":Ljava/lang/String;
    if-nez v0, :cond_2

    return-void

    .line 632
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    .line 633
    .local v1, "disPlayCache":Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;
    iget-boolean v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->val$handleCache:Z

    if-eqz v2, :cond_3

    .line 634
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getDisplayLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getAreaLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->setAreaCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, "jsonStr":Ljava/lang/String;
    const-string v3, "VuiSceneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayLocation  =======   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v3, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 640
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->setSendState(Z)V

    .line 641
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 642
    .local v3, "builder":Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "updateDisplayLocation"

    .line 643
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "sceneId"

    .line 644
    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "packageName"

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 645
    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "packageVersion"

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 646
    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "sceneData"

    .line 647
    invoke-virtual {v4, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 649
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "VuiSceneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateDisplayLocation to CarSpeech"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 651
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->setSendState(Z)V

    .line 652
    const-string v6, "VuiSceneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDisplayLocation to CarSpeech success"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 654
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getDisplayLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 655
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->removeDisplayCache(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v5    # "result":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 658
    :catch_0
    move-exception v5

    .line 659
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 660
    const-string v6, "VuiSceneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDisplayLocation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->setSendState(Z)V

    .line 663
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v4

    sget v5, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v4, v5, :cond_5

    .line 664
    const-string v4, "VuiSceneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDisplayLocation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$5;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .end local v3    # "builder":Landroid/net/Uri$Builder;
    :cond_5
    return-void
.end method
