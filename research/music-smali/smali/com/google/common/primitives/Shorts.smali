.class public final Lcom/google/common/primitives/Shorts;
.super Ljava/lang/Object;
.source "Shorts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Shorts$ShortArrayAsList;
    }
.end annotation


# direct methods
.method public static a(S)I
    .locals 0

    return p0
.end method

.method static synthetic a([SSII)I
    .locals 0

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->c([SSII)I

    move-result p0

    return p0
.end method

.method static synthetic b([SSII)I
    .locals 0

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->d([SSII)I

    move-result p0

    return p0
.end method

.method private static c([SSII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 155
    aget-short v0, p0, p2

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static d([SSII)I
    .locals 1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    .line 206
    aget-short v0, p0, p3

    if-ne v0, p1, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
