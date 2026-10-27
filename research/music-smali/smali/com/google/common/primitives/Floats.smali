.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Floats$FloatArrayAsList;
    }
.end annotation


# direct methods
.method public static a(F)I
    .locals 0

    .line 72
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->hashCode()I

    move-result p0

    return p0
.end method

.method static synthetic a([FFII)I
    .locals 0

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->c([FFII)I

    move-result p0

    return p0
.end method

.method static synthetic b([FFII)I
    .locals 0

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->d([FFII)I

    move-result p0

    return p0
.end method

.method private static c([FFII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 137
    aget v0, p0, p2

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static d([FFII)I
    .locals 1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    .line 191
    aget v0, p0, p3

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
