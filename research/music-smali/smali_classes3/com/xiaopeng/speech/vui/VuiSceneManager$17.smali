.class Lcom/xiaopeng/speech/vui/VuiSceneManager$17;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

.field final synthetic val$elementGroupId:Ljava/lang/String;

.field final synthetic val$handleCache:Z

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$elementGroupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$handleCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 1406
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1409
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    .line 1410
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v2

    .line 1411
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    .line 1412
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$elementGroupId:Ljava/lang/String;

    .line 1413
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    if-eqz v5, :cond_18

    if-nez v4, :cond_1

    goto/16 :goto_a

    .line 1414
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1415
    invoke-static {v8}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$100(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene()Z

    move-result v8

    iget-object v9, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v10}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v10

    .line 1414
    invoke-static/range {v5 .. v10}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v5

    .line 1416
    iget-boolean v6, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$handleCache:Z

    const-string v7, ",result:"

    const-string v8, "removeSceneElementGroup to CarSpeech success"

    const-string v9, "sceneData"

    const-string v10, "id"

    const-string v11, "packageVersion"

    const-string v12, "packageName"

    const-string v13, "sceneId"

    const-string v14, "removeSceneElementGroup"

    const-string v15, "VuiSceneManager"

    if-nez v6, :cond_4

    .line 1417
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1418
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v2

    .line 1419
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1420
    invoke-virtual {v5, v14}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    .line 1421
    invoke-virtual {v5, v13, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1422
    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v12, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1423
    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1424
    invoke-virtual {v5, v10, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1425
    invoke-virtual {v5, v9, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1427
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    .line 1431
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 1435
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->removeCache(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1439
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz v3, :cond_3

    .line 1441
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    .line 1446
    :cond_4
    sget-object v6, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v6

    const/16 v16, 0x0

    if-eqz v0, :cond_a

    .line 1449
    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionType(Ljava/lang/String;)I

    move-result v6

    .line 1450
    sget-object v17, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v17}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v15

    if-ne v6, v15, :cond_6

    .line 1451
    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v15, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    :cond_5
    :goto_1
    move/from16 v17, v6

    :goto_2
    move-object v6, v4

    move-object/from16 v4, v16

    goto :goto_3

    .line 1453
    :cond_6
    sget-object v15, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v15}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v15

    if-ne v6, v15, :cond_7

    if-eqz v2, :cond_5

    .line 1455
    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v15, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    goto :goto_1

    .line 1457
    :cond_7
    sget-object v15, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v15}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v15

    if-ne v6, v15, :cond_5

    if-eqz v3, :cond_5

    .line 1459
    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v15}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->getRemoveCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1460
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1500(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, ""

    move/from16 v17, v6

    const-string v6, "["

    invoke-virtual {v4, v6, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :goto_3
    if-eqz v4, :cond_9

    .line 1465
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8

    .line 1466
    invoke-virtual {v5, v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    goto :goto_4

    .line 1468
    :cond_8
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$handleCache:Z

    invoke-virtual {v0, v2, v6, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_9
    :goto_4
    move-object v4, v6

    move/from16 v6, v17

    goto :goto_5

    :cond_a
    move-object/from16 v18, v15

    .line 1473
    :goto_5
    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)Z

    move-result v0

    const-string v15, "user"

    if-eqz v0, :cond_11

    .line 1474
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v6, v0, :cond_b

    .line 1475
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-static {v0, v3, v5, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$2100(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    goto/16 :goto_a

    .line 1476
    :cond_b
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v6, v0, :cond_c

    .line 1477
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateDynamicScene(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    goto/16 :goto_a

    .line 1479
    :cond_c
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1480
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v15

    .line 1481
    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v15}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    .line 1482
    invoke-virtual {v15, v14}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    .line 1483
    invoke-virtual {v14, v13, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    iget-object v14, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1484
    invoke-static {v14}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    iget-object v13, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1485
    invoke-static {v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    .line 1486
    invoke-virtual {v11, v10, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 1487
    invoke-virtual {v10, v9, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1489
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1490
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v7, v18

    :try_start_2
    invoke-static {v7, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v3, :cond_e

    .line 1493
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    if-eqz v3, :cond_e

    .line 1497
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->removeCache(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v7, v18

    .line 1501
    :goto_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz v3, :cond_e

    .line 1503
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_7
    if-eqz v2, :cond_10

    .line 1507
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1509
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1511
    :cond_f
    invoke-virtual {v5, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1513
    :cond_10
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    move-object/from16 v8, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v0

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v0, v2, :cond_18

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSceneElementGroup "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_11
    move-object v8, v15

    move-object/from16 v7, v18

    .line 1518
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v6, v0, :cond_12

    if-eqz v2, :cond_17

    .line 1520
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_9

    .line 1523
    :cond_12
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v6, v0, :cond_13

    if-eqz v16, :cond_15

    .line 1525
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v3

    move-object/from16 v6, v16

    invoke-virtual {v6, v0, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8

    .line 1527
    :cond_13
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v6, v0, :cond_14

    if-eqz v3, :cond_15

    .line 1529
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_14
    if-eqz v3, :cond_15

    .line 1533
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_8
    if-eqz v2, :cond_17

    .line 1537
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1539
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiSceneManager$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1541
    :cond_16
    invoke-virtual {v5, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1544
    :cond_17
    :goto_9
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v0

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v0, v2, :cond_18

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSceneElementGroup:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_a
    return-void
.end method
