.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;,
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Flags;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CACHE_FILE_SIZE:J = 0x200000L

.field public static final FLAG_BLOCK_ON_CACHE:I = 0x1

.field public static final FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS:I = 0x4

.field public static final FLAG_IGNORE_CACHE_ON_ERROR:I = 0x2

.field private static final MAX_REPEAT_COUNT:I = 0x14

.field private static final MIN_READ_BEFORE_CHECKING_CACHE:J = 0x19000L

.field private static final TAG:Ljava/lang/String; = "CacheDataSource"


# instance fields
.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private checkCachePosition:J

.field private currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private currentDataSpecLengthUnset:Z

.field private currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

.field private currentRequestIgnoresCache:Z

.field private final eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

.field private flags:I

.field private final ignoreCacheForUnsetLengthRequests:Z

.field private final ignoreCacheOnError:Z

.field private key:Ljava/lang/String;

.field private mRepeatCount:I

.field private readPosition:J

.field private seenCacheError:Z

.field private totalCachedBytesRead:J

.field private final upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 6

    const/4 v3, 0x0

    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 133
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;I)V
    .locals 6

    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 146
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;IJ)V
    .locals 7

    .line 164
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    invoke-direct {v4, p1, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->mRepeatCount:I

    .line 184
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 185
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    and-int/lit8 p1, p5, 0x1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, v0

    .line 186
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    move p1, p3

    goto :goto_1

    :cond_1
    move p1, v0

    .line 187
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p3, v0

    .line 188
    :goto_2
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    .line 190
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz p4, :cond_3

    .line 192
    new-instance p1, Lcom/google/android/exoplayer2/upstream/TeeDataSource;

    invoke-direct {p1, p2, p4}, Lcom/google/android/exoplayer2/upstream/TeeDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    .line 194
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 196
    :goto_3
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    const-string p1, "CacheDataSource"

    const-string p2, "CacheDataSource: ===="

    .line 197
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private closeCurrentSource()V
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 430
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 433
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpecLengthUnset:Z

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v0, :cond_1

    .line 435
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 436
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 432
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 433
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpecLengthUnset:Z

    .line 434
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v1, :cond_2

    .line 435
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 436
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 438
    :cond_2
    throw v0
.end method

.method private handleBeforeThrow(Ljava/lang/Throwable;)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eq v0, v1, :cond_0

    instance-of p1, p1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 443
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    :cond_1
    return-void
.end method

.method private static isCausedByPositionOutOfRange(Ljava/io/IOException;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 403
    instance-of v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v0, :cond_0

    .line 404
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 409
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isWritingToCache()Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyBytesRead()V
    .locals 7

    .line 448
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCacheSpace()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    invoke-interface {v0, v1, v2, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;->onCachedBytesRead(JJ)V

    .line 450
    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    :cond_0
    return-void
.end method

.method private openNextSource(Z)V
    .locals 14

    .line 317
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 319
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    if-eqz v0, :cond_1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0

    :goto_0
    const-wide/16 v2, -0x1

    if-nez v0, :cond_2

    .line 334
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 335
    new-instance v12, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget v11, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    move-object v5, v1

    goto :goto_2

    .line 336
    :cond_2
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v4, :cond_4

    .line 338
    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 339
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v8, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long v8, v6, v8

    .line 340
    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v6, v8

    .line 341
    iget-wide v10, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v1, v10, v2

    if-eqz v1, :cond_3

    .line 342
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_3
    move-wide v10, v6

    .line 344
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-object v12, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget v13, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 345
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object v5, v4

    move-object v4, v1

    goto :goto_2

    .line 349
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isOpenEnded()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 350
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_1

    .line 352
    :cond_5
    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    .line 353
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_6

    .line 354
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_6
    :goto_1
    move-wide v10, v4

    .line 357
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-object v12, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget v13, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 358
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v5, :cond_7

    goto :goto_2

    .line 361
    :cond_7
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 362
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v6, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    move-object v0, v1

    .line 367
    :goto_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v5, v1, :cond_8

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    const-wide/32 v8, 0x19000

    add-long/2addr v6, v8

    goto :goto_3

    :cond_8
    const-wide v6, 0x7fffffffffffffffL

    :goto_3
    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->checkCachePosition:J

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_c

    .line 372
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne p1, v7, :cond_9

    move p1, v1

    goto :goto_4

    :cond_9
    move p1, v6

    :goto_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 373
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v5, p1, :cond_a

    return-void

    .line 379
    :cond_a
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 381
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isHoleSpan()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 383
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 385
    :cond_b
    throw p1

    :cond_c
    :goto_5
    if-eqz v0, :cond_d

    .line 389
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isHoleSpan()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 390
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 392
    :cond_d
    iput-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 393
    iget-wide v7, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long p1, v7, v2

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    move v1, v6

    :goto_6
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpecLengthUnset:Z

    .line 394
    invoke-interface {v5, v4}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    .line 395
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpecLengthUnset:Z

    if-eqz p1, :cond_f

    cmp-long p1, v0, v2

    if-eqz p1, :cond_f

    .line 396
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->setBytesRemaining(J)V

    :cond_f
    return-void
.end method

.method private setBytesRemaining(J)V
    .locals 4

    .line 415
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 416
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isWritingToCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    add-long/2addr v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->setContentLength(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    .line 292
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->notifyBytesRead()V

    .line 294
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 296
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 297
    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    :goto_0
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 6

    .line 203
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    .line 204
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    .line 205
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    const-string v0, "CacheDataSource"

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    .line 208
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    if-nez v0, :cond_1

    :cond_0
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    .line 210
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 214
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_6

    .line 215
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 216
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_4

    goto :goto_2

    .line 217
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    .line 211
    :cond_5
    :goto_1
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 221
    :cond_6
    :goto_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Z)V

    .line 222
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 224
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 225
    throw p1
.end method

.method public read([BII)I
    .locals 10

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 236
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-nez v1, :cond_1

    return v2

    .line 240
    :cond_1
    :try_start_0
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->checkCachePosition:J

    cmp-long v1, v5, v7

    const/4 v5, 0x1

    if-ltz v1, :cond_2

    .line 241
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Z)V

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v1

    const-wide/16 v6, -0x1

    if-eq v1, v2, :cond_4

    .line 245
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->mRepeatCount:I

    .line 246
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne p1, p2, :cond_3

    .line 247
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    int-to-long v8, v1

    add-long/2addr p1, v8

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    .line 249
    :cond_3
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    int-to-long v8, v1

    add-long/2addr p1, v8

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    .line 250
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long p1, p1, v6

    if-eqz p1, :cond_6

    .line 251
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    sub-long/2addr p1, v8

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_0

    .line 253
    :cond_4
    iget-boolean v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpecLengthUnset:Z

    if-eqz v8, :cond_5

    .line 254
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->mRepeatCount:I

    .line 255
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->setBytesRemaining(J)V

    goto :goto_0

    .line 256
    :cond_5
    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v8, v8, v3

    if-gtz v8, :cond_7

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v6, v8, v6

    if-nez v6, :cond_6

    goto :goto_1

    .line 267
    :cond_6
    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->mRepeatCount:I

    return v1

    .line 257
    :cond_7
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->mRepeatCount:I

    const/16 v6, 0x14

    if-ge v1, v6, :cond_8

    .line 258
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->mRepeatCount:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->mRepeatCount:I

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V

    .line 260
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Z)V

    .line 261
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->read([BII)I

    move-result p1

    return p1

    :cond_8
    const-string p1, "CacheDataSource"

    const-string p2, "read:loop error ====="

    .line 263
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/16 p2, 0x7d8

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 278
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->mRepeatCount:I

    .line 279
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 280
    throw p1

    :catch_1
    move-exception p1

    .line 270
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->mRepeatCount:I

    .line 271
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpecLengthUnset:Z

    if-eqz p2, :cond_9

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 272
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->setBytesRemaining(J)V

    return v2

    .line 275
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 276
    throw p1
.end method
