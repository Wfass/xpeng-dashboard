.class public final Lcom/blankj/utilcode/util/CacheDiskStaticUtils;
.super Ljava/lang/Object;
.source "CacheDiskStaticUtils.java"


# static fields
.field private static sDefaultCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()Z
    .locals 1

    .line 445
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->clear(Lcom/blankj/utilcode/util/CacheDiskUtils;)Z

    move-result v0

    return v0
.end method

.method public static clear(Lcom/blankj/utilcode/util/CacheDiskUtils;)Z
    .locals 2
    .param p0, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 950
    if-eqz p0, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->clear()Z

    move-result v0

    return v0

    .line 950
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 251
    if-eqz p0, :cond_0

    .line 252
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getBitmap(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 251
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 262
    if-eqz p0, :cond_0

    .line 263
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/blankj/utilcode/util/CacheDiskUtils;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/blankj/utilcode/util/CacheDiskUtils;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 729
    if-eqz p0, :cond_1

    .line 731
    if-eqz p2, :cond_0

    .line 732
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 731
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBitmap(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 717
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 718
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 717
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

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

    .line 63
    if-eqz p0, :cond_0

    .line 64
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getBytes(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)[B

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 487
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 487
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    if-eqz p0, :cond_0

    .line 75
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getBytes(Ljava/lang/String;[BLcom/blankj/utilcode/util/CacheDiskUtils;)[B

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;[BLcom/blankj/utilcode/util/CacheDiskUtils;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 499
    if-eqz p0, :cond_1

    .line 501
    if-eqz p2, :cond_0

    .line 502
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCacheCount()I
    .locals 1

    .line 426
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getCacheCount(Lcom/blankj/utilcode/util/CacheDiskUtils;)I

    move-result v0

    return v0
.end method

.method public static getCacheCount(Lcom/blankj/utilcode/util/CacheDiskUtils;)I
    .locals 2
    .param p0, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 929
    if-eqz p0, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getCacheCount()I

    move-result v0

    return v0

    .line 929
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCacheSize()J
    .locals 2

    .line 417
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getCacheSize(Lcom/blankj/utilcode/util/CacheDiskUtils;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCacheSize(Lcom/blankj/utilcode/util/CacheDiskUtils;)J
    .locals 2
    .param p0, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 919
    if-eqz p0, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getCacheSize()J

    move-result-wide v0

    return-wide v0

    .line 919
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 956
    sget-object v0, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->sDefaultCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->sDefaultCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getInstance()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    .local v0, "tmpTrauteVar2":Lcom/blankj/utilcode/util/CacheDiskUtils;
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Detected an attempt to return null from a method com.blankj.utilcode.util.CacheDiskStaticUtils.getDefaultCacheDiskUtils() marked by @androidx.annotation.NonNull"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 297
    if-eqz p0, :cond_0

    .line 298
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDrawable(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 297
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 308
    if-eqz p0, :cond_0

    .line 309
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/blankj/utilcode/util/CacheDiskUtils;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/blankj/utilcode/util/CacheDiskUtils;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 786
    if-eqz p0, :cond_1

    .line 788
    if-eqz p2, :cond_0

    .line 789
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 788
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDrawable(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 774
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 775
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

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

    .line 204
    if-eqz p0, :cond_0

    .line 205
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getJSONArray(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJSONArray(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 659
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 660
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 659
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 215
    if-eqz p0, :cond_0

    .line 216
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;Lcom/blankj/utilcode/util/CacheDiskUtils;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;Lcom/blankj/utilcode/util/CacheDiskUtils;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 671
    if-eqz p0, :cond_1

    .line 673
    if-eqz p2, :cond_0

    .line 674
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 673
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
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

    .line 157
    if-eqz p0, :cond_0

    .line 158
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getJSONObject(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJSONObject(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 601
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 602
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 601
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 168
    if-eqz p0, :cond_0

    .line 169
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;Lcom/blankj/utilcode/util/CacheDiskUtils;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;Lcom/blankj/utilcode/util/CacheDiskUtils;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 613
    if-eqz p0, :cond_1

    .line 615
    if-eqz p2, :cond_0

    .line 616
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 615
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
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

    .line 345
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-eqz p0, :cond_1

    .line 346
    if-eqz p1, :cond_0

    .line 347
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Lcom/blankj/utilcode/util/CacheDiskUtils;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'creator\' of type Parcelable.Creator<T> (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Lcom/blankj/utilcode/util/CacheDiskUtils;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Parcelable$Creator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
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
            "Lcom/blankj/utilcode/util/CacheDiskUtils;",
            ")TT;"
        }
    .end annotation

    .line 833
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-eqz p0, :cond_2

    .line 834
    if-eqz p1, :cond_1

    .line 835
    if-eqz p2, :cond_0

    .line 836
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 835
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'creator\' of type Parcelable.Creator<T> (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
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
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
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

    .line 359
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_1

    .line 360
    if-eqz p1, :cond_0

    .line 362
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheDiskUtils;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'creator\' of type Parcelable.Creator<T> (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheDiskUtils;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Parcelable$Creator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
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
            "Lcom/blankj/utilcode/util/CacheDiskUtils;",
            ")TT;"
        }
    .end annotation

    .line 849
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_2

    .line 850
    if-eqz p1, :cond_1

    .line 852
    if-eqz p3, :cond_0

    .line 853
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getParcelable(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 852
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'creator\' of type Parcelable.Creator<T> (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
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

    .line 396
    if-eqz p0, :cond_0

    .line 397
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getSerializable(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSerializable(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 895
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 896
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getSerializable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 895
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 407
    if-eqz p0, :cond_0

    .line 408
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getSerializable(Ljava/lang/String;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheDiskUtils;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSerializable(Ljava/lang/String;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheDiskUtils;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 907
    if-eqz p0, :cond_1

    .line 909
    if-eqz p2, :cond_0

    .line 910
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getSerializable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 909
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
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

    .line 109
    if-eqz p0, :cond_0

    .line 110
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getString(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 544
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 545
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 120
    if-eqz p0, :cond_0

    .line 121
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getString(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "defaultValue"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 556
    if-eqz p0, :cond_1

    .line 558
    if-eqz p2, :cond_0

    .line 559
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 230
    if-eqz p0, :cond_0

    .line 231
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 232
    return-void

    .line 230
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I

    .line 241
    if-eqz p0, :cond_0

    .line 242
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 243
    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I
    .param p3, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 703
    if-eqz p0, :cond_1

    .line 706
    if-eqz p3, :cond_0

    .line 707
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 708
    return-void

    .line 706
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 689
    if-eqz p0, :cond_1

    .line 691
    if-eqz p2, :cond_0

    .line 692
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 693
    return-void

    .line 691
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 276
    if-eqz p0, :cond_0

    .line 277
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 278
    return-void

    .line 276
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I

    .line 287
    if-eqz p0, :cond_0

    .line 288
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 289
    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I
    .param p3, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 760
    if-eqz p0, :cond_1

    .line 763
    if-eqz p3, :cond_0

    .line 764
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 765
    return-void

    .line 763
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 746
    if-eqz p0, :cond_1

    .line 748
    if-eqz p2, :cond_0

    .line 749
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 750
    return-void

    .line 748
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 322
    if-eqz p0, :cond_0

    .line 323
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;Lcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 324
    return-void

    .line 322
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I

    .line 333
    if-eqz p0, :cond_0

    .line 334
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;ILcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 335
    return-void

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/os/Parcelable;ILcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I
    .param p3, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 817
    if-eqz p0, :cond_1

    .line 820
    if-eqz p3, :cond_0

    .line 821
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;I)V

    .line 822
    return-void

    .line 820
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Landroid/os/Parcelable;Lcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 803
    if-eqz p0, :cond_1

    .line 805
    if-eqz p2, :cond_0

    .line 806
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 807
    return-void

    .line 805
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 375
    if-eqz p0, :cond_0

    .line 376
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Ljava/io/Serializable;Lcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 377
    return-void

    .line 375
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I

    .line 386
    if-eqz p0, :cond_0

    .line 387
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Ljava/io/Serializable;ILcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 388
    return-void

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/io/Serializable;ILcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/io/Serializable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I
    .param p3, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 881
    if-eqz p0, :cond_1

    .line 884
    if-eqz p3, :cond_0

    .line 885
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 886
    return-void

    .line 884
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/io/Serializable;Lcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/io/Serializable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 867
    if-eqz p0, :cond_1

    .line 869
    if-eqz p2, :cond_0

    .line 870
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 871
    return-void

    .line 869
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    if-eqz p0, :cond_0

    .line 89
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 90
    return-void

    .line 88
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I

    .line 99
    if-eqz p0, :cond_0

    .line 100
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Ljava/lang/String;ILcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 101
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;ILcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I
    .param p3, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 530
    if-eqz p0, :cond_1

    .line 533
    if-eqz p3, :cond_0

    .line 534
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 535
    return-void

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 516
    if-eqz p0, :cond_1

    .line 518
    if-eqz p2, :cond_0

    .line 519
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void

    .line 518
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 183
    if-eqz p0, :cond_0

    .line 184
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;Lcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 185
    return-void

    .line 183
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I

    .line 194
    if-eqz p0, :cond_0

    .line 195
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;ILcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 196
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONArray;ILcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I
    .param p3, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 645
    if-eqz p0, :cond_1

    .line 648
    if-eqz p3, :cond_0

    .line 649
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;I)V

    .line 650
    return-void

    .line 648
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONArray;Lcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 631
    if-eqz p0, :cond_1

    .line 633
    if-eqz p2, :cond_0

    .line 634
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 635
    return-void

    .line 633
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    if-eqz p0, :cond_0

    .line 135
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 136
    return-void

    .line 134
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I

    .line 145
    if-eqz p0, :cond_0

    .line 148
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;ILcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 149
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONObject;ILcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I
    .param p3, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 587
    if-eqz p0, :cond_1

    .line 590
    if-eqz p3, :cond_0

    .line 591
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 592
    return-void

    .line 590
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 573
    if-eqz p0, :cond_1

    .line 575
    if-eqz p2, :cond_0

    .line 576
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 577
    return-void

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    if-eqz p0, :cond_0

    .line 43
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;[BLcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 44
    return-void

    .line 42
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
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I

    .line 53
    if-eqz p0, :cond_0

    .line 54
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->put(Ljava/lang/String;[BILcom/blankj/utilcode/util/CacheDiskUtils;)V

    .line 55
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;[BILcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "saveTime"    # I
    .param p3, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 473
    if-eqz p0, :cond_1

    .line 476
    if-eqz p3, :cond_0

    .line 477
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;[BI)V

    .line 478
    return-void

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;[BLcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 459
    if-eqz p0, :cond_1

    .line 461
    if-eqz p2, :cond_0

    .line 462
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheDiskUtils;->put(Ljava/lang/String;[B)V

    .line 463
    return-void

    .line 461
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 435
    if-eqz p0, :cond_0

    .line 436
    invoke-static {}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->getDefaultCacheDiskUtils()Lcom/blankj/utilcode/util/CacheDiskUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->remove(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Z

    move-result v0

    return v0

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheDiskUtils;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 940
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 941
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 940
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheDiskUtils\' of type CacheDiskUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDefaultCacheDiskUtils(Lcom/blankj/utilcode/util/CacheDiskUtils;)V
    .locals 0
    .param p0, "cacheDiskUtils"    # Lcom/blankj/utilcode/util/CacheDiskUtils;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    sput-object p0, Lcom/blankj/utilcode/util/CacheDiskStaticUtils;->sDefaultCacheDiskUtils:Lcom/blankj/utilcode/util/CacheDiskUtils;

    .line 34
    return-void
.end method
