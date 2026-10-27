.class public Lcom/alibaba/fastjson/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final CA:[C

.field public static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    const/16 v1, 0x100

    new-array v1, v1, [I

    .line 12
    sput-object v1, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/4 v2, -0x1

    .line 15
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 16
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    aget-char v4, v4, v2

    aput v2, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFast(Ljava/lang/String;)[B
    .locals 14

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 182
    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v2, :cond_2

    .line 187
    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    sub-int v5, v2, v3

    add-int/2addr v5, v6

    const/16 v7, 0x4c

    if-le v0, v7, :cond_6

    .line 194
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0xd

    if-ne v0, v7, :cond_5

    div-int/lit8 v0, v5, 0x4e

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    shl-int/2addr v0, v6

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x6

    shr-int/lit8 v5, v5, 0x3

    sub-int/2addr v5, v4

    .line 197
    new-array v7, v5, [B

    .line 201
    div-int/lit8 v8, v5, 0x3

    mul-int/lit8 v8, v8, 0x3

    move v9, v1

    move v10, v9

    :cond_7
    :goto_5
    if-ge v9, v8, :cond_8

    .line 203
    sget-object v11, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v12, v11, v12

    shl-int/lit8 v12, v12, 0x12

    add-int/lit8 v13, v3, 0x1

    .line 204
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v13, v11, v13

    shl-int/lit8 v13, v13, 0xc

    or-int/2addr v12, v13

    add-int/lit8 v13, v3, 0x2

    .line 205
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v13, v11, v13

    shl-int/lit8 v13, v13, 0x6

    or-int/2addr v12, v13

    add-int/lit8 v13, v3, 0x3

    .line 206
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v11, v11, v13

    or-int/2addr v11, v12

    add-int/lit8 v3, v3, 0x4

    shr-int/lit8 v12, v11, 0x10

    int-to-byte v12, v12

    .line 210
    aput-byte v12, v7, v9

    add-int/lit8 v12, v9, 0x1

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    .line 211
    aput-byte v13, v7, v12

    add-int/lit8 v12, v9, 0x2

    int-to-byte v11, v11

    .line 212
    aput-byte v11, v7, v12

    add-int/lit8 v9, v9, 0x3

    if-lez v0, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x13

    if-ne v10, v11, :cond_7

    add-int/lit8 v3, v3, 0x2

    move v10, v1

    goto :goto_5

    :cond_8
    if-ge v9, v5, :cond_a

    move v0, v1

    :goto_6
    sub-int v8, v2, v4

    if-gt v3, v8, :cond_9

    .line 226
    sget-object v8, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v8, v3

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v3, v8

    or-int/2addr v1, v3

    add-int/2addr v0, v6

    move v3, v10

    goto :goto_6

    :cond_9
    const/16 p0, 0x10

    :goto_7
    if-ge v9, v5, :cond_a

    add-int/lit8 v0, v9, 0x1

    shr-int v2, v1, p0

    int-to-byte v2, v2

    .line 230
    aput-byte v2, v7, v9

    add-int/lit8 p0, p0, -0x8

    move v9, v0

    goto :goto_7

    :cond_a
    return-object v7
.end method

.method public static decodeFast(Ljava/lang/String;II)[B
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p0, v0, [B

    return-object p0

    :cond_0
    add-int v1, p1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ge p1, v1, :cond_1

    .line 106
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v1, :cond_2

    .line 111
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    const/16 v5, 0x4c

    if-le p2, v5, :cond_6

    .line 118
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0xd

    if-ne p2, v5, :cond_5

    div-int/lit8 p2, v4, 0x4e

    goto :goto_3

    :cond_5
    move p2, v0

    :goto_3
    shl-int/2addr p2, v2

    goto :goto_4

    :cond_6
    move p2, v0

    :goto_4
    sub-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    .line 121
    new-array v5, v4, [B

    .line 125
    div-int/lit8 v6, v4, 0x3

    mul-int/lit8 v6, v6, 0x3

    move v7, v0

    move v8, v7

    :cond_7
    :goto_5
    if-ge v7, v6, :cond_8

    .line 127
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v10, v9, v10

    shl-int/lit8 v10, v10, 0x12

    add-int/lit8 v11, p1, 0x1

    .line 128
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v9, v11

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v10, v11

    add-int/lit8 v11, p1, 0x2

    .line 129
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v9, v11

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v11, p1, 0x3

    .line 130
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v9, v9, v11

    or-int/2addr v9, v10

    add-int/lit8 p1, p1, 0x4

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    .line 134
    aput-byte v10, v5, v7

    add-int/lit8 v10, v7, 0x1

    shr-int/lit8 v11, v9, 0x8

    int-to-byte v11, v11

    .line 135
    aput-byte v11, v5, v10

    add-int/lit8 v10, v7, 0x2

    int-to-byte v9, v9

    .line 136
    aput-byte v9, v5, v10

    add-int/lit8 v7, v7, 0x3

    if-lez p2, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x13

    if-ne v8, v9, :cond_7

    add-int/lit8 p1, p1, 0x2

    move v8, v0

    goto :goto_5

    :cond_8
    if-ge v7, v4, :cond_a

    move p2, v0

    :goto_6
    sub-int v6, v1, v3

    if-gt p1, v6, :cond_9

    .line 150
    sget-object v6, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aget p1, v6, p1

    mul-int/lit8 v6, p2, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr p1, v6

    or-int/2addr v0, p1

    add-int/2addr p2, v2

    move p1, v8

    goto :goto_6

    :cond_9
    const/16 p0, 0x10

    :goto_7
    if-ge v7, v4, :cond_a

    add-int/lit8 p1, v7, 0x1

    shr-int p2, v0, p0

    int-to-byte p2, p2

    .line 154
    aput-byte p2, v5, v7

    add-int/lit8 p0, p0, -0x8

    move v7, p1

    goto :goto_7

    :cond_a
    return-object v5
.end method

.method public static decodeFast([CII)[B
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p0, v0, [B

    return-object p0

    :cond_0
    add-int v1, p1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ge p1, v1, :cond_1

    .line 42
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v4, p0, p1

    aget v3, v3, v4

    if-gez v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v1, :cond_2

    .line 47
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v4, p0, v1

    aget v3, v3, v4

    if-gez v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 52
    :cond_2
    aget-char v3, p0, v1

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v1, -0x1

    aget-char v3, p0, v3

    if-ne v3, v4, :cond_3

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    const/16 v5, 0x4c

    if-le p2, v5, :cond_6

    .line 54
    aget-char p2, p0, v5

    const/16 v5, 0xd

    if-ne p2, v5, :cond_5

    div-int/lit8 p2, v4, 0x4e

    goto :goto_3

    :cond_5
    move p2, v0

    :goto_3
    shl-int/2addr p2, v2

    goto :goto_4

    :cond_6
    move p2, v0

    :goto_4
    sub-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    .line 57
    new-array v5, v4, [B

    .line 61
    div-int/lit8 v6, v4, 0x3

    mul-int/lit8 v6, v6, 0x3

    move v7, v0

    move v8, v7

    :cond_7
    :goto_5
    if-ge v7, v6, :cond_8

    .line 63
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v10, p0, p1

    aget v10, v9, v10

    shl-int/lit8 v10, v10, 0x12

    add-int/lit8 v11, p1, 0x1

    aget-char v11, p0, v11

    aget v11, v9, v11

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v10, v11

    add-int/lit8 v11, p1, 0x2

    aget-char v11, p0, v11

    aget v11, v9, v11

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v11, p1, 0x3

    aget-char v11, p0, v11

    aget v9, v9, v11

    or-int/2addr v9, v10

    add-int/lit8 p1, p1, 0x4

    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    .line 70
    aput-byte v10, v5, v7

    add-int/lit8 v10, v7, 0x1

    shr-int/lit8 v11, v9, 0x8

    int-to-byte v11, v11

    .line 71
    aput-byte v11, v5, v10

    add-int/lit8 v10, v7, 0x2

    int-to-byte v9, v9

    .line 72
    aput-byte v9, v5, v10

    add-int/lit8 v7, v7, 0x3

    if-lez p2, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x13

    if-ne v8, v9, :cond_7

    add-int/lit8 p1, p1, 0x2

    move v8, v0

    goto :goto_5

    :cond_8
    if-ge v7, v4, :cond_a

    move p2, v0

    :goto_6
    sub-int v6, v1, v3

    if-gt p1, v6, :cond_9

    .line 86
    sget-object v6, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v8, p1, 0x1

    aget-char p1, p0, p1

    aget p1, v6, p1

    mul-int/lit8 v6, p2, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr p1, v6

    or-int/2addr v0, p1

    add-int/2addr p2, v2

    move p1, v8

    goto :goto_6

    :cond_9
    const/16 p0, 0x10

    :goto_7
    if-ge v7, v4, :cond_a

    add-int/lit8 p1, v7, 0x1

    shr-int p2, v0, p0

    int-to-byte p2, p2

    .line 90
    aput-byte p2, v5, v7

    add-int/lit8 p0, p0, -0x8

    move v7, p1

    goto :goto_7

    :cond_a
    return-object v5
.end method
