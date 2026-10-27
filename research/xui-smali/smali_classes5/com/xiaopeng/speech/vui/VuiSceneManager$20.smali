.class Lcom/xiaopeng/speech/vui/VuiSceneManager$20;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateSceneElementAttr(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

.field final synthetic val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1638
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1641
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    return-void

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez v0, :cond_1

    goto/16 :goto_5

    .line 1647
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    .line 1648
    .local v0, "sceneId":Ljava/lang/String;
    if-nez v0, :cond_2

    return-void

    .line 1649
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    .line 1650
    .local v1, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v2

    .line 1652
    .local v2, "updateCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    .line 1653
    .local v3, "type":I
    const/4 v4, 0x0

    .line 1654
    .local v4, "fusionElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const/4 v5, 0x1

    if-eqz v2, :cond_5

    .line 1655
    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionType(Ljava/lang/String;)I

    move-result v3

    .line 1656
    sget-object v6, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v6

    if-ne v3, v6, :cond_3

    .line 1657
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v0, v6, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getUpdateFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 1658
    :cond_3
    sget-object v6, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v6

    if-ne v3, v6, :cond_4

    .line 1659
    if-eqz v1, :cond_4

    .line 1660
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v0, v6, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    .line 1663
    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 1664
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v6, v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1668
    :cond_5
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v6

    .line 1670
    .local v6, "jsonStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v7, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1671
    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v7

    if-ne v3, v7, :cond_6

    .line 1672
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v5, v0, v7, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$2100(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    goto/16 :goto_4

    .line 1690
    :cond_6
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 1691
    .local v7, "builder":Landroid/net/Uri$Builder;
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v8}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "updateScene"

    .line 1692
    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "sceneId"

    .line 1693
    invoke-virtual {v8, v9, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "packageName"

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1694
    invoke-virtual {v10}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "packageVersion"

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1695
    invoke-virtual {v10}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "sceneData"

    .line 1696
    invoke-virtual {v8, v9, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1698
    :try_start_0
    const-string v8, "VuiSceneManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " updateSceneElementAttr to CarSpeech"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1700
    .local v8, "result":Ljava/lang/String;
    const-string v9, "VuiSceneManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSceneElementAttr to CarSpeech success"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1702
    if-eqz v2, :cond_8

    .line 1703
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v0, v9}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 1706
    :cond_7
    if-eqz v2, :cond_8

    .line 1707
    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->removeCache(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1716
    .end local v8    # "result":Ljava/lang/String;
    :cond_8
    :goto_1
    goto :goto_2

    .line 1710
    :catch_0
    move-exception v8

    .line 1711
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1712
    const-string v9, "VuiSceneManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSceneElementAttr "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1713
    if-eqz v2, :cond_9

    .line 1714
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v0, v9}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1717
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_2
    if-eqz v1, :cond_b

    .line 1718
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1, v0, v8, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    .line 1719
    if-eqz v4, :cond_a

    .line 1720
    invoke-virtual {v1, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1722
    :cond_a
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1724
    :cond_b
    const-string v5, "user"

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v5

    sget v8, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v5, v8, :cond_c

    .line 1725
    const-string v5, "VuiSceneManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSceneElementAttr "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v9}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    :cond_c
    goto :goto_4

    .line 1729
    :cond_d
    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v7

    if-ne v3, v7, :cond_e

    .line 1730
    if-eqz v1, :cond_11

    .line 1731
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 1734
    :cond_e
    if-eqz v2, :cond_f

    .line 1735
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 1736
    .local v7, "mGson":Lcom/google/gson/Gson;
    const-class v8, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v7, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1737
    .local v8, "curScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v0, v9}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1739
    .end local v7    # "mGson":Lcom/google/gson/Gson;
    .end local v8    # "curScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_f
    if-eqz v1, :cond_11

    .line 1740
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v0, v7, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    .line 1741
    if-eqz v4, :cond_10

    .line 1742
    invoke-virtual {v1, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1744
    :cond_10
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1747
    :cond_11
    :goto_3
    const-string v5, "user"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v5

    sget v7, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v5, v7, :cond_12

    .line 1748
    const-string v5, "VuiSceneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSceneElementAttr cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$20;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    :cond_12
    :goto_4
    return-void

    .line 1645
    .end local v0    # "sceneId":Ljava/lang/String;
    .end local v1    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v2    # "updateCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v3    # "type":I
    .end local v4    # "fusionElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v6    # "jsonStr":Ljava/lang/String;
    :cond_13
    :goto_5
    return-void
.end method
