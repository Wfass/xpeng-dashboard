.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "BZip2CompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    }
.end annotation


# static fields
.field private static final EOF:I = 0x0

.field private static final NO_RAND_PART_A_STATE:I = 0x5

.field private static final NO_RAND_PART_B_STATE:I = 0x6

.field private static final NO_RAND_PART_C_STATE:I = 0x7

.field private static final RAND_PART_A_STATE:I = 0x2

.field private static final RAND_PART_B_STATE:I = 0x3

.field private static final RAND_PART_C_STATE:I = 0x4

.field private static final START_BLOCK_STATE:I = 0x1


# instance fields
.field private blockRandomised:Z

.field private blockSize100k:I

.field private bsBuff:I

.field private bsLive:I

.field private computedBlockCRC:I

.field private computedCombinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentState:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

.field private final decompressConcatenated:Z

.field private in:Ljava/io/InputStream;

.field private last:I

.field private nInUse:I

.field private origPtr:I

.field private storedBlockCRC:I

.field private storedCombinedCRC:I

.field private su_ch2:I

.field private su_chPrev:I

.field private su_count:I

.field private su_i2:I

.field private su_j2:I

.field private su_rNToGo:I

.field private su_rTPos:I

.field private su_tPos:I

.field private su_z:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "decompressConcatenated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 60
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 128
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 129
    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    .line 131
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    .line 132
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 133
    return-void
.end method

.method private bsGetBit()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private bsGetInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v1

    shl-int/2addr v1, v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v2

    or-int/2addr v1, v2

    shl-int/2addr v1, v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v2

    or-int/2addr v1, v2

    shl-int/2addr v1, v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v0

    or-int/2addr v0, v1

    return v0
.end method

.method private bsGetUByte()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method private bsR(I)I
    .locals 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 368
    .local v0, "bsLiveShadow":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 370
    .local v1, "bsBuffShadow":I
    if-ge v0, p1, :cond_2

    .line 371
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 373
    .local v2, "inShadow":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 375
    .local v3, "thech":I
    if-ltz v3, :cond_1

    .line 379
    shl-int/lit8 v4, v1, 0x8

    or-int v1, v4, v3

    .line 380
    add-int/lit8 v0, v0, 0x8

    .line 381
    .end local v3    # "thech":I
    if-lt v0, p1, :cond_0

    .line 383
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .end local v2    # "inShadow":Ljava/io/InputStream;
    goto :goto_0

    .line 376
    .restart local v2    # "inShadow":Ljava/io/InputStream;
    .restart local v3    # "thech":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "unexpected end of stream"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 386
    .end local v2    # "inShadow":Ljava/io/InputStream;
    .end local v3    # "thech":I
    :cond_2
    :goto_0
    sub-int v2, v0, p1

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 387
    sub-int v2, v0, p1

    shr-int v2, v1, v2

    const/4 v3, 0x1

    shl-int v4, v3, p1

    sub-int/2addr v4, v3

    and-int/2addr v2, v4

    return v2
.end method

.method private complete()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 342
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    if-ne v1, v2, :cond_2

    .line 348
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 343
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createHuffmanDecodingTables(II)V
    .locals 20
    .param p1, "alphaSize"    # I
    .param p2, "nGroups"    # I

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 530
    .local v1, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 531
    .local v2, "len":[[C
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 532
    .local v3, "minLens":[I
    iget-object v4, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 533
    .local v4, "limit":[[I
    iget-object v5, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 534
    .local v5, "base":[[I
    iget-object v6, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 536
    .local v6, "perm":[[I
    const/4 v7, 0x0

    .local v7, "t":I
    :goto_0
    move/from16 v8, p2

    if-ge v7, v8, :cond_3

    .line 537
    const/16 v9, 0x20

    .line 538
    .local v9, "minLen":I
    const/4 v10, 0x0

    .line 539
    .local v10, "maxLen":I
    aget-object v11, v2, v7

    .line 540
    .local v11, "len_t":[C
    move v15, v9

    move/from16 v9, p1

    .local v9, "i":I
    .local v15, "minLen":I
    :goto_1
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_2

    .line 541
    aget-char v12, v11, v9

    .line 542
    .local v12, "lent":C
    if-le v12, v10, :cond_0

    .line 543
    move v10, v12

    .line 545
    :cond_0
    if-ge v12, v15, :cond_1

    .line 546
    nop

    .line 548
    .end local v15    # "minLen":I
    .local v12, "minLen":I
    move v15, v12

    .end local v12    # "minLen":I
    .restart local v15    # "minLen":I
    :cond_1
    goto :goto_1

    .line 549
    .end local v9    # "i":I
    :cond_2
    aget-object v12, v4, v7

    aget-object v13, v5, v7

    aget-object v14, v6, v7

    aget-object v9, v2, v7

    move/from16 v19, v15

    move-object v15, v9

    .end local v15    # "minLen":I
    .local v19, "minLen":I
    move/from16 v16, v19

    move/from16 v17, v10

    move/from16 v18, p1

    invoke-static/range {v12 .. v18}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->hbCreateDecodeTables([I[I[I[CIII)V

    .line 551
    aput v19, v3, v7

    .line 536
    .end local v10    # "maxLen":I
    .end local v11    # "len_t":[C
    .end local v19    # "minLen":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 553
    .end local v7    # "t":I
    :cond_3
    return-void
.end method

.method private endBlock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    .line 322
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    if-ne v0, v1, :cond_0

    .line 332
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 334
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 335
    return-void

    .line 325
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 327
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 329
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAndMoveToFrontDecode()V
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    move-object/from16 v0, p0

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v1

    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    .line 557
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->recvDecodingTables()V

    .line 559
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 560
    .local v1, "inShadow":Ljava/io/InputStream;
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 561
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 562
    .local v3, "ll8":[B
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    .line 563
    .local v4, "unzftab":[I
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 564
    .local v5, "selector":[B
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 565
    .local v6, "seqToUnseq":[B
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->getAndMoveToFrontDecode_yy:[C

    .line 566
    .local v7, "yy":[C
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 567
    .local v8, "minLens":[I
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 568
    .local v9, "limit":[[I
    iget-object v10, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 569
    .local v10, "base":[[I
    iget-object v11, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 570
    .local v11, "perm":[[I
    iget v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    const v13, 0x186a0

    mul-int/2addr v12, v13

    .line 577
    .local v12, "limitLast":I
    const/16 v13, 0x100

    .local v13, "i":I
    :goto_0
    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x0

    if-ltz v13, :cond_0

    .line 578
    int-to-char v15, v13

    aput-char v15, v7, v13

    .line 579
    aput v14, v4, v13

    goto :goto_0

    .line 582
    .end local v13    # "i":I
    :cond_0
    const/4 v13, 0x0

    .line 583
    .local v13, "groupNo":I
    const/16 v15, 0x31

    .line 584
    .local v15, "groupPos":I
    iget v14, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    move-object/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    .local v16, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    add-int/2addr v14, v2

    .line 585
    .local v14, "eob":I
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode0(I)I

    move-result v18

    .line 586
    .local v18, "nextSym":I
    iget v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 587
    .local v2, "bsBuffShadow":I
    move/from16 v19, v2

    iget v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 588
    .local v2, "bsLiveShadow":I
    .local v19, "bsBuffShadow":I
    const/16 v20, -0x1

    .line 589
    .local v20, "lastShadow":I
    move/from16 v21, v2

    aget-byte v2, v5, v13

    .end local v2    # "bsLiveShadow":I
    .local v21, "bsLiveShadow":I
    and-int/lit16 v2, v2, 0xff

    .line 590
    .local v2, "zt":I
    aget-object v22, v10, v2

    .line 591
    .local v22, "base_zt":[I
    aget-object v23, v9, v2

    .line 592
    .local v23, "limit_zt":[I
    aget-object v24, v11, v2

    .line 593
    .local v24, "perm_zt":[I
    aget v25, v8, v2

    move/from16 v26, v19

    move/from16 v19, v15

    move/from16 v15, v21

    move/from16 v42, v20

    move/from16 v20, v2

    move/from16 v2, v18

    move/from16 v18, v13

    move/from16 v13, v42

    .end local v21    # "bsLiveShadow":I
    .local v2, "nextSym":I
    .local v13, "lastShadow":I
    .local v15, "bsLiveShadow":I
    .local v18, "groupNo":I
    .local v19, "groupPos":I
    .local v20, "zt":I
    .local v25, "minLens_zt":I
    .local v26, "bsBuffShadow":I
    :goto_1
    move/from16 v21, v25

    .line 595
    .end local v25    # "minLens_zt":I
    .local v21, "minLens_zt":I
    if-eq v2, v14, :cond_16

    .line 596
    if-eqz v2, :cond_b

    move/from16 v27, v14

    const/4 v14, 0x1

    if-ne v2, v14, :cond_1

    .line 597
    .end local v14    # "eob":I
    .local v27, "eob":I
    move/from16 v30, v2

    move/from16 v28, v15

    goto/16 :goto_8

    .line 666
    :cond_1
    add-int/lit8 v13, v13, 0x1

    if-ge v13, v12, :cond_a

    .line 670
    add-int/lit8 v14, v2, -0x1

    aget-char v14, v7, v14

    .line 671
    .local v14, "tmp":C
    move/from16 v28, v15

    aget-byte v15, v6, v14

    .end local v15    # "bsLiveShadow":I
    .local v28, "bsLiveShadow":I
    and-int/lit16 v15, v15, 0xff

    aget v25, v4, v15

    const/16 v17, 0x1

    add-int/lit8 v25, v25, 0x1

    aput v25, v4, v15

    .line 672
    aget-byte v15, v6, v14

    aput-byte v15, v3, v13

    .line 679
    const/16 v15, 0x10

    if-gt v2, v15, :cond_3

    .line 680
    add-int/lit8 v15, v2, -0x1

    .local v15, "j":I
    :goto_2
    if-lez v15, :cond_2

    .line 681
    add-int/lit8 v25, v15, -0x1

    .local v25, "j":I
    aget-char v29, v7, v25

    aput-char v29, v7, v15

    .line 680
    .end local v15    # "j":I
    move/from16 v15, v25

    goto :goto_2

    .line 687
    .end local v25    # "j":I
    :cond_2
    move/from16 v30, v2

    move/from16 v31, v13

    const/4 v13, 0x0

    goto :goto_3

    .line 684
    :cond_3
    add-int/lit8 v15, v2, -0x1

    move/from16 v30, v2

    move/from16 v31, v13

    const/4 v2, 0x1

    const/4 v13, 0x0

    invoke-static {v7, v13, v7, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    .end local v2    # "nextSym":I
    .end local v13    # "lastShadow":I
    .local v30, "nextSym":I
    .local v31, "lastShadow":I
    :goto_3
    aput-char v14, v7, v13

    .line 689
    if-nez v19, :cond_4

    .line 690
    const/16 v2, 0x31

    .line 691
    .end local v19    # "groupPos":I
    .local v2, "groupPos":I
    add-int/lit8 v18, v18, 0x1

    aget-byte v13, v5, v18

    and-int/lit16 v13, v13, 0xff

    .line 692
    .end local v20    # "zt":I
    .local v13, "zt":I
    aget-object v15, v10, v13

    .line 693
    .end local v22    # "base_zt":[I
    .local v15, "base_zt":[I
    aget-object v19, v9, v13

    .line 694
    .end local v23    # "limit_zt":[I
    .local v19, "limit_zt":[I
    aget-object v20, v11, v13

    .line 695
    .end local v24    # "perm_zt":[I
    .local v20, "perm_zt":[I
    aget v21, v8, v13

    .line 700
    move-object/from16 v22, v15

    move-object/from16 v23, v19

    move-object/from16 v24, v20

    move/from16 v25, v21

    move/from16 v19, v2

    move/from16 v20, v13

    goto :goto_4

    .line 697
    .end local v2    # "groupPos":I
    .end local v13    # "zt":I
    .end local v15    # "base_zt":[I
    .local v19, "groupPos":I
    .local v20, "zt":I
    .restart local v22    # "base_zt":[I
    .restart local v23    # "limit_zt":[I
    .restart local v24    # "perm_zt":[I
    :cond_4
    add-int/lit8 v19, v19, -0x1

    .line 700
    move/from16 v25, v21

    .end local v21    # "minLens_zt":I
    .local v25, "minLens_zt":I
    :goto_4
    move/from16 v2, v25

    move/from16 v13, v28

    .line 704
    .end local v28    # "bsLiveShadow":I
    .local v2, "zn":I
    .local v13, "bsLiveShadow":I
    :goto_5
    if-ge v13, v2, :cond_6

    .line 705
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v15

    .line 706
    .local v15, "thech":I
    if-ltz v15, :cond_5

    .line 707
    shl-int/lit8 v21, v26, 0x8

    or-int v26, v21, v15

    .line 708
    add-int/lit8 v13, v13, 0x8

    .line 709
    goto :goto_5

    .line 711
    :cond_5
    move/from16 v32, v14

    new-instance v14, Ljava/io/IOException;

    .end local v14    # "tmp":C
    .local v32, "tmp":C
    move/from16 v33, v15

    const-string v15, "unexpected end of stream"

    .end local v15    # "thech":I
    .local v33, "thech":I
    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 713
    .end local v32    # "tmp":C
    .end local v33    # "thech":I
    .restart local v14    # "tmp":C
    :cond_6
    move/from16 v32, v14

    .end local v14    # "tmp":C
    .restart local v32    # "tmp":C
    sub-int v14, v13, v2

    shr-int v14, v26, v14

    const/4 v15, 0x1

    shl-int v17, v15, v2

    add-int/lit8 v21, v17, -0x1

    and-int v14, v14, v21

    .line 715
    .local v14, "zvec":I
    sub-int/2addr v13, v2

    .line 717
    move v15, v13

    .end local v13    # "bsLiveShadow":I
    .local v15, "bsLiveShadow":I
    :goto_6
    aget v13, v23, v2

    if-le v14, v13, :cond_9

    .line 718
    add-int/lit8 v2, v2, 0x1

    .line 719
    :goto_7
    const/4 v13, 0x1

    if-ge v15, v13, :cond_8

    .line 720
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v13

    .line 721
    .local v13, "thech":I
    if-ltz v13, :cond_7

    .line 722
    shl-int/lit8 v21, v26, 0x8

    or-int v26, v21, v13

    .line 723
    add-int/lit8 v15, v15, 0x8

    .line 724
    goto :goto_7

    .line 726
    :cond_7
    move/from16 v34, v2

    new-instance v2, Ljava/io/IOException;

    .end local v2    # "zn":I
    .local v34, "zn":I
    move/from16 v35, v13

    const-string v13, "unexpected end of stream"

    .end local v13    # "thech":I
    .local v35, "thech":I
    invoke-direct {v2, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 728
    .end local v34    # "zn":I
    .end local v35    # "thech":I
    .restart local v2    # "zn":I
    :cond_8
    move/from16 v34, v2

    .end local v2    # "zn":I
    .restart local v34    # "zn":I
    add-int/lit8 v15, v15, -0x1

    .line 729
    shl-int/lit8 v2, v14, 0x1

    shr-int v13, v26, v15

    const/16 v17, 0x1

    and-int/lit8 v13, v13, 0x1

    or-int v14, v2, v13

    .line 717
    move/from16 v2, v34

    goto :goto_6

    .line 731
    .end local v34    # "zn":I
    .restart local v2    # "zn":I
    :cond_9
    aget v13, v22, v2

    sub-int v13, v14, v13

    aget v2, v24, v13

    .line 732
    .end local v14    # "zvec":I
    .end local v30    # "nextSym":I
    .end local v32    # "tmp":C
    .local v2, "nextSym":I
    nop

    .line 593
    move/from16 v14, v27

    move/from16 v13, v31

    goto/16 :goto_1

    .line 667
    .end local v25    # "minLens_zt":I
    .end local v31    # "lastShadow":I
    .local v13, "lastShadow":I
    .restart local v21    # "minLens_zt":I
    :cond_a
    move/from16 v30, v2

    move/from16 v31, v13

    move/from16 v28, v15

    .end local v2    # "nextSym":I
    .end local v13    # "lastShadow":I
    .end local v15    # "bsLiveShadow":I
    .restart local v28    # "bsLiveShadow":I
    .restart local v30    # "nextSym":I
    .restart local v31    # "lastShadow":I
    new-instance v2, Ljava/io/IOException;

    const-string v13, "block overrun"

    invoke-direct {v2, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    .end local v27    # "eob":I
    .end local v28    # "bsLiveShadow":I
    .end local v30    # "nextSym":I
    .end local v31    # "lastShadow":I
    .restart local v2    # "nextSym":I
    .restart local v13    # "lastShadow":I
    .local v14, "eob":I
    .restart local v15    # "bsLiveShadow":I
    :cond_b
    move/from16 v30, v2

    move/from16 v27, v14

    move/from16 v28, v15

    .end local v2    # "nextSym":I
    .end local v14    # "eob":I
    .end local v15    # "bsLiveShadow":I
    .restart local v27    # "eob":I
    .restart local v28    # "bsLiveShadow":I
    .restart local v30    # "nextSym":I
    :goto_8
    const/4 v2, -0x1

    .line 599
    .local v2, "s":I
    move v15, v2

    move/from16 v25, v21

    move/from16 v14, v30

    const/4 v2, 0x1

    .line 600
    .end local v21    # "minLens_zt":I
    .end local v30    # "nextSym":I
    .local v2, "n":I
    .local v14, "nextSym":I
    .local v15, "s":I
    .restart local v25    # "minLens_zt":I
    :goto_9
    if-nez v14, :cond_c

    .line 601
    add-int/2addr v15, v2

    goto :goto_a

    .line 602
    :cond_c
    const/4 v0, 0x1

    if-ne v14, v0, :cond_13

    .line 603
    shl-int/lit8 v0, v2, 0x1

    add-int/2addr v15, v0

    .line 608
    :goto_a
    if-nez v19, :cond_d

    .line 609
    const/16 v0, 0x31

    .line 610
    .end local v19    # "groupPos":I
    .local v0, "groupPos":I
    add-int/lit8 v18, v18, 0x1

    move/from16 v36, v0

    aget-byte v0, v5, v18

    .end local v0    # "groupPos":I
    .local v36, "groupPos":I
    and-int/lit16 v0, v0, 0xff

    .line 611
    .end local v20    # "zt":I
    .local v0, "zt":I
    aget-object v22, v10, v0

    .line 612
    aget-object v23, v9, v0

    .line 613
    aget-object v24, v11, v0

    .line 614
    aget v25, v8, v0

    .line 619
    move/from16 v20, v0

    move/from16 v19, v36

    goto :goto_b

    .line 616
    .end local v0    # "zt":I
    .end local v36    # "groupPos":I
    .restart local v19    # "groupPos":I
    .restart local v20    # "zt":I
    :cond_d
    add-int/lit8 v19, v19, -0x1

    .line 619
    :goto_b
    move-object/from16 v37, v5

    move/from16 v0, v25

    move/from16 v5, v28

    .line 623
    .end local v28    # "bsLiveShadow":I
    .local v0, "zn":I
    .local v5, "bsLiveShadow":I
    .local v37, "selector":[B
    :goto_c
    if-ge v5, v0, :cond_f

    .line 624
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v21

    .line 625
    .local v21, "thech":I
    if-ltz v21, :cond_e

    .line 626
    shl-int/lit8 v28, v26, 0x8

    or-int v26, v28, v21

    .line 627
    add-int/lit8 v5, v5, 0x8

    .line 628
    goto :goto_c

    .line 630
    :cond_e
    move-object/from16 v38, v8

    new-instance v8, Ljava/io/IOException;

    .end local v8    # "minLens":[I
    .local v38, "minLens":[I
    move-object/from16 v39, v9

    const-string v9, "unexpected end of stream"

    .end local v9    # "limit":[[I
    .local v39, "limit":[[I
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 632
    .end local v21    # "thech":I
    .end local v38    # "minLens":[I
    .end local v39    # "limit":[[I
    .restart local v8    # "minLens":[I
    .restart local v9    # "limit":[[I
    :cond_f
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .end local v8    # "minLens":[I
    .end local v9    # "limit":[[I
    .restart local v38    # "minLens":[I
    .restart local v39    # "limit":[[I
    sub-int v8, v5, v0

    shr-int v8, v26, v8

    const/4 v9, 0x1

    shl-int v17, v9, v0

    add-int/lit8 v21, v17, -0x1

    and-int v8, v8, v21

    .line 634
    .local v8, "zvec":I
    sub-int/2addr v5, v0

    .line 636
    move/from16 v28, v5

    .end local v5    # "bsLiveShadow":I
    .restart local v28    # "bsLiveShadow":I
    :goto_d
    aget v5, v23, v0

    if-le v8, v5, :cond_12

    .line 637
    add-int/lit8 v0, v0, 0x1

    .line 638
    move/from16 v5, v28

    .end local v28    # "bsLiveShadow":I
    .restart local v5    # "bsLiveShadow":I
    :goto_e
    const/4 v9, 0x1

    if-ge v5, v9, :cond_11

    .line 639
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 640
    .local v9, "thech":I
    if-ltz v9, :cond_10

    .line 641
    shl-int/lit8 v21, v26, 0x8

    or-int v26, v21, v9

    .line 642
    add-int/lit8 v5, v5, 0x8

    .line 643
    goto :goto_e

    .line 645
    :cond_10
    move/from16 v40, v0

    new-instance v0, Ljava/io/IOException;

    .end local v0    # "zn":I
    .local v40, "zn":I
    move-object/from16 v41, v1

    const-string v1, "unexpected end of stream"

    .end local v1    # "inShadow":Ljava/io/InputStream;
    .local v41, "inShadow":Ljava/io/InputStream;
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    .end local v9    # "thech":I
    .end local v40    # "zn":I
    .end local v41    # "inShadow":Ljava/io/InputStream;
    .restart local v0    # "zn":I
    .restart local v1    # "inShadow":Ljava/io/InputStream;
    :cond_11
    move/from16 v40, v0

    move-object/from16 v41, v1

    .end local v0    # "zn":I
    .end local v1    # "inShadow":Ljava/io/InputStream;
    .restart local v40    # "zn":I
    .restart local v41    # "inShadow":Ljava/io/InputStream;
    add-int/lit8 v28, v5, -0x1

    .line 649
    .end local v5    # "bsLiveShadow":I
    .restart local v28    # "bsLiveShadow":I
    shl-int/lit8 v0, v8, 0x1

    shr-int v1, v26, v28

    const/4 v5, 0x1

    and-int/2addr v1, v5

    or-int v8, v0, v1

    .line 636
    move/from16 v0, v40

    move-object/from16 v1, v41

    goto :goto_d

    .line 652
    .end local v40    # "zn":I
    .end local v41    # "inShadow":Ljava/io/InputStream;
    .restart local v0    # "zn":I
    .restart local v1    # "inShadow":Ljava/io/InputStream;
    :cond_12
    move-object/from16 v41, v1

    const/4 v5, 0x1

    .end local v1    # "inShadow":Ljava/io/InputStream;
    .restart local v41    # "inShadow":Ljava/io/InputStream;
    aget v1, v22, v0

    sub-int v1, v8, v1

    aget v14, v24, v1

    .line 599
    .end local v0    # "zn":I
    .end local v8    # "zvec":I
    shl-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v37

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    move-object/from16 v1, v41

    move-object/from16 v0, p0

    goto/16 :goto_9

    .line 655
    .end local v2    # "n":I
    .end local v37    # "selector":[B
    .end local v38    # "minLens":[I
    .end local v39    # "limit":[[I
    .end local v41    # "inShadow":Ljava/io/InputStream;
    .restart local v1    # "inShadow":Ljava/io/InputStream;
    .local v5, "selector":[B
    .local v8, "minLens":[I
    .local v9, "limit":[[I
    :cond_13
    move-object/from16 v41, v1

    move-object/from16 v37, v5

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move v5, v0

    .end local v1    # "inShadow":Ljava/io/InputStream;
    .end local v5    # "selector":[B
    .end local v8    # "minLens":[I
    .end local v9    # "limit":[[I
    .restart local v37    # "selector":[B
    .restart local v38    # "minLens":[I
    .restart local v39    # "limit":[[I
    .restart local v41    # "inShadow":Ljava/io/InputStream;
    const/4 v0, 0x0

    aget-char v1, v7, v0

    aget-byte v1, v6, v1

    .line 656
    .local v1, "ch":B
    and-int/lit16 v2, v1, 0xff

    aget v8, v4, v2

    add-int/lit8 v9, v15, 0x1

    add-int/2addr v8, v9

    aput v8, v4, v2

    .line 658
    :goto_f
    add-int/lit8 v2, v15, -0x1

    .local v2, "s":I
    if-ltz v15, :cond_14

    .line 659
    .end local v15    # "s":I
    add-int/lit8 v13, v13, 0x1

    aput-byte v1, v3, v13

    .line 658
    move v15, v2

    goto :goto_f

    .line 662
    :cond_14
    if-ge v13, v12, :cond_15

    .line 665
    .end local v1    # "ch":B
    .end local v2    # "s":I
    nop

    .line 593
    move v2, v14

    move/from16 v14, v27

    move/from16 v15, v28

    move-object/from16 v5, v37

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    move-object/from16 v1, v41

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 663
    .restart local v1    # "ch":B
    .restart local v2    # "s":I
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v5, "block overrun"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    .end local v25    # "minLens_zt":I
    .end local v27    # "eob":I
    .end local v28    # "bsLiveShadow":I
    .end local v37    # "selector":[B
    .end local v38    # "minLens":[I
    .end local v39    # "limit":[[I
    .end local v41    # "inShadow":Ljava/io/InputStream;
    .local v1, "inShadow":Ljava/io/InputStream;
    .local v2, "nextSym":I
    .restart local v5    # "selector":[B
    .restart local v8    # "minLens":[I
    .restart local v9    # "limit":[[I
    .local v14, "eob":I
    .local v15, "bsLiveShadow":I
    .local v21, "minLens_zt":I
    :cond_16
    move-object/from16 v41, v1

    move/from16 v30, v2

    move-object/from16 v37, v5

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move/from16 v27, v14

    move/from16 v28, v15

    .end local v1    # "inShadow":Ljava/io/InputStream;
    .end local v2    # "nextSym":I
    .end local v5    # "selector":[B
    .end local v8    # "minLens":[I
    .end local v9    # "limit":[[I
    .end local v14    # "eob":I
    .end local v15    # "bsLiveShadow":I
    .restart local v27    # "eob":I
    .restart local v28    # "bsLiveShadow":I
    .restart local v30    # "nextSym":I
    .restart local v37    # "selector":[B
    .restart local v38    # "minLens":[I
    .restart local v39    # "limit":[[I
    .restart local v41    # "inShadow":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 736
    iput v15, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 737
    .end local v28    # "bsLiveShadow":I
    .restart local v15    # "bsLiveShadow":I
    move/from16 v1, v26

    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 738
    .end local v26    # "bsBuffShadow":I
    .local v1, "bsBuffShadow":I
    return-void
.end method

.method private getAndMoveToFrontDecode0(I)I
    .locals 11
    .param p1, "groupNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 742
    .local v0, "inShadow":Ljava/io/InputStream;
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 743
    .local v1, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    aget-byte v2, v2, p1

    and-int/lit16 v2, v2, 0xff

    .line 744
    .local v2, "zt":I
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    aget-object v3, v3, v2

    .line 745
    .local v3, "limit_zt":[I
    iget-object v4, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    aget v4, v4, v2

    .line 746
    .local v4, "zn":I
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v5

    .line 747
    .local v5, "zvec":I
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 748
    .local v6, "bsLiveShadow":I
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 750
    .local v7, "bsBuffShadow":I
    :goto_0
    aget v8, v3, v4

    if-le v5, v8, :cond_2

    .line 751
    add-int/lit8 v4, v4, 0x1

    .line 752
    :goto_1
    const/4 v8, 0x1

    if-ge v6, v8, :cond_1

    .line 753
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 755
    .local v8, "thech":I
    if-ltz v8, :cond_0

    .line 756
    shl-int/lit8 v9, v7, 0x8

    or-int v7, v9, v8

    .line 757
    add-int/lit8 v6, v6, 0x8

    .line 758
    goto :goto_1

    .line 760
    :cond_0
    new-instance v9, Ljava/io/IOException;

    const-string v10, "unexpected end of stream"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 762
    .end local v8    # "thech":I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 763
    shl-int/lit8 v9, v5, 0x1

    shr-int v10, v7, v6

    and-int/2addr v8, v10

    or-int v5, v9, v8

    goto :goto_0

    .line 766
    :cond_2
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 767
    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsBuff:I

    .line 769
    iget-object v8, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    aget-object v8, v8, v2

    iget-object v9, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    aget-object v9, v9, v2

    aget v9, v9, v4

    sub-int v9, v5, v9

    aget v8, v8, v9

    return v8
.end method

.method private static hbCreateDecodeTables([I[I[I[CIII)V
    .locals 5
    .param p0, "limit"    # [I
    .param p1, "base"    # [I
    .param p2, "perm"    # [I
    .param p3, "length"    # [C
    .param p4, "minLen"    # I
    .param p5, "maxLen"    # I
    .param p6, "alphaSize"    # I

    .line 408
    move v0, p4

    .local v0, "i":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "pp":I
    .local v2, "i":I
    :goto_0
    if-gt v2, p5, :cond_2

    .line 409
    move v3, v0

    move v0, v1

    .local v0, "j":I
    .local v3, "pp":I
    :goto_1
    if-ge v0, p6, :cond_1

    .line 410
    aget-char v4, p3, v0

    if-ne v4, v2, :cond_0

    .line 411
    add-int/lit8 v4, v3, 0x1

    .local v4, "pp":I
    aput v0, p2, v3

    .line 409
    .end local v3    # "pp":I
    move v3, v4

    .end local v4    # "pp":I
    .restart local v3    # "pp":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 408
    .end local v0    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    .line 416
    .end local v2    # "i":I
    .end local v3    # "pp":I
    :cond_2
    const/16 v0, 0x17

    move v2, v0

    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_3

    .line 417
    aput v1, p1, v2

    .line 418
    aput v1, p0, v2

    goto :goto_2

    .line 421
    .end local v2    # "i":I
    :cond_3
    move v2, v1

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, p6, :cond_4

    .line 422
    aget-char v3, p3, v2

    add-int/lit8 v3, v3, 0x1

    aget v4, p1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, p1, v3

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 425
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "i":I
    aget v1, p1, v1

    .local v1, "b":I
    :goto_4
    if-ge v2, v0, :cond_5

    .line 426
    aget v3, p1, v2

    add-int/2addr v1, v3

    .line 427
    aput v1, p1, v2

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 430
    .end local v1    # "b":I
    .end local v2    # "i":I
    :cond_5
    move v0, p4

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "vec":I
    aget v2, p1, v0

    .local v2, "b":I
    :goto_5
    if-gt v0, p5, :cond_6

    .line 431
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    .line 432
    .local v3, "nb":I
    sub-int v4, v3, v2

    add-int/2addr v1, v4

    .line 433
    move v2, v3

    .line 434
    add-int/lit8 v4, v1, -0x1

    aput v4, p0, v0

    .line 435
    shl-int/lit8 v1, v1, 0x1

    .line 430
    .end local v3    # "nb":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 438
    .end local v0    # "i":I
    .end local v1    # "vec":I
    .end local v2    # "b":I
    :cond_6
    add-int/lit8 v0, p4, 0x1

    .restart local v0    # "i":I
    :goto_6
    if-gt v0, p5, :cond_7

    .line 439
    add-int/lit8 v1, v0, -0x1

    aget v1, p0, v1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    aget v2, p1, v0

    sub-int/2addr v1, v2

    aput v1, p1, v0

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 441
    .end local v0    # "i":I
    :cond_7
    return-void
.end method

.method private init(Z)Z
    .locals 6
    .param p1, "isFirstStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    .line 233
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 234
    .local v0, "magic0":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 235
    return v2

    .line 237
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 238
    .local v1, "magic1":I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 240
    .local v3, "magic2":I
    const/16 v4, 0x42

    if-ne v0, v4, :cond_3

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_3

    const/16 v4, 0x68

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 247
    .local v4, "blockSize":I
    const/16 v5, 0x31

    if-lt v4, v5, :cond_2

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2

    .line 251
    add-int/lit8 v5, v4, -0x30

    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 253
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsLive:I

    .line 254
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 256
    const/4 v2, 0x1

    return v2

    .line 248
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v5, "BZip2 block size is invalid"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .end local v4    # "blockSize":I
    :cond_3
    :goto_0
    new-instance v2, Ljava/io/IOException;

    if-eqz p1, :cond_4

    const-string v4, "Stream is not in the BZip2 format"

    goto :goto_1

    :cond_4
    const-string v4, "Garbage after a valid BZip2 stream"

    :goto_1
    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    .end local v0    # "magic0":I
    .end local v1    # "magic1":I
    .end local v3    # "magic2":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initBlock()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v0

    .line 270
    .local v0, "magic0":C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v1

    .line 271
    .local v1, "magic1":C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v2

    .line 272
    .local v2, "magic2":C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v3

    .line 273
    .local v3, "magic3":C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v4

    .line 274
    .local v4, "magic4":C
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte()C

    move-result v5

    .line 277
    .local v5, "magic5":C
    const/16 v6, 0x17

    if-ne v0, v6, :cond_2

    const/16 v6, 0x72

    if-ne v1, v6, :cond_2

    const/16 v6, 0x45

    if-ne v2, v6, :cond_2

    const/16 v6, 0x38

    if-ne v3, v6, :cond_2

    const/16 v6, 0x50

    if-ne v4, v6, :cond_2

    const/16 v6, 0x90

    if-eq v5, v6, :cond_1

    .line 279
    goto :goto_0

    .line 285
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->complete()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    return-void

    .line 290
    :cond_2
    :goto_0
    const/16 v6, 0x31

    const/4 v7, 0x0

    if-ne v0, v6, :cond_5

    const/16 v6, 0x41

    if-ne v1, v6, :cond_5

    const/16 v6, 0x59

    if-ne v2, v6, :cond_5

    const/16 v8, 0x26

    if-ne v3, v8, :cond_5

    const/16 v8, 0x53

    if-ne v4, v8, :cond_5

    if-ne v5, v6, :cond_5

    .line 300
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt()I

    move-result v6

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    .line 301
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v8

    if-ne v8, v6, :cond_3

    move v7, v6

    nop

    :cond_3
    iput-boolean v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    .line 307
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v7, :cond_4

    .line 308
    new-instance v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    invoke-direct {v7, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;-><init>(I)V

    iput-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 312
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode()V

    .line 314
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v7}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->initialiseCRC()V

    .line 315
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 316
    return-void

    .line 297
    :cond_5
    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 298
    new-instance v6, Ljava/io/IOException;

    const-string v7, "bad block header"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private makeMaps()V
    .locals 6

    .line 183
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 184
    .local v0, "inUse":[Z
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 186
    .local v1, "seqToUnseq":[B
    const/4 v2, 0x0

    .line 188
    .local v2, "nInUseShadow":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x100

    if-ge v3, v4, :cond_1

    .line 189
    aget-boolean v4, v0, v3

    if-eqz v4, :cond_0

    .line 190
    add-int/lit8 v4, v2, 0x1

    .local v4, "nInUseShadow":I
    int-to-byte v5, v3

    aput-byte v5, v1, v2

    .line 188
    .end local v2    # "nInUseShadow":I
    move v2, v4

    .end local v4    # "nInUseShadow":I
    .restart local v2    # "nInUseShadow":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    .end local v3    # "i":I
    :cond_1
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    .line 195
    return-void
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 992
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ge p1, v1, :cond_0

    .line 993
    return v0

    .line 996
    :cond_0
    aget-byte v1, p0, v0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_1

    .line 997
    return v0

    .line 1000
    :cond_1
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_2

    .line 1001
    return v0

    .line 1004
    :cond_2
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x68

    if-eq v2, v3, :cond_3

    .line 1005
    return v0

    .line 1008
    :cond_3
    return v1
.end method

.method private read0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 221
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    move-result v0

    return v0

    .line 218
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartB()I

    move-result v0

    return v0

    .line 215
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 212
    :pswitch_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    move-result v0

    return v0

    .line 209
    :pswitch_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartB()I

    move-result v0

    return v0

    .line 206
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 203
    :pswitch_6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result v0

    return v0

    .line 200
    :pswitch_7
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private recvDecodingTables()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 445
    .local v1, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 446
    .local v2, "inUse":[Z
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->recvDecodingTables_pos:[B

    .line 447
    .local v3, "pos":[B
    iget-object v4, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 448
    .local v4, "selector":[B
    iget-object v5, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selectorMtf:[B

    .line 450
    .local v5, "selectorMtf":[B
    const/4 v6, 0x0

    .line 453
    .local v6, "inUse16":I
    const/4 v7, 0x0

    move v8, v6

    move v6, v7

    .local v6, "i":I
    .local v8, "inUse16":I
    :goto_0
    const/16 v9, 0x10

    const/4 v10, 0x1

    if-ge v6, v9, :cond_1

    .line 454
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 455
    shl-int v9, v10, v6

    or-int/2addr v8, v9

    .line 453
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 459
    .end local v6    # "i":I
    :cond_1
    const/16 v6, 0x100

    .restart local v6    # "i":I
    :goto_1
    const/4 v11, -0x1

    add-int/2addr v6, v11

    if-ltz v6, :cond_2

    .line 460
    aput-boolean v7, v2, v6

    goto :goto_1

    .line 463
    .end local v6    # "i":I
    :cond_2
    move v6, v7

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v9, :cond_5

    .line 464
    shl-int v12, v10, v6

    and-int/2addr v12, v8

    if-eqz v12, :cond_4

    .line 465
    shl-int/lit8 v12, v6, 0x4

    .line 466
    .local v12, "i16":I
    move v13, v7

    .local v13, "j":I
    :goto_3
    if-ge v13, v9, :cond_4

    .line 467
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 468
    add-int v14, v12, v13

    aput-boolean v10, v2, v14

    .line 466
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 463
    .end local v12    # "i16":I
    .end local v13    # "j":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 474
    .end local v6    # "i":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->makeMaps()V

    .line 475
    iget v6, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    add-int/lit8 v6, v6, 0x2

    .line 478
    .local v6, "alphaSize":I
    const/4 v9, 0x3

    invoke-direct {v0, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v9

    .line 479
    .local v9, "nGroups":I
    const/16 v12, 0xf

    invoke-direct {v0, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v12

    .line 481
    .local v12, "nSelectors":I
    move v13, v7

    .local v13, "i":I
    :goto_4
    if-ge v13, v12, :cond_7

    .line 482
    move v14, v7

    .line 483
    .local v14, "j":I
    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 484
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 486
    :cond_6
    int-to-byte v15, v14

    aput-byte v15, v5, v13

    .line 481
    .end local v14    # "j":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 490
    .end local v13    # "i":I
    :cond_7
    move v13, v9

    .local v13, "v":I
    :goto_6
    add-int/2addr v13, v11

    if-ltz v13, :cond_8

    .line 491
    int-to-byte v14, v13

    aput-byte v14, v3, v13

    goto :goto_6

    .line 494
    .end local v13    # "v":I
    :cond_8
    move v13, v7

    .local v13, "i":I
    :goto_7
    if-ge v13, v12, :cond_a

    .line 495
    aget-byte v14, v5, v13

    and-int/lit16 v14, v14, 0xff

    .line 496
    .local v14, "v":I
    aget-byte v15, v3, v14

    .line 497
    .local v15, "tmp":B
    :goto_8
    if-lez v14, :cond_9

    .line 499
    add-int/lit8 v16, v14, -0x1

    aget-byte v16, v3, v16

    aput-byte v16, v3, v14

    .line 500
    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    .line 502
    :cond_9
    aput-byte v15, v3, v7

    .line 503
    aput-byte v15, v4, v13

    .line 494
    .end local v14    # "v":I
    .end local v15    # "tmp":B
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 506
    .end local v13    # "i":I
    :cond_a
    iget-object v13, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 509
    .local v13, "len":[[C
    move v14, v7

    .local v14, "t":I
    :goto_9
    if-ge v14, v9, :cond_e

    .line 510
    const/4 v15, 0x5

    invoke-direct {v0, v15}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(I)I

    move-result v15

    .line 511
    .local v15, "curr":I
    aget-object v16, v13, v14

    .line 512
    .local v16, "len_t":[C
    move/from16 v17, v15

    move v15, v7

    .local v15, "i":I
    .local v17, "curr":I
    :goto_a
    if-ge v15, v6, :cond_d

    .line 513
    move/from16 v7, v17

    .end local v17    # "curr":I
    .local v7, "curr":I
    :goto_b
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 514
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit()Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v17, v11

    goto :goto_c

    :cond_b
    move/from16 v17, v10

    :goto_c
    add-int v7, v7, v17

    goto :goto_b

    .line 516
    :cond_c
    int-to-char v10, v7

    aput-char v10, v16, v15

    .line 512
    add-int/lit8 v15, v15, 0x1

    move/from16 v17, v7

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_a

    .line 509
    .end local v7    # "curr":I
    .end local v15    # "i":I
    .end local v16    # "len_t":[C
    :cond_d
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_9

    .line 521
    .end local v14    # "t":I
    :cond_e
    invoke-direct {v0, v6, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->createHuffmanDecodingTables(II)V

    .line 522
    return-void
.end method

.method private setupBlock()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 773
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v0, :cond_0

    goto :goto_2

    .line 777
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->cftab:[I

    .line 778
    .local v0, "cftab":[I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->initTT(I)[I

    move-result-object v1

    .line 779
    .local v1, "tt":[I
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 780
    .local v2, "ll8":[B
    const/4 v4, 0x0

    aput v4, v0, v4

    .line 781
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v5, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    const/16 v6, 0x100

    invoke-static {v5, v4, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    const/4 v3, 0x1

    .local v3, "i":I
    aget v5, v0, v4

    .local v5, "c":I
    :goto_0
    if-gt v3, v6, :cond_1

    .line 784
    aget v7, v0, v3

    add-int/2addr v5, v7

    .line 785
    aput v5, v0, v3

    .line 783
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 788
    .end local v3    # "i":I
    .end local v5    # "c":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    iget v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .local v5, "lastShadow":I
    :goto_1
    if-gt v3, v5, :cond_2

    .line 789
    aget-byte v7, v2, v3

    and-int/lit16 v7, v7, 0xff

    aget v8, v0, v7

    add-int/lit8 v9, v8, 0x1

    aput v9, v0, v7

    aput v3, v1, v8

    .line 788
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 792
    .end local v3    # "i":I
    .end local v5    # "lastShadow":I
    :cond_2
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    if-ltz v3, :cond_4

    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    array-length v5, v1

    if-ge v3, v5, :cond_4

    .line 796
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    aget v3, v1, v3

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 797
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 798
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 799
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 801
    iget-boolean v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    if-eqz v3, :cond_3

    .line 802
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 803
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 804
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v3

    return v3

    .line 806
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v3

    return v3

    .line 793
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "stream corrupted"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 774
    .end local v0    # "cftab":[I
    .end local v1    # "tt":[I
    .end local v2    # "ll8":[B
    :cond_5
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method private setupNoRandPartA()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v0, v1, :cond_0

    .line 835
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 836
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 837
    .local v0, "su_ch2Shadow":I
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 838
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 839
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 840
    const/4 v1, 0x6

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 841
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 842
    return v0

    .line 844
    .end local v0    # "su_ch2Shadow":I
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 845
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 846
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 847
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result v0

    return v0
.end method

.method private setupNoRandPartB()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 891
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 892
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 893
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0

    .line 894
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 895
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 896
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 897
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 898
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    move-result v0

    return v0

    .line 900
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0
.end method

.method private setupNoRandPartC()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 905
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v0, v1, :cond_0

    .line 906
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 907
    .local v0, "su_ch2Shadow":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 908
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 909
    const/4 v1, 0x7

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 910
    return v0

    .line 912
    .end local v0    # "su_ch2Shadow":I
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 913
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 914
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0
.end method

.method private setupRandPartA()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 810
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v0, v1, :cond_3

    .line 811
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 812
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 813
    .local v0, "su_ch2Shadow":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 814
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 815
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 816
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v1, v4, :cond_1

    .line 817
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    goto :goto_0

    .line 820
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 822
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v1, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    xor-int v1, v0, v2

    move v0, v1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 823
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 824
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 825
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 826
    return v0

    .line 828
    .end local v0    # "su_ch2Shadow":I
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 829
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 830
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result v0

    return v0
.end method

.method private setupRandPartB()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 852
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 853
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 854
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v0

    return v0

    .line 855
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    .line 856
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 857
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 858
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 859
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 860
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v0, v4, :cond_2

    .line 861
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    goto :goto_0

    .line 864
    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 866
    :cond_2
    :goto_0
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 867
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 868
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v0, v3, :cond_3

    .line 869
    iget-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    xor-int/2addr v0, v3

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 871
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    move-result v0

    return v0

    .line 873
    :cond_4
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 874
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v0

    return v0
.end method

.method private setupRandPartC()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 879
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v0, v1, :cond_0

    .line 880
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 881
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 882
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    return v0

    .line 884
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 885
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 886
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 887
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 354
    .local v0, "inShadow":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 356
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v2, :cond_0

    .line 357
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 361
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    .line 362
    goto :goto_0

    .line 360
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 361
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    throw v2

    .line 364
    :cond_1
    :goto_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v0

    .line 139
    .local v0, "r":I
    if-gez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->count(I)V

    .line 140
    return v0

    .line 142
    .end local v0    # "r":I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "dest"    # [B
    .param p2, "offs"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    if-ltz p2, :cond_6

    .line 156
    if-ltz p3, :cond_5

    .line 159
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    .line 163
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 166
    if-nez p3, :cond_0

    .line 167
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_0
    add-int v0, p2, p3

    .line 171
    .local v0, "hi":I
    move v1, p2

    .line 173
    .local v1, "destOffs":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v2

    move v3, v2

    .local v3, "b":I
    if-ltz v2, :cond_1

    .line 174
    add-int/lit8 v2, v1, 0x1

    .local v2, "destOffs":I
    int-to-byte v4, v3

    aput-byte v4, p1, v1

    .line 175
    .end local v1    # "destOffs":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->count(I)V

    .line 171
    move v1, v2

    goto :goto_0

    .line 178
    .end local v2    # "destOffs":I
    .end local v3    # "b":I
    .restart local v1    # "destOffs":I
    :cond_1
    if-ne v1, p2, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    sub-int v2, v1, p2

    .line 179
    .local v2, "c":I
    :goto_1
    return v2

    .line 164
    .end local v0    # "hi":I
    .end local v1    # "destOffs":I
    .end local v2    # "c":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") + len("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") > dest.length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") < 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") < 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
