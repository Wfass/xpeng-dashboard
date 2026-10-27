.class public Landroid/support/rastermill/cache/DiskLruCacheWrapper;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Landroid/support/rastermill/cache/DiskCache;


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DiskLruCacheWrapper"

.field private static final VALUE_COUNT:I = 0x1

.field private static wrapper:Landroid/support/rastermill/cache/DiskLruCacheWrapper;


# instance fields
.field private final directory:Ljava/io/File;

.field private diskLruCache:Landroid/support/rastermill/disklrucache/DiskLruCache;

.field private final maxSize:I

.field private final safeKeyGenerator:Landroid/support/rastermill/cache/SafeKeyGenerator;

.field private final writeLocker:Landroid/support/rastermill/cache/DiskCacheWriteLocker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;I)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/support/rastermill/cache/DiskCacheWriteLocker;

    invoke-direct {v0}, Landroid/support/rastermill/cache/DiskCacheWriteLocker;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->writeLocker:Landroid/support/rastermill/cache/DiskCacheWriteLocker;

    .line 50
    iput-object p1, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->directory:Ljava/io/File;

    .line 51
    iput p2, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->maxSize:I

    .line 52
    new-instance p1, Landroid/support/rastermill/cache/SafeKeyGenerator;

    invoke-direct {p1}, Landroid/support/rastermill/cache/SafeKeyGenerator;-><init>()V

    iput-object p1, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->safeKeyGenerator:Landroid/support/rastermill/cache/SafeKeyGenerator;

    return-void
.end method

.method public static declared-synchronized get(Ljava/io/File;I)Landroid/support/rastermill/cache/DiskCache;
    .locals 2

    const-class v0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->wrapper:Landroid/support/rastermill/cache/DiskLruCacheWrapper;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Landroid/support/rastermill/cache/DiskLruCacheWrapper;

    invoke-direct {v1, p0, p1}, Landroid/support/rastermill/cache/DiskLruCacheWrapper;-><init>(Ljava/io/File;I)V

    sput-object v1, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->wrapper:Landroid/support/rastermill/cache/DiskLruCacheWrapper;

    .line 46
    :cond_0
    sget-object p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->wrapper:Landroid/support/rastermill/cache/DiskLruCacheWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getDiskCache()Landroid/support/rastermill/disklrucache/DiskLruCache;
    .locals 4

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->diskLruCache:Landroid/support/rastermill/disklrucache/DiskLruCache;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->directory:Ljava/io/File;

    iget v1, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->maxSize:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Landroid/support/rastermill/disklrucache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->diskLruCache:Landroid/support/rastermill/disklrucache/DiskLruCache;

    .line 59
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->diskLruCache:Landroid/support/rastermill/disklrucache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetDiskCache()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 63
    :try_start_0
    iput-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->diskLruCache:Landroid/support/rastermill/disklrucache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    .line 127
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->getDiskCache()Landroid/support/rastermill/disklrucache/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->delete()V

    .line 128
    invoke-direct {p0}, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->resetDiskCache()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    .line 130
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to clear disk cache"

    .line 131
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 114
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->safeKeyGenerator:Landroid/support/rastermill/cache/SafeKeyGenerator;

    invoke-virtual {v0, p1}, Landroid/support/rastermill/cache/SafeKeyGenerator;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->getDiskCache()Landroid/support/rastermill/disklrucache/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/rastermill/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "DiskLruCacheWrapper"

    .line 118
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to delete from disk cache"

    .line 119
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 68
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->safeKeyGenerator:Landroid/support/rastermill/cache/SafeKeyGenerator;

    invoke-virtual {v0, p1}, Landroid/support/rastermill/cache/SafeKeyGenerator;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 74
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->getDiskCache()Landroid/support/rastermill/disklrucache/DiskLruCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/rastermill/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Landroid/support/rastermill/disklrucache/DiskLruCache$Value;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->getFile(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x5

    const-string v2, "DiskLruCacheWrapper"

    .line 79
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Unable to get from disk cache"

    .line 80
    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/support/rastermill/cache/DiskCache$Writer;)V
    .locals 3

    const-string v0, "DiskLruCacheWrapper"

    .line 88
    iget-object v1, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->safeKeyGenerator:Landroid/support/rastermill/cache/SafeKeyGenerator;

    invoke-virtual {v1, p1}, Landroid/support/rastermill/cache/SafeKeyGenerator;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    iget-object v2, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->writeLocker:Landroid/support/rastermill/cache/DiskCacheWriteLocker;

    invoke-virtual {v2, p1}, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->acquire(Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->getDiskCache()Landroid/support/rastermill/disklrucache/DiskLruCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/rastermill/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 95
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    move-result-object v2

    .line 96
    invoke-interface {p2, v2}, Landroid/support/rastermill/cache/DiskCache$Writer;->write(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V

    .line 101
    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    :cond_1
    :goto_0
    iget-object p2, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->writeLocker:Landroid/support/rastermill/cache/DiskCacheWriteLocker;

    invoke-virtual {p2, p1}, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->release(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    const/4 v1, 0x5

    .line 104
    :try_start_3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Unable to put to disk cache"

    .line 105
    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    .line 108
    :goto_2
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->writeLocker:Landroid/support/rastermill/cache/DiskCacheWriteLocker;

    invoke-virtual {v0, p1}, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->release(Ljava/lang/String;)V

    .line 109
    throw p2
.end method
