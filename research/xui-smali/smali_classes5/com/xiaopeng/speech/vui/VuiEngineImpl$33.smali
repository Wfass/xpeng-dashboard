.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$displayLocation:Ljava/lang/String;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2611
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->val$displayLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 2614
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2615
    .local v0, "newSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    .line 2616
    .local v1, "disPlayCache":Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_0
    move-object v8, v2

    .line 2618
    .end local v2    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    .local v8, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2619
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2620
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2621
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2622
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 2623
    .local v4, "sceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2624
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->val$sceneId:Ljava/lang/String;

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->val$displayLocation:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2627
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "sceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    nop

    .line 2617
    move-object v2, v8

    goto :goto_0

    .line 2628
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2629
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->removeDisplayCache(Ljava/lang/String;)V

    .line 2630
    return-void

    .line 2632
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v5, v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2633
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v7

    .line 2632
    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    .line 2634
    .local v2, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 2635
    const-string v3, "VuiEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayLocation, displayLocation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$33;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", vuiScene: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2636
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2635
    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2638
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v3

    invoke-virtual {v3, v5, v4, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2639
    return-void
.end method
