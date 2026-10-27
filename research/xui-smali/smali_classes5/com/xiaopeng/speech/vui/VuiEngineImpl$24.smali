.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$vuiEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 1875
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1878
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1879
    return-void

    .line 1881
    :cond_0
    const-string v0, "VuiEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VuiSceneTag] dispatchVuiEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    const-string v1, "disable.vui.feature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1883
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->disableVuiFeature()V

    .line 1884
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setFeatureState(Z)V

    .line 1885
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setFeatureState(Z)V

    .line 1886
    const-string v0, "VuiEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableVuiFeature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isInSpeech()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1888
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1889
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1890
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;

    .line 1891
    .local v1, "vuiStateListener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;
    if-eqz v1, :cond_1

    .line 1892
    invoke-interface {v1}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;->onHideVuiListIndex()V

    .line 1889
    .end local v1    # "vuiStateListener":Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_0

    .line 1896
    .end local v1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    goto/16 :goto_5

    .line 1898
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    const-string v2, "enable.vui.feature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1899
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->enableVuiFeature()V

    .line 1900
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setFeatureState(Z)V

    .line 1901
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setFeatureState(Z)V

    .line 1902
    const-string v0, "VuiEngine"

    const-string v1, "enableVuiFeature:"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1915
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    const-string v3, "jarvis.dm.start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1916
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setInSpeech(Z)V

    .line 1917
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Z)V

    goto/16 :goto_5

    .line 1918
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    const-string v3, "jarvis.dm.end"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1919
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setInSpeech(Z)V

    .line 1920
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Z)V

    goto/16 :goto_5

    .line 1921
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    const-string v3, "rebuild"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    const-string v3, "scene.rebuild"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 1947
    :cond_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 1952
    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/EventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    goto/16 :goto_5

    .line 1953
    :catch_0
    move-exception v0

    .line 1954
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Throwable;
    goto/16 :goto_5

    .line 1948
    :cond_9
    :goto_1
    return-void

    .line 1922
    :cond_a
    :goto_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_6

    .line 1925
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1926
    return-void

    .line 1928
    :cond_c
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 1930
    .local v0, "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1931
    .local v3, "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_3

    .line 1937
    :cond_d
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v8, v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 1938
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v9

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v10

    .line 1937
    invoke-static/range {v5 .. v10}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v4

    .line 1939
    .local v4, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v4, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1940
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 1941
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 1942
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 1943
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .end local v0    # "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .end local v3    # "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v4    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    goto :goto_4

    .line 1932
    .restart local v0    # "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .restart local v3    # "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_e
    :goto_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    .line 1933
    .local v1, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-eqz v1, :cond_f

    .line 1934
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onBuildScene()V

    .line 1936
    .end local v1    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    :cond_f
    nop

    .line 1946
    .end local v0    # "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .end local v3    # "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :goto_4
    nop

    .line 1958
    :cond_10
    :goto_5
    return-void

    .line 1923
    :cond_11
    :goto_6
    return-void
.end method
