.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final CODEWORD_SKEW_SIZE:I = 0x2

.field private static final MAX_EC_CODEWORDS:I = 0x200

.field private static final MAX_ERRORS:I = 0x3

.field private static final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 8
    .param p0, "rowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 144
    return-object v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v1

    .line 147
    .local v1, "rowHeights":[I
    if-nez v1, :cond_1

    .line 148
    return-object v0

    .line 150
    :cond_1
    invoke-static {v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getMax([I)I

    move-result v0

    .line 151
    .local v0, "maxRowHeight":I
    const/4 v2, 0x0

    .line 152
    .local v2, "missingStartRows":I
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    .end local v2    # "missingStartRows":I
    .local v5, "missingStartRows":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget v6, v1, v2

    .line 153
    .local v6, "rowHeight":I
    sub-int v7, v0, v6

    add-int/2addr v5, v7

    .line 154
    if-lez v6, :cond_2

    .line 155
    goto :goto_1

    .line 152
    .end local v6    # "rowHeight":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 159
    .local v2, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    nop

    .local v4, "row":I
    :goto_2
    move v3, v4

    .end local v4    # "row":I
    .local v3, "row":I
    if-lez v5, :cond_4

    aget-object v4, v2, v3

    if-nez v4, :cond_4

    .line 160
    add-int/lit8 v5, v5, -0x1

    .line 159
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "row":I
    .restart local v4    # "row":I
    goto :goto_2

    .line 162
    .end local v4    # "row":I
    :cond_4
    const/4 v3, 0x0

    .line 163
    .local v3, "missingEndRows":I
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "row":I
    :goto_3
    if-ltz v4, :cond_6

    .line 164
    aget v6, v1, v4

    sub-int v6, v0, v6

    add-int/2addr v3, v6

    .line 165
    aget v6, v1, v4

    if-lez v6, :cond_5

    .line 166
    goto :goto_4

    .line 163
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 169
    .end local v4    # "row":I
    :cond_6
    :goto_4
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "row":I
    :goto_5
    if-lez v3, :cond_7

    aget-object v6, v2, v4

    if-nez v6, :cond_7

    .line 170
    add-int/lit8 v3, v3, -0x1

    .line 169
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 172
    .end local v4    # "row":I
    :cond_7
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    .line 173
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result v6

    .line 172
    invoke-virtual {v4, v5, v3, v6}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    return-object v4
.end method

.method private static adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V
    .locals 5
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    .line 236
    .local v1, "numberOfCodewords":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    .line 237
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v4

    mul-int/2addr v3, v4

    .line 238
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getNumberOfECCodeWords(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 239
    .local v3, "calculatedNumberOfCodewords":I
    array-length v4, v1

    if-nez v4, :cond_1

    .line 240
    if-lt v3, v2, :cond_0

    const/16 v4, 0x3a0

    if-gt v3, v4, :cond_0

    .line 243
    aget-object v0, p1, v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 244
    :cond_1
    aget v4, v1, v0

    if-eq v4, v3, :cond_2

    .line 246
    aget-object v0, p1, v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 248
    :cond_2
    :goto_0
    return-void
.end method

.method private static adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I
    .locals 7
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "codewordStartColumn"    # I
    .param p5, "imageRow"    # I

    .line 497
    move v0, p4

    .line 498
    .local v0, "correctedStartColumn":I
    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 500
    .local v2, "increment":I
    :goto_0
    const/4 v3, 0x0

    move v4, v2

    move v2, p3

    move p3, v3

    .local v2, "leftToRight":Z
    .local v4, "increment":I
    .local p3, "i":I
    :goto_1
    const/4 v5, 0x2

    if-ge p3, v5, :cond_6

    .line 501
    :goto_2
    if-eqz v2, :cond_1

    if-ge v0, p1, :cond_2

    :cond_1
    if-nez v2, :cond_4

    if-ge v0, p2, :cond_4

    .line 502
    :cond_2
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-ne v2, v6, :cond_4

    .line 503
    sub-int v6, p4, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v5, :cond_3

    .line 504
    return p4

    .line 506
    :cond_3
    add-int/2addr v0, v4

    goto :goto_2

    .line 508
    :cond_4
    neg-int v4, v4

    .line 509
    if-nez v2, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_3
    move v2, v5

    .line 500
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 511
    .end local p3    # "i":I
    :cond_6
    return v0
.end method

.method private static checkCodewordSkew(III)Z
    .locals 1
    .param p0, "codewordSize"    # I
    .param p1, "minCodewordWidth"    # I
    .param p2, "maxCodewordWidth"    # I

    .line 515
    add-int/lit8 v0, p1, -0x2

    if-gt v0, p0, :cond_0

    add-int/lit8 v0, p2, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static correctErrors([I[II)I
    .locals 2
    .param p0, "codewords"    # [I
    .param p1, "erasures"    # [I
    .param p2, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 546
    if-eqz p1, :cond_0

    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_1

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x200

    if-gt p2, v0, :cond_1

    .line 553
    sget-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result v0

    return v0

    .line 551
    :cond_1
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0
.end method

.method private static createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .locals 14
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 330
    nop

    .line 331
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .line 332
    .local v0, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "row":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 333
    move v3, v1

    .local v3, "column":I
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 334
    aget-object v4, v0, v2

    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v5, v4, v3

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 332
    .end local v3    # "column":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v2    # "row":I
    :cond_1
    const/4 v2, 0x0

    .line 339
    .local v2, "column":I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    move v2, v1

    .end local v2    # "column":I
    .local v5, "column":I
    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v6, v3, v2

    .line 340
    .local v6, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    if-eqz v6, :cond_4

    .line 341
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    array-length v8, v7

    move v9, v1

    :goto_3
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 342
    .local v10, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v10, :cond_3

    .line 343
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    .line 344
    .local v11, "rowNumber":I
    if-ltz v11, :cond_3

    .line 345
    array-length v12, v0

    if-ge v11, v12, :cond_2

    .line 348
    aget-object v12, v0, v11

    aget-object v12, v12, v5

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .end local v10    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v11    # "rowNumber":I
    goto :goto_4

    .line 346
    .restart local v10    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v11    # "rowNumber":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 341
    .end local v10    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v11    # "rowNumber":I
    :cond_3
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 353
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 339
    .end local v6    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 355
    :cond_5
    return-object v0
.end method

.method private static createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 12
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 252
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move-result-object v0

    .line 253
    .local v0, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, "erasures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    .line 256
    .local v2, "codewords":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v3, "ambiguousIndexValuesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v4, "ambiguousIndexesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    move v6, v5

    .local v6, "row":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 259
    move v7, v5

    .local v7, "column":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 260
    aget-object v8, v0, v6

    add-int/lit8 v9, v7, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    .line 261
    .local v8, "values":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v7

    .line 262
    .local v9, "codewordIndex":I
    array-length v10, v8

    if-nez v10, :cond_0

    .line 263
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 264
    :cond_0
    array-length v10, v8

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 265
    aget v10, v8, v5

    aput v10, v2, v9

    goto :goto_2

    .line 267
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v8    # "values":[I
    .end local v9    # "codewordIndex":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 258
    .end local v7    # "column":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 272
    .end local v6    # "row":I
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [[I

    .line 273
    .local v6, "ambiguousIndexValues":[[I
    nop

    .local v5, "i":I
    :goto_3
    array-length v7, v6

    if-ge v5, v7, :cond_4

    .line 274
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aput-object v7, v6, v5

    .line 273
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 276
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v5

    .line 277
    invoke-static {v1}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v7

    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v8

    .line 276
    invoke-static {v5, v2, v7, v8, v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v5

    return-object v5
.end method

.method private static createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .param p0, "ecLevel"    # I
    .param p1, "codewords"    # [I
    .param p2, "erasureArray"    # [I
    .param p3, "ambiguousIndexes"    # [I
    .param p4, "ambiguousIndexValues"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 299
    array-length v0, p3

    new-array v0, v0, [I

    .line 301
    .local v0, "ambiguousIndexCount":[I
    const/16 v1, 0x64

    .line 302
    .local v1, "tries":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .local v2, "tries":I
    if-lez v1, :cond_5

    .line 303
    .end local v1    # "tries":I
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 304
    aget v4, p3, v3

    aget-object v5, p4, v3

    aget v6, v0, v3

    aget v5, v5, v6

    aput v5, p1, v4

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 307
    .end local v3    # "i":I
    :cond_0
    :try_start_0
    invoke-static {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 308
    :catch_0
    move-exception v3

    .line 311
    array-length v3, v0

    if-eqz v3, :cond_4

    .line 314
    move v3, v1

    .restart local v3    # "i":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 315
    aget v4, v0, v3

    aget-object v5, p4, v3

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    .line 316
    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 317
    goto :goto_3

    .line 319
    :cond_1
    aput v1, v0, v3

    .line 320
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 321
    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    .line 301
    .end local v3    # "i":I
    :cond_3
    :goto_3
    move v1, v2

    goto :goto_0

    .line 312
    :cond_4
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    .line 326
    :cond_5
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .locals 24
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "imageTopLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "imageBottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "imageTopRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "imageBottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "minCodewordWidth"    # I
    .param p6, "maxCodewordWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 58
    new-instance v6, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 59
    .local v0, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    const/4 v1, 0x0

    .line 60
    .local v1, "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v2, 0x0

    .line 61
    .local v2, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v3, 0x0

    .line 62
    .local v3, "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    const/4 v4, 0x0

    move-object v11, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v4

    .local v0, "i":I
    .local v1, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .local v2, "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .local v3, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .local v11, "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    :goto_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_5

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const/4 v8, 0x1

    move-object/from16 v5, p0

    move-object v6, v1

    move-object/from16 v7, p1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v2

    .line 67
    :cond_0
    if-eqz p3, :cond_1

    .line 68
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object v6, v1

    move-object/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v3

    .line 71
    :cond_1
    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;

    move-result-object v11

    .line 72
    if-eqz v11, :cond_4

    .line 75
    if-nez v0, :cond_3

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 76
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v6

    if-lt v5, v6, :cond_2

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    .line 77
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 78
    :cond_2
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v11, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 81
    goto :goto_1

    .line 73
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 84
    .end local v0    # "i":I
    :cond_5
    :goto_1
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v0

    const/4 v5, 0x1

    add-int/2addr v0, v5

    .line 85
    .local v0, "maxBarcodeColumn":I
    invoke-virtual {v11, v4, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 86
    invoke-virtual {v11, v0, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 88
    if-eqz v2, :cond_6

    move v6, v5

    goto :goto_2

    :cond_6
    move v6, v4

    .line 89
    .local v6, "leftToRight":Z
    :goto_2
    move/from16 v8, p5

    move/from16 v9, p6

    move v7, v5

    .end local p5    # "minCodewordWidth":I
    .end local p6    # "maxCodewordWidth":I
    .local v7, "barcodeColumnCount":I
    .local v8, "minCodewordWidth":I
    .local v9, "maxCodewordWidth":I
    :goto_3
    if-gt v7, v0, :cond_11

    .line 90
    if-eqz v6, :cond_7

    move v10, v7

    goto :goto_4

    :cond_7
    sub-int v10, v0, v7

    .line 91
    .local v10, "barcodeColumn":I
    :goto_4
    invoke-virtual {v11, v10}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 93
    nop

    .line 89
    move/from16 v22, v0

    goto/16 :goto_a

    .line 96
    :cond_8
    if-eqz v10, :cond_a

    if-ne v10, v0, :cond_9

    goto :goto_5

    .line 99
    :cond_9
    new-instance v12, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v12, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_7

    .line 97
    :cond_a
    :goto_5
    new-instance v12, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v10, :cond_b

    move v13, v5

    goto :goto_6

    :cond_b
    move v13, v4

    :goto_6
    invoke-direct {v12, v1, v13}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .line 99
    .local v12, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :goto_7
    move-object v13, v12

    .line 101
    .end local v12    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .local v13, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    invoke-virtual {v11, v10, v13}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 102
    const/4 v12, -0x1

    .line 103
    .local v12, "startColumn":I
    move v14, v12

    .line 105
    .local v14, "previousStartColumn":I
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v15

    move/from16 v20, v9

    move v9, v8

    move v8, v14

    .end local v14    # "previousStartColumn":I
    .local v8, "previousStartColumn":I
    .local v9, "minCodewordWidth":I
    .local v15, "imageRow":I
    .local v20, "maxCodewordWidth":I
    :goto_8
    move/from16 v21, v15

    .end local v15    # "imageRow":I
    .local v21, "imageRow":I
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v4

    move/from16 v5, v21

    if-gt v5, v4, :cond_10

    .line 106
    .end local v21    # "imageRow":I
    .local v5, "imageRow":I
    invoke-static {v11, v10, v5, v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I

    move-result v4

    .line 107
    .end local v12    # "startColumn":I
    .local v4, "startColumn":I
    if-ltz v4, :cond_c

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v12

    if-le v4, v12, :cond_e

    .line 108
    :cond_c
    const/4 v12, -0x1

    if-ne v8, v12, :cond_d

    .line 109
    nop

    .line 105
    move/from16 v22, v0

    move v12, v4

    move-object/from16 v23, v13

    goto :goto_9

    .line 111
    :cond_d
    move v4, v8

    .line 113
    :cond_e
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v14

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v15

    move-object/from16 v12, p0

    move/from16 v22, v0

    move-object v0, v13

    move v13, v14

    .end local v13    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .local v0, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .local v22, "maxBarcodeColumn":I
    move v14, v15

    move v15, v6

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v9

    move/from16 v19, v20

    invoke-static/range {v12 .. v19}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v12

    .line 115
    .local v12, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v12, :cond_f

    .line 116
    invoke-virtual {v0, v5, v12}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 117
    move v8, v4

    .line 118
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 119
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v13

    move-object/from16 v23, v0

    move/from16 v0, v20

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 105
    .end local v0    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v12    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .local v23, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    move v12, v4

    goto :goto_9

    .end local v23    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .restart local v0    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :cond_f
    move-object/from16 v23, v0

    move/from16 v0, v20

    move v12, v4

    .end local v0    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v4    # "startColumn":I
    .local v12, "startColumn":I
    .restart local v23    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :goto_9
    add-int/lit8 v15, v5, 0x1

    .end local v5    # "imageRow":I
    .restart local v15    # "imageRow":I
    move/from16 v0, v22

    move-object/from16 v13, v23

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_8

    .line 89
    .end local v8    # "previousStartColumn":I
    .end local v10    # "barcodeColumn":I
    .end local v12    # "startColumn":I
    .end local v15    # "imageRow":I
    .end local v22    # "maxBarcodeColumn":I
    .end local v23    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .local v0, "maxBarcodeColumn":I
    :cond_10
    move/from16 v22, v0

    move/from16 v0, v20

    move v8, v9

    move v9, v0

    .end local v0    # "maxBarcodeColumn":I
    .end local v20    # "maxCodewordWidth":I
    .local v8, "minCodewordWidth":I
    .local v9, "maxCodewordWidth":I
    .restart local v22    # "maxBarcodeColumn":I
    :goto_a
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v22

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_3

    .line 123
    .end local v7    # "barcodeColumnCount":I
    .end local v22    # "maxBarcodeColumn":I
    .restart local v0    # "maxBarcodeColumn":I
    :cond_11
    move/from16 v22, v0

    .end local v0    # "maxBarcodeColumn":I
    .restart local v22    # "maxBarcodeColumn":I
    invoke-static {v11}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    .locals 4
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # I
    .param p2, "erasures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 521
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 525
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 526
    .local v0, "numECCodewords":I
    invoke-static {p0, p2, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->correctErrors([I[II)I

    move-result v1

    .line 527
    .local v1, "correctedErrorsCount":I
    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->verifyCodewordCount([II)V

    .line 530
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    .line 531
    .local v2, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 532
    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    .line 533
    return-object v2

    .line 522
    .end local v0    # "numECCodewords":I
    .end local v1    # "correctedErrorsCount":I
    .end local v2    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 7
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I
    .param p6, "minCodewordWidth"    # I
    .param p7, "maxCodewordWidth"    # I

    .line 409
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I

    move-result p4

    .line 414
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I

    move-result-object v0

    .line 415
    .local v0, "moduleBitCount":[I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 416
    return-object v1

    .line 419
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result v2

    .line 420
    .local v2, "codewordBitCount":I
    if-eqz p3, :cond_1

    .line 421
    add-int v3, p4, v2

    .local v3, "endColumn":I
    goto :goto_1

    .line 423
    .end local v3    # "endColumn":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_2

    .line 424
    aget v4, v0, v3

    .line 425
    .local v4, "tmpCount":I
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    aget v5, v0, v5

    aput v5, v0, v3

    .line 426
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    aput v4, v0, v5

    .line 423
    .end local v4    # "tmpCount":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 428
    .end local v3    # "i":I
    :cond_2
    move v3, p4

    .line 429
    .local v3, "endColumn":I
    sub-int p4, v3, v2

    .line 445
    :goto_1
    invoke-static {v2, p6, p7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->checkCodewordSkew(III)Z

    move-result v4

    if-nez v4, :cond_3

    .line 448
    return-object v1

    .line 451
    :cond_3
    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result v4

    .line 452
    .local v4, "decodedValue":I
    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result v5

    .line 453
    .local v5, "codeword":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 454
    return-object v1

    .line 456
    :cond_4
    new-instance v1, Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-static {v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber(I)I

    move-result v6

    invoke-direct {v1, p4, v3, v6, v5}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    return-object v1
.end method

.method private static getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .locals 5
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    .line 187
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    move-object v2, v1

    .local v2, "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v1, :cond_0

    .end local v2    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    goto :goto_1

    .line 189
    .restart local v2    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_0
    nop

    .line 192
    if-eqz p1, :cond_3

    .line 193
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    move-object v3, v1

    .local v3, "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v1, :cond_1

    .end local v3    # "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    goto :goto_0

    .line 194
    .restart local v3    # "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_1
    nop

    .line 197
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 198
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 199
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 200
    return-object v0

    .line 202
    :cond_2
    return-object v2

    .line 194
    .end local v3    # "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_3
    :goto_0
    return-object v2

    .line 189
    .end local v2    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_4
    :goto_1
    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private static getBitCountForCodeword(I)[I
    .locals 4
    .param p0, "codeword"    # I

    .line 583
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 584
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 585
    .local v1, "previousValue":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 587
    .local v2, "i":I
    :goto_0
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_0

    .line 588
    and-int/lit8 v1, p0, 0x1

    .line 589
    add-int/lit8 v2, v2, -0x1

    .line 590
    if-gez v2, :cond_0

    .line 591
    nop

    .line 597
    return-object v0

    .line 594
    :cond_0
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 595
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private static getCodewordBucketNumber(I)I
    .locals 1
    .param p0, "codeword"    # I

    .line 601
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBitCountForCodeword(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber([I)I

    move-result v0

    return v0
.end method

.method private static getCodewordBucketNumber([I)I
    .locals 2
    .param p0, "moduleBitCount"    # [I

    .line 605
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static getMax([I)I
    .locals 4
    .param p0, "values"    # [I

    .line 177
    const/4 v0, -0x1

    .line 178
    .local v0, "maxValue":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 179
    .local v3, "value":I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 178
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return v0
.end method

.method private static getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I
    .locals 7
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I

    .line 465
    move v0, p4

    .line 466
    .local v0, "imageColumn":I
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 467
    .local v1, "moduleBitCount":[I
    const/4 v2, 0x0

    .line 468
    .local v2, "moduleNumber":I
    const/4 v3, 0x1

    if-eqz p3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 469
    .local v4, "increment":I
    :goto_0
    move v5, v2

    move v2, v0

    move v0, p3

    .line 470
    .local v0, "previousPixelValue":Z
    .local v2, "imageColumn":I
    .local v5, "moduleNumber":I
    :goto_1
    if-eqz p3, :cond_1

    if-lt v2, p2, :cond_2

    :cond_1
    if-nez p3, :cond_5

    if-lt v2, p1, :cond_5

    :cond_2
    array-length v6, v1

    if-ge v5, v6, :cond_5

    .line 472
    invoke-virtual {p0, v2, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-ne v6, v0, :cond_3

    .line 473
    aget v6, v1, v5

    add-int/2addr v6, v3

    aput v6, v1, v5

    .line 474
    add-int/2addr v2, v4

    goto :goto_1

    .line 476
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 477
    if-nez v0, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    move v0, v6

    goto :goto_1

    .line 480
    :cond_5
    array-length v6, v1

    if-eq v5, v6, :cond_9

    if-eqz p3, :cond_6

    if-eq v2, p2, :cond_7

    :cond_6
    if-nez p3, :cond_8

    if-ne v2, p1, :cond_8

    :cond_7
    array-length v6, v1

    sub-int/2addr v6, v3

    if-ne v5, v6, :cond_8

    goto :goto_3

    .line 484
    :cond_8
    const/4 v3, 0x0

    return-object v3

    .line 482
    :cond_9
    :goto_3
    return-object v1
.end method

.method private static getNumberOfECCodeWords(I)I
    .locals 1
    .param p0, "barcodeECLevel"    # I

    .line 488
    const/4 v0, 0x2

    shl-int/2addr v0, p0

    return v0
.end method

.method private static getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .locals 15
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "startPoint"    # Lcom/google/zxing/ResultPoint;
    .param p3, "leftToRight"    # Z
    .param p4, "minCodewordWidth"    # I
    .param p5, "maxCodewordWidth"    # I

    move/from16 v8, p3

    .line 211
    new-instance v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-object/from16 v9, p1

    invoke-direct {v0, v9, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    move-object v10, v0

    .line 213
    .local v10, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    const/4 v0, 0x2

    if-ge v11, v0, :cond_4

    .line 214
    if-nez v11, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    :goto_1
    move v12, v0

    .line 215
    .local v12, "increment":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 216
    .local v0, "startColumn":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    move v13, v0

    .end local v0    # "startColumn":I
    .local v1, "imageRow":I
    .local v13, "startColumn":I
    :goto_2
    move v14, v1

    .end local v1    # "imageRow":I
    .local v14, "imageRow":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v14, v0, :cond_3

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    if-lt v14, v0, :cond_3

    .line 218
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    move-object v0, p0

    move v3, v8

    move v4, v13

    move v5, v14

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 220
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {v10, v14, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 222
    if-eqz v8, :cond_1

    .line 223
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v13

    goto :goto_3

    .line 225
    :cond_1
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v13

    .line 217
    .end local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_2
    :goto_3
    add-int v1, v14, v12

    .end local v14    # "imageRow":I
    .restart local v1    # "imageRow":I
    goto :goto_2

    .line 213
    .end local v1    # "imageRow":I
    .end local v12    # "increment":I
    .end local v13    # "startColumn":I
    :cond_3
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 230
    .end local v0    # "i":I
    :cond_4
    return-object v10
.end method

.method private static getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I
    .locals 8
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I
    .param p2, "imageRow"    # I
    .param p3, "leftToRight"    # Z

    .line 366
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 367
    .local v0, "offset":I
    :goto_0
    const/4 v1, 0x0

    .line 368
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    sub-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    sub-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 371
    :cond_1
    if-eqz v1, :cond_3

    .line 372
    if-eqz p3, :cond_2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    :goto_1
    return v2

    .line 374
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_5

    .line 376
    if-eqz p3, :cond_4

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    :goto_2
    return v2

    .line 378
    :cond_5
    sub-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 379
    sub-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 381
    :cond_6
    if-eqz v1, :cond_8

    .line 382
    if-eqz p3, :cond_7

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    :goto_3
    return v2

    .line 384
    :cond_8
    const/4 v2, 0x0

    move v3, p1

    move p1, v2

    .line 386
    .local v3, "barcodeColumn":I
    .local p1, "skippedColumns":I
    :goto_4
    sub-int v4, v3, v0

    invoke-static {p0, v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 387
    sub-int/2addr v3, v0

    .line 388
    invoke-virtual {p0, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_5
    if-ge v6, v5, :cond_b

    aget-object v7, v4, v6

    .line 389
    .local v7, "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v7, :cond_a

    .line 390
    if-eqz p3, :cond_9

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    goto :goto_6

    :cond_9
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    :goto_6
    mul-int v4, v0, p1

    .line 393
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v5

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 390
    return v2

    .line 388
    .end local v7    # "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 396
    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 398
    :cond_c
    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v2

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v2

    :goto_7
    return v2
.end method

.method private static isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .locals 2
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I

    .line 359
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v1

    add-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .locals 3
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 130
    return-object v0

    .line 132
    :cond_0
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    .line 133
    .local v1, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v1, :cond_1

    .line 134
    return-object v0

    .line 136
    :cond_1
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 137
    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    .line 136
    invoke-static {v0, v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 138
    .local v0, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    new-instance v2, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    return-object v2
.end method

.method public static toString([[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)Ljava/lang/String;
    .locals 9
    .param p0, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .line 609
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 610
    .local v0, "formatter":Ljava/util/Formatter;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "row":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 611
    const-string v3, "Row %2d: "

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 612
    move v3, v1

    .local v3, "column":I
    :goto_1
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 613
    aget-object v5, p0, v2

    aget-object v5, v5, v3

    .line 614
    .local v5, "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    .line 615
    const-string v6, "        "

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    .line 617
    :cond_0
    const-string v6, "%4d(%2d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    aget v8, v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 618
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    aget v8, v8, v1

    invoke-virtual {v5, v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getConfidence(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 617
    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 612
    .end local v5    # "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 621
    .end local v3    # "column":I
    :cond_1
    const-string v3, "%n"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 610
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    .end local v2    # "row":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 625
    return-object v1
.end method

.method private static verifyCodewordCount([II)V
    .locals 3
    .param p0, "codewords"    # [I
    .param p1, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 560
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 568
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 569
    .local v1, "numberOfCodewords":I
    array-length v2, p0

    if-gt v1, v2, :cond_2

    .line 572
    if-nez v1, :cond_1

    .line 574
    array-length v2, p0

    if-ge p1, v2, :cond_0

    .line 575
    array-length v2, p0

    sub-int/2addr v2, p1

    aput v2, p0, v0

    goto :goto_0

    .line 577
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 580
    :cond_1
    :goto_0
    return-void

    .line 570
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 563
    .end local v1    # "numberOfCodewords":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
