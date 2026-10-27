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
            "Lbye;",
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
            "Lbye;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VuiSceneCache"

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mPre:Ljava/lang/String;

    const-string v0, "build_"

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->BUILD_PRE:Ljava/lang/String;

    const-string v0, "update_"

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->UPDATE_PRE:Ljava/lang/String;

    const-string v0, "remove_"

    .line 27
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

.method private findNode(Lbye;Ljava/lang/String;)Lbye;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 127
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 133
    :cond_1
    invoke-virtual {p1}, Lbye;->getElements()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbye;

    .line 137
    invoke-direct {p0, v1, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->findNode(Lbye;Ljava/lang/String;)Lbye;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private getTagetElement(Ljava/util/List;Ljava/lang/String;)Lbye;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbye;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lbye;"
        }
    .end annotation

    .line 114
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Lbye;

    invoke-direct {v0}, Lbye;-><init>()V

    .line 119
    invoke-virtual {v0, p1}, Lbye;->setElements(Ljava/util/List;)V

    const-string p1, "ab123"

    .line 121
    invoke-virtual {v0, p1}, Lbye;->setId(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->findNode(Lbye;Ljava/lang/String;)Lbye;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public declared-synchronized addElementGroupToCache(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbye;",
            ">;)",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

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

    move-result-object p1

    if-eqz p1, :cond_1

    .line 203
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    monitor-exit p0

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 200
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCache(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 84
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

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

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

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 94
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDisplayCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbye;",
            ">;Z)",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

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

    move-result-object p1

    if-eqz p1, :cond_1

    .line 167
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->merge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-object p1

    .line 169
    :cond_1
    monitor-exit p0

    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 147
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFusionType(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    .line 219
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result p1

    return p1

    .line 221
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getUploadedState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result p1

    return p1

    .line 227
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result p1

    return p1

    .line 234
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 236
    check-cast v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->getRemoveCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 237
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 238
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result p1

    return p1

    .line 242
    :cond_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 244
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 246
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result p1

    return p1

    .line 250
    :cond_4
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result p1

    return p1
.end method

.method public declared-synchronized getUpdateFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbye;",
            ">;Z)",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

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

    move-result-object p1

    if-eqz p1, :cond_1

    .line 192
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->updateMerge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-object p1

    .line 194
    :cond_1
    monitor-exit p0

    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 175
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getUploadedState(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lbye;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getTagetElement(Ljava/util/List;Ljava/lang/String;)Lbye;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeCache(Ljava/lang/String;)V
    .locals 2

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

    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lbye;",
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

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, ","

    .line 212
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->removeElementById(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_1
    monitor-exit p0

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 209
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeUploadState(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public declared-synchronized setCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 59
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbye;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->BUILD_PRE:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mPre:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 73
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz p2, :cond_1

    .line 74
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->buildElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->UPDATE_PRE:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mPre:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 77
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz p2, :cond_1

    .line 78
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->updateElementsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUploadedState(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
