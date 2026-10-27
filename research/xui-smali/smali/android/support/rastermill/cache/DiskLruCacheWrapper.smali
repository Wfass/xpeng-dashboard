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
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->wrapper:Landroid/support/rastermill/cache/DiskLruCacheWrapper;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # I

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
    new-instance v0, Landroid/support/rastermill/cache/SafeKeyGenerator;

    invoke-direct {v0}, Landroid/support/rastermill/cache/SafeKeyGenerator;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->safeKeyGenerator:Landroid/support/rastermill/cache/SafeKeyGenerator;

    .line 53
    return-void
.end method

.method public static declared-synchronized get(Ljava/io/File;I)Landroid/support/rastermill/cache/DiskCache;
    .locals 2
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # I

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
    sget-object v1, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->wrapper:Landroid/support/rastermill/cache/DiskLruCacheWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 42
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "maxSize":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getDiskCache()Landroid/support/rastermill/disklrucache/DiskLruCache;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/cache/DiskLruCacheWrapper;
    throw v0
.end method

.method private declared-synchronized resetDiskCache()V
    .locals 1

    monitor-enter p0

    .line 63
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->diskLruCache:Landroid/support/rastermill/disklrucache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/cache/DiskLruCacheWrapper;
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

    .line 133
    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to clear disk cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/cache/DiskLruCacheWrapper;
    throw v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->safeKeyGenerator:Landroid/support/rastermill/cache/SafeKeyGenerator;

    invoke-virtual {v0, p1}, Landroid/support/rastermill/cache/SafeKeyGenerator;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "safeKey":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->getDiskCache()Landroid/support/rastermill/disklrucache/DiskLruCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const-string v2, "DiskLruCacheWrapper"

    const-string v3, "Unable to delete from disk cache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->safeKeyGenerator:Landroid/support/rastermill/cache/SafeKeyGenerator;

    invoke-virtual {v0, p1}, Landroid/support/rastermill/cache/SafeKeyGenerator;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "safeKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 74
    .local v1, "result":Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->getDiskCache()Landroid/support/rastermill/disklrucache/DiskLruCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Landroid/support/rastermill/disklrucache/DiskLruCache$Value;

    move-result-object v2

    .line 75
    .local v2, "value":Landroid/support/rastermill/disklrucache/DiskLruCache$Value;
    if-eqz v2, :cond_0

    .line 76
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;->getFile(I)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 82
    .end local v2    # "value":Landroid/support/rastermill/disklrucache/DiskLruCache$Value;
    :cond_0
    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "DiskLruCacheWrapper"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    const-string v3, "DiskLruCacheWrapper"

    const-string v4, "Unable to get from disk cache"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public put(Ljava/lang/String;Landroid/support/rastermill/cache/DiskCache$Writer;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "writer"    # Landroid/support/rastermill/cache/DiskCache$Writer;

    .line 88
    iget-object v0, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->safeKeyGenerator:Landroid/support/rastermill/cache/SafeKeyGenerator;

    invoke-virtual {v0, p1}, Landroid/support/rastermill/cache/SafeKeyGenerator;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "safeKey":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->writeLocker:Landroid/support/rastermill/cache/DiskCacheWriteLocker;

    invoke-virtual {v1, p1}, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->acquire(Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->getDiskCache()Landroid/support/rastermill/disklrucache/DiskLruCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    .local v1, "editor":Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;
    if-eqz v1, :cond_1

    .line 95
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    move-result-object v2

    .line 96
    .local v2, "file":Ljava/io/File;
    invoke-interface {p2, v2}, Landroid/support/rastermill/cache/DiskCache$Writer;->write(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V

    .line 101
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V

    .line 101
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    .end local v1    # "editor":Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->writeLocker:Landroid/support/rastermill/cache/DiskCacheWriteLocker;

    invoke-virtual {v1, p1}, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->release(Ljava/lang/String;)V

    .line 109
    goto :goto_1

    .line 108
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    const-string v2, "DiskLruCacheWrapper"

    const-string v3, "Unable to put to disk cache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 110
    :goto_1
    return-void

    .line 108
    :goto_2
    iget-object v2, p0, Landroid/support/rastermill/cache/DiskLruCacheWrapper;->writeLocker:Landroid/support/rastermill/cache/DiskCacheWriteLocker;

    invoke-virtual {v2, p1}, Landroid/support/rastermill/cache/DiskCacheWriteLocker;->release(Ljava/lang/String;)V

    .line 109
    throw v1
.end method
