.class Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;
.super Ljava/lang/Object;
.source "CacheEngine.java"

# interfaces
.implements Landroid/support/rastermill/FrameSequenceController$DiskCacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/CacheEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyDiskCacheProvider"
.end annotation


# instance fields
.field private volatile diskCache:Landroid/support/rastermill/cache/DiskCache;

.field private final factory:Landroid/support/rastermill/cache/DiskCache$Factory;


# direct methods
.method public constructor <init>(Landroid/support/rastermill/cache/DiskCache$Factory;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;->factory:Landroid/support/rastermill/cache/DiskCache$Factory;

    return-void
.end method


# virtual methods
.method public getDiskCache()Landroid/support/rastermill/cache/DiskCache;
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;->diskCache:Landroid/support/rastermill/cache/DiskCache;

    if-nez v0, :cond_2

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;->diskCache:Landroid/support/rastermill/cache/DiskCache;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;->factory:Landroid/support/rastermill/cache/DiskCache$Factory;

    invoke-interface {v0}, Landroid/support/rastermill/cache/DiskCache$Factory;->build()Landroid/support/rastermill/cache/DiskCache;

    move-result-object v0

    iput-object v0, p0, Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;->diskCache:Landroid/support/rastermill/cache/DiskCache;

    .line 227
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;->diskCache:Landroid/support/rastermill/cache/DiskCache;

    if-nez v0, :cond_1

    .line 228
    new-instance v0, Landroid/support/rastermill/cache/DiskCacheAdapter;

    invoke-direct {v0}, Landroid/support/rastermill/cache/DiskCacheAdapter;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;->diskCache:Landroid/support/rastermill/cache/DiskCache;

    .line 230
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 232
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;->diskCache:Landroid/support/rastermill/cache/DiskCache;

    return-object v0
.end method
