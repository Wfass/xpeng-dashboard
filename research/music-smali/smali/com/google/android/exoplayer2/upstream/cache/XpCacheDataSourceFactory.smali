.class public Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;
.super Ljava/lang/Object;
.source "XpCacheDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

.field private final eventListener:Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;

.field private final flags:I

.field private final upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V
    .locals 6

    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;IJ)V
    .locals 7

    .line 33
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;

    invoke-direct {v4, p1, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 41
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 42
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 43
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    .line 44
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->flags:I

    .line 45
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->createDataSource()Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;
    .locals 8

    .line 51
    new-instance v7, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->cacheReadDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 52
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->cacheWriteDataSinkFactory:Lcom/google/android/exoplayer2/upstream/DataSink$Factory;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSink$Factory;->createDataSink()Lcom/google/android/exoplayer2/upstream/DataSink;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    iget v5, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->flags:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSourceFactory;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/XpCacheDataSource$EventListener;)V

    return-object v7
.end method
