.class public Landroid/support/rastermill/CacheEngine;
.super Ljava/lang/Object;
.source "CacheEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;,
        Landroid/support/rastermill/CacheEngine$CacheCallback;
    }
.end annotation


# static fields
.field private static final DIR_NAME_WEBP_CACHE:Ljava/lang/String; = "webp_cache"

.field private static sInstance:Landroid/support/rastermill/CacheEngine;

.field private static sMainThreadHandler:Landroid/os/Handler;


# instance fields
.field private final diskCacheProvider:Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;

.field private mContext:Landroid/content/Context;

.field private mFetchingSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFutureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Landroid/support/rastermill/CacheEngine$CacheCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private final mSourceService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/rastermill/CacheEngine;->sMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/support/rastermill/cache/DiskCache$Factory;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/CacheEngine;->mFutureMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/CacheEngine;->mFetchingSet:Ljava/util/HashSet;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/CacheEngine;->mLock:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Landroid/support/rastermill/CacheEngine;->mContext:Landroid/content/Context;

    .line 65
    new-instance p1, Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;

    invoke-direct {p1, p2}, Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;-><init>(Landroid/support/rastermill/cache/DiskCache$Factory;)V

    iput-object p1, p0, Landroid/support/rastermill/CacheEngine;->diskCacheProvider:Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;

    .line 66
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 67
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroid/support/rastermill/CacheEngine;->mSourceService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Landroid/support/rastermill/CacheEngine;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/support/rastermill/CacheEngine;->onCacheFailure(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/rastermill/CacheEngine;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/support/rastermill/CacheEngine;->onCacheFinished(Ljava/lang/String;)V

    return-void
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    .line 177
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 180
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x1000

    :try_start_1
    new-array p1, p1, [B

    .line 184
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    .line 185
    invoke-virtual {v1, p1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    :catch_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 188
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 193
    :catch_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 194
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    const-string p1, "CacheEngine"

    const-string v1, "copyToFile"

    .line 197
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private getCallbackList(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Landroid/support/rastermill/CacheEngine$CacheCallback;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/CacheEngine;->mFutureMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 136
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 137
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 139
    :goto_0
    iget-object v1, p0, Landroid/support/rastermill/CacheEngine;->mFetchingSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 140
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Landroid/support/rastermill/CacheEngine;
    .locals 2

    .line 53
    sget-object v0, Landroid/support/rastermill/CacheEngine;->sInstance:Landroid/support/rastermill/CacheEngine;

    if-eqz v0, :cond_0

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CacheEngine should be initialized."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static init(Landroid/content/Context;Landroid/support/rastermill/cache/DiskCache$Factory;)V
    .locals 1

    .line 60
    new-instance v0, Landroid/support/rastermill/CacheEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/support/rastermill/CacheEngine;-><init>(Landroid/content/Context;Landroid/support/rastermill/cache/DiskCache$Factory;)V

    sput-object v0, Landroid/support/rastermill/CacheEngine;->sInstance:Landroid/support/rastermill/CacheEngine;

    return-void
.end method

.method private isFetching(Ljava/lang/String;)Z
    .locals 2

    .line 114
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/CacheEngine;->mFetchingSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 116
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onCacheFailure(Ljava/lang/String;)V
    .locals 3

    .line 157
    invoke-direct {p0, p1}, Landroid/support/rastermill/CacheEngine;->getCallbackList(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 158
    sget-object v1, Landroid/support/rastermill/CacheEngine;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/rastermill/CacheEngine$3;

    invoke-direct {v2, p0, v0, p1}, Landroid/support/rastermill/CacheEngine$3;-><init>(Landroid/support/rastermill/CacheEngine;Ljava/util/LinkedList;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onCacheFinished(Ljava/lang/String;)V
    .locals 3

    .line 145
    invoke-direct {p0, p1}, Landroid/support/rastermill/CacheEngine;->getCallbackList(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 146
    sget-object v1, Landroid/support/rastermill/CacheEngine;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/rastermill/CacheEngine$2;

    invoke-direct {v2, p0, v0, p1}, Landroid/support/rastermill/CacheEngine$2;-><init>(Landroid/support/rastermill/CacheEngine;Ljava/util/LinkedList;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private putFetching(Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/CacheEngine;->mFetchingSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private putFuture(Ljava/lang/String;Landroid/support/rastermill/CacheEngine$CacheCallback;)V
    .locals 3

    .line 121
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/CacheEngine;->mFutureMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 125
    iget-object v2, p0, Landroid/support/rastermill/CacheEngine;->mFutureMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public cache(Ljava/lang/String;Landroid/support/rastermill/CacheEngine$CacheCallback;)Ljava/util/concurrent/Future;
    .locals 2

    .line 71
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/rastermill/util/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    invoke-interface {p2, v1}, Landroid/support/rastermill/CacheEngine$CacheCallback;->onCacheFailure(Ljava/lang/String;)V

    return-object v1

    .line 75
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/rastermill/CacheEngine;->putFuture(Ljava/lang/String;Landroid/support/rastermill/CacheEngine$CacheCallback;)V

    .line 76
    invoke-direct {p0, p1}, Landroid/support/rastermill/CacheEngine;->isFetching(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 79
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/rastermill/CacheEngine;->putFetching(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine;->mSourceService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/support/rastermill/CacheEngine$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/rastermill/CacheEngine$1;-><init>(Landroid/support/rastermill/CacheEngine;Ljava/lang/String;Landroid/support/rastermill/CacheEngine$CacheCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getDiskCache()Landroid/support/rastermill/cache/DiskCache;
    .locals 1

    .line 203
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine;->diskCacheProvider:Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;

    invoke-virtual {v0}, Landroid/support/rastermill/CacheEngine$LazyDiskCacheProvider;->getDiskCache()Landroid/support/rastermill/cache/DiskCache;

    move-result-object v0

    return-object v0
.end method
