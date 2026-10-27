.class public Lcom/amap/api/services/a/cn;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 19
    :try_start_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 20
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 21
    nop

    .line 22
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 23
    nop

    .line 24
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-nez v2, :cond_0

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    array-length p0, p0

    array-length p1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v2, p0, p1

    .line 29
    :goto_1
    return v2

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string p1, "Utils"

    const-string v0, "compareVersion"

    invoke-static {p0, p1, v0}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 p0, -0x1

    return p0
.end method

.method static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
