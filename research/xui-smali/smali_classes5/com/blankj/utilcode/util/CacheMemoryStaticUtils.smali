.class public final Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;
.super Ljava/lang/Object;
.source "CacheMemoryStaticUtils.java"


# static fields
.field private static sDefaultCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 93
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->clear(Lcom/blankj/utilcode/util/CacheMemoryUtils;)V

    .line 94
    return-void
.end method

.method public static clear(Lcom/blankj/utilcode/util/CacheMemoryUtils;)V
    .locals 2
    .param p0, "cacheMemoryUtils"    # Lcom/blankj/utilcode/util/CacheMemoryUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 181
    if-eqz p0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->clear()V

    .line 183
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheMemoryUtils\' of type CacheMemoryUtils (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 54
    if-eqz p0, :cond_0

    .line 55
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->get(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheMemoryUtils;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheMemoryUtils;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheMemoryUtils"    # Lcom/blankj/utilcode/util/CacheMemoryUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils;",
            ")TT;"
        }
    .end annotation

    .line 136
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheMemoryUtils\' of type CacheMemoryUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 66
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 67
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->get(Ljava/lang/String;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheMemoryUtils;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheMemoryUtils;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cacheMemoryUtils"    # Lcom/blankj/utilcode/util/CacheMemoryUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/blankj/utilcode/util/CacheMemoryUtils;",
            ")TT;"
        }
    .end annotation

    .line 149
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_1

    .line 151
    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheMemoryUtils\' of type CacheMemoryUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCacheCount()I
    .locals 1

    .line 76
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getCacheCount(Lcom/blankj/utilcode/util/CacheMemoryUtils;)I

    move-result v0

    return v0
.end method

.method public static getCacheCount(Lcom/blankj/utilcode/util/CacheMemoryUtils;)I
    .locals 2
    .param p0, "cacheMemoryUtils"    # Lcom/blankj/utilcode/util/CacheMemoryUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 161
    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getCacheCount()I

    move-result v0

    return v0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheMemoryUtils\' of type CacheMemoryUtils (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;
    .locals 1

    .line 186
    sget-object v0, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->sDefaultCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->sDefaultCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->getInstance()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/Object;

    .line 32
    if-eqz p0, :cond_0

    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->put(Ljava/lang/String;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheMemoryUtils;)V

    .line 34
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "saveTime"    # I

    .line 43
    if-eqz p0, :cond_0

    .line 44
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->put(Ljava/lang/String;Ljava/lang/Object;ILcom/blankj/utilcode/util/CacheMemoryUtils;)V

    .line 45
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;ILcom/blankj/utilcode/util/CacheMemoryUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "saveTime"    # I
    .param p3, "cacheMemoryUtils"    # Lcom/blankj/utilcode/util/CacheMemoryUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 121
    if-eqz p0, :cond_1

    .line 124
    if-eqz p3, :cond_0

    .line 125
    invoke-virtual {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 126
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheMemoryUtils\' of type CacheMemoryUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;Lcom/blankj/utilcode/util/CacheMemoryUtils;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "cacheMemoryUtils"    # Lcom/blankj/utilcode/util/CacheMemoryUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    if-eqz p0, :cond_1

    .line 109
    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p2, p0, p1}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheMemoryUtils\' of type CacheMemoryUtils (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    if-eqz p0, :cond_0

    .line 86
    invoke-static {}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->getDefaultCacheMemoryUtils()Lcom/blankj/utilcode/util/CacheMemoryUtils;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->remove(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheMemoryUtils;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove(Ljava/lang/String;Lcom/blankj/utilcode/util/CacheMemoryUtils;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cacheMemoryUtils"    # Lcom/blankj/utilcode/util/CacheMemoryUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 172
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1, p0}, Lcom/blankj/utilcode/util/CacheMemoryUtils;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cacheMemoryUtils\' of type CacheMemoryUtils (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'key\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDefaultCacheMemoryUtils(Lcom/blankj/utilcode/util/CacheMemoryUtils;)V
    .locals 0
    .param p0, "cacheMemoryUtils"    # Lcom/blankj/utilcode/util/CacheMemoryUtils;

    .line 23
    sput-object p0, Lcom/blankj/utilcode/util/CacheMemoryStaticUtils;->sDefaultCacheMemoryUtils:Lcom/blankj/utilcode/util/CacheMemoryUtils;

    .line 24
    return-void
.end method
