.class public Landroid/support/v4/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .locals 1

    .line 60
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 61
    return-wide p2

    .line 62
    :cond_0
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    .line 63
    return-wide p4

    .line 65
    :cond_1
    return-wide p0
.end method

.method public static clamp(FFF)F
    .locals 1

    .line 39
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 40
    return p1

    .line 41
    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    .line 42
    return p2

    .line 44
    :cond_1
    return p0
.end method

.method public static clamp(III)I
    .locals 0

    .line 81
    if-ge p0, p1, :cond_0

    .line 82
    return p1

    .line 83
    :cond_0
    if-le p0, p2, :cond_1

    .line 84
    return p2

    .line 86
    :cond_1
    return p0
.end method
