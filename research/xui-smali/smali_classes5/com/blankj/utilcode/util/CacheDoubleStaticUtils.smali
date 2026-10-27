.class public final Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;
.super Ljava/lang/Object;
.source "CacheDoubleStaticUtils.java"


# static fields
.field private static sDefaultCacheDoubleUtils:Lcom/blankj/utilcode/util/CacheDoubleUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 449
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->clear(Lcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 450
    return-void
.end method

.method public static clear(Lcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 962
    if-eqz p0, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->clear()V

    .line 964
    return-void

    .line 962
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 249
    if-eqz p0, :cond_0

    .line 250
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getBitmap(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Landroid/graphics/Bitmap;

    .line 260
    if-eqz p0, :cond_0

    .line 261
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Landroid/graphics/Bitmap;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 733
    if-eqz p0, :cond_1

    .line 735
    if-eqz p2, :cond_0

    .line 736
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 735
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBitmap(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 721
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 722
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 721
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    if-eqz p0, :cond_0

    .line 63
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getBytes(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)[B

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 491
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 492
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;[B)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # [B

    .line 73
    if-eqz p0, :cond_0

    .line 74
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getBytes(Ljava/lang/String;[BLcom/blankj/utilcode/util/CacheDoubleUtils;)[B

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;[BLcom/blankj/utilcode/util/CacheDoubleUtils;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # [B
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 503
    if-eqz p0, :cond_1

    .line 505
    if-eqz p2, :cond_0

    .line 506
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 505
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCacheDiskCount()I
    .locals 1

    .line 424
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getCacheDiskCount(Lcom/blankj/utilcode/util/CacheDoubleUtils;)I

    move-result v0

    return v0
.end method

.method public static getCacheDiskCount(Lcom/blankj/utilcode/util/CacheDoubleUtils;)I
    .locals 2
    .param p0, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 933
    if-eqz p0, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getCacheDiskCount()I

    move-result v0

    return v0

    .line 933
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCacheDiskSize()J
    .locals 2

    .line 415
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getCacheDiskSize(Lcom/blankj/utilcode/util/CacheDoubleUtils;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCacheDiskSize(Lcom/blankj/utilcode/util/CacheDoubleUtils;)J
    .locals 2
    .param p0, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 923
    if-eqz p0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getCacheDiskSize()J

    move-result-wide v0

    return-wide v0

    .line 923
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCacheMemoryCount()I
    .locals 1

    .line 433
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getCacheMemoryCount(Lcom/blankj/utilcode/util/CacheDoubleUtils;)I

    move-result v0

    return v0
.end method

.method public static getCacheMemoryCount(Lcom/blankj/utilcode/util/CacheDoubleUtils;)I
    .locals 2
    .param p0, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 943
    if-eqz p0, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getCacheMemoryCount()I

    move-result v0

    return v0

    .line 943
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;
    .locals 1

    .line 967
    sget-object v0, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->sDefaultCacheDoubleUtils:Lcom/blankj/utilcode/util/CacheDoubleUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->sDefaultCacheDoubleUtils:Lcom/blankj/utilcode/util/CacheDoubleUtils;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getInstance()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 295
    if-eqz p0, :cond_0

    .line 296
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDrawable(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Landroid/graphics/drawable/Drawable;

    .line 306
    if-eqz p0, :cond_0

    .line 307
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Landroid/graphics/drawable/Drawable;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 790
    if-eqz p0, :cond_1

    .line 792
    if-eqz p2, :cond_0

    .line 793
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 792
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDrawable(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 778
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 779
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 778
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 203
    if-eqz p0, :cond_0

    .line 204
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getJSONArray(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJSONArray(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 664
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 665
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 664
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Lorg/json/JSONArray;

    .line 214
    if-eqz p0, :cond_0

    .line 215
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Lorg/json/JSONArray;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 676
    if-eqz p0, :cond_1

    .line 678
    if-eqz p2, :cond_0

    .line 679
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 678
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 156
    if-eqz p0, :cond_0

    .line 157
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getJSONObject(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJSONObject(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 605
    if-eqz p0, :cond_1

    .line 606
    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 606
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Lorg/json/JSONObject;

    .line 167
    if-eqz p0, :cond_0

    .line 168
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Lorg/json/JSONObject;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 618
    if-eqz p0, :cond_1

    .line 620
    if-eqz p2, :cond_0

    .line 621
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 620
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Parcelable$Creator;
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

    .line 343
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-eqz p0, :cond_1

    .line 344
    if-eqz p1, :cond_0

    .line 345
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'creator\' of type Parcelable.Creator<T> (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Parcelable$Creator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
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
            "TT;>;",
            "Lcom/blankj/utilcode/util/CacheDoubleUtils;",
            ")TT;"
        }
    .end annotation

    .line 837
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-eqz p0, :cond_2

    .line 838
    if-eqz p1, :cond_1

    .line 839
    if-eqz p2, :cond_0

    .line 840
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 839
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'creator\' of type Parcelable.Creator<T> (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Parcelable$Creator;
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

    .line 357
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_1

    .line 358
    if-eqz p1, :cond_0

    .line 360
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'creator\' of type Parcelable.Creator<T> (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Parcelable$Creator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
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
            "TT;>;TT;",
            "Lcom/blankj/utilcode/util/CacheDoubleUtils;",
            ")TT;"
        }
    .end annotation

    .line 853
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_2

    .line 854
    if-eqz p1, :cond_1

    .line 856
    if-eqz p3, :cond_0

    .line 857
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 856
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'creator\' of type Parcelable.Creator<T> (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSerializable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 394
    if-eqz p0, :cond_0

    .line 395
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getSerializable(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSerializable(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 899
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 900
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getSerializable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 899
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 405
    if-eqz p0, :cond_0

    .line 406
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getSerializable(Ljava/lang/String;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSerializable(Ljava/lang/String;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 911
    if-eqz p0, :cond_1

    .line 913
    if-eqz p2, :cond_0

    .line 914
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 913
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    if-eqz p0, :cond_0

    .line 109
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getString(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 548
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 119
    if-eqz p0, :cond_0

    .line 120
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getString(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Ljava/lang/String;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 560
    if-eqz p0, :cond_1

    .line 562
    if-eqz p2, :cond_0

    .line 563
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 562
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/graphics/Bitmap;

    .line 228
    if-eqz p0, :cond_0

    .line 229
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 230
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/graphics/Bitmap;
    .param p2, "saveTime"    # I

    .line 239
    if-eqz p0, :cond_0

    .line 240
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 241
    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/graphics/Bitmap;
    .param p2, "saveTime"    # I
    .param p3, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 707
    if-eqz p0, :cond_1

    .line 710
    if-eqz p3, :cond_0

    .line 711
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 712
    return-void

    .line 710
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/graphics/Bitmap;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 693
    if-eqz p0, :cond_1

    .line 695
    if-eqz p2, :cond_0

    .line 696
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 697
    return-void

    .line 695
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    .line 274
    if-eqz p0, :cond_0

    .line 275
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 276
    return-void

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;
    .param p2, "saveTime"    # I

    .line 285
    if-eqz p0, :cond_0

    .line 286
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 287
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;
    .param p2, "saveTime"    # I
    .param p3, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 764
    if-eqz p0, :cond_1

    .line 767
    if-eqz p3, :cond_0

    .line 768
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 769
    return-void

    .line 767
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 750
    if-eqz p0, :cond_1

    .line 752
    if-eqz p2, :cond_0

    .line 753
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 754
    return-void

    .line 752
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/os/Parcelable;

    .line 320
    if-eqz p0, :cond_0

    .line 321
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 322
    return-void

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/os/Parcelable;I)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/os/Parcelable;
    .param p2, "saveTime"    # I

    .line 331
    if-eqz p0, :cond_0

    .line 332
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 333
    return-void

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/os/Parcelable;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/os/Parcelable;
    .param p2, "saveTime"    # I
    .param p3, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 821
    if-eqz p0, :cond_1

    .line 824
    if-eqz p3, :cond_0

    .line 825
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;I)V

    .line 826
    return-void

    .line 824
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/os/Parcelable;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/os/Parcelable;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 807
    if-eqz p0, :cond_1

    .line 809
    if-eqz p2, :cond_0

    .line 810
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 811
    return-void

    .line 809
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/io/Serializable;

    .line 373
    if-eqz p0, :cond_0

    .line 374
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Ljava/io/Serializable;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 375
    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/io/Serializable;
    .param p2, "saveTime"    # I

    .line 384
    if-eqz p0, :cond_0

    .line 385
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Ljava/io/Serializable;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 386
    return-void

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/io/Serializable;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/io/Serializable;
    .param p2, "saveTime"    # I
    .param p3, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 885
    if-eqz p0, :cond_1

    .line 888
    if-eqz p3, :cond_0

    .line 889
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 890
    return-void

    .line 888
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/io/Serializable;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/io/Serializable;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 871
    if-eqz p0, :cond_1

    .line 873
    if-eqz p2, :cond_0

    .line 874
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 875
    return-void

    .line 873
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;

    .line 87
    if-eqz p0, :cond_0

    .line 88
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 89
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "saveTime"    # I

    .line 98
    if-eqz p0, :cond_0

    .line 99
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Ljava/lang/String;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 100
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "saveTime"    # I
    .param p3, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 534
    if-eqz p0, :cond_1

    .line 537
    if-eqz p3, :cond_0

    .line 538
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 539
    return-void

    .line 537
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 520
    if-eqz p0, :cond_1

    .line 522
    if-eqz p2, :cond_0

    .line 523
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void

    .line 522
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Lorg/json/JSONArray;

    .line 182
    if-eqz p0, :cond_0

    .line 183
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 184
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Lorg/json/JSONArray;
    .param p2, "saveTime"    # I

    .line 193
    if-eqz p0, :cond_0

    .line 194
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 195
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONArray;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Lorg/json/JSONArray;
    .param p2, "saveTime"    # I
    .param p3, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 650
    if-eqz p0, :cond_1

    .line 653
    if-eqz p3, :cond_0

    .line 654
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;I)V

    .line 655
    return-void

    .line 653
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONArray;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Lorg/json/JSONArray;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 636
    if-eqz p0, :cond_1

    .line 638
    if-eqz p2, :cond_0

    .line 639
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 640
    return-void

    .line 638
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Lorg/json/JSONObject;

    .line 133
    if-eqz p0, :cond_0

    .line 134
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 135
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Lorg/json/JSONObject;
    .param p2, "saveTime"    # I

    .line 144
    if-eqz p0, :cond_0

    .line 147
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 148
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONObject;ILcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Lorg/json/JSONObject;
    .param p2, "saveTime"    # I
    .param p3, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 591
    if-eqz p0, :cond_1

    .line 594
    if-eqz p3, :cond_0

    .line 595
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 596
    return-void

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Lorg/json/JSONObject;
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 577
    if-eqz p0, :cond_1

    .line 579
    if-eqz p2, :cond_0

    .line 580
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 581
    return-void

    .line 579
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;[B)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # [B

    .line 41
    if-eqz p0, :cond_0

    .line 42
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;[BLcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 43
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;[BI)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # [B
    .param p2, "saveTime"    # I

    .line 52
    if-eqz p0, :cond_0

    .line 53
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->put(Ljava/lang/String;[BILcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 54
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;[BILcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # [B
    .param p2, "saveTime"    # I
    .param p3, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 477
    if-eqz p0, :cond_1

    .line 480
    if-eqz p3, :cond_0

    .line 481
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;[BI)V

    .line 482
    return-void

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;[BLcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # [B
    .param p2, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 463
    if-eqz p0, :cond_1

    .line 465
    if-eqz p2, :cond_0

    .line 466
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->put(Ljava/lang/String;[B)V

    .line 467
    return-void

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 441
    if-eqz p0, :cond_0

    .line 442
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->getDefaultCacheDoubleUtils()Lcom/blankj/utilcode/util/CacheDoubleUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->remove(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V

    .line 443
    return-void

    .line 441
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 953
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 954
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDoubleUtils;->remove(Ljava/lang/String;)V

    .line 955
    return-void

    .line 953
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDoubleUtils\' of type CacheDoubleUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDefaultCacheDoubleUtils(Lcom/blankj/utilcode/util/CacheDoubleUtils;)V
    .locals 0
    .param p0, "cacheDoubleUtils"    # Lcom/blankj/utilcode/util/CacheDoubleUtils;

    .line 32
    sput-object p0, Lcom/blankj/utilcode/util/CacheDoubleStaticUtils;->sDefaultCacheDoubleUtils:Lcom/blankj/utilcode/util/CacheDoubleUtils;

    .line 33
    return-void
.end method
