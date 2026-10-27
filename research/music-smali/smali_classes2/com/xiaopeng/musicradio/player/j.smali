.class public Lcom/xiaopeng/musicradio/player/j;
.super Ljava/lang/Object;
.source "NetRadioCacheEvictor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheInitialized()V
    .locals 1

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/player/j;->a:Z

    return-void
.end method

.method public onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 4

    const/4 v0, -0x1

    .line 27
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bs;->a(I)J

    move-result-wide v0

    .line 28
    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 30
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/player/j;->a:Z

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "NetRadioCacheEvictor"

    const-string v0, "onSpanAdded: "

    .line 32
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0

    return-void
.end method

.method public onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0

    return-void
.end method

.method public onStartFile(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method
