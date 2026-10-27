.class public Lbxm;
.super Ljava/lang/Object;
.source "HSBColorUtil.java"


# direct methods
.method public static a(FFF)I
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x437f0000    # 255.0f

    if-nez v0, :cond_0

    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    float-to-int p0, p2

    goto :goto_0

    :cond_0
    float-to-double v4, p0

    .line 69
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    sub-float/2addr p0, v0

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr p0, v0

    float-to-double v4, p0

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    sub-float v0, p0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p1

    mul-float/2addr v5, p2

    mul-float v6, p1, v0

    sub-float v6, v4, v6

    mul-float/2addr v6, p2

    sub-float v0, v4, v0

    mul-float/2addr p1, v0

    sub-float/2addr v4, p1

    mul-float/2addr v4, p2

    float-to-int p0, p0

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    move p0, v1

    :goto_0
    move p1, p0

    move p2, p1

    goto :goto_3

    :cond_1
    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    float-to-int p0, p2

    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    float-to-int p1, v5

    mul-float/2addr v6, v3

    add-float/2addr v6, v2

    float-to-int p2, v6

    goto :goto_3

    :cond_2
    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    float-to-int p0, v4

    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    float-to-int p1, v5

    goto :goto_1

    :cond_3
    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    float-to-int p0, v5

    mul-float/2addr v6, v3

    add-float/2addr v6, v2

    float-to-int p1, v6

    :goto_1
    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    float-to-int p2, p2

    goto :goto_3

    :cond_4
    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    float-to-int p0, v5

    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    float-to-int p1, p2

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    float-to-int p2, v4

    goto :goto_3

    :cond_5
    mul-float/2addr v6, v3

    add-float/2addr v6, v2

    float-to-int p0, v6

    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    float-to-int p1, p2

    goto :goto_2

    :cond_6
    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    float-to-int p0, p2

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    float-to-int p1, v4

    :goto_2
    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    float-to-int p2, v5

    :goto_3
    const/high16 v0, -0x1000000

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x0

    or-int/2addr p0, p1

    return p0
.end method

.method public static a(III[F)[F
    .locals 7

    if-nez p3, :cond_0

    const/4 p3, 0x3

    .line 22
    new-array p3, p3, [F

    :cond_0
    if-le p0, p1, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    if-le p2, v0, :cond_2

    move v0, p2

    :cond_2
    if-ge p0, p1, :cond_3

    move v1, p0

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_1
    if-ge p2, v1, :cond_4

    move v1, p2

    :cond_4
    int-to-float v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v3, v2, v3

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    sub-int v5, v0, v1

    int-to-float v5, v5

    div-float v2, v5, v2

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    cmpl-float v5, v2, v4

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    sub-int v5, v0, p0

    int-to-float v5, v5

    sub-int v1, v0, v1

    int-to-float v1, v1

    div-float/2addr v5, v1

    sub-int v6, v0, p1

    int-to-float v6, v6

    div-float/2addr v6, v1

    sub-int p2, v0, p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    if-ne p0, v0, :cond_7

    sub-float/2addr p2, v6

    goto :goto_3

    :cond_7
    if-ne p1, v0, :cond_8

    const/high16 p0, 0x40000000    # 2.0f

    add-float/2addr v5, p0

    sub-float p2, v5, p2

    goto :goto_3

    :cond_8
    const/high16 p0, 0x40800000    # 4.0f

    add-float/2addr v6, p0

    sub-float p2, v6, v5

    :goto_3
    const/high16 p0, 0x40c00000    # 6.0f

    div-float p0, p2, p0

    cmpg-float p1, p0, v4

    if-gez p1, :cond_9

    const/high16 p1, 0x3f800000    # 1.0f

    add-float v4, p0, p1

    goto :goto_4

    :cond_9
    move v4, p0

    :goto_4
    const/4 p0, 0x0

    .line 50
    aput v4, p3, p0

    const/4 p0, 0x1

    .line 51
    aput v2, p3, p0

    const/4 p0, 0x2

    .line 52
    aput v3, p3, p0

    return-object p3
.end method
