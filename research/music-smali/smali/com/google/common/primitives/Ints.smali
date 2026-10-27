.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;
    }
.end annotation


# direct methods
.method public static a(I)I
    .locals 0

    return p0
.end method

.method public static a(J)I
    .locals 3

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Out of range: %s"

    .line 86
    invoke-static {v1, v2, p0, p1}, Lcom/google/common/base/o;->a(ZLjava/lang/String;J)V

    return v0
.end method

.method static synthetic a([IIII)I
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->c([IIII)I

    move-result p0

    return p0
.end method

.method public static b(J)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    long-to-int p0, p0

    return p0
.end method

.method static synthetic b([IIII)I
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->d([IIII)I

    move-result p0

    return p0
.end method

.method private static c([IIII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 155
    aget v0, p0, p2

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static d([IIII)I
    .locals 1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    .line 206
    aget v0, p0, p3

    if-ne v0, p1, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
