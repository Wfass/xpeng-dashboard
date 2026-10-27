.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 72
    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 77
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 85
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 86
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 87
    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 88
    .local v0, "nineHundred":Ljava/math/BigInteger;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 89
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 90
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "nineHundred":Ljava/math/BigInteger;
    .end local v1    # "i":I
    :cond_0
    return-void

    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 25
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "codeIndex"    # I
    .param p4, "result"    # Ljava/lang/StringBuilder;

    move/from16 v0, p0

    .line 448
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 449
    .local v2, "decodedBytes":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x39b

    const/16 v6, 0x3a0

    const/16 v7, 0x386

    const-wide/16 v8, 0x384

    const/16 v10, 0x39c

    const/4 v11, 0x6

    const/16 v12, 0x385

    const/16 v13, 0x384

    const/4 v14, 0x0

    if-ne v0, v12, :cond_7

    .line 452
    const/4 v15, 0x0

    .line 453
    .local v15, "count":I
    const-wide/16 v16, 0x0

    .line 454
    .local v16, "value":J
    new-array v3, v11, [I

    .line 455
    .local v3, "byteCompactedCodewords":[I
    const/16 v19, 0x0

    .line 456
    .local v19, "end":Z
    add-int/lit8 v20, p3, 0x1

    .local v20, "codeIndex":I
    aget v1, p1, p3

    .end local p3    # "codeIndex":I
    move/from16 v11, v20

    .line 457
    .end local v20    # "codeIndex":I
    .local v1, "nextCode":I
    .local v11, "codeIndex":I
    :goto_0
    aget v4, p1, v14

    if-ge v11, v4, :cond_4

    if-nez v19, :cond_4

    .line 458
    add-int/lit8 v4, v15, 0x1

    .local v4, "count":I
    aput v1, v3, v15

    .line 460
    .end local v15    # "count":I
    mul-long v21, v8, v16

    int-to-long v8, v1

    add-long v16, v21, v8

    .line 461
    add-int/lit8 v8, v11, 0x1

    .local v8, "codeIndex":I
    aget v1, p1, v11

    .line 463
    .end local v11    # "codeIndex":I
    if-eq v1, v13, :cond_3

    if-eq v1, v12, :cond_3

    if-eq v1, v7, :cond_3

    if-eq v1, v10, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_3

    const/16 v9, 0x39a

    if-ne v1, v9, :cond_0

    goto :goto_3

    .line 473
    :cond_0
    rem-int/lit8 v9, v4, 0x5

    if-nez v9, :cond_2

    if-lez v4, :cond_2

    .line 476
    move v9, v14

    .local v9, "j":I
    :goto_1
    const/4 v11, 0x6

    if-ge v9, v11, :cond_1

    .line 477
    rsub-int/lit8 v11, v9, 0x5

    const/16 v15, 0x8

    mul-int/2addr v11, v15

    shr-long v5, v16, v11

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 476
    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0x39b

    const/16 v6, 0x3a0

    goto :goto_1

    .line 479
    .end local v9    # "j":I
    :cond_1
    const-wide/16 v16, 0x0

    .line 480
    const/4 v15, 0x0

    .end local v4    # "count":I
    .restart local v15    # "count":I
    goto :goto_2

    .line 456
    .end local v15    # "count":I
    .restart local v4    # "count":I
    :cond_2
    move v15, v4

    .end local v4    # "count":I
    .end local v8    # "codeIndex":I
    .restart local v11    # "codeIndex":I
    .restart local v15    # "count":I
    :goto_2
    move v11, v8

    goto :goto_4

    .line 470
    .end local v11    # "codeIndex":I
    .end local v15    # "count":I
    .restart local v4    # "count":I
    .restart local v8    # "codeIndex":I
    :cond_3
    :goto_3
    add-int/lit8 v11, v8, -0x1

    .line 471
    .end local v8    # "codeIndex":I
    .restart local v11    # "codeIndex":I
    const/16 v19, 0x1

    .line 456
    move v15, v4

    .end local v4    # "count":I
    .restart local v15    # "count":I
    :goto_4
    const/16 v5, 0x39b

    const/16 v6, 0x3a0

    const-wide/16 v8, 0x384

    goto :goto_0

    .line 486
    :cond_4
    aget v4, p1, v14

    if-ne v11, v4, :cond_5

    if-ge v1, v13, :cond_5

    .line 487
    add-int/lit8 v4, v15, 0x1

    .restart local v4    # "count":I
    aput v1, v3, v15

    .end local v15    # "count":I
    goto :goto_5

    .line 493
    .end local v4    # "count":I
    .restart local v15    # "count":I
    :cond_5
    move v4, v15

    .end local v15    # "count":I
    .restart local v4    # "count":I
    .local v14, "i":I
    :goto_5
    move v5, v14

    .end local v14    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_6

    .line 494
    aget v6, v3, v5

    int-to-byte v6, v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 493
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "i":I
    .restart local v14    # "i":I
    goto :goto_5

    .line 497
    .end local v1    # "nextCode":I
    .end local v3    # "byteCompactedCodewords":[I
    .end local v4    # "count":I
    .end local v14    # "i":I
    .end local v16    # "value":J
    .end local v19    # "end":Z
    :cond_6
    goto/16 :goto_d

    .end local v11    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :cond_7
    if-ne v0, v10, :cond_11

    .line 500
    const/4 v3, 0x0

    .line 501
    .local v3, "count":I
    const-wide/16 v4, 0x0

    .line 502
    .local v4, "value":J
    move-wide v5, v4

    move v1, v14

    move v4, v3

    move/from16 v3, p3

    .line 503
    .end local p3    # "codeIndex":I
    .local v1, "end":Z
    .local v3, "codeIndex":I
    .local v4, "count":I
    .local v5, "value":J
    :goto_6
    aget v8, p1, v14

    if-ge v3, v8, :cond_10

    if-nez v1, :cond_10

    .line 504
    add-int/lit8 v8, v3, 0x1

    .restart local v8    # "codeIndex":I
    aget v3, p1, v3

    .line 505
    .local v3, "code":I
    if-ge v3, v13, :cond_8

    .line 506
    add-int/lit8 v4, v4, 0x1

    .line 508
    const-wide/16 v15, 0x384

    mul-long v19, v15, v5

    int-to-long v10, v3

    add-long v5, v19, v10

    .line 521
    const/16 v7, 0x39a

    const/16 v9, 0x39c

    const/16 v10, 0x3a0

    const/16 v11, 0x39b

    goto :goto_a

    .line 510
    :cond_8
    const-wide/16 v15, 0x384

    if-eq v3, v13, :cond_c

    if-eq v3, v12, :cond_c

    if-eq v3, v7, :cond_c

    const/16 v9, 0x39c

    if-eq v3, v9, :cond_b

    const/16 v10, 0x3a0

    if-eq v3, v10, :cond_a

    const/16 v11, 0x39b

    if-eq v3, v11, :cond_9

    const/16 v7, 0x39a

    if-ne v3, v7, :cond_d

    goto :goto_9

    .line 517
    :cond_9
    const/16 v7, 0x39a

    goto :goto_9

    :cond_a
    const/16 v7, 0x39a

    goto :goto_8

    :cond_b
    const/16 v7, 0x39a

    goto :goto_7

    :cond_c
    const/16 v7, 0x39a

    const/16 v9, 0x39c

    :goto_7
    const/16 v10, 0x3a0

    :goto_8
    const/16 v11, 0x39b

    :goto_9
    add-int/lit8 v8, v8, -0x1

    .line 518
    const/4 v1, 0x1

    .line 521
    :cond_d
    :goto_a
    rem-int/lit8 v17, v4, 0x5

    if-nez v17, :cond_f

    if-lez v4, :cond_f

    .line 524
    move/from16 v17, v14

    .local v17, "j":I
    :goto_b
    move/from16 v23, v17

    .end local v17    # "j":I
    .local v23, "j":I
    move/from16 v7, v23

    const/4 v9, 0x6

    if-ge v7, v9, :cond_e

    .line 525
    .end local v23    # "j":I
    .local v7, "j":I
    rsub-int/lit8 v17, v7, 0x5

    const/16 v18, 0x8

    mul-int v17, v17, v18

    shr-long v9, v5, v17

    long-to-int v9, v9

    int-to-byte v9, v9

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    add-int/lit8 v17, v7, 0x1

    .end local v7    # "j":I
    .restart local v17    # "j":I
    const/16 v7, 0x39a

    const/16 v9, 0x39c

    const/16 v10, 0x3a0

    goto :goto_b

    .line 527
    .end local v17    # "j":I
    :cond_e
    const/16 v18, 0x8

    const-wide/16 v5, 0x0

    .line 528
    const/4 v3, 0x0

    .line 530
    .end local v4    # "count":I
    .local v3, "count":I
    move v4, v3

    goto :goto_c

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_f
    const/16 v18, 0x8

    .line 502
    :goto_c
    move v3, v8

    const/16 v7, 0x386

    const/16 v10, 0x39c

    goto :goto_6

    .line 532
    .end local v1    # "end":Z
    .end local v4    # "count":I
    .end local v5    # "value":J
    .end local v8    # "codeIndex":I
    .local v3, "codeIndex":I
    :cond_10
    move v11, v3

    goto :goto_d

    .end local v3    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :cond_11
    move/from16 v11, p3

    .end local p3    # "codeIndex":I
    .restart local v11    # "codeIndex":I
    :goto_d
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v4, p2

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v3, p4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    return v11
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 8
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
    .local v0, "result":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 103
    .local v1, "encoding":Ljava/nio/charset/Charset;
    const/4 v2, 0x1

    .line 104
    .local v2, "codeIndex":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "codeIndex":I
    aget v2, p0, v2

    .line 105
    .local v2, "code":I
    new-instance v4, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .line 106
    .local v4, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    :goto_0
    const/4 v5, 0x0

    aget v5, p0, v5

    if-ge v3, v5, :cond_2

    .line 107
    const/16 v5, 0x391

    if-eq v2, v5, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 145
    add-int/lit8 v3, v3, -0x1

    .line 146
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v3

    goto :goto_2

    .line 135
    :pswitch_0
    invoke-static {p0, v3, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v3

    .line 136
    goto :goto_2

    .line 122
    :pswitch_1
    add-int/lit8 v5, v3, 0x1

    .local v5, "codeIndex":I
    aget v3, p0, v3

    .line 123
    .end local v3    # "codeIndex":I
    invoke-static {v3}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    .line 124
    .local v3, "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    invoke-virtual {v3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 125
    goto :goto_1

    .line 128
    .end local v5    # "codeIndex":I
    .local v3, "codeIndex":I
    :pswitch_2
    add-int/lit8 v3, v3, 0x2

    .line 129
    goto :goto_2

    .line 132
    :pswitch_3
    add-int/lit8 v3, v3, 0x1

    .line 133
    goto :goto_2

    .line 140
    :pswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 119
    :pswitch_5
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v3

    .line 120
    goto :goto_2

    .line 113
    :pswitch_6
    invoke-static {v2, p0, v1, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v3

    .line 114
    goto :goto_2

    .line 109
    :pswitch_7
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v3

    .line 110
    goto :goto_2

    .line 116
    :cond_0
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "codeIndex":I
    aget v3, p0, v3

    .end local v3    # "codeIndex":I
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    nop

    .line 149
    .end local v5    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :goto_1
    move v3, v5

    :goto_2
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 150
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "codeIndex":I
    aget v2, p0, v3

    .line 105
    .end local v3    # "codeIndex":I
    move v3, v5

    goto :goto_0

    .line 152
    .end local v5    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 155
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 158
    new-instance v5, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6, v7, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 159
    .local v5, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v5, v4}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 160
    return-object v5

    .line 156
    .end local v5    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 630
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 631
    .local v0, "result":Ljava/math/BigInteger;
    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "result":Ljava/math/BigInteger;
    :goto_0
    const/4 v3, 0x1

    if-ge v0, p1, :cond_0

    .line 632
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v0

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "resultString":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x31

    if-ne v1, v4, :cond_1

    .line 638
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 636
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 10
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 165
    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aget v2, p0, v1

    if-gt v0, v2, :cond_6

    .line 169
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 170
    .local v2, "segmentIndexArray":[I
    move v3, p1

    move p1, v1

    .local v3, "codeIndex":I
    .local p1, "i":I
    :goto_0
    if-ge p1, v0, :cond_0

    .line 171
    aget v4, p0, v3

    aput v4, v2, p1

    .line 170
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local p1    # "i":I
    :cond_0
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local p1, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, v3, p1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 178
    .end local v3    # "codeIndex":I
    .local v0, "codeIndex":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 180
    aget v3, p0, v0

    const/16 v4, 0x39b

    const/16 v5, 0x39a

    const/4 v6, 0x1

    if-ne v3, v4, :cond_4

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    aget v3, p0, v1

    sub-int/2addr v3, v0

    new-array v3, v3, [I

    .line 183
    .local v3, "additionalOptionCodeWords":[I
    const/4 v4, 0x0

    .line 185
    .local v4, "additionalOptionCodeWordsIndex":I
    move v7, v4

    move v4, v0

    move v0, v1

    .line 186
    .local v0, "end":Z
    .local v4, "codeIndex":I
    .local v7, "additionalOptionCodeWordsIndex":I
    :goto_1
    aget v8, p0, v1

    if-ge v4, v8, :cond_3

    if-nez v0, :cond_3

    .line 187
    add-int/lit8 v8, v4, 0x1

    .local v8, "codeIndex":I
    aget v4, p0, v4

    .line 188
    .local v4, "code":I
    const/16 v9, 0x384

    if-ge v4, v9, :cond_1

    .line 189
    add-int/lit8 v9, v7, 0x1

    .local v9, "additionalOptionCodeWordsIndex":I
    aput v4, v3, v7

    .line 201
    .end local v7    # "additionalOptionCodeWordsIndex":I
    move v4, v8

    move v7, v9

    goto :goto_2

    .line 191
    .end local v9    # "additionalOptionCodeWordsIndex":I
    .restart local v7    # "additionalOptionCodeWordsIndex":I
    :cond_1
    if-ne v4, v5, :cond_2

    .line 193
    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 194
    add-int/lit8 v8, v8, 0x1

    .line 195
    const/4 v0, 0x1

    .line 196
    nop

    .line 201
    move v4, v8

    .end local v8    # "codeIndex":I
    .local v4, "codeIndex":I
    :goto_2
    goto :goto_1

    .line 198
    .local v4, "code":I
    .restart local v8    # "codeIndex":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 203
    .end local v8    # "codeIndex":I
    .local v4, "codeIndex":I
    :cond_3
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 204
    .end local v0    # "end":Z
    .end local v3    # "additionalOptionCodeWords":[I
    .end local v7    # "additionalOptionCodeWordsIndex":I
    nop

    .line 209
    move v0, v4

    goto :goto_3

    .line 204
    .end local v4    # "codeIndex":I
    .local v0, "codeIndex":I
    :cond_4
    aget v1, p0, v0

    if-ne v1, v5, :cond_5

    .line 205
    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    .line 209
    :cond_5
    :goto_3
    return v0

    .line 167
    .end local v0    # "codeIndex":I
    .end local v2    # "segmentIndexArray":[I
    .local p1, "codeIndex":I
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 15
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .line 294
    move-object/from16 v0, p3

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 295
    .local v1, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 296
    .local v2, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v3, 0x0

    .line 297
    .local v3, "i":I
    :goto_0
    move/from16 v4, p2

    if-ge v3, v4, :cond_1d

    .line 298
    aget v5, p0, v3

    .line 299
    .local v5, "subModeCh":I
    const/4 v6, 0x0

    .line 300
    .local v6, "ch":C
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x41

    const/16 v10, 0x1b

    const/16 v11, 0x391

    const/16 v12, 0x384

    const/16 v13, 0x1a

    const/16 v9, 0x1d

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_1

    .line 407
    :pswitch_0
    move-object v1, v2

    .line 408
    if-ge v5, v9, :cond_0

    .line 409
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v6, v7, v5

    goto/16 :goto_1

    .line 411
    :cond_0
    if-ne v5, v9, :cond_1

    .line 412
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 413
    :cond_1
    if-ne v5, v11, :cond_2

    .line 416
    aget v7, p1, v3

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 417
    :cond_2
    if-ne v5, v12, :cond_1b

    .line 418
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 393
    :pswitch_1
    move-object v1, v2

    .line 394
    if-ge v5, v13, :cond_3

    .line 395
    add-int/2addr v8, v5

    int-to-char v6, v8

    goto/16 :goto_1

    .line 397
    :cond_3
    if-ne v5, v13, :cond_4

    .line 398
    const/16 v6, 0x20

    goto/16 :goto_1

    .line 399
    :cond_4
    if-ne v5, v12, :cond_1b

    .line 400
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 378
    :pswitch_2
    if-ge v5, v9, :cond_5

    .line 379
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v6, v7, v5

    goto/16 :goto_1

    .line 381
    :cond_5
    if-ne v5, v9, :cond_6

    .line 382
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 383
    :cond_6
    if-ne v5, v11, :cond_7

    .line 384
    aget v7, p1, v3

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 385
    :cond_7
    if-ne v5, v12, :cond_1b

    .line 386
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 353
    :pswitch_3
    const/16 v7, 0x19

    if-ge v5, v7, :cond_8

    .line 354
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v6, v7, v5

    goto/16 :goto_1

    .line 356
    :cond_8
    if-ne v5, v7, :cond_9

    .line 357
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 358
    :cond_9
    if-ne v5, v13, :cond_a

    .line 359
    const/16 v6, 0x20

    goto/16 :goto_1

    .line 360
    :cond_a
    if-ne v5, v10, :cond_b

    .line 361
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 362
    :cond_b
    const/16 v7, 0x1c

    if-ne v5, v7, :cond_c

    .line 363
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 364
    :cond_c
    if-ne v5, v9, :cond_d

    .line 366
    move-object v2, v1

    .line 367
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 368
    :cond_d
    if-ne v5, v11, :cond_e

    .line 369
    aget v7, p1, v3

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 370
    :cond_e
    if-ne v5, v12, :cond_1b

    .line 371
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 327
    :pswitch_4
    if-ge v5, v13, :cond_f

    .line 328
    const/16 v7, 0x61

    add-int/2addr v7, v5

    int-to-char v6, v7

    goto :goto_1

    .line 330
    :cond_f
    if-ne v5, v13, :cond_10

    .line 331
    const/16 v6, 0x20

    goto :goto_1

    .line 332
    :cond_10
    if-ne v5, v10, :cond_11

    .line 334
    move-object v2, v1

    .line 335
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 336
    :cond_11
    const/16 v7, 0x1c

    if-ne v5, v7, :cond_12

    .line 337
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 338
    :cond_12
    if-ne v5, v9, :cond_13

    .line 340
    move-object v2, v1

    .line 341
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 342
    :cond_13
    if-ne v5, v11, :cond_14

    .line 344
    aget v7, p1, v3

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    :cond_14
    if-ne v5, v12, :cond_1b

    .line 346
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 303
    :pswitch_5
    if-ge v5, v13, :cond_15

    .line 305
    add-int/2addr v8, v5

    int-to-char v6, v8

    goto :goto_1

    .line 307
    :cond_15
    if-ne v5, v13, :cond_16

    .line 308
    const/16 v6, 0x20

    goto :goto_1

    .line 309
    :cond_16
    if-ne v5, v10, :cond_17

    .line 310
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 311
    :cond_17
    const/16 v7, 0x1c

    if-ne v5, v7, :cond_18

    .line 312
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 313
    :cond_18
    if-ne v5, v9, :cond_19

    .line 315
    move-object v2, v1

    .line 316
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 317
    :cond_19
    if-ne v5, v11, :cond_1a

    .line 318
    aget v7, p1, v3

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 319
    :cond_1a
    if-ne v5, v12, :cond_1b

    .line 320
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 423
    :cond_1b
    :goto_1
    if-eqz v6, :cond_1c

    .line 425
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    .line 428
    .end local v5    # "subModeCh":I
    .end local v6    # "ch":C
    goto/16 :goto_0

    .line 429
    :cond_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 5
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "count":I
    const/4 v1, 0x0

    .line 548
    .local v1, "end":Z
    const/16 v2, 0xf

    new-array v2, v2, [I

    .line 550
    .local v2, "numericCodewords":[I
    :goto_0
    const/4 v3, 0x0

    aget v4, p0, v3

    if-ge p1, v4, :cond_6

    if-nez v1, :cond_6

    .line 551
    add-int/lit8 v4, p1, 0x1

    .local v4, "codeIndex":I
    aget p1, p0, p1

    .line 552
    .local p1, "code":I
    aget v3, p0, v3

    if-ne v4, v3, :cond_0

    .line 553
    const/4 v1, 0x1

    .line 555
    :cond_0
    const/16 v3, 0x384

    if-ge p1, v3, :cond_1

    .line 556
    aput p1, v2, v0

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 559
    :cond_1
    if-eq p1, v3, :cond_2

    const/16 v3, 0x385

    if-eq p1, v3, :cond_2

    const/16 v3, 0x39c

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3a0

    if-eq p1, v3, :cond_2

    const/16 v3, 0x39b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x39a

    if-ne p1, v3, :cond_3

    .line 565
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 566
    const/4 v1, 0x1

    .line 569
    :cond_3
    :goto_1
    rem-int/lit8 v3, v0, 0xf

    if-eqz v3, :cond_4

    const/16 v3, 0x386

    if-eq p1, v3, :cond_4

    if-eqz v1, :cond_5

    .line 576
    :cond_4
    if-lez v0, :cond_5

    .line 577
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const/4 p1, 0x0

    .line 582
    .end local v0    # "count":I
    .end local v3    # "s":Ljava/lang/String;
    .local p1, "count":I
    move v0, p1

    .line 548
    .end local p1    # "count":I
    .restart local v0    # "count":I
    :cond_5
    move p1, v4

    goto :goto_0

    .line 583
    .end local v4    # "codeIndex":I
    .local p1, "codeIndex":I
    :cond_6
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 8
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .line 224
    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 226
    .local v1, "textCompactionData":[I
    aget v2, p0, v0

    sub-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    .line 228
    .local v2, "byteCompactionData":[I
    const/4 v3, 0x0

    .line 229
    .local v3, "index":I
    move v4, v3

    move v3, p1

    move p1, v0

    .line 230
    .local v3, "codeIndex":I
    .local v4, "index":I
    .local p1, "end":Z
    :goto_0
    aget v5, p0, v0

    if-ge v3, v5, :cond_3

    if-nez p1, :cond_3

    .line 231
    add-int/lit8 v5, v3, 0x1

    .local v5, "codeIndex":I
    aget v3, p0, v3

    .line 232
    .local v3, "code":I
    const/16 v6, 0x384

    if-ge v3, v6, :cond_0

    .line 233
    div-int/lit8 v6, v3, 0x1e

    aput v6, v1, v4

    .line 234
    add-int/lit8 v6, v4, 0x1

    rem-int/lit8 v7, v3, 0x1e

    aput v7, v1, v6

    .line 235
    add-int/lit8 v4, v4, 0x2

    .line 265
    .end local v5    # "codeIndex":I
    .local v3, "codeIndex":I
    :goto_1
    move v3, v5

    goto :goto_2

    .line 237
    .local v3, "code":I
    .restart local v5    # "codeIndex":I
    :cond_0
    const/16 v7, 0x391

    if-eq v3, v7, :cond_2

    const/16 v7, 0x3a0

    if-eq v3, v7, :cond_1

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .end local v3    # "code":I
    goto :goto_1

    .line 240
    .restart local v3    # "code":I
    :pswitch_0
    add-int/lit8 v7, v4, 0x1

    .local v7, "index":I
    aput v6, v1, v4

    .line 241
    .end local v4    # "index":I
    nop

    .line 265
    move v3, v5

    move v4, v7

    goto :goto_2

    .line 248
    .end local v7    # "index":I
    .restart local v4    # "index":I
    :cond_1
    :pswitch_1
    add-int/lit8 v5, v5, -0x1

    .line 249
    const/4 p1, 0x1

    .line 250
    goto :goto_1

    .line 258
    :cond_2
    aput v7, v1, v4

    .line 259
    add-int/lit8 v6, v5, 0x1

    .local v6, "codeIndex":I
    aget v3, p0, v5

    .line 260
    .end local v5    # "codeIndex":I
    aput v3, v2, v4

    .line 261
    add-int/lit8 v4, v4, 0x1

    .line 265
    .end local v3    # "code":I
    move v3, v6

    .end local v6    # "codeIndex":I
    .local v3, "codeIndex":I
    :goto_2
    goto :goto_0

    .line 266
    :cond_3
    invoke-static {v1, v2, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 267
    return v3

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
