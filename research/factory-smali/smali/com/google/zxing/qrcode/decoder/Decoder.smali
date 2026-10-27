.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 42
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

    .line 191
    array-length v0, p1

    .line 193
    .local v0, "numCodewords":I
    new-array v1, v0, [I

    .line 194
    .local v1, "codewordsInts":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 195
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .end local v3    # "i":I
    :cond_0
    array-length v3, p1

    sub-int/2addr v3, p2

    .line 199
    .local v3, "numECCodewords":I
    :try_start_0
    iget-object v4, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v4, v1, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    nop

    .line 205
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_1

    .line 206
    aget v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4
.end method

.method private decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 17
    .param p1, "parser"    # Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/BitMatrixParser;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 152
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    .line 153
    .local v0, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v1

    .line 156
    .local v1, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v2

    .line 158
    .local v2, "codewords":[B
    invoke-static {v2, v0, v1}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v3

    .line 161
    .local v3, "dataBlocks":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v4, 0x0

    .line 162
    .local v4, "totalBytes":I
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v4

    move v4, v6

    .end local v4    # "totalBytes":I
    .local v7, "totalBytes":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v8, v3, v4

    .line 163
    .local v8, "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v9

    add-int/2addr v7, v9

    .line 162
    .end local v8    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    :cond_0
    new-array v4, v7, [B

    .line 166
    .local v4, "resultBytes":[B
    const/4 v5, 0x0

    .line 169
    .local v5, "resultOffset":I
    array-length v8, v3

    move v9, v5

    move v5, v6

    .end local v5    # "resultOffset":I
    .local v9, "resultOffset":I
    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v10, v3, v5

    .line 170
    .local v10, "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v11

    .line 171
    .local v11, "codewordBytes":[B
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v12

    .line 172
    .local v12, "numDataCodewords":I
    move-object/from16 v13, p0

    invoke-direct {v13, v11, v12}, Lcom/google/zxing/qrcode/decoder/Decoder;->correctErrors([BI)V

    .line 173
    move v14, v9

    move v9, v6

    .local v9, "i":I
    .local v14, "resultOffset":I
    :goto_2
    if-ge v9, v12, :cond_1

    .line 174
    add-int/lit8 v15, v14, 0x1

    .local v15, "resultOffset":I
    aget-byte v16, v11, v9

    aput-byte v16, v4, v14

    .line 173
    .end local v14    # "resultOffset":I
    add-int/lit8 v9, v9, 0x1

    move v14, v15

    goto :goto_2

    .line 169
    .end local v9    # "i":I
    .end local v10    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    .end local v11    # "codewordBytes":[B
    .end local v12    # "numDataCodewords":I
    .end local v15    # "resultOffset":I
    .restart local v14    # "resultOffset":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v9, v14

    goto :goto_1

    .line 179
    .end local v14    # "resultOffset":I
    .local v9, "resultOffset":I
    :cond_2
    move-object/from16 v13, p0

    move-object/from16 v5, p2

    invoke-static {v4, v0, v1, v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 89
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 90
    .local v0, "parser":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    const/4 v1, 0x0

    .line 91
    .local v1, "fe":Lcom/google/zxing/FormatException;
    const/4 v2, 0x0

    .line 93
    .local v2, "ce":Lcom/google/zxing/ChecksumException;
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 96
    :catch_0
    move-exception v3

    .line 97
    .local v3, "e":Lcom/google/zxing/ChecksumException;
    move-object v2, v3

    .end local v3    # "e":Lcom/google/zxing/ChecksumException;
    goto :goto_0

    .line 94
    :catch_1
    move-exception v3

    .line 95
    .local v3, "e":Lcom/google/zxing/FormatException;
    move-object v1, v3

    .line 98
    .end local v3    # "e":Lcom/google/zxing/FormatException;
    nop

    .line 103
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->remask()V

    .line 106
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->setMirror(Z)V

    .line 109
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    .line 112
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 121
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror()V

    .line 123
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4

    .line 126
    .local v4, "result":Lcom/google/zxing/common/DecoderResult;
    new-instance v5, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-direct {v5, v3}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_2

    .line 128
    return-object v4

    .line 139
    .end local v4    # "result":Lcom/google/zxing/common/DecoderResult;
    :catch_2
    move-exception v3

    .line 140
    .local v3, "e1":Lcom/google/zxing/ChecksumException;
    if-nez v1, :cond_1

    .line 143
    if-eqz v2, :cond_0

    .line 144
    throw v2

    .line 146
    :cond_0
    throw v3

    .line 141
    :cond_1
    throw v1

    .line 130
    .end local v3    # "e1":Lcom/google/zxing/ChecksumException;
    :catch_3
    move-exception v3

    .line 131
    .local v3, "e":Lcom/google/zxing/FormatException;
    if-nez v1, :cond_3

    .line 134
    if-eqz v2, :cond_2

    .line 135
    throw v2

    .line 137
    :cond_2
    throw v3

    .line 132
    :cond_3
    throw v1
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 60
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    array-length v0, p1

    .line 61
    .local v0, "dimension":I
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 62
    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 63
    move v4, v2

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 64
    aget-object v5, p1, v3

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 63
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 62
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    return-object v2
.end method
