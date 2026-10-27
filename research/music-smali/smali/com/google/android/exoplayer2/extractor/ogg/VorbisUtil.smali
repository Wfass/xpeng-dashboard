.class public final Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;,
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;,
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;,
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VorbisUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iLog(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .locals 2

    long-to-double p0, p0

    long-to-double p2, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p2

    .line 482
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/metadata/Metadata;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 164
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 165
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "="

    .line 166
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 167
    array-length v5, v4

    const/4 v6, 0x2

    const-string v7, "VorbisUtil"

    if-eq v5, v6, :cond_0

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse Vorbis comment: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 172
    :cond_0
    aget-object v3, v4, v1

    const-string v5, "METADATA_BLOCK_PICTURE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 177
    :try_start_0
    aget-object v3, v4, v5

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 178
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->fromPictureBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Failed to parse vorbis picture"

    .line 180
    invoke-static {v7, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 183
    :cond_1
    new-instance v3, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;

    aget-object v6, v4, v1

    aget-object v4, v4, v5

    invoke-direct {v3, v6, v4}, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_2
    return-object p0
.end method

.method private static readBook(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
    .locals 14

    const/16 v0, 0x18

    .line 421
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    if-ne v1, v2, :cond_a

    const/16 v1, 0x10

    .line 425
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v3

    .line 426
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 427
    new-array v5, v4, [J

    .line 429
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x5

    const/4 v8, 0x1

    if-nez v7, :cond_2

    .line 431
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v9

    .line 432
    :goto_0
    array-length v10, v5

    if-ge v2, v10, :cond_4

    if-eqz v9, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 435
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v2

    goto :goto_1

    .line 437
    :cond_0
    aput-wide v0, v5, v2

    goto :goto_1

    .line 440
    :cond_1
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v8

    move v9, v6

    move v6, v2

    .line 445
    :goto_2
    array-length v10, v5

    if-ge v6, v10, :cond_4

    sub-int v10, v4, v6

    .line 446
    invoke-static {v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    move v11, v6

    move v6, v2

    :goto_3
    if-ge v6, v10, :cond_3

    .line 447
    array-length v12, v5

    if-ge v11, v12, :cond_3

    int-to-long v12, v9

    .line 448
    aput-wide v12, v5, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v6, v11

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    .line 454
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v9, 0x2

    if-gt v6, v9, :cond_9

    if-eq v6, v8, :cond_5

    if-ne v6, v9, :cond_8

    :cond_5
    const/16 v9, 0x20

    .line 458
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 459
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 460
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v8

    .line 461
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    if-ne v6, v8, :cond_6

    if-eqz v3, :cond_7

    int-to-long v0, v4

    int-to-long v8, v3

    .line 465
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v0

    goto :goto_4

    :cond_6
    mul-int v0, v4, v3

    int-to-long v0, v0

    :cond_7
    :goto_4
    int-to-long v8, v2

    mul-long/2addr v0, v8

    long-to-int v0, v0

    .line 473
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 475
    :cond_8
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;-><init>(II[JIZ)V

    return-object p0

    .line 456
    :cond_9
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lookup type greater than 2 not decodable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 422
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readFloors(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .locals 14

    const/4 v0, 0x6

    .line 367
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_9

    const/16 v5, 0x10

    .line 369
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v6, :cond_7

    if-ne v6, v2, :cond_6

    const/4 v5, 0x5

    .line 383
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, -0x1

    .line 385
    new-array v9, v5, [I

    move v10, v6

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_1

    .line 387
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v11

    aput v11, v9, v6

    .line 388
    aget v11, v9, v6

    if-le v11, v10, :cond_0

    .line 389
    aget v10, v9, v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 392
    new-array v6, v10, [I

    move v10, v3

    .line 393
    :goto_2
    array-length v11, v6

    const/4 v12, 0x2

    if-ge v10, v11, :cond_4

    const/4 v11, 0x3

    .line 394
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v2

    aput v11, v6, v10

    .line 395
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v11

    if-lez v11, :cond_2

    .line 397
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    :cond_2
    move v12, v3

    :goto_3
    shl-int v13, v2, v11

    if-ge v12, v13, :cond_3

    .line 400
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 403
    :cond_4
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 404
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v7

    move v8, v3

    move v10, v8

    move v11, v10

    :goto_4
    if-ge v8, v5, :cond_8

    .line 407
    aget v12, v9, v8

    .line 408
    aget v12, v6, v12

    add-int/2addr v10, v12

    :goto_5
    if-ge v11, v10, :cond_5

    .line 410
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 415
    :cond_6
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "floor type greater than 1 not decodable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 372
    :cond_7
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 373
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 374
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 375
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 376
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 377
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    move v6, v3

    :goto_6
    if-ge v6, v5, :cond_8

    .line 379
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private static readMappings(ILcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .locals 11

    const/4 v0, 0x6

    .line 293
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    const/16 v4, 0x10

    .line 295
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapping type other than 0 not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    .line 300
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 305
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_2

    .line 306
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v1

    move v8, v2

    :goto_2
    if-ge v8, v6, :cond_2

    add-int/lit8 v9, p0, -0x1

    .line 308
    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 309
    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    .line 314
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    if-nez v6, :cond_5

    if-le v4, v1, :cond_3

    move v6, v2

    :goto_3
    if-ge v6, p0, :cond_3

    .line 319
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_4
    if-ge v5, v4, :cond_4

    .line 323
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 324
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 325
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method private static readModes(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    .locals 8

    const/4 v0, 0x6

    .line 279
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 280
    new-array v1, v0, [Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v3

    const/16 v4, 0x10

    .line 283
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 284
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    const/16 v6, 0x8

    .line 285
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 286
    new-instance v7, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    invoke-direct {v7, v3, v5, v4, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static readResidues(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .locals 12

    const/4 v0, 0x6

    .line 335
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_6

    const/16 v5, 0x10

    .line 337
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_5

    const/16 v5, 0x18

    .line 341
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 342
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 343
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 344
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x8

    .line 345
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 346
    new-array v7, v5, [I

    move v8, v3

    :goto_1
    if-ge v8, v5, :cond_1

    const/4 v9, 0x3

    .line 349
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v9

    .line 350
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    .line 351
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    goto :goto_2

    :cond_0
    move v10, v3

    :goto_2
    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 353
    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_3
    if-ge v8, v5, :cond_4

    move v9, v3

    :goto_4
    if-ge v9, v6, :cond_3

    .line 357
    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 358
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 339
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "residueType greater than 2 is not decodable"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method public static readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-static {p0, v0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    move-result-object p0

    return-object p0
.end method

.method public static readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 126
    invoke-static {p1, p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    long-to-int p1, v1

    const/16 v1, 0xb

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 135
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    long-to-int v4, v2

    .line 136
    new-array v4, v4, [Ljava/lang/String;

    add-int/lit8 v1, v1, 0x4

    :goto_0
    int-to-long v5, v0

    cmp-long v5, v5, v2

    if-gez v5, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v1, v1, 0x4

    .line 141
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 142
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    const-string p1, "framing bit expected to be set"

    .line 145
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 149
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0
.end method

.method public static readVorbisIdentificationHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 70
    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v7

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v10

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v11

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v12, v3, 0xf

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 80
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v12, v12

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    int-to-double v1, v3

    .line 81
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-lez v2, :cond_0

    move v14, v3

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 85
    :goto_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    .line 87
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    move-object v3, v0

    move v13, v1

    invoke-direct/range {v3 .. v15}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;-><init>(JIJIIIIIZ[B)V

    return-object v0
.end method

.method public static readVorbisModes(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 250
    invoke-static {v1, p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 252
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 254
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;-><init>([B)V

    .line 255
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    move p0, v0

    :goto_0
    if-ge p0, v1, :cond_0

    .line 258
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readBook(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    .line 261
    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_1
    if-ge v0, p0, :cond_2

    const/16 v1, 0x10

    .line 263
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "placeholder of time domain transforms not zeroed out"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readFloors(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V

    .line 268
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readResidues(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V

    .line 269
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readMappings(ILcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V

    .line 271
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readModes(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    move-result-object p0

    .line 272
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    .line 273
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "framing bit after modes not set as expected"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z
    .locals 3

    .line 204
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    if-eqz p2, :cond_0

    return v1

    .line 208
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "too short header: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p0, :cond_3

    if-eqz p2, :cond_2

    return v1

    .line 216
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "expected header type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_5

    .line 221
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_5

    .line 222
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_5

    .line 223
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_5

    .line 224
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_5

    .line 225
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    return v1

    .line 229
    :cond_6
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "expected characters \'vorbis\'"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
