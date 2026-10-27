.class final Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
.super Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.source "DetectionResultRowIndicatorColumn.java"


# instance fields
.field private final isLeft:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V
    .locals 0
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "isLeft"    # Z

    .line 31
    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 32
    iput-boolean p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    .line 33
    return-void
.end method

.method private removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .locals 7
    .param p1, "codewords"    # [Lcom/google/zxing/pdf417/decoder/Codeword;
    .param p2, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 223
    const/4 v0, 0x0

    .local v0, "codewordRow":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 224
    aget-object v1, p1, v0

    .line 225
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    aget-object v2, p1, v0

    if-nez v2, :cond_0

    .line 226
    goto :goto_1

    .line 228
    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x1e

    .line 229
    .local v2, "rowIndicatorValue":I
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    .line 230
    .local v3, "codewordRowNumber":I
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    const/4 v5, 0x0

    if-le v3, v4, :cond_1

    .line 231
    aput-object v5, p1, v0

    .line 232
    goto :goto_1

    .line 234
    :cond_1
    iget-boolean v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v4, :cond_2

    .line 235
    add-int/lit8 v3, v3, 0x2

    .line 237
    :cond_2
    rem-int/lit8 v4, v3, 0x3

    packed-switch v4, :pswitch_data_0

    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v2    # "rowIndicatorValue":I
    .end local v3    # "codewordRowNumber":I
    goto :goto_1

    .line 250
    .restart local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v2    # "rowIndicatorValue":I
    .restart local v3    # "codewordRowNumber":I
    :pswitch_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v6

    if-eq v4, v6, :cond_4

    .line 251
    aput-object v5, p1, v0

    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v2    # "rowIndicatorValue":I
    .end local v3    # "codewordRowNumber":I
    goto :goto_1

    .line 244
    .restart local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v2    # "rowIndicatorValue":I
    .restart local v3    # "codewordRowNumber":I
    :pswitch_1
    div-int/lit8 v4, v2, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v6

    if-ne v4, v6, :cond_3

    rem-int/lit8 v4, v2, 0x3

    .line 245
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountLowerPart()I

    move-result v6

    if-eq v4, v6, :cond_4

    .line 246
    :cond_3
    aput-object v5, p1, v0

    goto :goto_1

    .line 239
    :pswitch_2
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountUpperPart()I

    move-result v6

    if-eq v4, v6, :cond_4

    .line 240
    aput-object v5, p1, v0

    .line 223
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v2    # "rowIndicatorValue":I
    .end local v3    # "codewordRowNumber":I
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "codewordRow":I
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I
    .locals 21
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-object/from16 v0, p0

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 49
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setRowNumbers()V

    .line 50
    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    .line 52
    .local v3, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    iget-boolean v4, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 53
    .local v4, "top":Lcom/google/zxing/ResultPoint;
    :goto_0
    iget-boolean v5, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 54
    .local v5, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_1
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v6

    .line 55
    .local v6, "firstRow":I
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v7

    .line 58
    .local v7, "lastRow":I
    sub-int v8, v7, v6

    int-to-float v8, v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 59
    .local v8, "averageRowHeight":F
    const/4 v9, -0x1

    .line 60
    .local v9, "barcodeRow":I
    const/4 v10, 0x1

    .line 61
    .local v10, "maxRowHeight":I
    const/4 v11, 0x0

    .line 62
    .local v11, "currentRowHeight":I
    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v6

    .local v9, "codewordsRow":I
    .local v10, "barcodeRow":I
    .local v11, "maxRowHeight":I
    .local v12, "currentRowHeight":I
    :goto_2
    if-ge v9, v7, :cond_c

    .line 63
    aget-object v13, v1, v9

    if-nez v13, :cond_2

    .line 64
    goto/16 :goto_8

    .line 66
    :cond_2
    aget-object v13, v1, v9

    .line 76
    .local v13, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v14

    sub-int/2addr v14, v10

    .line 80
    .local v14, "rowDifference":I
    if-nez v14, :cond_3

    .line 81
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 82
    :cond_3
    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 83
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 84
    const/4 v12, 0x1

    .line 85
    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v10

    goto :goto_8

    .line 86
    :cond_4
    const/16 v16, 0x0

    if-ltz v14, :cond_b

    .line 87
    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    if-ge v15, v0, :cond_b

    if-le v14, v9, :cond_5

    goto :goto_7

    .line 92
    :cond_5
    const/4 v0, 0x2

    if-le v11, v0, :cond_6

    .line 93
    add-int/lit8 v0, v11, -0x2

    mul-int/2addr v0, v14

    .local v0, "checkedRows":I
    goto :goto_3

    .line 95
    .end local v0    # "checkedRows":I
    :cond_6
    move v0, v14

    .line 97
    .restart local v0    # "checkedRows":I
    :goto_3
    if-lt v0, v9, :cond_7

    const/16 v17, 0x1

    goto :goto_4

    :cond_7
    const/16 v17, 0x0

    .line 98
    .local v17, "closePreviousCodewordFound":Z
    :goto_4
    move/from16 v18, v17

    const/16 v17, 0x1

    .local v17, "i":I
    .local v18, "closePreviousCodewordFound":Z
    :goto_5
    move/from16 v19, v17

    .end local v17    # "i":I
    .local v19, "i":I
    move/from16 v15, v19

    if-gt v15, v0, :cond_9

    .end local v19    # "i":I
    .local v15, "i":I
    if-nez v18, :cond_9

    .line 101
    sub-int v17, v9, v15

    aget-object v17, v1, v17

    if-eqz v17, :cond_8

    const/16 v17, 0x1

    goto :goto_6

    :cond_8
    const/16 v17, 0x0

    :goto_6
    move/from16 v18, v17

    .line 98
    add-int/lit8 v17, v15, 0x1

    .end local v15    # "i":I
    .restart local v17    # "i":I
    goto :goto_5

    .line 103
    .end local v17    # "i":I
    :cond_9
    if-eqz v18, :cond_a

    .line 104
    aput-object v16, v1, v9

    goto :goto_8

    .line 106
    :cond_a
    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v10

    .line 107
    const/4 v0, 0x1

    .line 62
    .end local v12    # "currentRowHeight":I
    .end local v13    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v14    # "rowDifference":I
    .end local v18    # "closePreviousCodewordFound":Z
    .local v0, "currentRowHeight":I
    move v12, v0

    goto :goto_8

    .line 89
    .end local v0    # "currentRowHeight":I
    .restart local v12    # "currentRowHeight":I
    .restart local v13    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v14    # "rowDifference":I
    :cond_b
    :goto_7
    aput-object v16, v1, v9

    .line 62
    .end local v13    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v14    # "rowDifference":I
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 111
    .end local v9    # "codewordsRow":I
    :cond_c
    float-to-double v13, v8

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v13, v15

    double-to-int v0, v13

    return v0
.end method

.method adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I
    .locals 16
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-object/from16 v0, p0

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 138
    .local v1, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    iget-boolean v2, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 139
    .local v2, "top":Lcom/google/zxing/ResultPoint;
    :goto_0
    iget-boolean v3, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 140
    .local v3, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_1
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v4

    .line 141
    .local v4, "firstRow":I
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v5

    .line 142
    .local v5, "lastRow":I
    sub-int v6, v5, v4

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 143
    .local v6, "averageRowHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    .line 144
    .local v7, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v8, -0x1

    .line 145
    .local v8, "barcodeRow":I
    const/4 v9, 0x1

    .line 146
    .local v9, "maxRowHeight":I
    const/4 v10, 0x0

    .line 147
    .local v10, "currentRowHeight":I
    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v4

    .local v8, "codewordsRow":I
    .local v9, "barcodeRow":I
    .local v10, "maxRowHeight":I
    .local v11, "currentRowHeight":I
    :goto_2
    if-ge v8, v5, :cond_6

    .line 148
    aget-object v12, v7, v8

    if-nez v12, :cond_2

    .line 149
    goto :goto_3

    .line 151
    :cond_2
    aget-object v12, v7, v8

    .line 153
    .local v12, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 155
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v13

    sub-int/2addr v13, v9

    .line 159
    .local v13, "rowDifference":I
    if-nez v13, :cond_3

    .line 160
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 161
    :cond_3
    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 162
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 163
    const/4 v11, 0x1

    .line 164
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    goto :goto_3

    .line 165
    :cond_4
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v15

    if-lt v14, v15, :cond_5

    .line 166
    const/4 v14, 0x0

    aput-object v14, v7, v8

    goto :goto_3

    .line 168
    :cond_5
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    .line 169
    const/4 v11, 0x1

    .line 147
    .end local v12    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v13    # "rowDifference":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 172
    .end local v8    # "codewordsRow":I
    :cond_6
    float-to-double v12, v6

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v8, v12

    return v8
.end method

.method getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .locals 13

    .line 176
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 177
    .local v0, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    new-instance v1, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 178
    .local v1, "barcodeColumnCount":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v2, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 179
    .local v2, "barcodeRowCountUpperPart":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v3, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 180
    .local v3, "barcodeRowCountLowerPart":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v4, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 181
    .local v4, "barcodeECLevel":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    array-length v5, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_2

    aget-object v9, v0, v7

    .line 182
    .local v9, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v9, :cond_0

    .line 183
    goto :goto_1

    .line 185
    :cond_0
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 186
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v10

    rem-int/lit8 v10, v10, 0x1e

    .line 187
    .local v10, "rowIndicatorValue":I
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    .line 188
    .local v11, "codewordRowNumber":I
    iget-boolean v12, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v12, :cond_1

    .line 189
    add-int/lit8 v11, v11, 0x2

    .line 191
    :cond_1
    rem-int/lit8 v12, v11, 0x3

    packed-switch v12, :pswitch_data_0

    .end local v9    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v10    # "rowIndicatorValue":I
    .end local v11    # "codewordRowNumber":I
    goto :goto_1

    .line 200
    .restart local v9    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v10    # "rowIndicatorValue":I
    .restart local v11    # "codewordRowNumber":I
    :pswitch_0
    add-int/lit8 v8, v10, 0x1

    invoke-virtual {v1, v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .end local v9    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v10    # "rowIndicatorValue":I
    .end local v11    # "codewordRowNumber":I
    goto :goto_1

    .line 196
    .restart local v9    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v10    # "rowIndicatorValue":I
    .restart local v11    # "codewordRowNumber":I
    :pswitch_1
    div-int/lit8 v8, v10, 0x3

    invoke-virtual {v4, v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 197
    rem-int/lit8 v8, v10, 0x3

    invoke-virtual {v3, v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 198
    goto :goto_1

    .line 193
    :pswitch_2
    mul-int/lit8 v12, v10, 0x3

    add-int/2addr v12, v8

    invoke-virtual {v2, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 194
    nop

    .line 181
    .end local v9    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v10    # "rowIndicatorValue":I
    .end local v11    # "codewordRowNumber":I
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_4

    .line 206
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_4

    .line 207
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_4

    .line 208
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_4

    .line 209
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v6

    if-lt v5, v8, :cond_4

    .line 210
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    const/4 v7, 0x3

    if-lt v5, v7, :cond_4

    .line 211
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    const/16 v7, 0x5a

    if-le v5, v7, :cond_3

    goto :goto_2

    .line 214
    :cond_3
    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v6

    .line 215
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    aget v8, v8, v6

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v6

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v10

    aget v6, v10, v6

    invoke-direct {v5, v7, v8, v9, v6}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;-><init>(IIII)V

    .line 216
    .local v5, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    invoke-direct {p0, v0, v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 217
    return-object v5

    .line 212
    .end local v5    # "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_4
    :goto_2
    const/4 v5, 0x0

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getRowHeights()[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    .line 116
    .local v0, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v0, :cond_0

    .line 117
    const/4 v1, 0x0

    return-object v1

    .line 119
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I

    .line 120
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v1

    new-array v1, v1, [I

    .line 121
    .local v1, "result":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 122
    .local v5, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v5, :cond_2

    .line 123
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    .line 124
    .local v6, "rowNumber":I
    array-length v7, v1

    if-ge v6, v7, :cond_1

    .line 127
    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6

    .end local v5    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v6    # "rowNumber":I
    goto :goto_1

    .line 125
    .restart local v5    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v6    # "rowNumber":I
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 121
    .end local v5    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v6    # "rowNumber":I
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_3
    return-object v1
.end method

.method isLeft()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return v0
.end method

.method setRowNumbers()V
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 37
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 36
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
