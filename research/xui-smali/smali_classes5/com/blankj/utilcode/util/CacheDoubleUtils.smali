.class public final Lcom/blankj/utilcode/util/CacheDoubleUtils;
.super Ljava/lang/Object;
.source "CacheDoubleUtils.java"

# interfaces
.implements Lcom/blankj/utilcode/constant/CacheConstants;


# static fields
.field private static final CACHE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheDoubleUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

.field private final mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->CACHE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/blankj/utilcode/util/CacheMemoryUtils;Lcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 0
    .param p1, "cacheMemoryUtils"    # Lcom/blankj/utilcode/util/CacheMemoryUtils;
    .param p2, "cacheUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    .line 66
    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    .line 67
    return-void
.end method

.method public static getInstance()Lcom/blankj/utilcode/util/CacheDoubleUtils;
    .locals 2

    .line 38
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getInstance()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getInstance(Lcom/blankj/utilcode/util/CacheMemoryUtils;Lcom/blankj/utilcode/util/CacheDiskUtils;)Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/blankj/utilcode/util/CacheMemoryUtils;Lcom/blankj/utilcode/util/CacheDiskUtils;)Lcom/blankj/utilcode/util/CacheDoubleUtils;
    .locals 4
    .param p0, "cacheMemoryUtils"    # Lcom/blankj/utilcode/util/CacheMemoryUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    if-eqz p0, :cond_3

    .line 49
    if-eqz p1, :cond_2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "cacheKey":Ljava/lang/String;
    sget-object v1, Lcom/blankj/utilcode/util/CacheDoubleUtils;->CACHE_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blankj/utilcode/util/CacheDoubleUtils;

    .line 52
    .local v1, "cache":Lcom/blankj/utilcode/util/CacheDoubleUtils;
    if-nez v1, :cond_1

    .line 53
    const-class v2, Lcom/blankj/utilcode/util/CacheDoubleUtils;

    monitor-enter v2

    .line 54
    :try_start_0
    sget-object v3, Lcom/blankj/utilcode/util/CacheDoubleUtils;->CACHE_MAP:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-object v1, v3

    .line 55
    if-nez v1, :cond_0

    .line 56
    new-instance v3, Lcom/blankj/utilcode/util/CacheDoubleUtils;

    invoke-direct {v3, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;-><init>(Lcom/blankj/utilcode/util/CacheMemoryUtils;Lcom/blankj/utilcode/util/CacheDiskUtils;)V

    move-object v1, v3

    .line 57
    sget-object v3, Lcom/blankj/utilcode/util/CacheDoubleUtils;->CACHE_MAP:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 61
    :cond_1
    :goto_0
    return-object v1

    .line 49
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v1    # "cache":Lcom/blankj/utilcode/util/CacheDoubleUtils;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheMemoryUtils\' of type CacheMemoryUtils (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->clear()V

    .line 554
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->clear()Z

    .line 555
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 321
    if-eqz p1, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Landroid/graphics/Bitmap;

    .line 332
    if-eqz p1, :cond_2

    .line 333
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 334
    .local v0, "obj":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    return-object v0

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 336
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 337
    iget-object v2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v2, p1, v1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    return-object v1

    .line 340
    :cond_1
    return-object p2

    .line 332
    .end local v0    # "obj":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    if-eqz p1, :cond_0

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytes(Ljava/lang/String;[B)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # [B

    .line 113
    if-eqz p1, :cond_2

    .line 114
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 115
    .local v0, "obj":[B
    if-eqz v0, :cond_0

    return-object v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 117
    .local v1, "bytes":[B
    if-eqz v1, :cond_1

    .line 118
    iget-object v2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v2, p1, v1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-object v1

    .line 121
    :cond_1
    return-object p2

    .line 113
    .end local v0    # "obj":[B
    .end local v1    # "bytes":[B
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCacheDiskCount()I
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getCacheCount()I

    move-result v0

    return v0
.end method

.method public getCacheDiskSize()J
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getCacheSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheMemoryCount()I
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getCacheCount()I

    move-result v0

    return v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 375
    if-eqz p1, :cond_0

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Landroid/graphics/drawable/Drawable;

    .line 386
    if-eqz p1, :cond_2

    .line 387
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 388
    .local v0, "obj":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    return-object v0

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 390
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 391
    iget-object v2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v2, p1, v1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    return-object v1

    .line 394
    :cond_1
    return-object p2

    .line 386
    .end local v0    # "obj":Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 267
    if-eqz p1, :cond_0

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Lorg/json/JSONArray;

    .line 278
    if-eqz p1, :cond_2

    .line 279
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 280
    .local v0, "obj":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    return-object v0

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 282
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 283
    iget-object v2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v2, p1, v1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    return-object v1

    .line 286
    :cond_1
    return-object p2

    .line 278
    .end local v0    # "obj":Lorg/json/JSONArray;
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 212
    if-eqz p1, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Lorg/json/JSONObject;

    .line 223
    if-eqz p1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 225
    .local v0, "obj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    return-object v0

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 227
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 228
    iget-object v2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v2, p1, v1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    return-object v1

    .line 231
    :cond_1
    return-object p2

    .line 223
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcelable$Creator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 431
    .local p2, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-eqz p1, :cond_1

    .line 432
    if-eqz p2, :cond_0

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'creator\' of type Parcelable.Creator<T> (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcelable$Creator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 445
    .local p2, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_3

    .line 446
    if-eqz p2, :cond_2

    .line 448
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 449
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    return-object v0

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v1, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    .line 451
    .local v1, "val":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_1

    .line 452
    iget-object v2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v2, p1, v1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    return-object v1

    .line 455
    :cond_1
    return-object p3

    .line 446
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    .end local v1    # "val":Ljava/lang/Object;, "TT;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'creator\' of type Parcelable.Creator<T> (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 490
    if-eqz p1, :cond_0

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 490
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 501
    if-eqz p1, :cond_2

    .line 502
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 503
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    return-object v0

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getSerializable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 505
    .local v1, "serializable":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 506
    iget-object v2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v2, p1, v1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    return-object v1

    .line 509
    :cond_1
    return-object p2

    .line 501
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "serializable":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 167
    if-eqz p1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    .local v0, "obj":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v1, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "string":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 172
    iget-object v2, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v2, p1, v1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    return-object v1

    .line 175
    :cond_1
    return-object p2

    .line 167
    .end local v0    # "obj":Ljava/lang/String;
    .end local v1    # "string":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .line 299
    if-eqz p1, :cond_0

    .line 300
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 301
    return-void

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .param p3, "saveTime"    # I

    .line 310
    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 312
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 313
    return-void

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;

    .line 353
    if-eqz p1, :cond_0

    .line 354
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 355
    return-void

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;
    .param p3, "saveTime"    # I

    .line 364
    if-eqz p1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 366
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 367
    return-void

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Landroid/os/Parcelable;

    .line 407
    if-eqz p1, :cond_0

    .line 408
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;I)V

    .line 409
    return-void

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Landroid/os/Parcelable;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Landroid/os/Parcelable;
    .param p3, "saveTime"    # I

    .line 418
    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 420
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;I)V

    .line 421
    return-void

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/io/Serializable;

    .line 468
    if-eqz p1, :cond_0

    .line 469
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 470
    return-void

    .line 468
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/io/Serializable;
    .param p3, "saveTime"    # I

    .line 479
    if-eqz p1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 481
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 482
    return-void

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;

    .line 134
    if-eqz p1, :cond_0

    .line 135
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "saveTime"    # I

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 147
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lorg/json/JSONArray;

    .line 245
    if-eqz p1, :cond_0

    .line 246
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;I)V

    .line 247
    return-void

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lorg/json/JSONArray;
    .param p3, "saveTime"    # I

    .line 256
    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 258
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;I)V

    .line 259
    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lorg/json/JSONObject;

    .line 188
    if-eqz p1, :cond_0

    .line 189
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 190
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lorg/json/JSONObject;
    .param p3, "saveTime"    # I

    .line 199
    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 203
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 204
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # [B

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;[BI)V

    .line 82
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;[BI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # [B
    .param p3, "saveTime"    # I

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 93
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;[BI)V

    .line 94
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 544
    if-eqz p1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDoubleUtils;->mCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->remove(Ljava/lang/String;)Z

    .line 547
    return-void

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
