.class Lcom/xiaopeng/speech/vui/VuiSceneManager$14;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

.field final synthetic val$handleCache:Z

.field final synthetic val$isHardUpload:Z

.field final synthetic val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1194
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iput-boolean p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$handleCache:Z

    iput-boolean p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$isHardUpload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1197
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    return-void

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez v0, :cond_1

    goto/16 :goto_2

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, "sceneId":Ljava/lang/String;
    if-nez v0, :cond_2

    return-void

    .line 1205
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    .line 1206
    .local v1, "sceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    iget-boolean v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$handleCache:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$isHardUpload:Z

    if-nez v2, :cond_3

    .line 1207
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getUploadedState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 1209
    :cond_3
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$handleCache:Z

    if-eqz v3, :cond_5

    .line 1210
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1211
    .local v3, "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1212
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v0, v4, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getUpdateFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 1213
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1215
    :cond_4
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1224
    .end local v3    # "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v3

    .line 1225
    .local v3, "jsonStr":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v4

    .line 1226
    .local v4, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_1

    .line 1227
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setLastAddStr(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setLastUpdateStr(Ljava/lang/String;)V

    .line 1230
    const-string v5, "[VuiSceneTag]VuiSceneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VuiSceneTag build full_scene_info:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v5, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1232
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 1233
    .local v5, "builder":Landroid/net/Uri$Builder;
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "buildScene"

    .line 1234
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "sceneId"

    .line 1235
    invoke-virtual {v6, v7, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "packageName"

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1236
    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "packageVersion"

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$14;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1237
    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "sceneData"

    .line 1238
    invoke-virtual {v6, v7, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1240
    :try_start_0
    const-string v6, "VuiSceneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " send buildScene to CarSpeech"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    if-eqz v1, :cond_7

    .line 1242
    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setUploadedState(Ljava/lang/String;Z)V

    .line 1244
    :cond_7
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1246
    .local v6, "result":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v1, :cond_8

    .line 1247
    const/4 v7, 0x1

    invoke-virtual {v1, v0, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setUploadedState(Ljava/lang/String;Z)V

    .line 1249
    :cond_8
    const-string v7, "VuiSceneManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " send buildScene to CarSpeech success"

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

    .line 1255
    .end local v6    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1250
    :catch_0
    move-exception v6

    .line 1251
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1252
    if-eqz v1, :cond_9

    .line 1253
    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setUploadedState(Ljava/lang/String;Z)V

    .line 1257
    .end local v5    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_0
    return-void

    .line 1226
    :cond_a
    :goto_1
    return-void

    .line 1201
    .end local v0    # "sceneId":Ljava/lang/String;
    .end local v1    # "sceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v3    # "jsonStr":Ljava/lang/String;
    .end local v4    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_b
    :goto_2
    return-void
.end method
