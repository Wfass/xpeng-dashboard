.class public Lbla;
.super Ljava/lang/Object;
.source "CacheManagerUtil.java"


# direct methods
.method public static a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-static {p1}, Lblb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 29
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z
    .locals 9

    .line 43
    invoke-static {p1}, Lblb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    return v6

    .line 47
    :cond_0
    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x7fffffff

    move-object v0, p0

    .line 48
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_1

    cmp-long p0, p0, v7

    if-nez p0, :cond_1

    const/4 v6, 0x1

    :cond_1
    return v6
.end method

.method public static c(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)I
    .locals 2

    .line 59
    invoke-static {p1}, Lblb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 63
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 66
    :cond_1
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static d(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)I
    .locals 6

    .line 76
    invoke-static {p1}, Lblb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 80
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x7fffffff

    move-object v0, p0

    .line 83
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    long-to-int p0, v0

    if-gtz p0, :cond_2

    move p0, p1

    :cond_2
    return p0
.end method
