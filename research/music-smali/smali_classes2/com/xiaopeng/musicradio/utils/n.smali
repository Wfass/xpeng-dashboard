.class public Lcom/xiaopeng/musicradio/utils/n;
.super Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
.source "CustomCacheDiskCacheFactory.java"


# static fields
.field private static a:Lcom/bumptech/glide/load/engine/cache/DiskCache;

.field private static b:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 21
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/n;->c()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0xfa00000

    .line 19
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/n;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CustomCacheDiskCacheFactory: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomCacheDiskCacheFac"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    .line 32
    new-instance v0, Lcom/xiaopeng/musicradio/utils/n$1;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/musicradio/utils/n$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;J)V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 1

    .line 61
    sget-object v0, Lcom/xiaopeng/musicradio/utils/n;->a:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    return-object v0
.end method

.method public static b()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 1

    .line 65
    sget-object v0, Lcom/xiaopeng/musicradio/utils/n;->b:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->newDiskCacheExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/utils/n;->b:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 68
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/n;->b:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    const-string v0, "image_manager_disk_cache"

    return-object v0
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->build()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    .line 56
    sput-object v0, Lcom/xiaopeng/musicradio/utils/n;->a:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    return-object v0
.end method
