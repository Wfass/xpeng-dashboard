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
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 1759
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iput-boolean p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$handleCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1762
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    return-void

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez v0, :cond_1

    goto/16 :goto_6

    .line 1768
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    .line 1769
    .local v0, "sceneId":Ljava/lang/String;
    if-nez v0, :cond_2

    return-void

    .line 1770
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    .line 1771
    .local v1, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v1, :cond_3

    return-void

    .line 1772
    :cond_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v2

    .line 1773
    .local v2, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v3

    .line 1774
    .local v3, "updateCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    iget-boolean v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$handleCache:Z

    if-nez v4, :cond_8

    .line 1775
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v4, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1777
    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionType(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 1778
    return-void

    .line 1781
    :cond_4
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v4

    .line 1782
    .local v4, "jsonStr":Ljava/lang/String;
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 1783
    .local v5, "builder":Landroid/net/Uri$Builder;
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "updateScene"

    .line 1784
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "sceneId"

    .line 1785
    invoke-virtual {v6, v7, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "packageName"

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1786
    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "packageVersion"

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1787
    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "sceneData"

    .line 1788
    invoke-virtual {v6, v7, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1790
    :try_start_0
    const-string v6, "VuiSceneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " updateScene to CarSpeech "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1792
    .local v6, "result":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1793
    if-eqz v3, :cond_6

    .line 1794
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1797
    :cond_5
    if-eqz v3, :cond_6

    .line 1798
    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->removeCache(Ljava/lang/String;)V

    .line 1801
    :cond_6
    :goto_0
    const-string v7, "VuiSceneManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " updateScene to CarSpeech success"

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

    .line 1809
    .end local v6    # "result":Ljava/lang/String;
    goto :goto_1

    .line 1803
    :catch_0
    move-exception v6

    .line 1804
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1805
    const-string v7, "VuiSceneManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateScene "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1806
    if-eqz v3, :cond_7

    .line 1807
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1811
    .end local v4    # "jsonStr":Ljava/lang/String;
    .end local v5    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_7
    :goto_1
    return-void

    .line 1813
    :cond_8
    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    .line 1814
    .local v4, "type":I
    const/4 v5, 0x0

    .line 1815
    .local v5, "fusionElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v3, :cond_b

    .line 1816
    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionType(Ljava/lang/String;)I

    move-result v4

    .line 1817
    sget-object v6, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v6

    if-ne v4, v6, :cond_9

    .line 1818
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v6, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getUpdateFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    goto :goto_2

    .line 1819
    :cond_9
    sget-object v6, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v6

    if-ne v4, v6, :cond_a

    .line 1820
    if-eqz v2, :cond_a

    .line 1822
    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1825
    :cond_a
    :goto_2
    if-eqz v5, :cond_b

    .line 1826
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v6, v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1829
    :cond_b
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v6, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1830
    sget-object v6, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v6

    if-ne v4, v6, :cond_c

    .line 1831
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v6, v0, v7, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$2100(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    goto/16 :goto_5

    .line 1833
    :cond_c
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v6

    .line 1850
    .local v6, "jsonStr":Ljava/lang/String;
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 1851
    .local v7, "builder":Landroid/net/Uri$Builder;
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v8}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "updateScene"

    .line 1852
    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "sceneId"

    .line 1853
    invoke-virtual {v8, v9, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "packageName"

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1854
    invoke-virtual {v10}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "packageVersion"

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1855
    invoke-virtual {v10}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "sceneData"

    .line 1856
    invoke-virtual {v8, v9, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1858
    :try_start_1
    const-string v8, "VuiSceneManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " updateScene to CarSpeech"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1860
    .local v8, "result":Ljava/lang/String;
    const-string v9, "VuiSceneManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateScene to CarSpeech success"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1862
    if-eqz v3, :cond_e

    .line 1863
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 1866
    :cond_d
    if-eqz v3, :cond_e

    .line 1867
    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->removeCache(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1876
    .end local v8    # "result":Ljava/lang/String;
    :cond_e
    :goto_3
    goto :goto_4

    .line 1870
    :catch_1
    move-exception v8

    .line 1871
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1872
    const-string v9, "VuiSceneManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateScene "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1873
    if-eqz v3, :cond_f

    .line 1874
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1885
    .end local v6    # "jsonStr":Ljava/lang/String;
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_4
    goto :goto_5

    .line 1887
    :cond_10
    sget-object v6, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v6

    if-ne v4, v6, :cond_11

    goto :goto_5

    .line 1892
    :cond_11
    if-eqz v3, :cond_12

    .line 1894
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$21;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1906
    :cond_12
    :goto_5
    return-void

    .line 1766
    .end local v0    # "sceneId":Ljava/lang/String;
    .end local v1    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v2    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v3    # "updateCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v4    # "type":I
    .end local v5    # "fusionElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_13
    :goto_6
    return-void
.end method
