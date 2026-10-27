.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .locals 18
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v0, p0

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v1

    .line 52
    .local v1, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    const/4 v2, 0x0

    .line 53
    .local v2, "totalBlocks":I
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v3

    .line 54
    .local v3, "ecBlockArray":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v2

    move v2, v5

    .end local v2    # "totalBlocks":I
    .local v6, "totalBlocks":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v7, v3, v2

    .line 55
    .local v7, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v8

    add-int/2addr v6, v8

    .line 54
    .end local v7    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-array v2, v6, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    .line 60
    .local v2, "result":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/4 v4, 0x0

    .line 61
    .local v4, "numResultBlocks":I
    array-length v7, v3

    move v8, v4

    move v4, v5

    .end local v4    # "numResultBlocks":I
    .local v8, "numResultBlocks":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v9, v3, v4

    .line 62
    .local v9, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move v10, v8

    move v8, v5

    .local v8, "i":I
    .local v10, "numResultBlocks":I
    :goto_2
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v11

    if-ge v8, v11, :cond_1

    .line 63
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v11

    .line 64
    .local v11, "numDataCodewords":I
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v12

    add-int/2addr v12, v11

    .line 65
    .local v12, "numBlockCodewords":I
    add-int/lit8 v13, v10, 0x1

    .local v13, "numResultBlocks":I
    new-instance v14, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v15, v12, [B

    invoke-direct {v14, v11, v15}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v14, v2, v10

    .line 62
    .end local v10    # "numResultBlocks":I
    .end local v11    # "numDataCodewords":I
    .end local v12    # "numBlockCodewords":I
    add-int/lit8 v8, v8, 0x1

    move v10, v13

    goto :goto_2

    .line 61
    .end local v8    # "i":I
    .end local v9    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    .end local v13    # "numResultBlocks":I
    .restart local v10    # "numResultBlocks":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v8, v10

    goto :goto_1

    .line 72
    .end local v10    # "numResultBlocks":I
    .local v8, "numResultBlocks":I
    :cond_2
    aget-object v4, v2, v5

    iget-object v4, v4, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v4, v4

    .line 75
    .local v4, "longerBlocksTotalCodewords":I
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v7

    sub-int v7, v4, v7

    .line 76
    .local v7, "longerBlocksNumDataCodewords":I
    add-int/lit8 v9, v7, -0x1

    .line 79
    .local v9, "shorterBlocksNumDataCodewords":I
    const/4 v10, 0x0

    .line 80
    .local v10, "rawCodewordsOffset":I
    move v11, v10

    move v10, v5

    .local v10, "i":I
    .local v11, "rawCodewordsOffset":I
    :goto_3
    if-ge v10, v9, :cond_4

    .line 81
    move v12, v11

    move v11, v5

    .local v11, "j":I
    .local v12, "rawCodewordsOffset":I
    :goto_4
    if-ge v11, v8, :cond_3

    .line 82
    aget-object v13, v2, v11

    iget-object v13, v13, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v14, v12, 0x1

    .local v14, "rawCodewordsOffset":I
    aget-byte v12, v0, v12

    .end local v12    # "rawCodewordsOffset":I
    aput-byte v12, v13, v10

    .line 81
    add-int/lit8 v11, v11, 0x1

    move v12, v14

    goto :goto_4

    .line 80
    .end local v11    # "j":I
    .end local v14    # "rawCodewordsOffset":I
    .restart local v12    # "rawCodewordsOffset":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    move v11, v12

    goto :goto_3

    .line 87
    .end local v10    # "i":I
    .end local v12    # "rawCodewordsOffset":I
    .local v11, "rawCodewordsOffset":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v10

    const/16 v12, 0x18

    if-ne v10, v12, :cond_5

    const/4 v10, 0x1

    goto :goto_5

    :cond_5
    move v10, v5

    .line 88
    .local v10, "specialVersion":Z
    :goto_5
    if-eqz v10, :cond_6

    const/16 v12, 0x8

    goto :goto_6

    :cond_6
    move v12, v8

    .line 89
    .local v12, "numLongerBlocks":I
    :goto_6
    move v13, v11

    move v11, v5

    .local v11, "j":I
    .local v13, "rawCodewordsOffset":I
    :goto_7
    if-ge v11, v12, :cond_7

    .line 90
    aget-object v14, v2, v11

    iget-object v14, v14, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v15, v7, -0x1

    add-int/lit8 v16, v13, 0x1

    .local v16, "rawCodewordsOffset":I
    aget-byte v13, v0, v13

    .end local v13    # "rawCodewordsOffset":I
    aput-byte v13, v14, v15

    .line 89
    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v16

    goto :goto_7

    .line 94
    .end local v11    # "j":I
    .end local v16    # "rawCodewordsOffset":I
    .restart local v13    # "rawCodewordsOffset":I
    :cond_7
    aget-object v11, v2, v5

    iget-object v11, v11, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v11, v11

    .line 95
    .local v11, "max":I
    move v14, v13

    move v13, v7

    .local v13, "i":I
    .restart local v14    # "rawCodewordsOffset":I
    :goto_8
    if-ge v13, v11, :cond_a

    .line 96
    move v15, v14

    move v14, v5

    .local v14, "j":I
    .local v15, "rawCodewordsOffset":I
    :goto_9
    if-ge v14, v8, :cond_9

    .line 97
    if-eqz v10, :cond_8

    const/4 v5, 0x7

    if-le v14, v5, :cond_8

    add-int/lit8 v5, v13, -0x1

    goto :goto_a

    :cond_8
    move v5, v13

    .line 98
    .local v5, "iOffset":I
    :goto_a
    move-object/from16 v17, v1

    aget-object v1, v2, v14

    .end local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .local v17, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    iget-object v1, v1, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v16, v15, 0x1

    .restart local v16    # "rawCodewordsOffset":I
    aget-byte v15, v0, v15

    .end local v15    # "rawCodewordsOffset":I
    aput-byte v15, v1, v5

    .line 96
    .end local v5    # "iOffset":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v16

    move-object/from16 v1, v17

    const/4 v5, 0x0

    goto :goto_9

    .line 95
    .end local v14    # "j":I
    .end local v16    # "rawCodewordsOffset":I
    .end local v17    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v15    # "rawCodewordsOffset":I
    :cond_9
    move-object/from16 v17, v1

    .end local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v17    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    add-int/lit8 v13, v13, 0x1

    move v14, v15

    const/4 v5, 0x0

    goto :goto_8

    .line 102
    .end local v13    # "i":I
    .end local v15    # "rawCodewordsOffset":I
    .end local v17    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .local v14, "rawCodewordsOffset":I
    :cond_a
    move-object/from16 v17, v1

    .end local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v17    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    array-length v1, v0

    if-ne v14, v1, :cond_b

    .line 106
    return-object v2

    .line 103
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
