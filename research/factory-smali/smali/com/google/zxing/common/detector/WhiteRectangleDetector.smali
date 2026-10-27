.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0xa


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 3
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "initSize"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 61
    div-int/lit8 v0, p2, 0x2

    .line 62
    .local v0, "halfsize":I
    sub-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 63
    add-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 64
    sub-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 65
    add-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 66
    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v1, v2, :cond_0

    .line 69
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 17
    .param p1, "y"    # Lcom/google/zxing/ResultPoint;
    .param p2, "z"    # Lcom/google/zxing/ResultPoint;
    .param p3, "x"    # Lcom/google/zxing/ResultPoint;
    .param p4, "t"    # Lcom/google/zxing/ResultPoint;

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 291
    .local v0, "yi":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    .line 292
    .local v1, "yj":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    .line 293
    .local v2, "zi":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    .line 294
    .local v3, "zj":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    .line 295
    .local v4, "xi":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    .line 296
    .local v5, "xj":F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    .line 297
    .local v6, "ti":F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    .line 299
    .local v7, "tj":F
    move-object/from16 v8, p0

    iget v9, v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    cmpg-float v9, v0, v9

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/high16 v15, 0x3f800000    # 1.0f

    if-gez v9, :cond_0

    .line 300
    new-array v9, v14, [Lcom/google/zxing/ResultPoint;

    new-instance v14, Lcom/google/zxing/ResultPoint;

    sub-float v10, v6, v15

    add-float v11, v7, v15

    invoke-direct {v14, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v9, v13

    new-instance v10, Lcom/google/zxing/ResultPoint;

    add-float v11, v2, v15

    add-float v13, v3, v15

    invoke-direct {v10, v11, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v9, v12

    new-instance v10, Lcom/google/zxing/ResultPoint;

    sub-float v11, v4, v15

    sub-float v12, v5, v15

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x2

    aput-object v10, v9, v11

    new-instance v10, Lcom/google/zxing/ResultPoint;

    add-float v11, v0, v15

    sub-float v12, v1, v15

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x3

    aput-object v10, v9, v11

    return-object v9

    .line 306
    :cond_0
    new-array v9, v14, [Lcom/google/zxing/ResultPoint;

    new-instance v10, Lcom/google/zxing/ResultPoint;

    add-float v11, v6, v15

    add-float v14, v7, v15

    invoke-direct {v10, v11, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v9, v13

    new-instance v10, Lcom/google/zxing/ResultPoint;

    add-float v11, v2, v15

    sub-float v13, v3, v15

    invoke-direct {v10, v11, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v9, v12

    new-instance v10, Lcom/google/zxing/ResultPoint;

    sub-float v11, v4, v15

    add-float v12, v5, v15

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x2

    aput-object v10, v9, v11

    new-instance v10, Lcom/google/zxing/ResultPoint;

    sub-float v11, v0, v15

    sub-float v12, v1, v15

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x3

    aput-object v10, v9, v11

    return-object v9
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "fixed"    # I
    .param p4, "horizontal"    # Z

    .line 325
    const/4 v0, 0x1

    if-eqz p4, :cond_1

    .line 326
    move v1, p1

    .local v1, "x":I
    :goto_0
    if-gt v1, p2, :cond_3

    .line 327
    iget-object v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    return v0

    .line 326
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "x":I
    :cond_1
    move v1, p1

    .local v1, "y":I
    :goto_1
    if-gt v1, p2, :cond_3

    .line 333
    iget-object v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, p3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    return v0

    .line 332
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 339
    .end local v1    # "y":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 9
    .param p1, "aX"    # F
    .param p2, "aY"    # F
    .param p3, "bX"    # F
    .param p4, "bY"    # F

    .line 253
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 254
    .local v0, "dist":I
    sub-float v1, p3, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 255
    .local v1, "xStep":F
    sub-float v2, p4, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 257
    .local v2, "yStep":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 258
    int-to-float v4, v3

    mul-float/2addr v4, v1

    add-float/2addr v4, p1

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    .line 259
    .local v4, "x":I
    int-to-float v5, v3

    mul-float/2addr v5, v2

    add-float/2addr v5, p2

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v5

    .line 260
    .local v5, "y":I
    iget-object v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v6

    .line 257
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 87
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 88
    .local v1, "left":I
    iget v2, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 89
    .local v2, "right":I
    iget v3, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 90
    .local v3, "up":I
    iget v4, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 91
    .local v4, "down":I
    const/4 v5, 0x0

    .line 92
    .local v5, "sizeExceeded":Z
    const/4 v6, 0x1

    .line 93
    .local v6, "aBlackPointFoundOnBorder":Z
    const/4 v7, 0x0

    .line 95
    .local v7, "atLeastOneBlackPointFoundOnBorder":Z
    const/4 v8, 0x0

    .line 96
    .local v8, "atLeastOneBlackPointFoundOnRight":Z
    const/4 v9, 0x0

    .line 97
    .local v9, "atLeastOneBlackPointFoundOnBottom":Z
    const/4 v10, 0x0

    .line 98
    .local v10, "atLeastOneBlackPointFoundOnLeft":Z
    const/4 v11, 0x0

    move v12, v7

    move v7, v1

    move v1, v11

    .line 100
    .local v1, "atLeastOneBlackPointFoundOnTop":Z
    .local v7, "left":I
    .local v12, "atLeastOneBlackPointFoundOnBorder":Z
    :goto_0
    const/4 v13, 0x1

    if-eqz v6, :cond_15

    .line 102
    const/4 v6, 0x0

    .line 107
    move v14, v6

    move v6, v2

    move v2, v13

    .line 108
    .local v2, "rightBorderNotWhite":Z
    .local v6, "right":I
    .local v14, "aBlackPointFoundOnBorder":Z
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    if-nez v8, :cond_3

    :cond_1
    iget v15, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v6, v15, :cond_3

    .line 109
    invoke-direct {v0, v3, v4, v6, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v2

    .line 110
    if-eqz v2, :cond_2

    .line 111
    add-int/lit8 v6, v6, 0x1

    .line 112
    const/4 v14, 0x1

    .line 113
    const/4 v8, 0x1

    goto :goto_1

    .line 114
    :cond_2
    if-nez v8, :cond_0

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 119
    :cond_3
    iget v15, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v6, v15, :cond_4

    .line 120
    const/4 v5, 0x1

    .line 121
    nop

    .line 190
    move v15, v14

    move v14, v4

    goto/16 :goto_c

    .line 127
    :cond_4
    move v15, v14

    move v14, v4

    move v4, v13

    .line 128
    .local v4, "bottomBorderNotWhite":Z
    .local v14, "down":I
    .local v15, "aBlackPointFoundOnBorder":Z
    :goto_2
    if-nez v4, :cond_5

    if-nez v9, :cond_8

    :cond_5
    iget v11, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v14, v11, :cond_8

    .line 129
    invoke-direct {v0, v7, v6, v14, v13}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v4

    .line 130
    if-eqz v4, :cond_7

    .line 131
    add-int/lit8 v14, v14, 0x1

    .line 132
    const/4 v15, 0x1

    .line 133
    const/4 v9, 0x1

    .line 127
    :cond_6
    :goto_3
    const/4 v11, 0x0

    goto :goto_2

    .line 134
    :cond_7
    if-nez v9, :cond_6

    .line 135
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 139
    :cond_8
    iget v11, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v14, v11, :cond_9

    .line 140
    const/4 v5, 0x1

    .line 141
    goto/16 :goto_c

    .line 147
    :cond_9
    move v11, v7

    move v7, v13

    .line 148
    .local v7, "leftBorderNotWhite":Z
    .local v11, "left":I
    :goto_4
    if-nez v7, :cond_b

    if-nez v10, :cond_a

    goto :goto_5

    .line 159
    :cond_a
    const/4 v13, 0x0

    goto :goto_7

    .line 148
    :cond_b
    :goto_5
    if-ltz v11, :cond_a

    .line 149
    const/4 v13, 0x0

    invoke-direct {v0, v3, v14, v11, v13}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v7

    .line 150
    if-eqz v7, :cond_d

    .line 151
    add-int/lit8 v11, v11, -0x1

    .line 152
    const/4 v15, 0x1

    .line 153
    const/4 v10, 0x1

    .line 147
    :cond_c
    :goto_6
    const/4 v13, 0x1

    goto :goto_4

    .line 154
    :cond_d
    if-nez v10, :cond_c

    .line 155
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 159
    :goto_7
    if-gez v11, :cond_e

    .line 160
    const/4 v5, 0x1

    .line 161
    nop

    .line 190
    move v7, v11

    const/4 v13, 0x1

    goto :goto_c

    .line 167
    :cond_e
    move/from16 v16, v15

    move v15, v3

    move v3, v1

    const/4 v1, 0x1

    .line 168
    .local v1, "topBorderNotWhite":Z
    .local v3, "atLeastOneBlackPointFoundOnTop":Z
    .local v15, "up":I
    .local v16, "aBlackPointFoundOnBorder":Z
    :goto_8
    if-nez v1, :cond_10

    if-nez v3, :cond_f

    goto :goto_9

    .line 179
    :cond_f
    const/4 v13, 0x1

    goto :goto_b

    .line 168
    :cond_10
    :goto_9
    if-ltz v15, :cond_f

    .line 169
    const/4 v13, 0x1

    invoke-direct {v0, v11, v6, v15, v13}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v1

    .line 170
    if-eqz v1, :cond_12

    .line 171
    add-int/lit8 v15, v15, -0x1

    .line 172
    const/16 v16, 0x1

    .line 173
    const/4 v3, 0x1

    .line 167
    :cond_11
    :goto_a
    const/4 v13, 0x0

    goto :goto_8

    .line 174
    :cond_12
    if-nez v3, :cond_11

    .line 175
    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    .line 179
    :goto_b
    if-gez v15, :cond_13

    .line 180
    const/4 v5, 0x1

    .line 181
    nop

    .line 190
    move v1, v3

    move v7, v11

    move v3, v15

    move/from16 v15, v16

    goto :goto_c

    .line 184
    :cond_13
    if-eqz v16, :cond_14

    .line 185
    const/4 v1, 0x1

    .line 188
    .end local v2    # "rightBorderNotWhite":Z
    .end local v4    # "bottomBorderNotWhite":Z
    .end local v7    # "leftBorderNotWhite":Z
    .end local v12    # "atLeastOneBlackPointFoundOnBorder":Z
    .local v1, "atLeastOneBlackPointFoundOnBorder":Z
    move v12, v1

    .line 98
    .end local v1    # "atLeastOneBlackPointFoundOnBorder":Z
    .restart local v12    # "atLeastOneBlackPointFoundOnBorder":Z
    :cond_14
    move v1, v3

    move v2, v6

    move v7, v11

    move v4, v14

    move v3, v15

    move/from16 v6, v16

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 190
    .end local v11    # "left":I
    .end local v14    # "down":I
    .end local v15    # "up":I
    .end local v16    # "aBlackPointFoundOnBorder":Z
    .local v1, "atLeastOneBlackPointFoundOnTop":Z
    .local v2, "right":I
    .local v3, "up":I
    .local v4, "down":I
    .local v6, "aBlackPointFoundOnBorder":Z
    .local v7, "left":I
    :cond_15
    move v14, v4

    move v15, v6

    move v6, v2

    .end local v2    # "right":I
    .end local v4    # "down":I
    .local v6, "right":I
    .restart local v14    # "down":I
    .local v15, "aBlackPointFoundOnBorder":Z
    :goto_c
    if-nez v5, :cond_22

    if-eqz v12, :cond_22

    .line 192
    sub-int v2, v6, v7

    .line 194
    .local v2, "maxSize":I
    const/4 v4, 0x0

    .line 195
    .local v4, "z":Lcom/google/zxing/ResultPoint;
    move-object v11, v4

    move v4, v13

    .local v4, "i":I
    .local v11, "z":Lcom/google/zxing/ResultPoint;
    :goto_d
    if-ge v4, v2, :cond_17

    .line 196
    int-to-float v13, v7

    move/from16 v18, v1

    sub-int v1, v14, v4

    .end local v1    # "atLeastOneBlackPointFoundOnTop":Z
    .local v18, "atLeastOneBlackPointFoundOnTop":Z
    int-to-float v1, v1

    move/from16 v19, v5

    add-int v5, v7, v4

    .end local v5    # "sizeExceeded":Z
    .local v19, "sizeExceeded":Z
    int-to-float v5, v5

    move/from16 v20, v8

    int-to-float v8, v14

    .end local v8    # "atLeastOneBlackPointFoundOnRight":Z
    .local v20, "atLeastOneBlackPointFoundOnRight":Z
    invoke-direct {v0, v13, v1, v5, v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 197
    if-eqz v11, :cond_16

    .line 198
    goto :goto_e

    .line 195
    :cond_16
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v18

    move/from16 v5, v19

    move/from16 v8, v20

    const/4 v13, 0x1

    goto :goto_d

    .line 202
    .end local v4    # "i":I
    .end local v18    # "atLeastOneBlackPointFoundOnTop":Z
    .end local v19    # "sizeExceeded":Z
    .end local v20    # "atLeastOneBlackPointFoundOnRight":Z
    .restart local v1    # "atLeastOneBlackPointFoundOnTop":Z
    .restart local v5    # "sizeExceeded":Z
    .restart local v8    # "atLeastOneBlackPointFoundOnRight":Z
    :cond_17
    move/from16 v18, v1

    move/from16 v19, v5

    move/from16 v20, v8

    .end local v1    # "atLeastOneBlackPointFoundOnTop":Z
    .end local v5    # "sizeExceeded":Z
    .end local v8    # "atLeastOneBlackPointFoundOnRight":Z
    .restart local v18    # "atLeastOneBlackPointFoundOnTop":Z
    .restart local v19    # "sizeExceeded":Z
    .restart local v20    # "atLeastOneBlackPointFoundOnRight":Z
    :goto_e
    if-eqz v11, :cond_21

    .line 206
    const/4 v1, 0x0

    .line 208
    .local v1, "t":Lcom/google/zxing/ResultPoint;
    move-object v4, v1

    const/4 v1, 0x1

    .local v1, "i":I
    .local v4, "t":Lcom/google/zxing/ResultPoint;
    :goto_f
    if-ge v1, v2, :cond_19

    .line 209
    int-to-float v5, v7

    add-int v8, v3, v1

    int-to-float v8, v8

    add-int v13, v7, v1

    int-to-float v13, v13

    move-object/from16 v21, v4

    int-to-float v4, v3

    .end local v4    # "t":Lcom/google/zxing/ResultPoint;
    .local v21, "t":Lcom/google/zxing/ResultPoint;
    invoke-direct {v0, v5, v8, v13, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 210
    .end local v21    # "t":Lcom/google/zxing/ResultPoint;
    .restart local v4    # "t":Lcom/google/zxing/ResultPoint;
    if-eqz v4, :cond_18

    .line 211
    goto :goto_10

    .line 208
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 215
    .end local v1    # "i":I
    :cond_19
    move-object/from16 v21, v4

    :goto_10
    if-eqz v4, :cond_20

    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, "x":Lcom/google/zxing/ResultPoint;
    move-object v5, v1

    const/4 v1, 0x1

    .local v1, "i":I
    .local v5, "x":Lcom/google/zxing/ResultPoint;
    :goto_11
    if-ge v1, v2, :cond_1b

    .line 222
    int-to-float v8, v6

    add-int v13, v3, v1

    int-to-float v13, v13

    move-object/from16 v22, v5

    sub-int v5, v6, v1

    .end local v5    # "x":Lcom/google/zxing/ResultPoint;
    .local v22, "x":Lcom/google/zxing/ResultPoint;
    int-to-float v5, v5

    move/from16 v23, v7

    int-to-float v7, v3

    .end local v7    # "left":I
    .local v23, "left":I
    invoke-direct {v0, v8, v13, v5, v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 223
    .end local v22    # "x":Lcom/google/zxing/ResultPoint;
    .restart local v5    # "x":Lcom/google/zxing/ResultPoint;
    if-eqz v5, :cond_1a

    .line 224
    goto :goto_12

    .line 221
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v23

    goto :goto_11

    .line 228
    .end local v1    # "i":I
    .end local v23    # "left":I
    .restart local v7    # "left":I
    :cond_1b
    move-object/from16 v22, v5

    move/from16 v23, v7

    .end local v7    # "left":I
    .restart local v23    # "left":I
    :goto_12
    if-eqz v5, :cond_1f

    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, "y":Lcom/google/zxing/ResultPoint;
    const/16 v17, 0x1

    .local v17, "i":I
    :goto_13
    move/from16 v7, v17

    .end local v17    # "i":I
    .local v7, "i":I
    if-ge v7, v2, :cond_1d

    .line 235
    int-to-float v8, v6

    sub-int v13, v14, v7

    int-to-float v13, v13

    move-object/from16 v24, v1

    sub-int v1, v6, v7

    .end local v1    # "y":Lcom/google/zxing/ResultPoint;
    .local v24, "y":Lcom/google/zxing/ResultPoint;
    int-to-float v1, v1

    move/from16 v25, v2

    int-to-float v2, v14

    .end local v2    # "maxSize":I
    .local v25, "maxSize":I
    invoke-direct {v0, v8, v13, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 236
    .end local v24    # "y":Lcom/google/zxing/ResultPoint;
    .restart local v1    # "y":Lcom/google/zxing/ResultPoint;
    if-eqz v1, :cond_1c

    .line 237
    goto :goto_14

    .line 234
    :cond_1c
    add-int/lit8 v17, v7, 0x1

    .end local v7    # "i":I
    .restart local v17    # "i":I
    move/from16 v2, v25

    goto :goto_13

    .line 241
    .end local v17    # "i":I
    .end local v25    # "maxSize":I
    .restart local v2    # "maxSize":I
    :cond_1d
    move-object/from16 v24, v1

    move/from16 v25, v2

    .end local v2    # "maxSize":I
    .restart local v25    # "maxSize":I
    :goto_14
    if-eqz v1, :cond_1e

    .line 245
    invoke-direct {v0, v1, v11, v5, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    return-object v2

    .line 242
    :cond_1e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 229
    .end local v1    # "y":Lcom/google/zxing/ResultPoint;
    .end local v25    # "maxSize":I
    .restart local v2    # "maxSize":I
    :cond_1f
    move/from16 v25, v2

    .end local v2    # "maxSize":I
    .restart local v25    # "maxSize":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 216
    .end local v5    # "x":Lcom/google/zxing/ResultPoint;
    .end local v23    # "left":I
    .end local v25    # "maxSize":I
    .restart local v2    # "maxSize":I
    .local v7, "left":I
    :cond_20
    move/from16 v25, v2

    move/from16 v23, v7

    .end local v2    # "maxSize":I
    .end local v7    # "left":I
    .restart local v23    # "left":I
    .restart local v25    # "maxSize":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 203
    .end local v4    # "t":Lcom/google/zxing/ResultPoint;
    .end local v23    # "left":I
    .end local v25    # "maxSize":I
    .restart local v2    # "maxSize":I
    .restart local v7    # "left":I
    :cond_21
    move/from16 v25, v2

    move/from16 v23, v7

    .end local v2    # "maxSize":I
    .end local v7    # "left":I
    .restart local v23    # "left":I
    .restart local v25    # "maxSize":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 248
    .end local v11    # "z":Lcom/google/zxing/ResultPoint;
    .end local v18    # "atLeastOneBlackPointFoundOnTop":Z
    .end local v19    # "sizeExceeded":Z
    .end local v20    # "atLeastOneBlackPointFoundOnRight":Z
    .end local v23    # "left":I
    .end local v25    # "maxSize":I
    .local v1, "atLeastOneBlackPointFoundOnTop":Z
    .local v5, "sizeExceeded":Z
    .restart local v7    # "left":I
    .restart local v8    # "atLeastOneBlackPointFoundOnRight":Z
    :cond_22
    move/from16 v18, v1

    move/from16 v19, v5

    move/from16 v23, v7

    move/from16 v20, v8

    .end local v1    # "atLeastOneBlackPointFoundOnTop":Z
    .end local v5    # "sizeExceeded":Z
    .end local v7    # "left":I
    .end local v8    # "atLeastOneBlackPointFoundOnRight":Z
    .restart local v18    # "atLeastOneBlackPointFoundOnTop":Z
    .restart local v19    # "sizeExceeded":Z
    .restart local v20    # "atLeastOneBlackPointFoundOnRight":Z
    .restart local v23    # "left":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
