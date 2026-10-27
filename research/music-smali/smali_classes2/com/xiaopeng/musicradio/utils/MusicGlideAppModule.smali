.class public Lcom/xiaopeng/musicradio/utils/MusicGlideAppModule;
.super Ljava/lang/Object;
.source "MusicGlideAppModule.java"

# interfaces
.implements Lcom/bumptech/glide/module/GlideModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    int-to-long v0, p2

    .line 57
    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 7

    .line 32
    sget v0, Laqv$d;->tag_glide_id:I

    invoke-static {v0}, Lcom/bumptech/glide/request/target/ViewTarget;->setTagId(I)V

    .line 33
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->build()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result v1

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMemoryCacheSize()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x3f2b851f    # 0.67f

    mul-float/2addr v2, v1

    .line 35
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 36
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    int-to-float v1, v2

    mul-float/2addr v3, v1

    .line 37
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v2, v1

    .line 40
    new-instance v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    const-wide/32 v4, 0x1400000

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/GlideBuilder;->setBitmapPool(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GlideBuilder;

    move-result-object v3

    new-instance v6, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    invoke-direct {v6, v4, v5}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(J)V

    .line 41
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/GlideBuilder;->setMemoryCache(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/GlideBuilder;

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init glide called: getMemoryCacheSize = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMemoryCacheSize()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/xiaopeng/musicradio/utils/MusicGlideAppModule;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], getBitmapPoolSize = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/utils/MusicGlideAppModule;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MusicGlideModule"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init glide called: bitmapPoolSize = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/musicradio/utils/MusicGlideAppModule;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], resourceSize = ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/musicradio/utils/MusicGlideAppModule;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    const/4 v1, 0x4

    const-string v2, "fifo-source"

    invoke-static {v1, v2, v0}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->newSourceExecutor(ILjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GlideBuilder;->setSourceExecutor(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)Lcom/bumptech/glide/GlideBuilder;

    .line 48
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GlideBuilder;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/GlideBuilder;

    .line 51
    new-instance v0, Lcom/xiaopeng/musicradio/utils/n;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/utils/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    .line 52
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/n;->b()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/GlideBuilder;->setDiskCacheExecutor(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)Lcom/bumptech/glide/GlideBuilder;

    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 0

    return-void
.end method
