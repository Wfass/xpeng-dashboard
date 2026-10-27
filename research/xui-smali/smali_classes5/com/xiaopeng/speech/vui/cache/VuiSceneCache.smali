.class public Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
.super Ljava/lang/Object;
.source "VuiSceneCache.java"


# instance fields
.field private BUILD_PRE:Ljava/lang/String;

.field private REMOVE_PRE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private UPDATE_PRE:Ljava/lang/String;

.field public buildElementsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPre:Ljava/lang/String;

.field public mUploadedMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public removeElementsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public updateElementsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "VuiSceneCache"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mPre:Ljava/lang/String;

    .line 25
    const-string v0, "build_"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->BUILD_PRE:Ljava/lang/String;

    .line 26
    const-string v0, "update_"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->UPDATE_PRE:Ljava/lang/String;

    .line 27
    const-string v0, "remove_"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->REMOVE_PRE:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->removeElementsMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private findNode(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 5
    .param p1, "node"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p2, "id"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    return-object p1

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v1, :cond_3

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "target":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 137
    .local v4, "child":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-direct {p0, v4, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->findNode(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v2

    .line 138
    if-eqz v2, :cond_2

    .line 139
    return-object v2

    .line 141
    .end local v4    # "child":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_2
    goto :goto_0

    .line 143
    .end local v2    # "target":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_3
    return-object v0

    .line 128
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_4
    :goto_1
    return-object v0
.end method

.method private getTagetElement(Ljava/util/List;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2
    .param p2, "mElementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;"
        }
    .end annotation

    .line 114
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;-><init>()V

    .line 119
    .local v0, "createVuiEle":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    .line 121
    const-string v1, "ab123"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setId(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->findNode(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    return-object v1

    .line 115
    .end local v0    # "createVuiEle":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addElementGroupToCache(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .local p2, "newElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    monitor-enter p0

    .line 200
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v0, :cond_1

    .line 203
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    monitor-exit p0

    return-object v0

    .line 200
    .end local v0    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 199
    .end local p1    # "sceneId":Ljava/lang/String;
    .end local p2    # "newElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    throw p1
.end method

.method public declared-synchronized getCache(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 84
    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    .line 85
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->BUILD_PRE:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mPre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 89
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->UPDATE_PRE:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mPre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    :cond_2
    monitor-exit p0

    return-object v0

    .line 83
    .end local p1    # "sceneId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    throw p1
.end method

.method public declared-synchronized getDisplayCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    monitor-enter p0

    .line 62
    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "sceneId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    throw p1
.end method

.method public declared-synchronized getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p3, "isAttribute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .local p2, "newElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    monitor-enter p0

    .line 147
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v0, :cond_1

    .line 167
    invoke-static {v0, p2, p3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->merge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 171
    monitor-exit p0

    return-object v0

    .line 169
    :cond_1
    monitor-exit p0

    return-object p2

    .line 147
    .end local v0    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 146
    .end local p1    # "sceneId":Ljava/lang/String;
    .end local p2    # "newElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local p3    # "isAttribute":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    throw p1
.end method

.method public getFusionType(Ljava/lang/String;)I
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 218
    if-nez p1, :cond_0

    .line 219
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    return v0

    .line 221
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    .line 222
    .local v0, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getUploadedState(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    return v1

    .line 227
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    .line 228
    .local v1, "updateCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v1, :cond_2

    .line 229
    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 230
    .local v2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 231
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    return v3

    .line 234
    .end local v2    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v2

    .line 235
    .local v2, "removeCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v2, :cond_3

    .line 236
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->getRemoveCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 237
    .local v3, "cache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 238
    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    return v4

    .line 242
    .end local v3    # "cache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v3

    .line 243
    .local v3, "disPlayLocationCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v3, :cond_4

    .line 244
    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "displayCache":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 246
    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v5

    return v5

    .line 250
    .end local v4    # "displayCache":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    return v4
.end method

.method public declared-synchronized getUpdateFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p3, "isAttruibte"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .local p2, "newElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    monitor-enter p0

    .line 175
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v0, :cond_1

    .line 192
    invoke-static {v0, p2, p3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->updateMerge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 196
    monitor-exit p0

    return-object v0

    .line 194
    :cond_1
    monitor-exit p0

    return-object p2

    .line 175
    .end local v0    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 174
    .end local p1    # "sceneId":Ljava/lang/String;
    .end local p2    # "newElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local p3    # "isAttruibte":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    throw p1
.end method

.method public getUploadedState(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 46
    .local v1, "state":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .line 48
    .end local v1    # "state":Ljava/lang/Boolean;
    :cond_2
    return v0
.end method

.method public getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "mElementId"    # Ljava/lang/String;

    .line 104
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 107
    .local v0, "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getTagetElement(Ljava/util/List;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    return-object v1

    .line 104
    .end local v0    # "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCache(Ljava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 254
    if-nez p1, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->BUILD_PRE:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mPre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->UPDATE_PRE:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mPre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->REMOVE_PRE:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mPre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->removeElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->removeElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 209
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v0, :cond_1

    .line 212
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->removeElementById(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_1
    monitor-exit p0

    return-object v0

    .line 209
    .end local v0    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 208
    .end local p1    # "sceneId":Ljava/lang/String;
    .end local p2    # "id":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    throw p1
.end method

.method public removeUploadState(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 52
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    return-void
.end method

.method public declared-synchronized setCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "displayLocation"    # Ljava/lang/String;

    monitor-enter p0

    .line 59
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    monitor-enter p0

    .line 67
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .local v0, "vuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    nop

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->BUILD_PRE:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mPre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->UPDATE_PRE:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mPre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 66
    .end local v0    # "vuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local p1    # "sceneId":Ljava/lang/String;
    .end local p2    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    throw p1
.end method

.method public setUploadedState(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "isUploaded"    # Z

    .line 37
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    return-void
.end method
