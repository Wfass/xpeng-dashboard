.class public Landroid/support/rastermill/loader/HttpLoader;
.super Landroid/support/rastermill/loader/AbsLoader;
.source "HttpLoader.java"


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Landroid/support/rastermill/loader/AbsLoader;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Landroid/support/rastermill/loader/HttpLoader;->mKey:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public decode()Landroid/support/rastermill/FrameSequence;
    .locals 5

    .line 41
    iget-object v0, p0, Landroid/support/rastermill/loader/HttpLoader;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Landroid/support/rastermill/CacheEngine;->getInstance()Landroid/support/rastermill/CacheEngine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/rastermill/CacheEngine;->getDiskCache()Landroid/support/rastermill/cache/DiskCache;

    move-result-object v0

    iget-object v1, p0, Landroid/support/rastermill/loader/HttpLoader;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/support/rastermill/cache/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/support/rastermill/loader/HttpLoader;->mFile:Ljava/io/File;

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    .local v0, "frameSequence":Landroid/support/rastermill/FrameSequence;
    iget-object v1, p0, Landroid/support/rastermill/loader/HttpLoader;->mFile:Ljava/io/File;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/rastermill/loader/HttpLoader;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Landroid/support/rastermill/loader/HttpLoader;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 49
    invoke-static {v1}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 53
    nop

    .line 55
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 60
    :goto_0
    if-nez v0, :cond_4

    .line 61
    :goto_1
    invoke-static {}, Landroid/support/rastermill/CacheEngine;->getInstance()Landroid/support/rastermill/CacheEngine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/rastermill/CacheEngine;->getDiskCache()Landroid/support/rastermill/cache/DiskCache;

    move-result-object v2

    iget-object v3, p0, Landroid/support/rastermill/loader/HttpLoader;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/support/rastermill/cache/DiskCache;->delete(Ljava/lang/String;)V

    goto :goto_5

    .line 53
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 50
    :catch_1
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    const-class v3, Landroid/support/rastermill/FrameSequenceUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decodeFile"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .end local v2    # "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 55
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 58
    goto :goto_2

    .line 56
    :catch_2
    move-exception v2

    .line 60
    :cond_1
    :goto_2
    if-nez v0, :cond_4

    goto :goto_1

    .line 53
    :goto_3
    if-eqz v1, :cond_2

    .line 55
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 58
    goto :goto_4

    .line 56
    :catch_3
    move-exception v3

    .line 60
    :cond_2
    :goto_4
    if-nez v0, :cond_3

    .line 61
    invoke-static {}, Landroid/support/rastermill/CacheEngine;->getInstance()Landroid/support/rastermill/CacheEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/rastermill/CacheEngine;->getDiskCache()Landroid/support/rastermill/cache/DiskCache;

    move-result-object v3

    iget-object v4, p0, Landroid/support/rastermill/loader/HttpLoader;->mKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/support/rastermill/cache/DiskCache;->delete(Ljava/lang/String;)V

    .line 63
    :cond_3
    throw v2

    .line 65
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_4
    :goto_5
    return-object v0
.end method

.method public exists()Z
    .locals 2

    .line 33
    iget-object v0, p0, Landroid/support/rastermill/loader/HttpLoader;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Landroid/support/rastermill/CacheEngine;->getInstance()Landroid/support/rastermill/CacheEngine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/rastermill/CacheEngine;->getDiskCache()Landroid/support/rastermill/cache/DiskCache;

    move-result-object v0

    iget-object v1, p0, Landroid/support/rastermill/loader/HttpLoader;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/support/rastermill/cache/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/support/rastermill/loader/HttpLoader;->mFile:Ljava/io/File;

    .line 36
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/loader/HttpLoader;->mFile:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/rastermill/loader/HttpLoader;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()I
    .locals 1

    .line 28
    const/4 v0, 0x5

    return v0
.end method

.method public isCacheRequired()Z
    .locals 1

    .line 70
    const/4 v0, 0x1

    return v0
.end method
