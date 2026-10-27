.class public final Landroid/support/design/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field public static final DEFAULT_EPSILON:F = 1.0E-4f

.field private static final DEG_TO_RAD:F = 0.017453292f

.field private static final RAD_TO_DEG:F = 57.295784f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(F)F
    .locals 1

    .line 30
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p0

    :goto_0
    return p0
.end method

.method public static acos(F)F
    .locals 2

    .line 151
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static asin(F)F
    .locals 2

    .line 155
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static atan(F)F
    .locals 2

    .line 159
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static atan2(FF)F
    .locals 2

    .line 163
    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static constrain(FFF)F
    .locals 1

    .line 42
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static constrain(III)I
    .locals 0

    .line 34
    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static constrain(JJJ)J
    .locals 1

    .line 38
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    goto :goto_0

    :cond_0
    cmp-long p2, p0, p4

    if-lez p2, :cond_1

    move-wide p0, p4

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static cross(FFFF)F
    .locals 0

    .line 139
    mul-float/2addr p0, p3

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    return p0
.end method

.method public static degrees(F)F
    .locals 1

    .line 147
    const v0, 0x42652ee2

    mul-float/2addr p0, v0

    return p0
.end method

.method public static dist(FFFF)F
    .locals 0

    .line 106
    sub-float/2addr p2, p0

    .line 107
    sub-float/2addr p3, p1

    .line 108
    float-to-double p0, p2

    float-to-double p2, p3

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static dist(FFFFFF)F
    .locals 0

    .line 112
    sub-float/2addr p3, p0

    .line 113
    sub-float/2addr p4, p1

    .line 114
    sub-float/2addr p5, p2

    .line 115
    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p3, p4

    mul-float/2addr p5, p5

    add-float/2addr p3, p5

    float-to-double p0, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distanceToFurthestCorner(FFFFFF)F
    .locals 1

    .line 244
    nop

    .line 245
    invoke-static {p0, p1, p2, p3}, Landroid/support/design/math/MathUtils;->dist(FFFF)F

    move-result v0

    .line 246
    invoke-static {p0, p1, p4, p3}, Landroid/support/design/math/MathUtils;->dist(FFFF)F

    move-result p3

    .line 247
    invoke-static {p0, p1, p4, p5}, Landroid/support/design/math/MathUtils;->dist(FFFF)F

    move-result p4

    .line 248
    invoke-static {p0, p1, p2, p5}, Landroid/support/design/math/MathUtils;->dist(FFFF)F

    move-result p0

    .line 244
    invoke-static {v0, p3, p4, p0}, Landroid/support/design/math/MathUtils;->max(FFFF)F

    move-result p0

    return p0
.end method

.method public static dot(FFFF)F
    .locals 0

    .line 135
    mul-float/2addr p0, p2

    mul-float/2addr p1, p3

    add-float/2addr p0, p1

    return p0
.end method

.method public static eq(FFF)Z
    .locals 0

    .line 216
    sub-float/2addr p0, p1

    invoke-static {p0}, Landroid/support/design/math/MathUtils;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static exp(F)F
    .locals 2

    .line 58
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static geq(FFF)Z
    .locals 0

    .line 204
    add-float/2addr p0, p2

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static leq(FFF)Z
    .locals 0

    .line 192
    add-float/2addr p1, p2

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lerp(FFF)F
    .locals 1

    .line 171
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method public static log(F)F
    .locals 2

    .line 54
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static mag(FF)F
    .locals 2

    .line 119
    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static mag(FFF)F
    .locals 0

    .line 123
    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static map(FFFFF)F
    .locals 0

    .line 180
    sub-float p3, p2, p3

    sub-float/2addr p4, p0

    sub-float/2addr p1, p0

    div-float/2addr p4, p1

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    return p2
.end method

.method public static max(FF)F
    .locals 1

    .line 66
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static max(FFF)F
    .locals 1

    .line 74
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    cmpl-float p0, p1, p2

    if-lez p0, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    return p0
.end method

.method public static max(FFFF)F
    .locals 1

    .line 82
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpl-float v0, p0, p3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p0, p1, p2

    if-lez p0, :cond_1

    cmpl-float p0, p1, p3

    if-lez p0, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    cmpl-float p0, p2, p3

    if-lez p0, :cond_2

    move p0, p2

    goto :goto_0

    :cond_2
    move p0, p3

    :goto_0
    return p0
.end method

.method public static max(II)F
    .locals 0

    .line 70
    if-le p0, p1, :cond_0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    int-to-float p0, p1

    :goto_0
    return p0
.end method

.method public static max(III)F
    .locals 0

    .line 78
    if-le p0, p1, :cond_1

    if-le p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    int-to-float p0, p0

    goto :goto_2

    :cond_1
    if-le p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    int-to-float p0, p1

    :goto_2
    return p0
.end method

.method public static max(IIII)F
    .locals 0

    .line 86
    if-le p0, p1, :cond_0

    if-le p0, p2, :cond_0

    if-le p0, p3, :cond_0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    if-le p1, p3, :cond_1

    int-to-float p0, p1

    goto :goto_0

    :cond_1
    if-le p2, p3, :cond_2

    int-to-float p0, p2

    goto :goto_0

    :cond_2
    int-to-float p0, p3

    :goto_0
    return p0
.end method

.method public static min(FF)F
    .locals 1

    .line 90
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static min(FFF)F
    .locals 1

    .line 98
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    cmpg-float p1, p0, p2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float p0, p1, p2

    if-gez p0, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    return p0
.end method

.method public static min(II)F
    .locals 0

    .line 94
    if-ge p0, p1, :cond_0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    int-to-float p0, p1

    :goto_0
    return p0
.end method

.method public static min(III)F
    .locals 0

    .line 102
    if-ge p0, p1, :cond_1

    if-ge p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    int-to-float p0, p0

    goto :goto_2

    :cond_1
    if-ge p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    int-to-float p0, p1

    :goto_2
    return p0
.end method

.method public static nearest(FFF)F
    .locals 1

    .line 50
    sub-float v0, p0, p1

    invoke-static {v0}, Landroid/support/design/math/MathUtils;->abs(F)F

    move-result v0

    sub-float/2addr p0, p2

    invoke-static {p0}, Landroid/support/design/math/MathUtils;->abs(F)F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method public static nearest(III)I
    .locals 1

    .line 46
    sub-int v0, p0, p1

    int-to-float v0, v0

    invoke-static {v0}, Landroid/support/design/math/MathUtils;->abs(F)F

    move-result v0

    sub-int/2addr p0, p2

    int-to-float p0, p0

    invoke-static {p0}, Landroid/support/design/math/MathUtils;->abs(F)F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method public static neq(FFF)Z
    .locals 0

    .line 228
    sub-float/2addr p0, p1

    invoke-static {p0}, Landroid/support/design/math/MathUtils;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static norm(FFF)F
    .locals 0

    .line 175
    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method public static pow(FF)F
    .locals 2

    .line 62
    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static radians(F)F
    .locals 1

    .line 143
    const v0, 0x3c8efa35

    mul-float/2addr p0, v0

    return p0
.end method

.method public static sq(F)F
    .locals 0

    .line 127
    mul-float/2addr p0, p0

    return p0
.end method

.method public static sqrt(F)F
    .locals 2

    .line 131
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static tan(F)F
    .locals 2

    .line 167
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
