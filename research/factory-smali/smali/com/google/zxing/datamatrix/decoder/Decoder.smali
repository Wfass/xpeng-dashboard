.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 39
    return-void
.end method

.method private correctErrors([BI)V
    .locals 5
    .param p1, "codewordBytes"    # [B
    .param p2, "numDataCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 117
    array-length v0, p1

    .line 119
    .local v0, "numCodewords":I
    new-array v1, v0, [I

    .line 120
    .local v1, "codewordsInts":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 121
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "i":I
    :cond_0
    array-length v3, p1

    sub-int/2addr v3, p2

    .line 125
    .local v3, "numECCodewords":I
    :try_start_0
    iget-object v4, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v4, v1, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    nop

    .line 131
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_1

    .line 132
    aget v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 17
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 76
    .local v0, "parser":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->getVersion()Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v2

    .line 79
    .local v2, "version":Lcom/google/zxing/datamatrix/decoder/Version;
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v3

    .line 81
    .local v3, "codewords":[B
    invoke-static {v3, v2}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-result-object v4

    .line 83
    .local v4, "dataBlocks":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    array-length v5, v4

    .line 86
    .local v5, "dataBlocksCount":I
    const/4 v6, 0x0

    .line 87
    .local v6, "totalBytes":I
    array-length v7, v4

    const/4 v8, 0x0

    move v9, v6

    move v6, v8

    .end local v6    # "totalBytes":I
    .local v9, "totalBytes":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v10, v4, v6

    .line 88
    .local v10, "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v11

    add-int/2addr v9, v11

    .line 87
    .end local v10    # "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-array v6, v9, [B

    .line 93
    .local v6, "resultBytes":[B
    move v7, v8

    .local v7, "j":I
    :goto_1
    if-ge v7, v5, :cond_2

    .line 94
    aget-object v10, v4, v7

    .line 95
    .local v10, "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getCodewords()[B

    move-result-object v11

    .line 96
    .local v11, "codewordBytes":[B
    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v12

    .line 97
    .local v12, "numDataCodewords":I
    move-object/from16 v13, p0

    invoke-direct {v13, v11, v12}, Lcom/google/zxing/datamatrix/decoder/Decoder;->correctErrors([BI)V

    .line 98
    move v14, v8

    .local v14, "i":I
    :goto_2
    if-ge v14, v12, :cond_1

    .line 100
    mul-int v15, v14, v5

    add-int/2addr v15, v7

    aget-byte v16, v11, v14

    aput-byte v16, v6, v15

    .line 98
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 93
    .end local v10    # "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .end local v11    # "codewordBytes":[B
    .end local v12    # "numDataCodewords":I
    .end local v14    # "i":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 105
    .end local v7    # "j":I
    :cond_2
    move-object/from16 v13, p0

    invoke-static {v6}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decode([B)Lcom/google/zxing/common/DecoderResult;

    move-result-object v7

    return-object v7
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 51
    array-length v0, p1

    .line 52
    .local v0, "dimension":I
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 53
    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 54
    move v4, v2

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 55
    aget-object v5, p1, v3

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_0

    .line 56
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 54
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 53
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    return-object v2
.end method
