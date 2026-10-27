.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final BARCODE_MIN_HEIGHT:I = 0xa

.field private static final INDEXES_START_PATTERN:[I

.field private static final INDEXES_STOP_PATTERN:[I

.field private static final MAX_AVG_VARIANCE:F = 0.42f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.8f

.field private static final MAX_PATTERN_DRIFT:I = 0x5

.field private static final MAX_PIXEL_DRIFT:I = 0x3

.field private static final ROW_STEP:I = 0x5

.field private static final SKIPPED_ROW_COUNT_MAX:I = 0x19

.field private static final START_PATTERN:[I

.field private static final STOP_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    .line 41
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 49
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private static copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V
    .locals 3
    .param p0, "result"    # [Lcom/google/zxing/ResultPoint;
    .param p1, "tmpResult"    # [Lcom/google/zxing/ResultPoint;
    .param p2, "destinationIndexes"    # [I

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 177
    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static detect(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
    .locals 3
    .param p0, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p2, "multiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;Z)",
            "Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 79
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 81
    .local v0, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    invoke-static {p2, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->rotate180()V

    .line 85
    invoke-static {p2, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v1

    .line 87
    :cond_0
    new-instance v2, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;)V

    return-object v2
.end method

.method private static detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;
    .locals 11
    .param p0, "multiple"    # Z
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/zxing/common/BitMatrix;",
            ")",
            "Ljava/util/List<",
            "[",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    const/4 v1, 0x0

    .line 100
    .local v1, "row":I
    const/4 v2, 0x0

    .line 101
    .local v2, "column":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    .line 102
    .local v1, "foundBarcodeInRow":Z
    .local v2, "row":I
    .local v4, "column":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 103
    invoke-static {p1, v2, v4}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 105
    .local v5, "vertices":[Lcom/google/zxing/ResultPoint;
    aget-object v6, v5, v3

    if-nez v6, :cond_4

    const/4 v6, 0x3

    aget-object v7, v5, v6

    if-nez v7, :cond_4

    .line 106
    if-nez v1, :cond_0

    .line 108
    goto :goto_3

    .line 112
    :cond_0
    const/4 v1, 0x0

    .line 113
    const/4 v4, 0x0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/zxing/ResultPoint;

    .line 115
    .local v8, "barcodeCoordinate":[Lcom/google/zxing/ResultPoint;
    const/4 v9, 0x1

    aget-object v10, v8, v9

    if-eqz v10, :cond_1

    .line 116
    int-to-float v10, v2

    aget-object v9, v8, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v2, v9

    .line 118
    :cond_1
    aget-object v9, v8, v6

    if-eqz v9, :cond_2

    .line 119
    aget-object v9, v8, v6

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 121
    .end local v8    # "barcodeCoordinate":[Lcom/google/zxing/ResultPoint;
    :cond_2
    goto :goto_1

    .line 122
    :cond_3
    add-int/lit8 v2, v2, 0x5

    .line 123
    goto :goto_0

    .line 125
    :cond_4
    const/4 v1, 0x1

    .line 126
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    if-nez p0, :cond_5

    .line 128
    goto :goto_3

    .line 132
    :cond_5
    const/4 v6, 0x2

    aget-object v7, v5, v6

    if-eqz v7, :cond_6

    .line 133
    aget-object v7, v5, v6

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 134
    aget-object v6, v5, v6

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v2, v6

    goto :goto_2

    .line 136
    :cond_6
    const/4 v6, 0x4

    aget-object v7, v5, v6

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 137
    aget-object v6, v5, v6

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v2, v6

    .line 139
    .end local v5    # "vertices":[Lcom/google/zxing/ResultPoint;
    :goto_2
    goto :goto_0

    .line 140
    :cond_7
    :goto_3
    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
    .locals 19
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "width"    # I
    .param p4, "whiteFirst"    # Z
    .param p5, "pattern"    # [I
    .param p6, "counters"    # [I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    .line 261
    move-object/from16 v3, p6

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 262
    array-length v4, v2

    .line 263
    .local v4, "patternLength":I
    move/from16 v6, p4

    .line 264
    .local v6, "isWhite":Z
    move/from16 v7, p1

    .line 265
    .local v7, "patternStart":I
    move v8, v7

    move v7, v5

    .line 268
    .local v7, "pixelDrift":I
    .local v8, "patternStart":I
    :goto_0
    invoke-virtual {v0, v8, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_1

    if-lez v8, :cond_1

    add-int/lit8 v9, v7, 0x1

    .local v9, "pixelDrift":I
    const/4 v10, 0x3

    if-ge v7, v10, :cond_0

    .line 269
    .end local v7    # "pixelDrift":I
    add-int/lit8 v8, v8, -0x1

    .line 265
    move v7, v9

    goto :goto_0

    .line 271
    :cond_0
    move v7, v9

    .end local v9    # "pixelDrift":I
    .restart local v7    # "pixelDrift":I
    :cond_1
    move v9, v8

    .line 272
    .local v9, "x":I
    move v10, v8

    move v8, v6

    move v6, v5

    .line 273
    .local v6, "counterPosition":I
    .local v8, "isWhite":Z
    .local v10, "patternStart":I
    :goto_1
    const v11, 0x3ed70a3d    # 0.42f

    const v12, 0x3f4ccccd    # 0.8f

    const/4 v13, 0x2

    const/4 v14, 0x1

    move/from16 v15, p3

    if-ge v9, v15, :cond_6

    .line 274
    invoke-virtual {v0, v9, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v16

    .line 275
    .local v16, "pixel":Z
    xor-int v17, v16, v8

    if-eqz v17, :cond_2

    .line 276
    aget v11, v3, v6

    add-int/2addr v11, v14

    aput v11, v3, v6

    goto :goto_4

    .line 278
    :cond_2
    add-int/lit8 v14, v4, -0x1

    if-ne v6, v14, :cond_4

    .line 279
    invoke-static {v3, v2, v12}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[IF)F

    move-result v12

    cmpg-float v11, v12, v11

    if-gez v11, :cond_3

    .line 280
    new-array v11, v13, [I

    aput v10, v11, v5

    const/4 v12, 0x1

    aput v9, v11, v12

    return-object v11

    .line 282
    :cond_3
    const/4 v12, 0x1

    aget v11, v3, v5

    aget v14, v3, v12

    add-int/2addr v11, v14

    add-int/2addr v10, v11

    .line 283
    add-int/lit8 v11, v4, -0x2

    invoke-static {v3, v13, v3, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    add-int/lit8 v11, v4, -0x2

    aput v5, v3, v11

    .line 285
    add-int/lit8 v11, v4, -0x1

    aput v5, v3, v11

    .line 286
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 288
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 290
    :goto_2
    const/4 v11, 0x1

    aput v11, v3, v6

    .line 291
    if-nez v8, :cond_5

    const/16 v18, 0x1

    goto :goto_3

    :cond_5
    move/from16 v18, v5

    :goto_3
    move/from16 v8, v18

    .line 273
    .end local v16    # "pixel":Z
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 294
    :cond_6
    add-int/lit8 v14, v4, -0x1

    if-ne v6, v14, :cond_7

    .line 295
    invoke-static {v3, v2, v12}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[IF)F

    move-result v12

    cmpg-float v11, v12, v11

    if-gez v11, :cond_7

    .line 296
    new-array v11, v13, [I

    aput v10, v11, v5

    add-int/lit8 v5, v9, -0x1

    const/4 v12, 0x1

    aput v5, v11, v12

    return-object v11

    .line 299
    :cond_7
    const/4 v5, 0x0

    return-object v5
.end method

.method private static findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;
    .locals 19
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "startRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "pattern"    # [I

    move/from16 v0, p1

    .line 187
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    .line 188
    .local v1, "result":[Lcom/google/zxing/ResultPoint;
    const/4 v2, 0x0

    .line 189
    .local v2, "found":Z
    move-object/from16 v15, p5

    array-length v3, v15

    new-array v3, v3, [I

    move/from16 v10, p3

    move-object v9, v3

    .line 190
    .end local p3    # "startRow":I
    .local v9, "counters":[I
    .local v10, "startRow":I
    :goto_0
    const/16 v17, 0x0

    const/16 v18, 0x1

    if-ge v10, v0, :cond_3

    .line 191
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p4

    move v5, v10

    move/from16 v6, p2

    move-object v8, v15

    invoke-static/range {v3 .. v9}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v3

    .line 192
    .local v3, "loc":[I
    if-eqz v3, :cond_2

    .line 193
    :goto_1
    if-lez v10, :cond_1

    .line 194
    add-int/lit8 v4, v10, -0x1

    .end local v10    # "startRow":I
    .local v4, "startRow":I
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move/from16 v11, p4

    move v12, v4

    move/from16 v13, p2

    move-object/from16 v15, p5

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v5

    .line 195
    .local v5, "previousRowLoc":[I
    if-eqz v5, :cond_0

    .line 196
    move-object v3, v5

    .line 201
    .end local v5    # "previousRowLoc":[I
    nop

    .line 193
    move-object/from16 v15, p5

    move v10, v4

    goto :goto_1

    .line 198
    .restart local v5    # "previousRowLoc":[I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 199
    nop

    .line 202
    move v10, v4

    .end local v4    # "startRow":I
    .end local v5    # "previousRowLoc":[I
    .restart local v10    # "startRow":I
    :cond_1
    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v3, v17

    int-to-float v5, v5

    int-to-float v6, v10

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v1, v17

    .line 203
    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v3, v18

    int-to-float v5, v5

    int-to-float v6, v10

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v1, v18

    .line 204
    const/4 v2, 0x1

    .line 205
    goto :goto_2

    .line 190
    .end local v3    # "loc":[I
    :cond_2
    add-int/lit8 v10, v10, 0x5

    .line 189
    move-object/from16 v15, p5

    goto :goto_0

    .line 208
    .end local v10    # "startRow":I
    .local v2, "startRow":I
    .local v3, "found":Z
    :cond_3
    :goto_2
    move v3, v2

    move v2, v10

    add-int/lit8 v4, v2, 0x1

    .line 210
    .local v4, "stopRow":I
    if-eqz v3, :cond_7

    .line 211
    const/4 v5, 0x0

    .line 212
    .local v5, "skippedRowCount":I
    const/4 v6, 0x2

    new-array v7, v6, [I

    aget-object v8, v1, v17

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v17

    aget-object v8, v1, v18

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v18

    .line 213
    .local v7, "previousRowLoc":[I
    :goto_3
    if-ge v4, v0, :cond_6

    .line 214
    aget v11, v7, v17

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v12, v4

    move/from16 v13, p2

    move-object/from16 v15, p5

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v8

    .line 219
    .local v8, "loc":[I
    if-eqz v8, :cond_4

    aget v10, v7, v17

    aget v11, v8, v17

    sub-int/2addr v10, v11

    .line 220
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x5

    if-ge v10, v11, :cond_4

    aget v10, v7, v18

    aget v12, v8, v18

    sub-int/2addr v10, v12

    .line 221
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v11, :cond_4

    .line 222
    move-object v7, v8

    .line 223
    const/4 v5, 0x0

    goto :goto_4

    .line 225
    :cond_4
    const/16 v10, 0x19

    if-le v5, v10, :cond_5

    .line 226
    goto :goto_5

    .line 228
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 213
    .end local v8    # "loc":[I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 232
    :cond_6
    :goto_5
    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v4, v8

    .line 233
    new-instance v8, Lcom/google/zxing/ResultPoint;

    aget v10, v7, v17

    int-to-float v10, v10

    int-to-float v11, v4

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v1, v6

    .line 234
    const/4 v6, 0x3

    new-instance v8, Lcom/google/zxing/ResultPoint;

    aget v10, v7, v18

    int-to-float v10, v10

    int-to-float v11, v4

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v1, v6

    .line 236
    .end local v5    # "skippedRowCount":I
    .end local v7    # "previousRowLoc":[I
    :cond_7
    sub-int v5, v4, v2

    const/16 v6, 0xa

    if-ge v5, v6, :cond_8

    .line 237
    nop

    .local v17, "i":I
    :goto_6
    move/from16 v5, v17

    .end local v17    # "i":I
    .local v5, "i":I
    array-length v6, v1

    if-ge v5, v6, :cond_8

    .line 238
    const/4 v6, 0x0

    aput-object v6, v1, v5

    .line 237
    add-int/lit8 v17, v5, 0x1

    .end local v5    # "i":I
    .restart local v17    # "i":I
    goto :goto_6

    .line 241
    .end local v17    # "i":I
    :cond_8
    return-object v1
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;
    .locals 9
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "startRow"    # I
    .param p2, "startColumn"    # I

    .line 159
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 160
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 162
    .local v7, "width":I
    const/16 v0, 0x8

    new-array v8, v0, [Lcom/google/zxing/ResultPoint;

    .line 163
    .local v8, "result":[Lcom/google/zxing/ResultPoint;
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    invoke-static {v8, v0, v1}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    .line 166
    const/4 v0, 0x4

    aget-object v1, v8, v0

    if-eqz v1, :cond_0

    .line 167
    aget-object v1, v8, v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int p2, v1

    .line 168
    aget-object v0, v8, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int p1, v0

    .line 170
    :cond_0
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    invoke-static {v8, v0, v1}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    .line 172
    return-object v8
.end method

.method private static patternMatchVariance([I[IF)F
    .locals 11
    .param p0, "counters"    # [I
    .param p1, "pattern"    # [I
    .param p2, "maxIndividualVariance"    # F

    .line 314
    array-length v0, p0

    .line 315
    .local v0, "numCounters":I
    const/4 v1, 0x0

    .line 316
    .local v1, "total":I
    const/4 v2, 0x0

    .line 317
    .local v2, "patternLength":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    .local v1, "i":I
    .local v2, "total":I
    .local v4, "patternLength":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 318
    aget v5, p0, v1

    add-int/2addr v2, v5

    .line 319
    aget v5, p1, v1

    add-int/2addr v4, v5

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "i":I
    :cond_0
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v2, v4, :cond_1

    .line 324
    return v1

    .line 329
    :cond_1
    int-to-float v5, v2

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 330
    .local v5, "unitBarWidth":F
    mul-float/2addr p2, v5

    .line 332
    const/4 v6, 0x0

    .line 333
    .local v6, "totalVariance":F
    nop

    .local v3, "x":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 334
    aget v7, p0, v3

    .line 335
    .local v7, "counter":I
    aget v8, p1, v3

    int-to-float v8, v8

    mul-float/2addr v8, v5

    .line 336
    .local v8, "scaledPattern":F
    int-to-float v9, v7

    cmpl-float v9, v9, v8

    if-lez v9, :cond_2

    int-to-float v9, v7

    sub-float/2addr v9, v8

    goto :goto_2

    :cond_2
    int-to-float v9, v7

    sub-float v9, v8, v9

    .line 337
    .local v9, "variance":F
    :goto_2
    cmpl-float v10, v9, p2

    if-lez v10, :cond_3

    .line 338
    return v1

    .line 340
    :cond_3
    add-float/2addr v6, v9

    .line 333
    .end local v7    # "counter":I
    .end local v8    # "scaledPattern":F
    .end local v9    # "variance":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 342
    .end local v3    # "x":I
    :cond_4
    int-to-float v1, v2

    div-float v1, v6, v1

    return v1
.end method
