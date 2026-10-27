.class Lcom/xiaopeng/speech/vui/VuiSceneManager$21;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateDynamicScene(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
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

    .line 1759
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iput-boolean p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$handleCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1762
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez v0, :cond_1

    goto/16 :goto_3

    .line 1768
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1770
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 1772
    :cond_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    .line 1773
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v2

    .line 1774
    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$handleCache:Z

    const-string v4, ",result:"

    const-string v5, "updateScene "

    const-string v6, "sceneData"

    const-string v7, "packageVersion"

    const-string v8, "packageName"

    const-string v9, "sceneId"

    const-string v10, "updateScene"

    const-string v11, "VuiSceneManager"

    if-nez v3, :cond_8

    .line 1775
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1777
    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionType(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    if-eq v1, v3, :cond_4

    return-void

    .line 1781
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v1

    .line 1782
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 1783
    iget-object v12, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v12}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 1784
    invoke-virtual {v12, v10}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 1785
    invoke-virtual {v10, v9, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1786
    invoke-virtual {v10}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1787
    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1788
    invoke-virtual {v7, v6, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1790
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateScene to CarSpeech "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1792
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_6

    .line 1794
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 1798
    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->removeCache(Ljava/lang/String;)V

    .line 1801
    :cond_6
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateScene to CarSpeech success"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1804
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_7

    .line 1807
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    :cond_7
    :goto_1
    return-void

    .line 1813
    :cond_8
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    const/4 v12, 0x0

    if-eqz v2, :cond_b

    .line 1816
    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionType(Ljava/lang/String;)I

    move-result v3

    .line 1817
    sget-object v13, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v13

    if-ne v3, v13, :cond_9

    .line 1818
    iget-object v12, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v12}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v2, v0, v12, v13}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getUpdateFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v12

    goto :goto_2

    .line 1819
    :cond_9
    sget-object v13, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v13

    if-ne v3, v13, :cond_a

    if-eqz v1, :cond_a

    .line 1822
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    :cond_a
    :goto_2
    if-eqz v12, :cond_b

    .line 1826
    iget-object v13, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v13, v12}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1829
    :cond_b
    iget-object v12, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v12, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1830
    sget-object v12, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v12}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v12

    if-ne v3, v12, :cond_c

    .line 1831
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v2, v0, v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$2100(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    goto/16 :goto_3

    .line 1833
    :cond_c
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v1

    .line 1850
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 1851
    iget-object v12, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v12}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 1852
    invoke-virtual {v12, v10}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 1853
    invoke-virtual {v10, v9, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1854
    invoke-virtual {v10}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1855
    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1856
    invoke-virtual {v7, v6, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1858
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateScene to CarSpeech"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateScene to CarSpeech success"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v2, :cond_10

    .line 1863
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :cond_d
    if-eqz v2, :cond_10

    .line 1867
    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->removeCache(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 1871
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_10

    .line 1874
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 1887
    :cond_e
    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    if-ne v3, v1, :cond_f

    goto :goto_3

    :cond_f
    if-eqz v2, :cond_10

    .line 1894
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    :cond_10
    :goto_3
    return-void
.end method
