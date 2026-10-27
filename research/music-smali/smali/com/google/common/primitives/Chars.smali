.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Chars$CharArrayAsList;
    }
.end annotation


# direct methods
.method public static a(C)I
    .locals 0

    return p0
.end method

.method static synthetic a([CCII)I
    .locals 0

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->c([CCII)I

    move-result p0

    return p0
.end method

.method static synthetic b([CCII)I
    .locals 0

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->d([CCII)I

    move-result p0

    return p0
.end method

.method private static c([CCII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 151
    aget-char v0, p0, p2

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static d([CCII)I
    .locals 1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    .line 202
    aget-char v0, p0, p3

    if-ne v0, p1, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
