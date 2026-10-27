.class public Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;
.super Ljava/lang/Object;
.source "XpCacheDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;,
        Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$Flags;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CACHE_FILE_SIZE:J = 0x1400000L

.field public static final FLAG_BLOCK_ON_CACHE:I = 0x1

.field public static final FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS:I = 0x4

.field public static final FLAG_IGNORE_CACHE_ON_ERROR:I = 0x2


# instance fields
.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private currentRequestIgnoresCache:Z

.field private currentRequestUnbounded:Z

.field private final eventListener:Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;

.field private flags:I

.field private final ignoreCacheForUnsetLengthRequests:Z

.field private final ignoreCacheOnError:Z

.field private key:Ljava/lang/String;

.field private lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

.field private mAlreadyCache:J

.field private mCachePath:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mUpStreamCache:J

.field private readPosition:J

.field private seenCacheError:Z

.field private totalCachedBytesRead:J

.field private final upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 6

    const/4 v3, 0x0

    const-wide/32 v4, 0x1400000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 119
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;I)V
    .locals 6

    const-wide/32 v4, 0x1400000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;IJ)V
    .locals 7

    .line 150
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    invoke-direct {v4, p1, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;)V
    .locals 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mPath:Ljava/lang/String;

    const-string v1, ""

    .line 109
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mCachePath:Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 171
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    and-int/lit8 p1, p5, 0x1

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, p3

    .line 172
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->blockOnCache:Z

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, p3

    .line 173
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->ignoreCacheOnError:Z

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    move p3, v1

    .line 174
    :cond_2
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    .line 176
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz p4, :cond_3

    .line 178
    new-instance p1, Lcom/google/android/exoplayer2/upstream/TeeDataSource;

    invoke-direct {p1, p2, p4}, Lcom/google/android/exoplayer2/upstream/TeeDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_2

    .line 180
    :cond_3
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 182
    :goto_2
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;

    return-void
.end method

.method private closeCurrentSource()V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 384
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

    .line 385
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentRequestUnbounded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v0, :cond_1

    .line 389
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 390
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 388
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v2, :cond_2

    .line 389
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 390
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 392
    :cond_2
    throw v0
.end method

.method private handleBeforeThrow(Ljava/io/IOException;)V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eq v0, v1, :cond_0

    instance-of p1, p1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 397
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->seenCacheError:Z

    :cond_1
    return-void
.end method

.method private notifyBytesRead()V
    .locals 12

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    instance-of v1, v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    if-eqz v1, :cond_0

    .line 411
    check-cast v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->getLength()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mAlreadyCache:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mAlreadyCache:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 418
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_5

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mUpStreamCache:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_5

    .line 419
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mAlreadyCache:J

    add-long/2addr v6, v4

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v6, v4

    if-nez v1, :cond_3

    .line 420
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    instance-of v4, v1, Lcom/google/android/exoplayer2/upstream/TeeDataSource;

    if-eqz v4, :cond_5

    .line 421
    check-cast v1, Lcom/google/android/exoplayer2/upstream/TeeDataSource;

    .line 422
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/TeeDataSource;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;

    if-eqz v0, :cond_5

    .line 425
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;->onAlreadyCacheCompleted(Ljava/lang/String;J)V

    goto :goto_1

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;

    if-eqz v1, :cond_5

    .line 429
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v1, v0, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;->onAlreadyCacheCompleted(Ljava/lang/String;J)V

    goto :goto_1

    .line 435
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v10

    invoke-interface/range {v6 .. v11}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v4

    .line 437
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mUpStreamCache:J

    add-long/2addr v4, v6

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v1, v6}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    .line 438
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    instance-of v4, v1, Lcom/google/android/exoplayer2/upstream/TeeDataSource;

    if-eqz v4, :cond_5

    .line 439
    check-cast v1, Lcom/google/android/exoplayer2/upstream/TeeDataSource;

    .line 440
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/TeeDataSource;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;

    if-eqz v0, :cond_5

    .line 443
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;->onAlreadyCacheCompleted(Ljava/lang/String;J)V

    goto :goto_1

    .line 446
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;

    if-eqz v1, :cond_5

    .line 447
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v1, v0, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;->onAlreadyCacheCompleted(Ljava/lang/String;J)V

    .line 455
    :cond_5
    :goto_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->totalCachedBytesRead:J

    .line 456
    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mUpStreamCache:J

    .line 457
    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mAlreadyCache:J

    return-void
.end method

.method private notifyUpStreamRead()V
    .locals 5

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mUpStreamCache:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 404
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mAlreadyCache:J

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;->onAlreadyCache(JJ)V

    :cond_0
    return-void
.end method

.method private openNextSource(Z)Z
    .locals 16

    move-object/from16 v1, p0

    .line 286
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentRequestIgnoresCache:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 288
    :cond_0
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->blockOnCache:Z

    if-eqz v0, :cond_1

    .line 290
    :try_start_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->readPosition:J

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 295
    :cond_1
    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->readPosition:J

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0

    :goto_0
    const-wide/16 v3, -0x1

    if-nez v0, :cond_2

    .line 301
    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 302
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->uri:Landroid/net/Uri;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->readPosition:J

    iget-wide v9, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    iget-object v11, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    iget v12, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->flags:I

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    goto :goto_2

    .line 303
    :cond_2
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v5, :cond_4

    .line 305
    iget-object v5, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 306
    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->readPosition:J

    iget-wide v8, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long v10, v5, v8

    .line 307
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v5, v10

    .line 308
    iget-wide v8, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_3

    .line 309
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_3
    move-wide v12, v5

    .line 311
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->readPosition:J

    iget-object v14, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    iget v15, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->flags:I

    move-object v6, v0

    invoke-direct/range {v6 .. v15}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 312
    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object v5, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object v5, v0

    goto :goto_2

    .line 316
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isOpenEnded()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 317
    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    goto :goto_1

    .line 319
    :cond_5
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    .line 320
    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    cmp-long v9, v7, v3

    if-eqz v9, :cond_6

    .line 321
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_6
    :goto_1
    move-wide v11, v5

    .line 324
    new-instance v5, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->uri:Landroid/net/Uri;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->readPosition:J

    iget-object v13, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    iget v14, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->flags:I

    move-object v7, v5

    invoke-direct/range {v7 .. v14}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 325
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v6, :cond_7

    .line 326
    iput-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 327
    iput-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->lockedSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    goto :goto_2

    .line 329
    :cond_7
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 330
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v6, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 334
    :goto_2
    iget-wide v6, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v6, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_8

    move v0, v6

    goto :goto_3

    :cond_8
    move v0, v7

    :goto_3
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentRequestUnbounded:Z

    const-wide/16 v8, 0x0

    .line 338
    :try_start_1
    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    if-nez p1, :cond_a

    .line 344
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentRequestUnbounded:Z

    if-eqz v6, :cond_a

    move-object v6, v0

    :goto_4
    if-eqz v6, :cond_a

    .line 347
    instance-of v10, v6, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v10, :cond_9

    .line 348
    move-object v10, v6

    check-cast v10, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v10, v10, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    if-nez v10, :cond_9

    move-object v0, v2

    goto :goto_5

    .line 354
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    goto :goto_4

    :cond_a
    :goto_5
    if-nez v0, :cond_c

    move v6, v7

    .line 364
    :goto_6
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentRequestUnbounded:Z

    if-eqz v0, :cond_b

    cmp-long v0, v8, v3

    if-eqz v0, :cond_b

    .line 365
    iput-wide v8, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    .line 366
    iget-wide v2, v5, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->setContentLength(J)V

    :cond_b
    return v6

    .line 358
    :cond_c
    throw v0
.end method

.method private setContentLength(J)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->setContentLength(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->uri:Landroid/net/Uri;

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->notifyBytesRead()V

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->closeCurrentSource()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 272
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 273
    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->uri:Landroid/net/Uri;

    :goto_0
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 7

    .line 188
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->uri:Landroid/net/Uri;

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mPath:Ljava/lang/String;

    .line 190
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->flags:I

    .line 191
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    .line 192
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->readPosition:J

    .line 193
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->ignoreCacheOnError:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->seenCacheError:Z

    if-nez v0, :cond_1

    :cond_0
    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentRequestIgnoresCache:Z

    .line 195
    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    .line 199
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_6

    .line 200
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    .line 201
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    goto :goto_2

    .line 202
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    .line 196
    :cond_5
    :goto_1
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    .line 206
    :cond_6
    :goto_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->openNextSource(Z)Z

    .line 207
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 210
    throw p1
.end method

.method public read([BII)I
    .locals 9

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 220
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 224
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v1

    const-wide/16 v5, -0x1

    if-ltz v1, :cond_5

    .line 226
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne p1, p2, :cond_2

    .line 227
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->totalCachedBytesRead:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->totalCachedBytesRead:J

    .line 228
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mAlreadyCache:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mAlreadyCache:J

    .line 229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->notifyUpStreamRead()V

    .line 231
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne p1, p2, :cond_4

    .line 232
    :cond_3
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mUpStreamCache:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->mUpStreamCache:J

    .line 233
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->notifyUpStreamRead()V

    .line 235
    :cond_4
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->readPosition:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->readPosition:J

    .line 236
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    cmp-long p1, p1, v5

    if-eqz p1, :cond_8

    .line 237
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    goto :goto_0

    .line 240
    :cond_5
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->currentRequestUnbounded:Z

    if-eqz v2, :cond_6

    .line 243
    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->readPosition:J

    invoke-direct {p0, v7, v8}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->setContentLength(J)V

    .line 244
    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    .line 246
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->closeCurrentSource()V

    .line 247
    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    cmp-long v2, v7, v3

    if-gtz v2, :cond_7

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_8

    .line 248
    :cond_7
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->openNextSource(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 249
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_8
    :goto_0
    return v1

    :catch_0
    move-exception p1

    .line 255
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    .line 256
    throw p1
.end method
