.class public Lcom/amap/api/services/a/ai;
.super Ljava/lang/Object;
.source "XXTEA.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x4

    sput v0, Lcom/amap/api/services/a/ai;->a:I

    return-void
.end method

.method public static a([B[B)[B
    .locals 6

    .line 49
    array-length v0, p0

    if-nez v0, :cond_0

    .line 50
    return-object p0

    .line 52
    :cond_0
    array-length v0, p0

    .line 53
    sget v1, Lcom/amap/api/services/a/ai;->a:I

    sget v2, Lcom/amap/api/services/a/ai;->a:I

    rem-int v2, v0, v2

    sub-int/2addr v1, v2

    .line 54
    sget v2, Lcom/amap/api/services/a/ai;->a:I

    div-int v2, v0, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 55
    sget v4, Lcom/amap/api/services/a/ai;->a:I

    mul-int/2addr v2, v4

    new-array v2, v2, [B

    .line 56
    array-length v4, p0

    const/4 v5, 0x0

    invoke-static {p0, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    :goto_0
    array-length p0, v2

    if-ge v0, p0, :cond_1

    .line 58
    int-to-byte p0, v1

    aput-byte p0, v2, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    nop

    .line 62
    invoke-static {v2, v3}, Lcom/amap/api/services/a/ai;->a([BZ)[I

    move-result-object p0

    invoke-static {p1, v5}, Lcom/amap/api/services/a/ai;->a([BZ)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/api/services/a/ai;->a([I[I)[I

    move-result-object p0

    .line 61
    invoke-static {p0, v5}, Lcom/amap/api/services/a/ai;->a([IZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([IZ)[B
    .locals 4

    .line 169
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    .line 172
    if-eqz p1, :cond_1

    .line 173
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget p1, p0, p1

    .line 175
    if-le p1, v0, :cond_0

    .line 176
    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_0
    goto :goto_0

    .line 181
    :cond_1
    move p1, v0

    :goto_0
    new-array v0, p1, [B

    .line 183
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 184
    ushr-int/lit8 v2, v1, 0x2

    aget v2, p0, v2

    and-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x3

    ushr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    :cond_2
    return-object v0
.end method

.method private static a([BZ)[I
    .locals 6

    .line 149
    array-length p1, p0

    ushr-int/lit8 p1, p1, 0x2

    .line 152
    new-array p1, p1, [I

    .line 154
    array-length v0, p0

    .line 155
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 156
    ushr-int/lit8 v2, v1, 0x2

    aget v3, p1, v2

    const/16 v4, 0xff

    aget-byte v5, p0, v1

    and-int/2addr v4, v5

    and-int/lit8 v5, v1, 0x3

    shl-int/lit8 v5, v5, 0x3

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-object p1
.end method

.method public static a([I[I)[I
    .locals 14

    .line 74
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 76
    if-ge v0, v1, :cond_0

    .line 77
    return-object p0

    .line 79
    :cond_0
    array-length v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 80
    new-array v1, v2, [I

    .line 82
    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    nop

    .line 85
    move-object p1, v1

    :cond_1
    aget v1, p0, v0

    aget v2, p0, v3

    const v2, -0x61c88647

    .line 86
    const/4 v4, 0x6

    const/16 v5, 0x34

    add-int/lit8 v6, v0, 0x1

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 88
    move v5, v1

    move v1, v3

    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-lez v4, :cond_3

    .line 89
    add-int/2addr v1, v2

    .line 90
    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x3

    .line 91
    move v7, v5

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_2

    .line 92
    add-int/lit8 v8, v5, 0x1

    aget v9, p0, v8

    .line 93
    aget v10, p0, v5

    ushr-int/lit8 v11, v7, 0x5

    shl-int/lit8 v12, v9, 0x2

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0x3

    shl-int/lit8 v13, v7, 0x4

    xor-int/2addr v12, v13

    add-int/2addr v11, v12

    xor-int/2addr v9, v1

    and-int/lit8 v12, v5, 0x3

    xor-int/2addr v12, v4

    aget v12, p1, v12

    xor-int/2addr v7, v12

    add-int/2addr v9, v7

    xor-int v7, v11, v9

    add-int/2addr v7, v10

    aput v7, p0, v5

    .line 91
    move v5, v8

    goto :goto_1

    .line 96
    :cond_2
    aget v8, p0, v3

    .line 97
    aget v9, p0, v0

    ushr-int/lit8 v10, v7, 0x5

    shl-int/lit8 v11, v8, 0x2

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v8, 0x3

    shl-int/lit8 v12, v7, 0x4

    xor-int/2addr v11, v12

    add-int/2addr v10, v11

    xor-int/2addr v8, v1

    and-int/lit8 v5, v5, 0x3

    xor-int/2addr v4, v5

    aget v4, p1, v4

    xor-int/2addr v4, v7

    add-int/2addr v8, v4

    xor-int v4, v10, v8

    add-int v5, v9, v4

    aput v5, p0, v0

    .line 88
    move v4, v6

    goto :goto_0

    .line 100
    :cond_3
    return-object p0
.end method
