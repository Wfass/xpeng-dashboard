.class public Landroid/support/rastermill/loader/HttpLoader;
.super Landroid/support/rastermill/loader/AbsLoader;
.source "HttpLoader.java"


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/support/rastermill/loader/AbsLoader;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Landroid/support/rastermill/loader/HttpLoader;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decode()Landroid/support/rastermill/FrameSequence;
    .locals 6

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

    .line 45
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/loader/HttpLoader;->mFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Landroid/support/rastermill/loader/HttpLoader;->mFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    invoke-static {v0}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    if-nez v1, :cond_3

    .line 61
    :catch_1
    :cond_1
    :goto_0
    invoke-static {}, Landroid/support/rastermill/CacheEngine;->getInstance()Landroid/support/rastermill/CacheEngine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/rastermill/CacheEngine;->getDiskCache()Landroid/support/rastermill/cache/DiskCache;

    move-result-object v0

    iget-object v2, p0, Landroid/support/rastermill/loader/HttpLoader;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/support/rastermill/cache/DiskCache;->delete(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v0, v1

    .line 51
    :goto_1
    :try_start_3
    const-class v3, Landroid/support/rastermill/FrameSequenceUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "decodeFile"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 55
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 61
    :catch_4
    :cond_2
    invoke-static {}, Landroid/support/rastermill/CacheEngine;->getInstance()Landroid/support/rastermill/CacheEngine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/rastermill/CacheEngine;->getDiskCache()Landroid/support/rastermill/cache/DiskCache;

    move-result-object v0

    iget-object v2, p0, Landroid/support/rastermill/loader/HttpLoader;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/support/rastermill/cache/DiskCache;->delete(Ljava/lang/String;)V

    .line 63
    throw v1

    :cond_3
    :goto_3
    return-object v1
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

    const/4 v0, 0x5

    return v0
.end method

.method public isCacheRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
