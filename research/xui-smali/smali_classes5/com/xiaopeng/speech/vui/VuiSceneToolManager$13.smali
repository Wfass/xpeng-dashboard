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
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

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
    .locals 10

    .line 943
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez v0, :cond_1

    goto/16 :goto_2

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "sceneId":Ljava/lang/String;
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
    .local v1, "sceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    iget-boolean v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$handleCache:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$isHardUpload:Z

    if-nez v2, :cond_3

    .line 953
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getUploadedState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 955
    :cond_3
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$handleCache:Z

    if-eqz v3, :cond_5

    .line 956
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 957
    .local v3, "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 958
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v0, v4, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getUpdateFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 959
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 961
    :cond_4
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 962
    const-string v4, "LF"

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getDisplayLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 963
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    .line 964
    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;

    .line 965
    .local v4, "disPlayCache":Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;
    if-eqz v4, :cond_5

    .line 966
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getDisplayLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    .end local v3    # "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v4    # "disPlayCache":Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v3

    .line 971
    .local v3, "jsonStr":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v4

    .line 972
    .local v4, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_1

    .line 973
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setLastAddStr(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setLastUpdateStr(Ljava/lang/String;)V

    .line 976
    const-string v5, "VuiSceneToolManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "build full_scene_info:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v5, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 978
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 979
    .local v5, "builder":Landroid/net/Uri$Builder;
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "buildScene"

    .line 980
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "sceneId"

    .line 981
    invoke-virtual {v6, v7, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "packageName"

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 982
    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "packageVersion"

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$13;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 983
    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "sceneData"

    .line 984
    invoke-virtual {v6, v7, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 986
    :try_start_0
    const-string v6, "VuiSceneToolManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " send buildScene to test"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    if-eqz v1, :cond_7

    .line 988
    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setUploadedState(Ljava/lang/String;Z)V

    .line 990
    :cond_7
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 992
    .local v6, "result":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v1, :cond_8

    .line 993
    const/4 v7, 0x1

    invoke-virtual {v1, v0, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setUploadedState(Ljava/lang/String;Z)V

    .line 995
    :cond_8
    const-string v7, "VuiSceneToolManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " send buildScene to test success"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    .end local v6    # "result":Ljava/lang/String;
    goto :goto_0

    .line 996
    :catch_0
    move-exception v6

    .line 997
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 998
    if-eqz v1, :cond_9

    .line 999
    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setUploadedState(Ljava/lang/String;Z)V

    .line 1003
    .end local v5    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_0
    return-void

    .line 972
    :cond_a
    :goto_1
    return-void

    .line 947
    .end local v0    # "sceneId":Ljava/lang/String;
    .end local v1    # "sceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    .end local v3    # "jsonStr":Ljava/lang/String;
    .end local v4    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_b
    :goto_2
    return-void
.end method
