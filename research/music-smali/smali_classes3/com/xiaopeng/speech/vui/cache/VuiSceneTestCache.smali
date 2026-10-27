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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VuiSceneCache"

    .line 14
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mPre:Ljava/lang/String;

    const-string v0, "build_"

    .line 19
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->BUILD_PRE:Ljava/lang/String;

    const-string v0, "update_"

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->UPDATE_PRE:Ljava/lang/String;

    const-string v0, "remove_"

    .line 21
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

.method private findNode(Lbye;Ljava/lang/String;)Lbye;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 124
    :cond_1
    invoke-virtual {p1}, Lbye;->getElements()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbye;

    .line 128
    invoke-direct {p0, v1, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->findNode(Lbye;Ljava/lang/String;)Lbye;

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

    .line 105
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lbye;

    invoke-direct {v0}, Lbye;-><init>()V

    .line 110
    invoke-virtual {v0, p1}, Lbye;->setElements(Ljava/util/List;)V

    const-string p1, "ab123"

    .line 112
    invoke-virtual {v0, p1}, Lbye;->setId(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->findNode(Lbye;Ljava/lang/String;)Lbye;

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

    move-result-object p1

    if-eqz p1, :cond_1

    .line 194
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_1
    monitor-exit p0

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 191
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

    .line 75
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

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

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

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 85
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

    .line 56
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

    move-result-object p1

    if-eqz p1, :cond_1

    .line 158
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->merge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-object p1

    .line 160
    :cond_1
    monitor-exit p0

    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 138
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

    .line 210
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result p1

    return p1

    .line 212
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getUploadedState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result p1

    return p1

    .line 218
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 221
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result p1

    return p1

    .line 225
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 227
    check-cast v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->getRemoveCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 228
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result p1

    return p1

    .line 233
    :cond_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 235
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 237
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result p1

    return p1

    .line 241
    :cond_4
    sget-object p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

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

    move-result-object p1

    if-eqz p1, :cond_1

    .line 183
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->updateMerge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-object p1

    .line 185
    :cond_1
    monitor-exit p0

    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 166
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

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    goto :goto_0

    .line 40
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

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getTagetElement(Ljava/util/List;Ljava/lang/String;)Lbye;

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

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, ","

    .line 203
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->removeElementById(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
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

.method public removeUploadState(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public declared-synchronized setCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 53
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

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUploadedState(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
