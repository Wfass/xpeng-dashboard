.class public Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
.super Ljava/lang/Object;
.source "VuiSceneTestCache.java"


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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "VuiSceneCache"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->TAG:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mPre:Ljava/lang/String;

    .line 19
    const-string v0, "build_"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->BUILD_PRE:Ljava/lang/String;

    .line 20
    const-string v0, "update_"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->UPDATE_PRE:Ljava/lang/String;

    .line 21
    const-string v0, "remove_"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->REMOVE_PRE:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->removeElementsMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private findNode(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 5
    .param p1, "node"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p2, "id"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    return-object p1

    .line 124
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v1, :cond_3

    .line 126
    const/4 v2, 0x0

    .line 127
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

    .line 128
    .local v4, "child":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-direct {p0, v4, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->findNode(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_2

    .line 130
    return-object v2

    .line 132
    .end local v4    # "child":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_2
    goto :goto_0

    .line 134
    .end local v2    # "target":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_3
    return-object v0

    .line 119
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

    .line 105
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;-><init>()V

    .line 110
    .local v0, "createVuiEle":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    .line 112
    const-string v1, "ab123"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setId(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->findNode(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    return-object v1

    .line 106
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

    .line 191
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v0, :cond_1

    .line 194
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_1
    monitor-exit p0

    return-object v0

    .line 191
    .end local v0    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 190
    .end local p1    # "sceneId":Ljava/lang/String;
    .end local p2    # "newElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
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

    .line 75
    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    .line 76
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->BUILD_PRE:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mPre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 80
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->UPDATE_PRE:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mPre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 85
    :cond_2
    monitor-exit p0

    return-object v0

    .line 74
    .end local p1    # "sceneId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    throw p1
.end method

.method public declared-synchronized getDisplayCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    monitor-enter p0

    .line 56
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

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
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

    .line 138
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 140
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v0, :cond_1

    .line 158
    invoke-static {v0, p2, p3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->merge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 162
    monitor-exit p0

    return-object v0

    .line 160
    :cond_1
    monitor-exit p0

    return-object p2

    .line 138
    .end local v0    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 137
    .end local p1    # "sceneId":Ljava/lang/String;
    .end local p2    # "newElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local p3    # "isAttribute":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    throw p1
.end method

.method public getFusionType(Ljava/lang/String;)I
    .locals 6
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 209
    if-nez p1, :cond_0

    .line 210
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    return v0

    .line 212
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    .line 213
    .local v0, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getUploadedState(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    return v1

    .line 218
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v1

    .line 219
    .local v1, "updateCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    if-eqz v1, :cond_2

    .line 220
    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 221
    .local v2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 222
    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v3

    return v3

    .line 225
    .end local v2    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v2

    .line 226
    .local v2, "removeCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    if-eqz v2, :cond_3

    .line 227
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->getRemoveCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 228
    .local v3, "cache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 229
    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v4

    return v4

    .line 233
    .end local v3    # "cache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v3

    .line 234
    .local v3, "disPlayLocationCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    if-eqz v3, :cond_4

    .line 235
    invoke-virtual {v3, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "displayCache":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 237
    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v5

    return v5

    .line 241
    .end local v4    # "displayCache":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

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

    .line 166
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 169
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v0, :cond_1

    .line 183
    invoke-static {v0, p2, p3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->updateMerge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 187
    monitor-exit p0

    return-object v0

    .line 185
    :cond_1
    monitor-exit p0

    return-object p2

    .line 166
    .end local v0    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 165
    .end local p1    # "sceneId":Ljava/lang/String;
    .end local p2    # "newElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local p3    # "isAttruibte":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    throw p1
.end method

.method public getUploadedState(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 40
    .local v1, "state":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .line 42
    .end local v1    # "state":Ljava/lang/Boolean;
    :cond_2
    return v0
.end method

.method public getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "mElementId"    # Ljava/lang/String;

    .line 95
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getTagetElement(Ljava/util/List;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    return-object v1

    .line 95
    .end local v0    # "cacheElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCache(Ljava/lang/String;)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 245
    if-nez p1, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->BUILD_PRE:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mPre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->UPDATE_PRE:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mPre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->REMOVE_PRE:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mPre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->removeElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->removeElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
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

    .line 200
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v0, :cond_1

    .line 203
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->removeElementById(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
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
    .end local p2    # "id":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    throw p1
.end method

.method public removeUploadState(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 46
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    return-void
.end method

.method public declared-synchronized setCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "displayLocation"    # Ljava/lang/String;

    monitor-enter p0

    .line 53
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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

    .line 60
    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 61
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->BUILD_PRE:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mPre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->UPDATE_PRE:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mPre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    .end local p1    # "sceneId":Ljava/lang/String;
    .end local p2    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    throw p1
.end method

.method public setUploadedState(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "isUploaded"    # Z

    .line 31
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    return-void
.end method
