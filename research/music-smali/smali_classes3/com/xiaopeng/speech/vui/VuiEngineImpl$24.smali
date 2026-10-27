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

    .line 1875
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1878
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1881
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VuiSceneTag] dispatchVuiEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiEngine"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    const-string v2, "disable.vui.feature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1883
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->disableVuiFeature()V

    .line 1884
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setFeatureState(Z)V

    .line 1885
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setFeatureState(Z)V

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableVuiFeature:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isInSpeech()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1888
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1889
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1890
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;

    if-eqz v0, :cond_1

    .line 1892
    invoke-interface {v0}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;->onHideVuiListIndex()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1896
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    goto/16 :goto_4

    .line 1898
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    const-string v3, "enable.vui.feature"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 1899
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->enableVuiFeature()V

    .line 1900
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setFeatureState(Z)V

    .line 1901
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->setFeatureState(Z)V

    const-string v0, "enableVuiFeature:"

    .line 1902
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1915
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    const-string v1, "jarvis.dm.start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1916
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setInSpeech(Z)V

    .line 1917
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Z)V

    goto/16 :goto_4

    .line 1918
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    const-string v1, "jarvis.dm.end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1919
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setInSpeech(Z)V

    .line 1920
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Z)V

    goto/16 :goto_4

    .line 1921
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    const-string v1, "rebuild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$vuiEvent:Ljava/lang/String;

    const-string v1, "scene.rebuild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 1954
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :cond_9
    :goto_1
    return-void

    .line 1922
    :cond_a
    :goto_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_4

    .line 1925
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 1928
    :cond_c
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 1930
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1931
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3

    .line 1937
    :cond_d
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 1938
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v9

    .line 1937
    invoke-static/range {v4 .. v9}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 1939
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1940
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 1941
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->removeAllCache(Ljava/lang/String;)V

    .line 1942
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 1943
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto :goto_4

    .line 1932
    :cond_e
    :goto_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$24;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lbxv;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1934
    invoke-interface {v0}, Lbxv;->onBuildScene()V

    :cond_f
    :goto_4
    return-void
.end method
