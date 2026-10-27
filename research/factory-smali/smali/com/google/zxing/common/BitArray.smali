.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private bits:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 38
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 39
    return-void
.end method

.method constructor <init>([II)V
    .locals 0
    .param p1, "bits"    # [I
    .param p2, "size"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 44
    iput p2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 45
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "size"    # I

    .line 56
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    if-le p1, v0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    .line 58
    .local v0, "newBits":[I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 61
    .end local v0    # "newBits":[I
    :cond_0
    return-void
.end method

.method private static makeArray(I)[I
    .locals 1
    .param p0, "size"    # I

    .line 341
    add-int/lit8 v0, p0, 0x1f

    div-int/lit8 v0, v0, 0x20

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public appendBit(Z)V
    .locals 5
    .param p1, "bit"    # Z

    .line 231
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 232
    if-eqz p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/lit8 v2, v2, 0x20

    aget v3, v0, v2

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v4, v4, 0x1f

    shl-int v4, v1, v4

    or-int/2addr v3, v4

    aput v3, v0, v2

    .line 235
    :cond_0
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 236
    return-void
.end method

.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .locals 3
    .param p1, "other"    # Lcom/google/zxing/common/BitArray;

    .line 257
    iget v0, p1, Lcom/google/zxing/common/BitArray;->size:I

    .line 258
    .local v0, "otherSize":I
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 260
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "numBits"    # I

    .line 247
    if-ltz p2, :cond_2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_2

    .line 250
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 251
    move v0, p2

    .local v0, "numBitsLeft":I
    :goto_0
    if-lez v0, :cond_1

    .line 252
    add-int/lit8 v1, v0, -0x1

    shr-int v1, p1, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 251
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    .end local v0    # "numBitsLeft":I
    :cond_1
    return-void

    .line 248
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Num bits must be between 0 and 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    .line 184
    .local v0, "max":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 185
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aput v1, v3, v2

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitArray;
    .locals 3

    .line 372
    new-instance v0, Lcom/google/zxing/common/BitArray;

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/BitArray;-><init>([II)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->clone()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 346
    instance-of v0, p1, Lcom/google/zxing/common/BitArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 347
    return v1

    .line 349
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/common/BitArray;

    .line 350
    .local v0, "other":Lcom/google/zxing/common/BitArray;
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v3, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v3, v0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public flip(I)V
    .locals 5
    .param p1, "i"    # I

    .line 86
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 87
    return-void
.end method

.method public get(I)Z
    .locals 3
    .param p1, "i"    # I

    .line 68
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getBitArray()[I
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-object v0
.end method

.method public getNextSet(I)I
    .locals 4
    .param p1, "from"    # I

    .line 96
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v0, :cond_0

    .line 97
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0

    .line 99
    :cond_0
    div-int/lit8 v0, p1, 0x20

    .line 100
    .local v0, "bitsOffset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v1, v0

    .line 102
    .local v1, "currentBits":I
    and-int/lit8 v2, p1, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    sub-int/2addr v2, v3

    not-int v2, v2

    and-int/2addr v1, v2

    .line 103
    :goto_0
    if-nez v1, :cond_2

    .line 104
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 105
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v2

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v2, v0

    goto :goto_0

    .line 109
    :cond_2
    mul-int/lit8 v2, v0, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 110
    .local v2, "result":I
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le v2, v3, :cond_3

    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    return v3
.end method

.method public getNextUnset(I)I
    .locals 4
    .param p1, "from"    # I

    .line 119
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v0, :cond_0

    .line 120
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0

    .line 122
    :cond_0
    div-int/lit8 v0, p1, 0x20

    .line 123
    .local v0, "bitsOffset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v1, v0

    not-int v1, v1

    .line 125
    .local v1, "currentBits":I
    and-int/lit8 v2, p1, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    sub-int/2addr v2, v3

    not-int v2, v2

    and-int/2addr v1, v2

    .line 126
    :goto_0
    if-nez v1, :cond_2

    .line 127
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 128
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v2

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v2, v2, v0

    not-int v1, v2

    goto :goto_0

    .line 132
    :cond_2
    mul-int/lit8 v2, v0, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 133
    .local v2, "result":I
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le v2, v3, :cond_3

    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    return v3
.end method

.method public getSize()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 355
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isRange(IIZ)Z
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # Z

    .line 199
    if-lt p2, p1, :cond_8

    .line 202
    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 203
    return v0

    .line 205
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 206
    div-int/lit8 v1, p1, 0x20

    .line 207
    .local v1, "firstInt":I
    div-int/lit8 v2, p2, 0x20

    .line 208
    .local v2, "lastInt":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_7

    .line 209
    const/4 v4, 0x0

    if-le v3, v1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    and-int/lit8 v5, p1, 0x1f

    .line 210
    .local v5, "firstBit":I
    :goto_1
    const/16 v6, 0x1f

    if-ge v3, v2, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    and-int/lit8 v7, p2, 0x1f

    .line 212
    .local v7, "lastBit":I
    :goto_2
    if-nez v5, :cond_3

    if-ne v7, v6, :cond_3

    .line 213
    const/4 v6, -0x1

    .local v6, "mask":I
    goto :goto_4

    .line 215
    .end local v6    # "mask":I
    :cond_3
    const/4 v6, 0x0

    .line 216
    .restart local v6    # "mask":I
    move v8, v6

    move v6, v5

    .local v6, "j":I
    .local v8, "mask":I
    :goto_3
    if-gt v6, v7, :cond_4

    .line 217
    shl-int v9, v0, v6

    or-int/2addr v8, v9

    .line 216
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 223
    .end local v6    # "j":I
    :cond_4
    move v6, v8

    .end local v8    # "mask":I
    .local v6, "mask":I
    :goto_4
    iget-object v8, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v8, v8, v3

    and-int/2addr v8, v6

    if-eqz p3, :cond_5

    move v9, v6

    goto :goto_5

    :cond_5
    move v9, v4

    :goto_5
    if-eq v8, v9, :cond_6

    .line 224
    return v4

    .line 208
    .end local v5    # "firstBit":I
    .end local v6    # "mask":I
    .end local v7    # "lastBit":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    .end local v3    # "i":I
    :cond_7
    return v0

    .line 200
    .end local v1    # "firstInt":I
    .end local v2    # "lastInt":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public reverse()V
    .locals 13

    .line 308
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 310
    .local v0, "newBits":[I
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x20

    .line 311
    .local v1, "len":I
    add-int/lit8 v3, v1, 0x1

    .line 312
    .local v3, "oldBitsLen":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 313
    iget-object v6, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v6, v6, v5

    int-to-long v6, v6

    .line 314
    .local v6, "x":J
    shr-long v8, v6, v2

    const-wide/32 v10, 0x55555555

    and-long/2addr v8, v10

    and-long/2addr v10, v6

    shl-long/2addr v10, v2

    or-long v6, v8, v10

    .line 315
    const/4 v8, 0x2

    shr-long v9, v6, v8

    const-wide/32 v11, 0x33333333

    and-long/2addr v9, v11

    and-long/2addr v11, v6

    shl-long/2addr v11, v8

    or-long v6, v9, v11

    .line 316
    const/4 v8, 0x4

    shr-long v9, v6, v8

    const-wide/32 v11, 0xf0f0f0f

    and-long/2addr v9, v11

    and-long/2addr v11, v6

    shl-long/2addr v11, v8

    or-long v6, v9, v11

    .line 317
    const/16 v8, 0x8

    shr-long v9, v6, v8

    const-wide/32 v11, 0xff00ff

    and-long/2addr v9, v11

    and-long/2addr v11, v6

    shl-long/2addr v11, v8

    or-long v6, v9, v11

    .line 318
    const/16 v8, 0x10

    shr-long v9, v6, v8

    const-wide/32 v11, 0xffff

    and-long/2addr v9, v11

    and-long/2addr v11, v6

    shl-long/2addr v11, v8

    or-long v6, v9, v11

    .line 319
    sub-int v8, v1, v5

    long-to-int v9, v6

    aput v9, v0, v8

    .line 312
    .end local v6    # "x":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 322
    .end local v5    # "i":I
    :cond_0
    iget v5, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v6, v3, 0x20

    if-eq v5, v6, :cond_3

    .line 323
    mul-int/lit8 v5, v3, 0x20

    iget v6, p0, Lcom/google/zxing/common/BitArray;->size:I

    sub-int/2addr v5, v6

    .line 324
    .local v5, "leftOffset":I
    const/4 v6, 0x1

    .line 325
    .local v6, "mask":I
    move v7, v6

    move v6, v4

    .local v6, "i":I
    .local v7, "mask":I
    :goto_1
    rsub-int/lit8 v8, v5, 0x1f

    if-ge v6, v8, :cond_1

    .line 326
    shl-int/lit8 v8, v7, 0x1

    or-int/lit8 v7, v8, 0x1

    .line 325
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 328
    .end local v6    # "i":I
    :cond_1
    aget v4, v0, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    .line 329
    .local v4, "currentInt":I
    nop

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 330
    aget v6, v0, v2

    .line 331
    .local v6, "nextInt":I
    rsub-int/lit8 v8, v5, 0x20

    shl-int v8, v6, v8

    or-int/2addr v4, v8

    .line 332
    add-int/lit8 v8, v2, -0x1

    aput v4, v0, v8

    .line 333
    shr-int v8, v6, v5

    and-int v4, v8, v7

    .line 329
    .end local v6    # "nextInt":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 335
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v3, -0x1

    aput v4, v0, v2

    .line 337
    .end local v4    # "currentInt":I
    .end local v5    # "leftOffset":I
    .end local v7    # "mask":I
    :cond_3
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 338
    return-void
.end method

.method public set(I)V
    .locals 5
    .param p1, "i"    # I

    .line 77
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 78
    return-void
.end method

.method public setBulk(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "newBits"    # I

    .line 144
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aput p2, v0, v1

    .line 145
    return-void
.end method

.method public setRange(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 154
    if-lt p2, p1, :cond_6

    .line 157
    if-ne p2, p1, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 161
    div-int/lit8 v0, p1, 0x20

    .line 162
    .local v0, "firstInt":I
    div-int/lit8 v1, p2, 0x20

    .line 163
    .local v1, "lastInt":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_5

    .line 164
    if-le v2, v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    and-int/lit8 v3, p1, 0x1f

    .line 165
    .local v3, "firstBit":I
    :goto_1
    const/16 v4, 0x1f

    if-ge v2, v1, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    and-int/lit8 v5, p2, 0x1f

    .line 167
    .local v5, "lastBit":I
    :goto_2
    if-nez v3, :cond_3

    if-ne v5, v4, :cond_3

    .line 168
    const/4 v4, -0x1

    .local v4, "mask":I
    goto :goto_4

    .line 170
    .end local v4    # "mask":I
    :cond_3
    const/4 v4, 0x0

    .line 171
    .restart local v4    # "mask":I
    move v6, v4

    move v4, v3

    .local v4, "j":I
    .local v6, "mask":I
    :goto_3
    if-gt v4, v5, :cond_4

    .line 172
    const/4 v7, 0x1

    shl-int/2addr v7, v4

    or-int/2addr v6, v7

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 175
    .end local v4    # "j":I
    :cond_4
    move v4, v6

    .end local v6    # "mask":I
    .local v4, "mask":I
    :goto_4
    iget-object v6, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v7, v6, v2

    or-int/2addr v7, v4

    aput v7, v6, v2

    .line 163
    .end local v3    # "firstBit":I
    .end local v4    # "mask":I
    .end local v5    # "lastBit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "i":I
    :cond_5
    return-void

    .line 155
    .end local v0    # "firstInt":I
    .end local v1    # "lastInt":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public toBytes(I[BII)V
    .locals 6
    .param p1, "bitOffset"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "numBytes"    # I

    .line 284
    const/4 v0, 0x0

    move v1, p1

    move p1, v0

    .local v1, "bitOffset":I
    .local p1, "i":I
    :goto_0
    if-ge p1, p4, :cond_2

    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, "theByte":I
    move v3, v2

    move v2, v1

    move v1, v0

    .local v1, "j":I
    .local v2, "bitOffset":I
    .local v3, "theByte":I
    :goto_1
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 287
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    rsub-int/lit8 v4, v1, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    .line 290
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 292
    .end local v1    # "j":I
    :cond_1
    add-int v1, p3, p1

    int-to-byte v4, v3

    aput-byte v4, p2, v1

    .line 284
    .end local v3    # "theByte":I
    add-int/lit8 p1, p1, 0x1

    move v1, v2

    goto :goto_0

    .line 294
    .end local v2    # "bitOffset":I
    .end local p1    # "i":I
    .local v1, "bitOffset":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 361
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v1, v2, :cond_2

    .line 362
    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_0

    .line 363
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    goto :goto_1

    :cond_1
    const/16 v2, 0x2e

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public xor(Lcom/google/zxing/common/BitArray;)V
    .locals 4
    .param p1, "other"    # Lcom/google/zxing/common/BitArray;

    .line 265
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    iget-object v1, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 266
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sizes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
