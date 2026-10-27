.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->updateSceneElementAttr(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

.field final synthetic val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;)V
    .locals 0

    .line 1384
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "updateSceneElementAttr "

    .line 1387
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1390
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gez v1, :cond_1

    goto/16 :goto_3

    .line 1393
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 1395
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v2

    .line 1396
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v3

    .line 1398
    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    .line 1401
    invoke-virtual {v3, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getFusionType(Ljava/lang/String;)I

    move-result v4

    .line 1402
    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v7

    if-ne v4, v7, :cond_3

    .line 1403
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v1, v7, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getUpdateFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    .line 1404
    :cond_3
    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v7

    if-ne v4, v7, :cond_4

    if-eqz v2, :cond_4

    .line 1406
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2, v1, v7, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    :cond_4
    move-object v7, v5

    :goto_0
    if-eqz v7, :cond_5

    .line 1410
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v8, v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1414
    :cond_5
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v7

    .line 1416
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v8, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)Z

    move-result v8

    const-string v9, "user"

    const-string v10, "VuiSceneToolManager"

    if-eqz v8, :cond_b

    .line 1417
    sget-object v8, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v8

    if-ne v4, v8, :cond_6

    .line 1418
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v0, v1, v2, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1600(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    goto/16 :goto_3

    .line 1436
    :cond_6
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 1437
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v8, "updateScene"

    .line 1438
    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v8, "sceneId"

    .line 1439
    invoke-virtual {v5, v8, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1440
    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "packageName"

    invoke-virtual {v5, v11, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1441
    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getVersion()Ljava/lang/String;

    move-result-object v8

    const-string v11, "packageVersion"

    invoke-virtual {v5, v11, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v8, "sceneData"

    .line 1442
    invoke-virtual {v5, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1444
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateSceneElementAttr to CarSpeech"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSceneElementAttr to CarSpeech success"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",result:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_8

    .line 1449
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    .line 1453
    invoke-virtual {v3, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->removeCache(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 1457
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_8

    .line 1460
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    :cond_8
    :goto_1
    if-eqz v2, :cond_a

    .line 1464
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1466
    invoke-virtual {v2, v1, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1468
    :cond_9
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1470
    :cond_a
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v1

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v1, v2, :cond_10

    .line 1471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1475
    :cond_b
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v4, v0, :cond_c

    if-eqz v2, :cond_f

    .line 1477
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    :cond_c
    if-eqz v3, :cond_d

    .line 1481
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1482
    const-class v4, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0, v7, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1483
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    :cond_d
    if-eqz v2, :cond_f

    .line 1486
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1488
    invoke-virtual {v2, v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1490
    :cond_e
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1493
    :cond_f
    :goto_2
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v0

    sget v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v0, v1, :cond_10

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSceneElementAttr cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$19;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_3
    return-void
.end method
