.class public final Lcom/google/android/material/math/MathUtils;
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
    .param p0, "v"    # F

    .line 30
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    neg-float v0, p0

    :goto_0
    return v0
.end method

.method public static acos(F)F
    .locals 2
    .param p0, "value"    # F

    .line 151
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static asin(F)F
    .locals 2
    .param p0, "value"    # F

    .line 155
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan(F)F
    .locals 2
    .param p0, "value"    # F

    .line 159
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan2(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 163
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 42
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static constrain(III)I
    .locals 1
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 34
    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static constrain(JJJ)J
    .locals 2
    .param p0, "amount"    # J
    .param p2, "low"    # J
    .param p4, "high"    # J

    .line 38
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    cmp-long v0, p0, p4

    if-lez v0, :cond_1

    move-wide v0, p4

    goto :goto_0

    :cond_1
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method

.method public static cross(FFFF)F
    .locals 2
    .param p0, "v1x"    # F
    .param p1, "v1y"    # F
    .param p2, "v2x"    # F
    .param p3, "v2y"    # F

    .line 139
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static degrees(F)F
    .locals 1
    .param p0, "radians"    # F

    .line 147
    const v0, 0x42652ee2

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dist(FFFF)F
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .line 106
    sub-float v0, p2, p0

    .line 107
    .local v0, "x":F
    sub-float v1, p3, p1

    .line 108
    .local v1, "y":F
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dist(FFFFFF)F
    .locals 5
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .line 112
    sub-float v0, p3, p0

    .line 113
    .local v0, "x":F
    sub-float v1, p4, p1

    .line 114
    .local v1, "y":F
    sub-float v2, p5, p2

    .line 115
    .local v2, "z":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public static distanceToFurthestCorner(FFFFFF)F
    .locals 4
    .param p0, "pointX"    # F
    .param p1, "pointY"    # F
    .param p2, "rectLeft"    # F
    .param p3, "rectTop"    # F
    .param p4, "rectRight"    # F
    .param p5, "rectBottom"    # F

    .line 244
    nop

    .line 245
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v0

    .line 246
    invoke-static {p0, p1, p4, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v1

    .line 247
    invoke-static {p0, p1, p4, p5}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v2

    .line 248
    invoke-static {p0, p1, p2, p5}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v3

    .line 244
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/math/MathUtils;->max(FFFF)F

    move-result v0

    return v0
.end method

.method public static dot(FFFF)F
    .locals 2
    .param p0, "v1x"    # F
    .param p1, "v1y"    # F
    .param p2, "v2x"    # F
    .param p3, "v2y"    # F

    .line 135
    mul-float v0, p0, p2

    mul-float v1, p1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public static eq(FFF)Z
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "epsilon"    # F

    .line 216
    sub-float v0, p0, p1

    invoke-static {v0}, Lcom/google/android/material/math/MathUtils;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static exp(F)F
    .locals 2
    .param p0, "a"    # F

    .line 58
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static geq(FFF)Z
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "epsilon"    # F

    .line 204
    add-float v0, p0, p2

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static leq(FFF)Z
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "epsilon"    # F

    .line 192
    add-float v0, p1, p2

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static lerp(FFF)F
    .locals 2
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "amount"    # F

    .line 171
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public static log(F)F
    .locals 2
    .param p0, "a"    # F

    .line 54
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static mag(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 119
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static mag(FFF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 123
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static map(FFFFF)F
    .locals 3
    .param p0, "minStart"    # F
    .param p1, "minStop"    # F
    .param p2, "maxStart"    # F
    .param p3, "maxStop"    # F
    .param p4, "value"    # F

    .line 180
    sub-float v0, p2, p3

    sub-float v1, p4, p0

    sub-float v2, p1, p0

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 66
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 74
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    return v0
.end method

.method public static max(FFFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .line 82
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpl-float v0, p0, p3

    if-lez v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    cmpl-float v0, p2, p3

    if-lez v0, :cond_2

    move v0, p2

    goto :goto_0

    :cond_2
    move v0, p3

    :goto_0
    return v0
.end method

.method public static max(II)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 70
    if-le p0, p1, :cond_0

    int-to-float v0, p0

    goto :goto_0

    :cond_0
    int-to-float v0, p1

    :goto_0
    return v0
.end method

.method public static max(III)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 78
    if-le p0, p1, :cond_1

    if-le p0, p2, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_1
    if-le p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :goto_1
    return v0
.end method

.method public static max(IIII)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I
    .param p3, "d"    # I

    .line 86
    if-le p0, p1, :cond_0

    if-le p0, p2, :cond_0

    if-le p0, p3, :cond_0

    int-to-float v0, p0

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    if-le p1, p3, :cond_1

    int-to-float v0, p1

    goto :goto_0

    :cond_1
    if-le p2, p3, :cond_2

    int-to-float v0, p2

    goto :goto_0

    :cond_2
    int-to-float v0, p3

    :goto_0
    return v0
.end method

.method public static min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 90
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 98
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    cmpg-float v0, p0, p2

    if-gez v0, :cond_1

    move v0, p0

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    return v0
.end method

.method public static min(II)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 94
    if-ge p0, p1, :cond_0

    int-to-float v0, p0

    goto :goto_0

    :cond_0
    int-to-float v0, p1

    :goto_0
    return v0
.end method

.method public static min(III)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 102
    if-ge p0, p1, :cond_1

    if-ge p0, p2, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_1
    if-ge p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :goto_1
    return v0
.end method

.method public static nearest(FFF)F
    .locals 2
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 50
    sub-float v0, p0, p1

    invoke-static {v0}, Lcom/google/android/material/math/MathUtils;->abs(F)F

    move-result v0

    sub-float v1, p0, p2

    invoke-static {v1}, Lcom/google/android/material/math/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public static nearest(III)I
    .locals 2
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 46
    sub-int v0, p0, p1

    int-to-float v0, v0

    invoke-static {v0}, Lcom/google/android/material/math/MathUtils;->abs(F)F

    move-result v0

    sub-int v1, p0, p2

    int-to-float v1, v1

    invoke-static {v1}, Lcom/google/android/material/math/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public static neq(FFF)Z
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "epsilon"    # F

    .line 228
    sub-float v0, p0, p1

    invoke-static {v0}, Lcom/google/android/material/math/MathUtils;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static norm(FFF)F
    .locals 2
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "value"    # F

    .line 175
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static pow(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 62
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static radians(F)F
    .locals 1
    .param p0, "degrees"    # F

    .line 143
    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static sq(F)F
    .locals 1
    .param p0, "v"    # F

    .line 127
    mul-float v0, p0, p0

    return v0
.end method

.method public static sqrt(F)F
    .locals 2
    .param p0, "value"    # F

    .line 131
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static tan(F)F
    .locals 2
    .param p0, "angle"    # F

    .line 167
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
