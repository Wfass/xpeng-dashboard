.class public Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
.super Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
.source "VuiSceneBuildTestCache.java"


# instance fields
.field private displayLocations:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->displayLocations:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->mUploadedMap:Ljava/util/concurrent/ConcurrentMap;

    .line 18
    const-string v0, "build_"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->mPre:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public declared-synchronized getDisplayCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->displayLocations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "sceneId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    throw p1
.end method

.method public removeDisplayLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->displayLocations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->displayLocations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    return-void
.end method

.method public setDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "displayLocation"    # Ljava/lang/String;

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "VuiSceneBuildCache"

    const-string v1, "sceneId is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    return-void

    .line 26
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    const-string v0, "VuiSceneBuildCache"

    const-string v1, "displayLocation is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    return-void

    .line 30
    :cond_1
    const-string v0, "VuiSceneBuildCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sceneid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",displayLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->displayLocations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method
