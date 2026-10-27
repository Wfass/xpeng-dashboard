.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

.field final synthetic val$handleCache:Z

.field final synthetic val$isHardUpload:Z

.field final synthetic val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iput-boolean p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$handleCache:Z

    iput-boolean p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$isHardUpload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 943
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez v0, :cond_1

    goto/16 :goto_0

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 951
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v1

    .line 952
    iget-boolean v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$handleCache:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$isHardUpload:Z

    if-nez v2, :cond_3

    .line 953
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getUploadedState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 955
    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$handleCache:Z

    if-eqz v3, :cond_5

    .line 956
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 957
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 958
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getUpdateFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 959
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 961
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 962
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getDisplayLocation()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LF"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 963
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    .line 964
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;

    if-eqz v3, :cond_5

    .line 966
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getDisplayLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v3

    .line 971
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 972
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    .line 973
    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setLastAddStr(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setLastUpdateStr(Ljava/lang/String;)V

    .line 976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "build full_scene_info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VuiSceneToolManager"

    invoke-static {v5, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v4, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 978
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 979
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "buildScene"

    .line 980
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "sceneId"

    .line 981
    invoke-virtual {v6, v7, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 982
    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "packageName"

    invoke-virtual {v6, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 983
    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, "packageVersion"

    invoke-virtual {v6, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "sceneData"

    .line 984
    invoke-virtual {v6, v7, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 986
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " send buildScene to test"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    .line 988
    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setUploadedState(Ljava/lang/String;Z)V

    .line 990
    :cond_7
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 992
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v1, :cond_8

    const/4 v4, 0x1

    .line 993
    invoke-virtual {v1, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setUploadedState(Ljava/lang/String;Z)V

    .line 995
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " send buildScene to test success"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",result:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 997
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz v1, :cond_9

    .line 999
    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setUploadedState(Ljava/lang/String;Z)V

    :cond_9
    :goto_0
    return-void
.end method
