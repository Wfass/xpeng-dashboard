.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "dimension"    # I

    .line 45
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 52
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 53
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 54
    add-int/lit8 v0, p1, 0x1f

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 55
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 56
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(III[I)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rowSize"    # I
    .param p4, "bits"    # [I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 60
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 61
    iput p3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 62
    iput-object p4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 63
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v0, v0

    .line 104
    .local v0, "max":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 105
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aput v1, v3, v2

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitMatrix;
    .locals 5

    .line 332
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(III[I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 300
    instance-of v0, p1, Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 301
    return v1

    .line 303
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/common/BitMatrix;

    .line 304
    .local v0, "other":Lcom/google/zxing/common/BitMatrix;
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget-object v3, v0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 305
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 304
    :cond_1
    return v1
.end method

.method public flip(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 95
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 96
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 97
    return-void
.end method

.method public get(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 73
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 74
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getBottomRightOnBit()[I
    .locals 8

    .line 263
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 264
    .local v0, "bitsOffset":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 265
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 267
    :cond_0
    if-gez v0, :cond_1

    .line 268
    const/4 v1, 0x0

    return-object v1

    .line 271
    :cond_1
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v2, v0, v2

    .line 272
    .local v2, "y":I
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v3, v0, v3

    mul-int/lit8 v3, v3, 0x20

    .line 274
    .local v3, "x":I
    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v4, v4, v0

    .line 275
    .local v4, "theBits":I
    const/16 v5, 0x1f

    .line 276
    .local v5, "bit":I
    :goto_1
    ushr-int v6, v4, v5

    if-nez v6, :cond_2

    .line 277
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 279
    :cond_2
    add-int/2addr v3, v5

    .line 281
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    aput v2, v6, v1

    return-object v6
.end method

.method public getEnclosingRectangle()[I
    .locals 11

    .line 190
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 191
    .local v0, "left":I
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 192
    .local v1, "top":I
    const/4 v2, -0x1

    .line 193
    .local v2, "right":I
    const/4 v3, -0x1

    .line 195
    .local v3, "bottom":I
    const/4 v4, 0x0

    move v5, v1

    move v1, v0

    move v0, v4

    .local v0, "y":I
    .local v1, "left":I
    .local v5, "top":I
    :goto_0
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v0, v6, :cond_7

    .line 196
    move v6, v3

    move v3, v2

    move v2, v1

    move v1, v4

    .local v1, "x32":I
    .local v2, "left":I
    .local v3, "right":I
    .local v6, "bottom":I
    :goto_1
    iget v7, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v1, v7, :cond_6

    .line 197
    iget-object v7, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v8, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v1

    aget v7, v7, v8

    .line 198
    .local v7, "theBits":I
    if-eqz v7, :cond_5

    .line 199
    if-ge v0, v5, :cond_0

    .line 200
    move v5, v0

    .line 202
    :cond_0
    if-le v0, v6, :cond_1

    .line 203
    move v6, v0

    .line 205
    :cond_1
    mul-int/lit8 v8, v1, 0x20

    const/16 v9, 0x1f

    if-ge v8, v2, :cond_3

    .line 206
    move v8, v4

    .line 207
    .local v8, "bit":I
    :goto_2
    rsub-int/lit8 v10, v8, 0x1f

    shl-int v10, v7, v10

    if-nez v10, :cond_2

    .line 208
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 210
    :cond_2
    mul-int/lit8 v10, v1, 0x20

    add-int/2addr v10, v8

    if-ge v10, v2, :cond_3

    .line 211
    mul-int/lit8 v10, v1, 0x20

    add-int/2addr v10, v8

    .line 214
    .end local v2    # "left":I
    .end local v8    # "bit":I
    .local v10, "left":I
    move v2, v10

    .end local v10    # "left":I
    .restart local v2    # "left":I
    :cond_3
    mul-int/lit8 v8, v1, 0x20

    add-int/2addr v8, v9

    if-le v8, v3, :cond_5

    .line 215
    nop

    .local v9, "bit":I
    :goto_3
    move v8, v9

    .line 216
    .end local v9    # "bit":I
    .restart local v8    # "bit":I
    ushr-int v9, v7, v8

    if-nez v9, :cond_4

    .line 217
    add-int/lit8 v9, v8, -0x1

    .end local v8    # "bit":I
    .restart local v9    # "bit":I
    goto :goto_3

    .line 219
    .end local v9    # "bit":I
    .restart local v8    # "bit":I
    :cond_4
    mul-int/lit8 v9, v1, 0x20

    add-int/2addr v9, v8

    if-le v9, v3, :cond_5

    .line 220
    mul-int/lit8 v9, v1, 0x20

    add-int v3, v9, v8

    .line 196
    .end local v7    # "theBits":I
    .end local v8    # "bit":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    .end local v1    # "x32":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v2, v3

    move v3, v6

    goto :goto_0

    .line 227
    .end local v0    # "y":I
    .end local v6    # "bottom":I
    .local v1, "left":I
    .local v2, "right":I
    .local v3, "bottom":I
    :cond_7
    sub-int v0, v2, v1

    .line 228
    .local v0, "width":I
    sub-int v6, v3, v5

    .line 230
    .local v6, "height":I
    if-ltz v0, :cond_9

    if-gez v6, :cond_8

    goto :goto_4

    .line 234
    :cond_8
    const/4 v7, 0x4

    new-array v7, v7, [I

    aput v1, v7, v4

    const/4 v4, 0x1

    aput v5, v7, v4

    const/4 v4, 0x2

    aput v0, v7, v4

    const/4 v4, 0x3

    aput v6, v7, v4

    return-object v7

    .line 231
    :cond_9
    :goto_4
    const/4 v4, 0x0

    return-object v4
.end method

.method public getHeight()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;

    .line 146
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_1

    .line 147
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/zxing/common/BitArray;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    move-object p2, v0

    .line 151
    :goto_1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p1

    .line 152
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_2
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v1, v2, :cond_2

    .line 153
    mul-int/lit8 v2, v1, 0x20

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 155
    .end local v1    # "x":I
    :cond_2
    return-object p2
.end method

.method public getTopLeftOnBit()[I
    .locals 7

    .line 243
    const/4 v0, 0x0

    move v1, v0

    .line 244
    .local v1, "bitsOffset":I
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v2, v1

    if-nez v2, :cond_0

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 248
    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_1
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v2, v1, v2

    .line 251
    .local v2, "y":I
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v3, v1, v3

    mul-int/lit8 v3, v3, 0x20

    .line 253
    .local v3, "x":I
    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v4, v4, v1

    .line 254
    .local v4, "theBits":I
    move v5, v0

    .line 255
    .local v5, "bit":I
    :goto_1
    rsub-int/lit8 v6, v5, 0x1f

    shl-int v6, v4, v6

    if-nez v6, :cond_2

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 258
    :cond_2
    add-int/2addr v3, v5

    .line 259
    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v3, v6, v0

    const/4 v0, 0x1

    aput v2, v6, v0

    return-object v6
.end method

.method public getWidth()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 310
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 311
    .local v0, "hash":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/2addr v2, v3

    .line 312
    .end local v0    # "hash":I
    .local v2, "hash":I
    mul-int v0, v1, v2

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/2addr v0, v3

    .line 313
    .end local v2    # "hash":I
    .restart local v0    # "hash":I
    mul-int v2, v1, v0

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int/2addr v2, v3

    .line 314
    .end local v0    # "hash":I
    .restart local v2    # "hash":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    .line 315
    .end local v2    # "hash":I
    .local v1, "hash":I
    return v1
.end method

.method public rotate180()V
    .locals 6

    .line 170
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 171
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 172
    .local v1, "height":I
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 173
    .local v2, "topRow":Lcom/google/zxing/common/BitArray;
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 174
    .local v3, "bottomRow":Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v1, 0x1

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_0

    .line 175
    invoke-virtual {p0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v2

    .line 176
    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5, v3}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    .line 177
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 178
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 179
    invoke-virtual {p0, v4, v3}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 180
    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5, v2}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 84
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 85
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 86
    return-void
.end method

.method public setRegion(IIII)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 118
    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    .line 121
    const/4 v0, 0x1

    if-lt p4, v0, :cond_3

    if-lt p3, v0, :cond_3

    .line 124
    add-int v1, p1, p3

    .line 125
    .local v1, "right":I
    add-int v2, p2, p4

    .line 126
    .local v2, "bottom":I
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v2, v3, :cond_2

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-gt v1, v3, :cond_2

    .line 129
    move v3, p2

    .local v3, "y":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 130
    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v4, v3

    .line 131
    .local v4, "offset":I
    move v5, p1

    .local v5, "x":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 132
    iget-object v6, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    div-int/lit8 v7, v5, 0x20

    add-int/2addr v7, v4

    aget v8, v6, v7

    and-int/lit8 v9, v5, 0x1f

    shl-int v9, v0, v9

    or-int/2addr v8, v9

    aput v8, v6, v7

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 129
    .end local v4    # "offset":I
    .end local v5    # "x":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "y":I
    :cond_1
    return-void

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "The region must fit inside the matrix"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    .end local v1    # "right":I
    .end local v2    # "bottom":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;

    .line 163
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "y":I
    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_2

    .line 322
    move v3, v1

    .local v3, "x":I
    :goto_1
    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v3, v4, :cond_1

    .line 323
    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "X "

    goto :goto_2

    :cond_0
    const-string v4, "  "

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 325
    .end local v3    # "x":I
    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v2    # "y":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
