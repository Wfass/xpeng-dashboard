.class public Lcom/xiaopeng/musicradio/player/f;
.super Ljava/lang/Object;
.source "LRUCacheEvictor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/player/f$a;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/xiaopeng/musicradio/player/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:D

.field private d:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/player/f;->d:Z

    .line 36
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/player/f;->a:J

    .line 37
    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Lcom/xiaopeng/musicradio/player/f$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/player/f$1;-><init>(Lcom/xiaopeng/musicradio/player/f;)V

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/f;->b:Ljava/util/TreeSet;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/cache/Cache;)V
    .locals 5

    const-string v0, "LRUCacheEvictor"

    .line 106
    :goto_0
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/player/f;->c:D

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/player/f;->a:J

    long-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/f;->b:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/f;->b:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/player/f$a;

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evictCache: ========= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/player/f$a;->c(Lcom/xiaopeng/musicradio/player/f$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentByteSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/player/f;->c:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " maxFileByteSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/player/f;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {v1}, Lcom/xiaopeng/musicradio/player/f$a;->d(Lcom/xiaopeng/musicradio/player/f$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 114
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 116
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_1

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/f;->b:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "evictCache: "

    .line 120
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/f;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 129
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/player/f$a;

    .line 131
    invoke-static {v2}, Lcom/xiaopeng/musicradio/player/f$a;->c(Lcom/xiaopeng/musicradio/player/f$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/musicradio/player/f$a;->a(Lcom/xiaopeng/musicradio/player/f$a;J)J

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move-object v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/f;->b:Ljava/util/TreeSet;

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/player/f;->d:Z

    return v0
.end method

.method public declared-synchronized onCacheInitialized()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 47
    :try_start_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/player/f;->d:Z

    const-string v0, "LRUCacheEvictor"

    const-string v1, "onCacheInitialized: ==========="

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 6

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/f;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/player/f$a;

    .line 61
    invoke-static {v2}, Lcom/xiaopeng/musicradio/player/f$a;->c(Lcom/xiaopeng/musicradio/player/f$a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    iget-wide v3, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/musicradio/player/f$a;->a(Lcom/xiaopeng/musicradio/player/f$a;J)J

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move-object v1, v2

    :cond_1
    if-nez v1, :cond_2

    .line 70
    new-instance v1, Lcom/xiaopeng/musicradio/player/f$a;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/player/f$a;-><init>()V

    .line 71
    iget-object v0, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/player/f$a;->a(Lcom/xiaopeng/musicradio/player/f$a;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/musicradio/player/f$a;->a(Lcom/xiaopeng/musicradio/player/f$a;J)J

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/f;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 75
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/player/f;->c:D

    iget-wide v4, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    long-to-float v0, v4

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v0, v4

    float-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/player/f;->c:D

    .line 76
    invoke-static {v1}, Lcom/xiaopeng/musicradio/player/f$a;->d(Lcom/xiaopeng/musicradio/player/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/player/f;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;)V

    const-string p1, "LRUCacheEvictor"

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpanAdded: ========= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/player/f;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " maxFileByteSize = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/player/f;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 5

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/f;->b:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 83
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/player/f$a;

    .line 86
    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/f$a;->c(Lcom/xiaopeng/musicradio/player/f$a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/f$a;->d(Lcom/xiaopeng/musicradio/player/f$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/player/f;->c:D

    iget-wide v3, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    long-to-float v3, v3

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/xiaopeng/musicradio/player/f;->c:D

    .line 90
    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/f$a;->d(Lcom/xiaopeng/musicradio/player/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_1
    const-string p1, "LRUCacheEvictor"

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpanRemoved: ========= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/player/f;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " maxFileSize = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/player/f;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/player/f;->onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 102
    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/musicradio/player/f;->onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onStartFile(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/player/f;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;)V

    const-string p1, "LRUCacheEvictor"

    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onStartFile: ==== "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
