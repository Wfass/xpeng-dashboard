.class public Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;
.super Ljava/lang/Object;
.source "OggVorbisTagWriter.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

.field private tc:Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.ogg"

    .line 47
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->tc:Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;

    .line 50
    new-instance v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    return-void
.end method

.method private calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x16

    .line 153
    invoke-virtual {p1, v1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 156
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Lorg/jaudiotagger/audio/ogg/util/OggCRCFactory;->computeCRC([B)[B

    move-result-object v1

    .line 157
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x16

    .line 159
    aget-byte v3, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method private createSegmentTable(IILjava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)[B"
        }
    .end annotation

    .line 521
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create SegmentTable CommentLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":SetupHeaderLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 532
    invoke-direct {p0, p1, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x1

    .line 539
    invoke-direct {p0, p1, v2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p1

    .line 543
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 545
    invoke-direct {p0, p2, v2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p2

    goto :goto_0

    .line 550
    :cond_1
    invoke-direct {p0, p2, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p2

    .line 553
    :goto_0
    sget-object v2, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " segments for header"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 554
    sget-object v2, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " segments for setup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 558
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 559
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 560
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 564
    sget-object p1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating segments for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packets"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 565
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 567
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p2

    invoke-direct {p0, p2, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p2

    .line 568
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 576
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 574
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create segment table:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private createSegmentTable(ILjava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)[B"
        }
    .end annotation

    .line 591
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    .line 597
    invoke-direct {p0, p1, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p1

    .line 601
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 602
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 606
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 608
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p2

    .line 609
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 615
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create segment table:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private createSegments(IZ)[B
    .locals 4

    .line 638
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Segments for length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":QuitStream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 642
    new-array p1, v1, [B

    aput-byte v0, p1, v0

    return-object p1

    .line 647
    :cond_0
    div-int/lit16 v2, p1, 0xff

    rem-int/lit16 v3, p1, 0xff

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    add-int/2addr v2, p2

    new-array p2, v2, [B

    .line 649
    :goto_1
    array-length v2, p2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    const/4 v2, -0x1

    .line 651
    aput-byte v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 653
    :cond_2
    array-length v2, p2

    sub-int/2addr v2, v1

    mul-int/lit16 v0, v0, 0xff

    sub-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, p2, v2

    return-object p2
.end method

.method private isCommentAndSetupHeaderFitsOnASinglePage(IILjava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0xff

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    .line 674
    :cond_0
    div-int/lit16 v2, p1, 0xff

    add-int/2addr v2, v1

    .line 675
    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    add-int/lit8 p1, v2, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 680
    :goto_0
    sget-object v2, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Require:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " segments for comment"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    if-nez p2, :cond_2

    add-int/2addr p1, v1

    goto :goto_1

    .line 688
    :cond_2
    div-int/lit16 v2, p2, 0xff

    add-int/2addr v2, v1

    add-int/2addr p1, v2

    .line 689
    rem-int/2addr p2, v0

    if-nez p2, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 694
    :cond_3
    :goto_1
    sget-object p2, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " segments for comment plus setup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 696
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 698
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    if-nez v2, :cond_5

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 704
    :cond_5
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result v2

    div-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/2addr p1, v2

    .line 705
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p3

    rem-int/2addr p3, v0

    if-nez p3, :cond_4

    goto :goto_3

    .line 712
    :cond_6
    sget-object p2, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total No Of Segment If New Comment And Header Put On One Page:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    if-gt p1, v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method private replacePagesAndRenumberPageSeqs(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;ILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p4

    move-object/from16 v7, p5

    .line 296
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageSequence()I

    move-result v1

    const v2, 0xfe01

    .line 299
    div-int v3, p2, v2

    .line 300
    sget-object v4, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Comment requires:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " complete pages"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/16 v4, 0x1a

    const/4 v8, 0x5

    const/16 v9, 0x12

    const/4 v5, 0x0

    if-lez v3, :cond_2

    move v10, v1

    move v1, v5

    move v11, v1

    :goto_0
    if-ge v1, v3, :cond_3

    .line 309
    invoke-direct {v6, v2, v5}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v12

    .line 310
    array-length v13, v12

    add-int/lit8 v13, v13, 0x1b

    add-int/2addr v13, v2

    .line 311
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 312
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 315
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v14

    invoke-virtual {v13, v14, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 317
    array-length v14, v12

    int-to-byte v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 319
    array-length v14, v12

    move v15, v5

    :goto_1
    if-ge v15, v14, :cond_0

    aget-byte v4, v12, v15

    .line 321
    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v15, v15, 0x1

    const/16 v4, 0x1a

    goto :goto_1

    .line 324
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 325
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 326
    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 329
    invoke-virtual {v13, v9, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x1

    if-eqz v1, :cond_1

    .line 335
    sget-object v4, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->getFileValue()B

    move-result v4

    invoke-virtual {v13, v8, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 337
    :cond_1
    invoke-direct {v6, v13}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 338
    invoke-virtual/range {p6 .. p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int/2addr v11, v2

    .line 340
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x1a

    goto :goto_0

    :cond_2
    move v10, v1

    move v11, v5

    .line 344
    :cond_3
    rem-int v2, p2, v2

    .line 345
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Last comment packet size:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v2, v1, v4}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->isCommentAndSetupHeaderFitsOnASinglePage(IILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 350
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v4, "WriteOgg Type 3"

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 354
    invoke-direct {v6, v2, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v1

    .line 355
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1b

    add-int/2addr v2, v4

    .line 356
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 357
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 358
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v4

    const/16 v12, 0x1a

    invoke-virtual {v2, v4, v5, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 359
    array-length v4, v1

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 360
    array-length v4, v1

    move v12, v5

    :goto_2
    if-ge v12, v4, :cond_4

    aget-byte v13, v1, v12

    .line 362
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 364
    :cond_4
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 365
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 366
    invoke-virtual {v2, v9, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    if-lez v3, :cond_5

    .line 370
    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->getFileValue()B

    move-result v0

    invoke-virtual {v2, v8, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 372
    :cond_5
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing Last Comment Page "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    .line 374
    invoke-direct {v6, v2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 375
    invoke-virtual/range {p6 .. p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 380
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegmentTable(ILjava/util/List;)[B

    move-result-object v0

    .line 381
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1b

    .line 382
    iget-object v2, v6, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12, v7}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B

    move-result-object v2

    .line 383
    array-length v4, v2

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 384
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 385
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v4

    const/16 v8, 0x1a

    invoke-virtual {v1, v4, v5, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 386
    array-length v4, v0

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 387
    array-length v4, v0

    :goto_3
    if-ge v5, v4, :cond_6

    aget-byte v8, v0, v5

    .line 389
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 391
    :cond_6
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 392
    invoke-virtual {v1, v9, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 394
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing Setup Header and packets Page "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 396
    invoke-direct {v6, v1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 397
    invoke-virtual/range {p6 .. p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_4

    .line 403
    :cond_7
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "WriteOgg Type 4"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketDataSize()I

    move-result v3

    add-int/2addr v3, v1

    .line 407
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 408
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    .line 409
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->startCreateBasicSecondPage(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 416
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 420
    iget-object v1, v6, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v7}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B

    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 424
    invoke-virtual {v0, v9, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 427
    sget-object v1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->getFileValue()B

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 428
    invoke-direct {v6, v0}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 429
    invoke-virtual/range {p6 .. p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :goto_4
    move-object/from16 v0, p6

    .line 433
    invoke-virtual {v6, v10, v7, v0}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->writeRemainingPages(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method private replaceSecondPageAndRenumberPageSeqs(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 2

    .line 266
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "WriteOgg Type 2"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 267
    invoke-direct/range {p0 .. p5}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->startCreateBasicSecondPage(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 270
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageSequence()I

    move-result p3

    .line 271
    iget-object p4, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1, p6}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B

    move-result-object p1

    .line 272
    sget-object p4, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 275
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 276
    invoke-virtual {p7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 277
    invoke-virtual {p0, p3, p6, p7}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->writeRemainingPages(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method private replaceSecondPageOnly(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;JLjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 2

    .line 236
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "WriteOgg Type 1"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 237
    invoke-direct/range {p0 .. p5}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->startCreateBasicSecondPage(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 239
    invoke-virtual {p8, p6, p7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 241
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getCommentHeaderSize()I

    move-result p1

    invoke-virtual {p8, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 243
    invoke-virtual {p8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 244
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 245
    invoke-virtual {p9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 246
    invoke-virtual {p9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p3

    invoke-virtual {p8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p4

    invoke-virtual {p9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p5

    invoke-virtual {p8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p1

    invoke-virtual {p8}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p7

    sub-long p7, p1, p7

    invoke-virtual/range {p3 .. p8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    return-void
.end method

.method private startCreateBasicSecondPage(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3

    .line 184
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "WriteOgg Type 1"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->createSegmentTable(IILjava/util/List;)[B

    move-result-object p1

    .line 186
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1b

    .line 187
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New second page header length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 188
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No of segments:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    add-int/2addr p3, p2

    .line 190
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 191
    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 194
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object p3

    const/4 p4, 0x0

    const/16 v0, 0x1a

    invoke-virtual {p2, p3, p4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 197
    array-length p3, p1

    int-to-byte p3, p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 200
    array-length p3, p1

    :goto_0
    if-ge p4, p3, :cond_0

    aget-byte v0, p1, p4

    .line 202
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p2, p5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p2
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 67
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 68
    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void

    .line 60
    :catch_0
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 12

    .line 73
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Starting to write file:"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Read 1st Page:identificationHeader:"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 77
    invoke-static {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getStartByte()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 81
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    int-to-long v7, v1

    const-wide/16 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 82
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v1, v0

    invoke-virtual {p3, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 83
    sget-object v0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Written identificationHeader:"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 86
    invoke-static {p2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v0

    .line 89
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    .line 90
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read 2nd Page:comment and setup and possibly audio:Header finishes at file position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 93
    invoke-virtual {p2, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 94
    iget-object v1, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;

    invoke-virtual {v1, p2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader;->readOggVorbisHeaderSizes(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;

    move-result-object v3

    .line 97
    iget-object v1, p0, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->tc:Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/audio/ogg/OggVorbisCommentTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    .line 103
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketDataSize()I

    move-result v2

    add-int v5, v1, v2

    .line 104
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old 2nd Page no of packets: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 105
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old 2nd Page size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old last packet incomplete: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 107
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setup Header Size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 108
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extra Packets: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extra Packet Data Size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketDataSize()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 110
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old comment: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getCommentHeaderSize()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 111
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New comment: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New Page Data Size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v1

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v4, v1, v2}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->isCommentAndSetupHeaderFitsOnASinglePage(IILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v1

    const v2, 0xfe01

    if-ge v1, v2, :cond_2

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 127
    :cond_1
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Header and Setup remain on single page:"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    move-object v10, p2

    move-object v11, p3

    .line 128
    invoke-direct/range {v2 .. v11}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->replaceSecondPageOnly(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;JLjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    goto :goto_0

    .line 133
    :cond_2
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Header and Setup now on single page:"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    .line 134
    invoke-direct/range {v2 .. v9}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->replaceSecondPageAndRenumberPageSeqs(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    goto :goto_0

    .line 140
    :cond_3
    sget-object v1, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Header and Setup with shift audio:"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v2, p0

    move-object v5, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .line 141
    invoke-direct/range {v2 .. v8}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->replacePagesAndRenumberPageSeqs(Lorg/jaudiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;ILorg/jaudiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    :goto_0
    return-void
.end method

.method public writeRemainingPages(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 10

    .line 448
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 449
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 452
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 453
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 456
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 457
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 459
    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 464
    :try_start_0
    invoke-static {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v6
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 484
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 485
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 486
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 487
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 488
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/16 v8, 0x12

    add-int/lit8 p1, p1, 0x1

    .line 489
    invoke-virtual {v7, v8, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 490
    invoke-direct {p0, v7}, Lorg/jaudiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    .line 491
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v6

    add-int/2addr v8, v6

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 493
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 494
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 469
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sget-object v7, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    array-length v7, v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 471
    invoke-static {v4}, Lorg/jaudiotagger/audio/generic/Utils;->readThreeBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TAG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 473
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    int-to-long v6, p1

    goto :goto_1

    .line 478
    :cond_0
    throw p1

    :cond_1
    const-wide/16 v6, 0x0

    .line 497
    :goto_1
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 498
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 500
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    add-long/2addr v8, v6

    sub-long/2addr v8, v2

    cmp-long p1, v4, v8

    if-nez p1, :cond_2

    return-void

    .line 502
    :cond_2
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File written counts don\'t match, file not written:origAudioLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ":newAudioLength:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p2

    add-long/2addr p2, v6

    sub-long/2addr p2, v2

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ":bytesDiscarded:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
