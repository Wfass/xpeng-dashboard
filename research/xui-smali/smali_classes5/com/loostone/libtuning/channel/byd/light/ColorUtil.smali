.class public Lcom/loostone/libtuning/channel/byd/light/ColorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor([B)I
    .locals 2

    .line 2
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte p0, p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static getColor([I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget p0, p0, v1

    or-int/2addr p0, v0

    return p0
.end method
