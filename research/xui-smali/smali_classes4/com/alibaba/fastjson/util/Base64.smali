.class public Lcom/alibaba/fastjson/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final CA:[C

.field public static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    .line 14
    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    .line 16
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v1, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    array-length v1, v1

    .local v1, "iS":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 18
    sget-object v2, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    aget-char v3, v3, v0

    aput v0, v2, v3

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    .end local v0    # "i":I
    .end local v1    # "iS":I
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/16 v1, 0x3d

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFast(Ljava/lang/String;)[B
    .locals 15
    .param p0, "s"    # Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 157
    .local v0, "sLen":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 158
    new-array v1, v1, [B

    return-object v1

    .line 161
    :cond_0
    const/4 v2, 0x0

    .local v2, "sIx":I
    add-int/lit8 v3, v0, -0x1

    .line 164
    .local v3, "eIx":I
    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    :goto_1
    if-lez v3, :cond_2

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_2

    .line 169
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v3, -0x1

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

    .line 173
    .local v4, "pad":I
    :goto_2
    sub-int v5, v3, v2

    add-int/2addr v5, v6

    .line 174
    .local v5, "cCnt":I
    const/16 v7, 0x4c

    if-le v0, v7, :cond_6

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    div-int/lit8 v7, v5, 0x4e

    goto :goto_3

    :cond_5
    move v7, v1

    :goto_3
    shl-int/lit8 v6, v7, 0x1

    goto :goto_4

    :cond_6
    move v6, v1

    .line 176
    .local v6, "sepCnt":I
    :goto_4
    sub-int v7, v5, v6

    mul-int/lit8 v7, v7, 0x6

    shr-int/lit8 v7, v7, 0x3

    sub-int/2addr v7, v4

    .line 177
    .local v7, "len":I
    new-array v8, v7, [B

    .line 180
    .local v8, "dArr":[B
    const/4 v9, 0x0

    .line 181
    .local v9, "d":I
    const/4 v10, 0x0

    .local v10, "cc":I
    div-int/lit8 v11, v7, 0x3

    mul-int/lit8 v11, v11, 0x3

    .local v11, "eLen":I
    :goto_5
    if-ge v9, v11, :cond_8

    .line 183
    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v13, v2, 0x1

    .local v13, "sIx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .end local v2    # "sIx":I
    aget v2, v12, v2

    shl-int/lit8 v2, v2, 0x12

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v14, v13, 0x1

    .local v14, "sIx":I
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .end local v13    # "sIx":I
    aget v12, v12, v13

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v2, v12

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "sIx":I
    invoke-virtual {p0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .end local v14    # "sIx":I
    aget v12, v12, v14

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v2, v12

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v14, v13, 0x1

    .line 184
    .restart local v14    # "sIx":I
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .end local v13    # "sIx":I
    aget v12, v12, v13

    or-int/2addr v2, v12

    .line 187
    .local v2, "i":I
    add-int/lit8 v12, v9, 0x1

    .local v12, "d":I
    shr-int/lit8 v13, v2, 0x10

    int-to-byte v13, v13

    aput-byte v13, v8, v9

    .line 188
    .end local v9    # "d":I
    add-int/lit8 v9, v12, 0x1

    .restart local v9    # "d":I
    shr-int/lit8 v13, v2, 0x8

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 189
    .end local v12    # "d":I
    add-int/lit8 v12, v9, 0x1

    .restart local v12    # "d":I
    int-to-byte v13, v2

    aput-byte v13, v8, v9

    .line 192
    .end local v9    # "d":I
    if-lez v6, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/16 v9, 0x13

    if-ne v10, v9, :cond_7

    .line 193
    add-int/lit8 v14, v14, 0x2

    .line 194
    const/4 v2, 0x0

    .line 196
    .end local v10    # "cc":I
    .local v2, "cc":I
    move v10, v2

    .end local v14    # "sIx":I
    .local v2, "sIx":I
    .restart local v10    # "cc":I
    :cond_7
    move v2, v14

    .line 181
    move v9, v12

    goto :goto_5

    .line 198
    .end local v10    # "cc":I
    .end local v11    # "eLen":I
    .end local v12    # "d":I
    .restart local v9    # "d":I
    :cond_8
    if-ge v9, v7, :cond_a

    .line 200
    const/4 v10, 0x0

    .line 201
    .local v10, "i":I
    nop

    .local v1, "j":I
    :goto_6
    sub-int v11, v3, v4

    if-gt v2, v11, :cond_9

    .line 202
    sget-object v11, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v2, 0x1

    .local v12, "sIx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .end local v2    # "sIx":I
    aget v2, v11, v2

    mul-int/lit8 v11, v1, 0x6

    rsub-int/lit8 v11, v11, 0x12

    shl-int/2addr v2, v11

    or-int/2addr v10, v2

    .line 201
    add-int/lit8 v1, v1, 0x1

    move v2, v12

    goto :goto_6

    .line 204
    .end local v1    # "j":I
    .end local v12    # "sIx":I
    .restart local v2    # "sIx":I
    :cond_9
    const/16 v1, 0x10

    .local v1, "r":I
    :goto_7
    if-ge v9, v7, :cond_a

    .line 205
    add-int/lit8 v11, v9, 0x1

    .local v11, "d":I
    shr-int v12, v10, v1

    int-to-byte v12, v12

    aput-byte v12, v8, v9

    .line 204
    .end local v9    # "d":I
    add-int/lit8 v1, v1, -0x8

    move v9, v11

    goto :goto_7

    .line 208
    .end local v1    # "r":I
    .end local v10    # "i":I
    .end local v11    # "d":I
    .restart local v9    # "d":I
    :cond_a
    return-object v8
.end method

.method public static decodeFast(Ljava/lang/String;II)[B
    .locals 16
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    move-object/from16 v0, p0

    .line 90
    move/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 91
    new-array v2, v2, [B

    return-object v2

    .line 94
    :cond_0
    move/from16 v3, p1

    .local v3, "sIx":I
    add-int v4, p1, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 97
    .local v4, "eIx":I
    :goto_0
    if-ge v3, v4, :cond_1

    sget-object v6, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget v6, v6, v7

    if-gez v6, :cond_1

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_1
    :goto_1
    if-lez v4, :cond_2

    sget-object v6, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget v6, v6, v7

    if-gez v6, :cond_2

    .line 102
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_4

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_3

    const/4 v6, 0x2

    goto :goto_2

    :cond_3
    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v2

    .line 106
    .local v6, "pad":I
    :goto_2
    sub-int v7, v4, v3

    add-int/2addr v7, v5

    .line 107
    .local v7, "cCnt":I
    const/16 v8, 0x4c

    if-le v1, v8, :cond_6

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_5

    div-int/lit8 v8, v7, 0x4e

    goto :goto_3

    :cond_5
    move v8, v2

    :goto_3
    shl-int/lit8 v5, v8, 0x1

    goto :goto_4

    :cond_6
    move v5, v2

    .line 109
    .local v5, "sepCnt":I
    :goto_4
    sub-int v8, v7, v5

    mul-int/lit8 v8, v8, 0x6

    shr-int/lit8 v8, v8, 0x3

    sub-int/2addr v8, v6

    .line 110
    .local v8, "len":I
    new-array v9, v8, [B

    .line 113
    .local v9, "bytes":[B
    const/4 v10, 0x0

    .line 114
    .local v10, "d":I
    const/4 v11, 0x0

    .local v11, "cc":I
    div-int/lit8 v12, v8, 0x3

    mul-int/lit8 v12, v12, 0x3

    .local v12, "eLen":I
    :goto_5
    if-ge v10, v12, :cond_8

    .line 116
    sget-object v13, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v14, v3, 0x1

    .local v14, "sIx":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .end local v3    # "sIx":I
    aget v3, v13, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v13, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v2, v14, 0x1

    .local v2, "sIx":I
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .end local v14    # "sIx":I
    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0xc

    or-int/2addr v3, v13

    sget-object v13, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v14, v2, 0x1

    .restart local v14    # "sIx":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .end local v2    # "sIx":I
    aget v2, v13, v2

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v3

    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v13, v14, 0x1

    .local v13, "sIx":I
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .end local v14    # "sIx":I
    aget v3, v3, v14

    or-int/2addr v2, v3

    .line 119
    .local v2, "i":I
    add-int/lit8 v3, v10, 0x1

    .local v3, "d":I
    shr-int/lit8 v14, v2, 0x10

    int-to-byte v14, v14

    aput-byte v14, v9, v10

    .line 120
    .end local v10    # "d":I
    add-int/lit8 v10, v3, 0x1

    .restart local v10    # "d":I
    shr-int/lit8 v14, v2, 0x8

    int-to-byte v14, v14

    aput-byte v14, v9, v3

    .line 121
    .end local v3    # "d":I
    add-int/lit8 v3, v10, 0x1

    .restart local v3    # "d":I
    int-to-byte v14, v2

    aput-byte v14, v9, v10

    .line 124
    .end local v10    # "d":I
    if-lez v5, :cond_7

    add-int/lit8 v11, v11, 0x1

    const/16 v10, 0x13

    if-ne v11, v10, :cond_7

    .line 125
    add-int/lit8 v13, v13, 0x2

    .line 126
    const/4 v2, 0x0

    .line 128
    .end local v11    # "cc":I
    .local v2, "cc":I
    move v11, v2

    .line 114
    .end local v2    # "cc":I
    .restart local v11    # "cc":I
    :cond_7
    move v10, v3

    move v3, v13

    const/4 v2, 0x0

    goto :goto_5

    .line 130
    .end local v11    # "cc":I
    .end local v12    # "eLen":I
    .end local v13    # "sIx":I
    .local v3, "sIx":I
    .restart local v10    # "d":I
    :cond_8
    if-ge v10, v8, :cond_a

    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, "i":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_6
    move v11, v15

    .end local v15    # "j":I
    .local v11, "j":I
    sub-int v12, v4, v6

    if-gt v3, v12, :cond_9

    .line 134
    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v13, v3, 0x1

    .restart local v13    # "sIx":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .end local v3    # "sIx":I
    aget v3, v12, v3

    mul-int/lit8 v12, v11, 0x6

    rsub-int/lit8 v12, v12, 0x12

    shl-int/2addr v3, v12

    or-int/2addr v2, v3

    .line 133
    add-int/lit8 v15, v11, 0x1

    .end local v11    # "j":I
    .restart local v15    # "j":I
    move v3, v13

    goto :goto_6

    .line 136
    .end local v13    # "sIx":I
    .end local v15    # "j":I
    .restart local v3    # "sIx":I
    :cond_9
    const/16 v11, 0x10

    .local v11, "r":I
    :goto_7
    if-ge v10, v8, :cond_a

    .line 137
    add-int/lit8 v12, v10, 0x1

    .local v12, "d":I
    shr-int v13, v2, v11

    int-to-byte v13, v13

    aput-byte v13, v9, v10

    .line 136
    .end local v10    # "d":I
    add-int/lit8 v11, v11, -0x8

    move v10, v12

    goto :goto_7

    .line 140
    .end local v2    # "i":I
    .end local v11    # "r":I
    .end local v12    # "d":I
    .restart local v10    # "d":I
    :cond_a
    return-object v9
.end method

.method public static decodeFast([CII)[B
    .locals 15
    .param p0, "chars"    # [C
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .line 35
    move/from16 v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 36
    new-array v1, v1, [B

    return-object v1

    .line 39
    :cond_0
    move/from16 v2, p1

    .local v2, "sIx":I
    add-int v3, p1, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 42
    .local v3, "eIx":I
    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v5, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v6, p0, v2

    aget v5, v5, v6

    if-gez v5, :cond_1

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    if-lez v3, :cond_2

    sget-object v5, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v6, p0, v3

    aget v5, v5, v6

    if-gez v5, :cond_2

    .line 47
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 50
    :cond_2
    aget-char v5, p0, v3

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v3, -0x1

    aget-char v5, p0, v5

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    .line 51
    .local v5, "pad":I
    :goto_2
    sub-int v6, v3, v2

    add-int/2addr v6, v4

    .line 52
    .local v6, "cCnt":I
    const/16 v7, 0x4c

    if-le v0, v7, :cond_6

    aget-char v7, p0, v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    div-int/lit8 v7, v6, 0x4e

    goto :goto_3

    :cond_5
    move v7, v1

    :goto_3
    shl-int/lit8 v4, v7, 0x1

    goto :goto_4

    :cond_6
    move v4, v1

    .line 54
    .local v4, "sepCnt":I
    :goto_4
    sub-int v7, v6, v4

    mul-int/lit8 v7, v7, 0x6

    shr-int/lit8 v7, v7, 0x3

    sub-int/2addr v7, v5

    .line 55
    .local v7, "len":I
    new-array v8, v7, [B

    .line 58
    .local v8, "bytes":[B
    const/4 v9, 0x0

    .line 59
    .local v9, "d":I
    const/4 v10, 0x0

    .local v10, "cc":I
    div-int/lit8 v11, v7, 0x3

    mul-int/lit8 v11, v11, 0x3

    .local v11, "eLen":I
    :goto_5
    if-ge v9, v11, :cond_8

    .line 61
    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v13, v2, 0x1

    .local v13, "sIx":I
    aget-char v2, p0, v2

    .end local v2    # "sIx":I
    aget v2, v12, v2

    shl-int/lit8 v2, v2, 0x12

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v14, v13, 0x1

    .local v14, "sIx":I
    aget-char v13, p0, v13

    .end local v13    # "sIx":I
    aget v12, v12, v13

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v2, v12

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "sIx":I
    aget-char v14, p0, v14

    .end local v14    # "sIx":I
    aget v12, v12, v14

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v2, v12

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v14, v13, 0x1

    .restart local v14    # "sIx":I
    aget-char v13, p0, v13

    .end local v13    # "sIx":I
    aget v12, v12, v13

    or-int/2addr v2, v12

    .line 64
    .local v2, "i":I
    add-int/lit8 v12, v9, 0x1

    .local v12, "d":I
    shr-int/lit8 v13, v2, 0x10

    int-to-byte v13, v13

    aput-byte v13, v8, v9

    .line 65
    .end local v9    # "d":I
    add-int/lit8 v9, v12, 0x1

    .restart local v9    # "d":I
    shr-int/lit8 v13, v2, 0x8

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 66
    .end local v12    # "d":I
    add-int/lit8 v12, v9, 0x1

    .restart local v12    # "d":I
    int-to-byte v13, v2

    aput-byte v13, v8, v9

    .line 69
    .end local v9    # "d":I
    if-lez v4, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/16 v9, 0x13

    if-ne v10, v9, :cond_7

    .line 70
    add-int/lit8 v14, v14, 0x2

    .line 71
    const/4 v2, 0x0

    .line 73
    .end local v10    # "cc":I
    .local v2, "cc":I
    move v10, v2

    .end local v14    # "sIx":I
    .local v2, "sIx":I
    .restart local v10    # "cc":I
    :cond_7
    move v2, v14

    .line 59
    move v9, v12

    goto :goto_5

    .line 75
    .end local v10    # "cc":I
    .end local v11    # "eLen":I
    .end local v12    # "d":I
    .restart local v9    # "d":I
    :cond_8
    if-ge v9, v7, :cond_a

    .line 77
    const/4 v10, 0x0

    .line 78
    .local v10, "i":I
    nop

    .local v1, "j":I
    :goto_6
    sub-int v11, v3, v5

    if-gt v2, v11, :cond_9

    .line 79
    sget-object v11, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v2, 0x1

    .local v12, "sIx":I
    aget-char v2, p0, v2

    .end local v2    # "sIx":I
    aget v2, v11, v2

    mul-int/lit8 v11, v1, 0x6

    rsub-int/lit8 v11, v11, 0x12

    shl-int/2addr v2, v11

    or-int/2addr v10, v2

    .line 78
    add-int/lit8 v1, v1, 0x1

    move v2, v12

    goto :goto_6

    .line 81
    .end local v1    # "j":I
    .end local v12    # "sIx":I
    .restart local v2    # "sIx":I
    :cond_9
    const/16 v1, 0x10

    .local v1, "r":I
    :goto_7
    if-ge v9, v7, :cond_a

    .line 82
    add-int/lit8 v11, v9, 0x1

    .local v11, "d":I
    shr-int v12, v10, v1

    int-to-byte v12, v12

    aput-byte v12, v8, v9

    .line 81
    .end local v9    # "d":I
    add-int/lit8 v1, v1, -0x8

    move v9, v11

    goto :goto_7

    .line 85
    .end local v1    # "r":I
    .end local v10    # "i":I
    .end local v11    # "d":I
    .restart local v9    # "d":I
    :cond_a
    return-object v8
.end method
