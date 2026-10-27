.class public Lcom/alibaba/fastjson2/internal/asm/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    return-void
.end method

.method private enlarge(I)V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 308
    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/2addr v1, p1

    .line 309
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    .line 310
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    return-void
.end method


# virtual methods
.method final encodeUtf8(Ljava/lang/String;I)V
    .locals 9

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p2

    move v2, v1

    :goto_0
    const/16 v3, 0x7f

    const/16 v4, 0x7ff

    const/4 v5, 0x1

    if-ge v1, v0, :cond_2

    .line 243
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_0

    if-gt v6, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    if-gt v6, v4, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const v1, 0xffff

    if-gt v2, v1, :cond_8

    .line 256
    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    sub-int v6, v1, p2

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_3

    .line 258
    iget-object v7, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    ushr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/2addr v6, v5

    int-to-byte v8, v2

    .line 259
    aput-byte v8, v7, v6

    :cond_3
    add-int/2addr v1, v2

    sub-int/2addr v1, p2

    .line 261
    iget-object v6, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    array-length v6, v6

    if-le v1, v6, :cond_4

    sub-int/2addr v2, p2

    .line 262
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->enlarge(I)V

    .line 264
    :cond_4
    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    :goto_2
    if-ge p2, v0, :cond_7

    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_5

    if-gt v2, v3, :cond_5

    .line 268
    iget-object v6, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    add-int/lit8 v7, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    goto :goto_3

    :cond_5
    if-gt v2, v4, :cond_6

    .line 270
    iget-object v6, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    add-int/lit8 v7, v1, 0x1

    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v8, v8, 0x1f

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v1

    add-int/lit8 v1, v7, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 271
    aput-byte v2, v6, v7

    goto :goto_4

    .line 273
    :cond_6
    iget-object v6, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    add-int/lit8 v7, v1, 0x1

    shr-int/lit8 v8, v2, 0xc

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v6, v1

    add-int/lit8 v1, v7, 0x1

    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 274
    aput-byte v8, v6, v7

    add-int/lit8 v7, v1, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 275
    aput-byte v2, v6, v1

    :goto_3
    move v1, v7

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 278
    :cond_7
    iput v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    return-void

    .line 253
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "UTF8 string too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final put11(II)V
    .locals 3

    .line 79
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x2

    .line 80
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    .line 81
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->enlarge(I)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte p1, p1

    .line 84
    aput-byte p1, v1, v0

    add-int/lit8 p1, v2, 0x1

    int-to-byte p2, p2

    .line 85
    aput-byte p2, v1, v2

    .line 86
    iput p1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    return-void
.end method

.method final put12(II)Lcom/alibaba/fastjson2/internal/asm/ByteVector;
    .locals 3

    .line 116
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x3

    .line 117
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x3

    .line 118
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->enlarge(I)V

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte p1, p1

    .line 121
    aput-byte p1, v1, v0

    add-int/lit8 p1, v2, 0x1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 122
    aput-byte v0, v1, v2

    add-int/lit8 v0, p1, 0x1

    int-to-byte p2, p2

    .line 123
    aput-byte p2, v1, p1

    .line 124
    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    return-object p0
.end method

.method final put122(III)V
    .locals 3

    .line 157
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x5

    .line 158
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x5

    .line 159
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->enlarge(I)V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte p1, p1

    .line 162
    aput-byte p1, v1, v0

    add-int/lit8 p1, v2, 0x1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 163
    aput-byte v0, v1, v2

    add-int/lit8 v0, p1, 0x1

    int-to-byte p2, p2

    .line 164
    aput-byte p2, v1, p1

    add-int/lit8 p1, v0, 0x1

    ushr-int/lit8 p2, p3, 0x8

    int-to-byte p2, p2

    .line 165
    aput-byte p2, v1, v0

    add-int/lit8 p2, p1, 0x1

    int-to-byte p3, p3

    .line 166
    aput-byte p3, v1, p1

    .line 167
    iput p2, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    return-void
.end method

.method public putByte(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;
    .locals 3

    .line 63
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x1

    .line 64
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v2, 0x1

    .line 65
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->enlarge(I)V

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    .line 68
    iput v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putByteArray([BII)V
    .locals 2

    .line 292
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 293
    invoke-direct {p0, p3}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->enlarge(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    :cond_1
    iget p1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    return-void
.end method

.method public putInt(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;
    .locals 4

    .line 135
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x4

    .line 136
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x4

    .line 137
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->enlarge(I)V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    .line 140
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 141
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 142
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte p1, p1

    .line 143
    aput-byte p1, v1, v2

    .line 144
    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putLong(J)V
    .locals 5

    .line 176
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x8

    .line 177
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/16 v1, 0x8

    .line 178
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->enlarge(I)V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    .line 182
    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    .line 183
    aput-byte v4, v1, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 184
    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    .line 185
    aput-byte v2, v1, v3

    long-to-int p1, p1

    add-int/lit8 p2, v0, 0x1

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    .line 187
    aput-byte v2, v1, v0

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    .line 188
    aput-byte v2, v1, p2

    add-int/lit8 p2, v0, 0x1

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    .line 189
    aput-byte v2, v1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte p1, p1

    .line 190
    aput-byte p1, v1, p2

    .line 191
    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    return-void
.end method

.method public putShort(I)Lcom/alibaba/fastjson2/internal/asm/ByteVector;
    .locals 4

    .line 96
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x2

    .line 97
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    .line 98
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->enlarge(I)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 101
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte p1, p1

    .line 102
    aput-byte p1, v1, v2

    .line 103
    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)V
    .locals 6

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_3

    .line 206
    iget v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    add-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    .line 207
    iget-object v3, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x2

    .line 208
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->enlarge(I)V

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->data:[B

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    .line 215
    aput-byte v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    int-to-byte v4, v0

    .line 216
    aput-byte v4, v2, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 218
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    int-to-byte v4, v4

    .line 220
    aput-byte v4, v2, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 222
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    .line 223
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->encodeUtf8(Ljava/lang/String;I)V

    return-void

    .line 227
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson2/internal/asm/ByteVector;->length:I

    return-void

    .line 204
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "UTF8 string too large"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
