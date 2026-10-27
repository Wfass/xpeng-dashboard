.class public final Lcal;
.super Ljava/lang/Object;
.source "UProgressionUtil.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public static final a(III)I
    .locals 1

    if-lez p2, :cond_1

    .line 40
    invoke-static {p0, p1}, Lkotlin/x;->a(II)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/r;->c(I)I

    move-result p2

    invoke-static {p1, p0, p2}, Lcal;->b(III)I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Lkotlin/r;->c(I)I

    move-result p1

    goto :goto_0

    :cond_1
    if-gez p2, :cond_3

    .line 41
    invoke-static {p0, p1}, Lkotlin/x;->a(II)I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    neg-int p2, p2

    invoke-static {p2}, Lkotlin/r;->c(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcal;->b(III)I

    move-result p0

    add-int/2addr p1, p0

    invoke-static {p1}, Lkotlin/r;->c(I)I

    move-result p1

    :goto_0
    return p1

    .line 42
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(JJJ)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    .line 64
    invoke-static {p0, p1, p2, p3}, Lkotlin/x;->a(JJ)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4, p5}, Lkotlin/s;->c(J)J

    move-result-wide v5

    move-wide v1, p2

    move-wide v3, p0

    invoke-static/range {v1 .. v6}, Lcal;->b(JJJ)J

    move-result-wide p0

    sub-long/2addr p2, p0

    invoke-static {p2, p3}, Lkotlin/s;->c(J)J

    move-result-wide p2

    goto :goto_0

    :cond_1
    if-gez v0, :cond_3

    .line 65
    invoke-static {p0, p1, p2, p3}, Lkotlin/x;->a(JJ)I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    neg-long p4, p4

    invoke-static {p4, p5}, Lkotlin/s;->c(J)J

    move-result-wide v4

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcal;->b(JJJ)J

    move-result-wide p0

    add-long/2addr p2, p0

    invoke-static {p2, p3}, Lkotlin/s;->c(J)J

    move-result-wide p2

    :goto_0
    return-wide p2

    .line 66
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final b(III)I
    .locals 1

    .line 10
    invoke-static {p0, p2}, Lkotlin/x;->b(II)I

    move-result p0

    .line 11
    invoke-static {p1, p2}, Lkotlin/x;->b(II)I

    move-result p1

    .line 12
    invoke-static {p0, p1}, Lkotlin/x;->a(II)I

    move-result v0

    if-ltz v0, :cond_0

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    sub-int/2addr p0, p1

    invoke-static {p0}, Lkotlin/r;->c(I)I

    move-result p0

    add-int/2addr p0, p2

    :goto_0
    invoke-static {p0}, Lkotlin/r;->c(I)I

    move-result p0

    return p0
.end method

.method private static final b(JJJ)J
    .locals 1

    .line 16
    invoke-static {p0, p1, p4, p5}, Lkotlin/x;->b(JJ)J

    move-result-wide p0

    .line 17
    invoke-static {p2, p3, p4, p5}, Lkotlin/x;->b(JJ)J

    move-result-wide p2

    .line 18
    invoke-static {p0, p1, p2, p3}, Lkotlin/x;->a(JJ)I

    move-result v0

    if-ltz v0, :cond_0

    sub-long/2addr p0, p2

    goto :goto_0

    :cond_0
    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Lkotlin/s;->c(J)J

    move-result-wide p0

    add-long/2addr p0, p4

    :goto_0
    invoke-static {p0, p1}, Lkotlin/s;->c(J)J

    move-result-wide p0

    return-wide p0
.end method
