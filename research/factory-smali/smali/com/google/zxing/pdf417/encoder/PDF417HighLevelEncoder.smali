.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# static fields
.field private static final BYTE_COMPACTION:I = 0x1

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final LATCH_TO_BYTE:I = 0x39c

.field private static final LATCH_TO_BYTE_PADDED:I = 0x385

.field private static final LATCH_TO_NUMERIC:I = 0x386

.field private static final LATCH_TO_TEXT:I = 0x384

.field private static final MIXED:[B

.field private static final NUMERIC_COMPACTION:I = 0x2

.field private static final PUNCTUATION:[B

.field private static final SHIFT_TO_BYTE:I = 0x391

.field private static final SUBMODE_ALPHA:I = 0x0

.field private static final SUBMODE_LOWER:I = 0x1

.field private static final SUBMODE_MIXED:I = 0x2

.field private static final SUBMODE_PUNCTUATION:I = 0x3

.field private static final TEXT_COMPACTION:I

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 114
    const/16 v0, 0x1e

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    .line 121
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    .line 125
    const/16 v0, 0x80

    new-array v1, v0, [B

    sput-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 126
    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 128
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 135
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 136
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":B
    :goto_0
    sget-object v3, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 137
    sget-object v3, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    aget-byte v3, v3, v2

    .line 138
    .local v3, "b":B
    if-lez v3, :cond_0

    .line 139
    sget-object v4, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aput-byte v2, v4, v3

    .line 136
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v3, v2, 0x1

    int-to-byte v2, v3

    goto :goto_0

    .line 142
    .end local v2    # "i":B
    :cond_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 143
    nop

    .local v0, "i":B
    :goto_1
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 144
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    aget-byte v1, v1, v0

    .line 145
    .local v1, "b":B
    if-lez v1, :cond_2

    .line 146
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aput-byte v0, v2, v1

    .line 143
    .end local v1    # "b":B
    :cond_2
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_1

    .line 149
    .end local v0    # "i":B
    :cond_3
    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method private static determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I
    .locals 7
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "bytes"    # [B
    .param p2, "startpos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 539
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 540
    .local v0, "len":I
    move v1, p2

    .line 541
    .local v1, "idx":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 542
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 543
    .local v2, "ch":C
    const/4 v3, 0x0

    .line 545
    .local v3, "numericCount":I
    :goto_1
    const/16 v4, 0xd

    if-ge v3, v4, :cond_1

    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 546
    add-int/lit8 v3, v3, 0x1

    .line 548
    add-int v5, v1, v3

    .line 549
    .local v5, "i":I
    if-lt v5, v0, :cond_0

    .line 550
    goto :goto_2

    .line 552
    :cond_0
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 553
    .end local v5    # "i":I
    goto :goto_1

    .line 554
    :cond_1
    :goto_2
    if-lt v3, v4, :cond_2

    .line 555
    sub-int v4, v1, p2

    return v4

    .line 557
    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 562
    aget-byte v4, p1, v1

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_4

    if-ne v2, v5, :cond_3

    goto :goto_3

    .line 563
    :cond_3
    new-instance v4, Lcom/google/zxing/WriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-encodable character detected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, " (Unicode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 565
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 566
    .end local v2    # "ch":C
    .end local v3    # "numericCount":I
    goto :goto_0

    .line 567
    :cond_5
    sub-int v2, v1, p2

    return v2
.end method

.method private static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 477
    .local v1, "len":I
    move v2, p1

    .line 478
    .local v2, "idx":I
    if-ge v2, v1, :cond_1

    .line 479
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 480
    .local v3, "ch":C
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v2, v1, :cond_1

    .line 481
    add-int/lit8 v0, v0, 0x1

    .line 482
    add-int/lit8 v2, v2, 0x1

    .line 483
    if-ge v2, v1, :cond_0

    .line 484
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_0

    .line 488
    .end local v3    # "ch":C
    :cond_1
    return v0
.end method

.method private static determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I
    .locals 6
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .line 499
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 500
    .local v0, "len":I
    move v1, p1

    .line 501
    .local v1, "idx":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 502
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 503
    .local v2, "ch":C
    const/4 v3, 0x0

    .line 504
    .local v3, "numericCount":I
    :cond_0
    :goto_1
    const/16 v4, 0xd

    if-ge v3, v4, :cond_1

    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ge v1, v0, :cond_1

    .line 505
    add-int/lit8 v3, v3, 0x1

    .line 506
    add-int/lit8 v1, v1, 0x1

    .line 507
    if-ge v1, v0, :cond_0

    .line 508
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_1

    .line 511
    :cond_1
    if-lt v3, v4, :cond_2

    .line 512
    sub-int v4, v1, p1

    sub-int/2addr v4, v3

    return v4

    .line 514
    :cond_2
    if-lez v3, :cond_3

    .line 516
    goto :goto_0

    .line 518
    :cond_3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 521
    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v4

    if-nez v4, :cond_4

    .line 522
    goto :goto_2

    .line 524
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 525
    .end local v2    # "ch":C
    .end local v3    # "numericCount":I
    goto :goto_0

    .line 526
    :cond_5
    :goto_2
    sub-int v2, v1, p1

    return v2
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .locals 14
    .param p0, "bytes"    # [B
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "startmode"    # I
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    move/from16 v0, p2

    .line 381
    move-object/from16 v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-nez p3, :cond_0

    .line 382
    const/16 v4, 0x391

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 384
    :cond_0
    rem-int/lit8 v4, v0, 0x6

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    .line 385
    .local v4, "sixpack":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 386
    const/16 v5, 0x39c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 388
    :cond_2
    const/16 v5, 0x385

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    .end local v4    # "sixpack":Z
    :goto_1
    move v4, p1

    .line 394
    .local v4, "idx":I
    const/4 v5, 0x6

    if-lt v0, v5, :cond_6

    .line 395
    const/4 v6, 0x5

    new-array v7, v6, [C

    .line 396
    .local v7, "chars":[C
    :goto_2
    add-int v8, p1, v0

    sub-int/2addr v8, v4

    if-lt v8, v5, :cond_6

    .line 397
    const-wide/16 v8, 0x0

    .line 398
    .local v8, "t":J
    move-wide v9, v8

    move v8, v2

    .local v8, "i":I
    .local v9, "t":J
    :goto_3
    if-ge v8, v5, :cond_3

    .line 399
    const/16 v11, 0x8

    shl-long/2addr v9, v11

    .line 400
    add-int v11, v4, v8

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    add-long/2addr v9, v11

    .line 398
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 402
    .end local v8    # "i":I
    :cond_3
    move v8, v2

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v6, :cond_4

    .line 403
    const-wide/16 v11, 0x384

    rem-long v5, v9, v11

    long-to-int v5, v5

    int-to-char v5, v5

    aput-char v5, v7, v8

    .line 404
    div-long/2addr v9, v11

    .line 402
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x6

    const/4 v6, 0x5

    goto :goto_4

    .line 406
    .end local v8    # "i":I
    :cond_4
    array-length v5, v7

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_5
    if-ltz v5, :cond_5

    .line 407
    aget-char v6, v7, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 409
    .end local v5    # "i":I
    :cond_5
    add-int/lit8 v4, v4, 0x6

    .line 410
    .end local v9    # "t":J
    nop

    .line 395
    const/4 v5, 0x6

    const/4 v6, 0x5

    goto :goto_2

    .line 413
    .end local v7    # "chars":[C
    :cond_6
    move v2, v4

    .local v2, "i":I
    :goto_6
    add-int v3, p1, v0

    if-ge v2, v3, :cond_7

    .line 414
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 415
    .local v3, "ch":I
    int-to-char v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    .end local v3    # "ch":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 417
    .end local v2    # "i":I
    :cond_7
    return-void
.end method

.method static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 12
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "compaction"    # Lcom/google/zxing/pdf417/encoder/Compaction;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 167
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p2, :cond_0

    .line 168
    sget-object p2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 169
    :cond_0
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v1, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    .line 171
    .local v1, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v2

    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    .line 176
    .end local v1    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 177
    .local v1, "len":I
    const/4 v2, 0x0

    .line 178
    .local v2, "p":I
    const/4 v3, 0x0

    .line 181
    .local v3, "textSubMode":I
    const/4 v4, 0x0

    .line 182
    .local v4, "bytes":[B
    sget-object v5, Lcom/google/zxing/pdf417/encoder/Compaction;->TEXT:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v5, :cond_2

    .line 183
    invoke-static {p0, v2, v1, v0, v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    goto/16 :goto_5

    .line 185
    :cond_2
    sget-object v5, Lcom/google/zxing/pdf417/encoder/Compaction;->BYTE:Lcom/google/zxing/pdf417/encoder/Compaction;

    const/4 v6, 0x1

    if-ne p1, v5, :cond_3

    .line 186
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 187
    array-length v5, v4

    invoke-static {v4, v2, v5, v6, v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto/16 :goto_5

    .line 189
    :cond_3
    sget-object v5, Lcom/google/zxing/pdf417/encoder/Compaction;->NUMERIC:Lcom/google/zxing/pdf417/encoder/Compaction;

    const/16 v7, 0x386

    if-ne p1, v5, :cond_4

    .line 190
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {p0, v2, v1, v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_5

    .line 194
    :cond_4
    const/4 v5, 0x0

    move-object v8, v4

    move v4, v3

    move v3, v2

    move v2, v5

    .line 195
    .local v2, "encodingMode":I
    .local v3, "p":I
    .local v4, "textSubMode":I
    .local v8, "bytes":[B
    :goto_1
    if-ge v3, v1, :cond_c

    .line 196
    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 197
    .local v9, "n":I
    const/16 v10, 0xd

    if-lt v9, v10, :cond_5

    .line 198
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    const/4 v2, 0x2

    .line 200
    const/4 v4, 0x0

    .line 201
    invoke-static {p0, v3, v9, v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 202
    add-int/2addr v3, v9

    goto :goto_4

    .line 204
    :cond_5
    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I

    move-result v10

    .line 205
    .local v10, "t":I
    const/4 v11, 0x5

    if-ge v10, v11, :cond_a

    if-ne v9, v1, :cond_6

    goto :goto_3

    .line 214
    :cond_6
    if-nez v8, :cond_7

    .line 215
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 217
    :cond_7
    invoke-static {p0, v8, v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I

    move-result v11

    .line 218
    .local v11, "b":I
    if-nez v11, :cond_8

    .line 219
    const/4 v11, 0x1

    .line 221
    :cond_8
    if-ne v11, v6, :cond_9

    if-nez v2, :cond_9

    .line 223
    invoke-static {v8, v3, v6, v5, v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_2

    .line 226
    :cond_9
    invoke-static {v8, v3, v11, v2, v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 227
    const/4 v2, 0x1

    .line 228
    const/4 v4, 0x0

    .line 230
    :goto_2
    add-int/2addr v3, v11

    .end local v9    # "n":I
    .end local v10    # "t":I
    .end local v11    # "b":I
    goto :goto_4

    .line 206
    .restart local v9    # "n":I
    .restart local v10    # "t":I
    :cond_a
    :goto_3
    if-eqz v2, :cond_b

    .line 207
    const/16 v11, 0x384

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    const/4 v2, 0x0

    .line 209
    const/4 v4, 0x0

    .line 211
    :cond_b
    invoke-static {p0, v3, v10, v0, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v4

    .line 212
    add-int/2addr v3, v10

    .line 233
    .end local v9    # "n":I
    .end local v10    # "t":I
    :goto_4
    goto :goto_1

    .line 236
    .end local v2    # "encodingMode":I
    :cond_c
    move v2, v3

    move v3, v4

    move-object v4, v8

    .end local v8    # "bytes":[B
    .local v2, "p":I
    .local v3, "textSubMode":I
    .local v4, "bytes":[B
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "idx":I
    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v2, p2, 0x3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 422
    .local v1, "tmp":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 423
    .local v2, "num900":Ljava/math/BigInteger;
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 424
    .local v3, "num0":Ljava/math/BigInteger;
    :goto_0
    add-int/lit8 v4, p2, -0x1

    if-ge v0, v4, :cond_2

    .line 425
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 426
    const/16 v4, 0x2c

    sub-int v5, p2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 427
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x31

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int v6, p1, v0

    add-int v7, p1, v0

    add-int/2addr v7, v4

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "part":Ljava/lang/String;
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 430
    .local v6, "bigint":Ljava/math/BigInteger;
    :cond_0
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 432
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_1

    .line 436
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 438
    .end local v7    # "i":I
    :cond_1
    add-int/2addr v0, v4

    .line 439
    .end local v4    # "len":I
    .end local v5    # "part":Ljava/lang/String;
    .end local v6    # "bigint":Ljava/math/BigInteger;
    goto :goto_0

    .line 440
    :cond_2
    return-void
.end method

.method private static encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .locals 15
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .param p4, "initialSubmode"    # I

    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 256
    .local v3, "tmp":Ljava/lang/StringBuilder;
    move/from16 v4, p4

    .line 257
    .local v4, "submode":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .line 259
    .local v4, "idx":I
    .local v6, "submode":I
    :goto_0
    add-int v7, p1, v4

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 260
    .local v7, "ch":C
    const/16 v8, 0x1a

    const/16 v9, 0x20

    const/16 v10, 0x1b

    const/16 v11, 0x1c

    const/16 v12, 0x1d

    const/4 v13, 0x1

    packed-switch v6, :pswitch_data_0

    .line 335
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 336
    sget-object v8, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v8, v8, v7

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 309
    :pswitch_0
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 310
    sget-object v8, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v8, v8, v7

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 312
    :cond_0
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 313
    const/4 v6, 0x0

    .line 314
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    goto :goto_0

    .line 316
    :cond_1
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 317
    const/4 v6, 0x1

    .line 318
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    goto :goto_0

    .line 321
    :cond_2
    add-int v8, p1, v4

    add-int/2addr v8, v13

    if-ge v8, v1, :cond_3

    .line 322
    add-int v8, p1, v4

    add-int/2addr v8, v13

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 323
    .local v8, "next":C
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 324
    const/4 v6, 0x3

    .line 325
    const/16 v9, 0x19

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    goto :goto_0

    .line 329
    .end local v8    # "next":C
    :cond_3
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    sget-object v8, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v8, v8, v7

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    goto/16 :goto_1

    .line 285
    :pswitch_1
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 286
    if-ne v7, v9, :cond_4

    .line 287
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 289
    :cond_4
    add-int/lit8 v8, v7, -0x61

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 292
    :cond_5
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 293
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v8, v7, -0x41

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    goto :goto_1

    .line 297
    :cond_6
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 298
    const/4 v6, 0x2

    .line 299
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    goto/16 :goto_0

    .line 302
    :cond_7
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    sget-object v8, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v8, v8, v7

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    goto :goto_1

    .line 262
    :pswitch_2
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 263
    if-ne v7, v9, :cond_8

    .line 264
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 266
    :cond_8
    add-int/lit8 v8, v7, -0x41

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 269
    :cond_9
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 270
    const/4 v6, 0x1

    .line 271
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    goto/16 :goto_0

    .line 273
    :cond_a
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 274
    const/4 v6, 0x2

    .line 275
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    goto/16 :goto_0

    .line 278
    :cond_b
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    sget-object v8, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v8, v8, v7

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    nop

    .line 343
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 344
    if-lt v4, v1, :cond_10

    .line 345
    nop

    .line 348
    .end local v7    # "ch":C
    const/4 v7, 0x0

    .line 349
    .local v7, "h":C
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 350
    .local v8, "len":I
    move v9, v7

    move v7, v5

    .local v7, "i":I
    .local v9, "h":C
    :goto_2
    if-ge v7, v8, :cond_e

    .line 351
    rem-int/lit8 v10, v7, 0x2

    if-eqz v10, :cond_c

    move v10, v13

    goto :goto_3

    :cond_c
    move v10, v5

    .line 352
    .local v10, "odd":Z
    :goto_3
    if-eqz v10, :cond_d

    .line 353
    mul-int/lit8 v11, v9, 0x1e

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    add-int/2addr v11, v14

    int-to-char v9, v11

    .line 354
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 356
    :cond_d
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 350
    .end local v10    # "odd":Z
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 359
    .end local v7    # "i":I
    :cond_e
    rem-int/lit8 v5, v8, 0x2

    if-eqz v5, :cond_f

    .line 360
    mul-int/lit8 v5, v9, 0x1e

    add-int/2addr v5, v12

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    :cond_f
    return v6

    .line 347
    .end local v8    # "len":I
    .end local v9    # "h":C
    :cond_10
    goto/16 :goto_0

    .line 338
    .local v7, "ch":C
    :cond_11
    const/4 v6, 0x0

    .line 339
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encodingECI(ILjava/lang/StringBuilder;)V
    .locals 3
    .param p0, "eci"    # I
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 571
    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-ge p0, v0, :cond_0

    .line 572
    const/16 v0, 0x39f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    int-to-char v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 574
    :cond_0
    const v0, 0xc5f94

    if-ge p0, v0, :cond_1

    .line 575
    const/16 v0, 0x39e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    div-int/lit16 v0, p0, 0x384

    add-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    rem-int/lit16 v0, p0, 0x384

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 578
    :cond_1
    const v1, 0xc6318

    if-ge p0, v1, :cond_2

    .line 579
    const/16 v1, 0x39d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    sub-int/2addr v0, p0

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_2
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECI number not in valid range from 0..811799, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlphaLower(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 452
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isAlphaUpper(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 448
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 444
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMixed(C)Z
    .locals 2
    .param p0, "ch"    # C

    .line 456
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isPunctuation(C)Z
    .locals 2
    .param p0, "ch"    # C

    .line 460
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isText(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 464
    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
