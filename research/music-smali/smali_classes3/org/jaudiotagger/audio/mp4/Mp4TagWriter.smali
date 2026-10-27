.class public Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;
.super Ljava/lang/Object;
.source "Mp4TagWriter.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private tc:Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.tag.mp4"

    .line 104
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->tc:Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;

    return-void
.end method

.method private adjustFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;II)V
    .locals 3

    add-int/lit8 v0, p3, -0x8

    if-lt v0, p4, :cond_0

    .line 1201
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Writing:Option 6;Larger Size can use top free atom"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1202
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    sub-int/2addr v0, p4

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 1203
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p4

    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1204
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1207
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :cond_0
    if-ne p3, p4, :cond_1

    .line 1213
    sget-object p2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string p4, "Writing:Option 7;Larger Size uses top free atom including header"

    invoke-virtual {p2, p4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_1
    :goto_0
    return-void
.end method

.method private adjustSizeOfMoovHeader(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 6

    .line 175
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    const-wide/16 v0, 0x8

    if-eqz p4, :cond_0

    .line 181
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p4, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 182
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_0
    if-eqz p5, :cond_1

    .line 189
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p5, p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 190
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide p3

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    sub-long/2addr p3, v2

    sub-long/2addr p3, v0

    long-to-int p1, p3

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method private adjustStcosIfNoSuitableTopLevelAtom(IZILjava/util/List;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            ")Z"
        }
    .end annotation

    .line 1245
    invoke-virtual {p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide p5

    cmp-long p5, v0, p5

    if-lez p5, :cond_2

    if-eqz p2, :cond_0

    add-int/lit8 p2, p1, -0x8

    if-ge p2, p3, :cond_2

    if-eq p1, p3, :cond_2

    .line 1254
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    .line 1256
    invoke-virtual {p2, p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private checkFileWrittenCorrectly(Ljava/io/RandomAccessFile;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;)V"
        }
    .end annotation

    .line 763
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Checking file has been written correctly"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 769
    :try_start_0
    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    move-object/from16 v2, p1

    :try_start_1
    invoke-direct {v0, v2, v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V

    .line 772
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMdatNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 777
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 783
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getUdtaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 790
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 797
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getStcos()Ljava/util/List;

    move-result-object v0

    .line 798
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    move v4, v1

    move v5, v4

    .line 810
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 812
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    move-object/from16 v8, p4

    .line 813
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    .line 814
    sget-object v10, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stco:Original First Offset"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 815
    sget-object v10, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stco:Original Diff"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 816
    sget-object v10, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stco:Original Mdat Pos"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 817
    sget-object v10, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stco:New First Offset"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 818
    sget-object v10, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stco:New Diff"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 819
    sget-object v10, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stco:New Mdat Pos"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    if-nez v4, :cond_1

    .line 823
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v5, v10

    .line 824
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v12

    sub-long/2addr v10, v12

    int-to-long v12, v5

    cmp-long v5, v10, v12

    if-nez v5, :cond_0

    .line 829
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v5

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v7

    sub-int/2addr v5, v7

    goto :goto_1

    .line 826
    :cond_0
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v7

    sub-long/2addr v4, v7

    sub-long/2addr v4, v12

    long-to-int v0, v4

    .line 827
    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_INCORRECT_OFFSETS:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 832
    :cond_1
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v9

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v7

    sub-int/2addr v9, v7

    if-ne v5, v9, :cond_2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 834
    :cond_2
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_INCORRECT_OFFSETS:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->close()V

    .line 855
    invoke-virtual/range {p3 .. p3}, Ljava/nio/channels/FileChannel;->close()V

    .line 857
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "File has been written correctly"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    :cond_4
    move-object/from16 v8, p4

    .line 801
    :try_start_2
    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_INCORRECT_NUMBER_OF_TRACKS:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 793
    :cond_5
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_6
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_7
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_DATA_CORRUPT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_8
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    .line 841
    :goto_2
    :try_start_3
    instance-of v1, v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    if-eqz v1, :cond_9

    .line 843
    check-cast v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    throw v0

    .line 847
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 848
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 854
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->close()V

    .line 855
    invoke-virtual/range {p3 .. p3}, Ljava/nio/channels/FileChannel;->close()V

    .line 856
    throw v0
.end method

.method private convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 1

    .line 665
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p2

    invoke-direct {v0, p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 666
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 667
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private createMetadataAtoms(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 0

    .line 199
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    return-void
.end method

.method private getMetaLevelFreeAtomSize(Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;)I
    .locals 4

    .line 725
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getFreeNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 727
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 728
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPreviousSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    .line 729
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isRoot()Z

    move-result v3

    if-nez v3, :cond_0

    .line 731
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 732
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    if-eqz v2, :cond_0

    .line 737
    invoke-virtual {v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 739
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 704
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeNeroData(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto :goto_0

    .line 709
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    :goto_0
    return-void
.end method

.method private writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V
    .locals 19

    .line 634
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 636
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide v9

    .line 637
    div-long v11, v0, v9

    .line 639
    rem-long v13, v0, v9

    const-wide/16 v15, 0x0

    const/4 v2, 0x0

    move-wide/from16 v17, v15

    :goto_0
    int-to-long v3, v2

    cmp-long v3, v3, v11

    if-gez v3, :cond_0

    .line 642
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v3

    add-long v17, v17, v3

    .line 643
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    add-long/2addr v3, v9

    move-object/from16 v5, p2

    invoke-virtual {v5, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    cmp-long v2, v13, v15

    if-lez v2, :cond_2

    .line 648
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-wide v4, v6

    move-wide v6, v13

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2

    add-long v2, v17, v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    goto :goto_1

    .line 651
    :cond_1
    new-instance v4, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Was meant to write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes but only written "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_1
    return-void
.end method

.method private writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 8

    const-wide/16 v0, 0x0

    .line 682
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 683
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 684
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 685
    invoke-virtual {p2, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 686
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private writeFromEndOfIlstToNeroTagsAndMakeNeroFree(JLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 10

    .line 1173
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1174
    invoke-virtual {p4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    move-object v4, p4

    move-object v5, p3

    move-wide v8, v0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 1175
    invoke-virtual {p4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p4, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1176
    invoke-direct {p0, p4, p5}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 1179
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1180
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    sub-long v6, p1, v0

    .line 1181
    invoke-virtual {p4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move-object v2, p4

    move-object v3, p3

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    return-void
.end method

.method private writeHaveExistingMetadata(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IIZLjava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;III)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/channels/FileChannel;",
            "I",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/ByteBuffer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;IIZ",
            "Ljava/nio/ByteBuffer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "III)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p7

    move/from16 v12, p10

    .line 1111
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 5.3;udta and meta atom exists"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move-object v0, p0

    move/from16 v1, p11

    move/from16 v2, p12

    move/from16 v3, p10

    move-object/from16 v4, p9

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    .line 1113
    invoke-direct/range {v0 .. v6}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustStcosIfNoSuitableTopLevelAtom(IZILjava/util/List;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)Z

    move-result v6

    .line 1115
    invoke-virtual/range {p6 .. p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v13

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 1118
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustSizeOfMoovHeader(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 1119
    invoke-virtual/range {p6 .. p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1122
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1123
    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1124
    invoke-virtual {v9, v11}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-object/from16 v0, p13

    .line 1127
    invoke-virtual {v9, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    if-eqz p14, :cond_0

    add-int v0, p16, p17

    add-int v0, v0, p15

    int-to-long v0, v0

    .line 1134
    invoke-virtual {v8, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object v0, p0

    move-wide v1, v13

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p14

    .line 1136
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeFromEndOfIlstToNeroTagsAndMakeNeroFree(JLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto :goto_0

    .line 1142
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int v0, v10, p17

    add-int v0, v0, p15

    .line 1143
    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1144
    invoke-virtual {v9, v11}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1145
    invoke-virtual/range {p6 .. p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v0

    int-to-long v2, v12

    sub-long/2addr v0, v2

    invoke-virtual {v8, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_0
    if-nez v6, :cond_1

    move/from16 v0, p11

    .line 1150
    invoke-direct {p0, v8, v9, v0, v12}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;II)V

    goto :goto_1

    .line 1154
    :cond_1
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 9;Top Level Free comes after Mdat or before Metadata or not large enough"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1156
    :goto_1
    invoke-direct {p0, v8, v9}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    return-void
.end method

.method private writeMetadataSameSize(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 8

    .line 122
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 1:Same Size"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 124
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 125
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 126
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 127
    invoke-virtual {p2, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 128
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 130
    invoke-direct {p0, p1, p2, p5}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    return-void
.end method

.method private writeNeroData(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 10

    .line 147
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 148
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    move-object v4, p2

    move-object v5, p1

    move-wide v8, v0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 149
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 152
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 155
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 156
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    return-void
.end method

.method private writeNewMetadataLargerButCanUseFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;ILjava/nio/ByteBuffer;I)V
    .locals 3

    sub-int p7, p5, p7

    .line 325
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing:Option 5;Larger Size can use meta free atom need extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, p1, p2, p3, p6}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 330
    new-instance p3, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 p7, p7, -0x8

    invoke-direct {p3, p7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 331
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p6

    invoke-virtual {p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p6

    invoke-virtual {p2, p6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 332
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 335
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p6

    int-to-long v0, p5

    add-long/2addr p6, v0

    invoke-virtual {p1, p6, p7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 336
    invoke-direct {p0, p1, p2, p4}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    return-void
.end method

.method private writeNoExistingMetaAtom(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;IIIII)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/ByteBuffer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/ByteBuffer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;IZ",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "IIIII)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    .line 1002
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 5.2;No meta atom"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v11

    .line 1006
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 1007
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v13

    .line 1010
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v14

    .line 1011
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    .line 1013
    invoke-static {}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->createiTunesStyleHdlrBox()Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;

    move-result-object v15

    .line 1014
    invoke-virtual {v15}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->createiTunesStyleMetaBox(I)Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    move-result-object v16

    .line 1015
    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {v16 .. v16}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 1018
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    sub-int v17, v0, v1

    move-object/from16 v0, p0

    move/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, v17

    move-object/from16 v4, p8

    move-object/from16 v5, p5

    move-object/from16 v18, v6

    move-object/from16 v6, p7

    .line 1020
    invoke-direct/range {v0 .. v6}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustStcosIfNoSuitableTopLevelAtom(IZILjava/util/List;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)Z

    move-result v0

    .line 1023
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    add-int v1, v1, v17

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 1024
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1025
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sub-int/2addr v13, v14

    .line 1026
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1027
    invoke-virtual {v9, v10}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1030
    invoke-virtual/range {v18 .. v18}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1033
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1035
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1036
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1037
    invoke-virtual {v9, v10}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1041
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1042
    invoke-virtual/range {v16 .. v16}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1043
    invoke-virtual {v15}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1044
    invoke-virtual {v15}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1047
    invoke-virtual/range {p3 .. p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int v1, p13, p14

    add-int v1, v1, p12

    int-to-long v1, v1

    .line 1050
    invoke-virtual {v8, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    if-eqz p11, :cond_1

    move-object/from16 p4, p0

    move-wide/from16 p5, v11

    move-object/from16 p7, p2

    move-object/from16 p8, p3

    move-object/from16 p9, p11

    .line 1055
    invoke-direct/range {p4 .. p9}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeFromEndOfIlstToNeroTagsAndMakeNeroFree(JLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto :goto_0

    .line 1060
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    sub-long v1, v11, v1

    .line 1061
    invoke-virtual/range {p3 .. p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    move-object/from16 p4, p3

    move-object/from16 p5, p2

    move-wide/from16 p6, v3

    move-wide/from16 p8, v1

    invoke-virtual/range {p4 .. p9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 1062
    invoke-virtual/range {p3 .. p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v9, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_0
    if-nez v0, :cond_2

    move/from16 v0, p15

    move/from16 v1, p16

    .line 1067
    invoke-direct {v7, v8, v9, v0, v1}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;II)V

    goto :goto_1

    .line 1071
    :cond_2
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 9;Top Level Free comes after Mdat or before Metadata or not large enough"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1073
    :goto_1
    invoke-direct {v7, v8, v9}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    return-void
.end method

.method private writeNoExistingUdtaAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;IIIII)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/ByteBuffer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/ByteBuffer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;IZ",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "IIIII)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 916
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Writing:Option 5.1;No udta atom"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {p4 .. p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v2

    .line 918
    invoke-static {}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->createiTunesStyleHdlrBox()Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;

    move-result-object v4

    .line 919
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->createiTunesStyleMetaBox(I)Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    move-result-object v5

    .line 920
    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 923
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v11

    move-object v8, p0

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p7

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustStcosIfNoSuitableTopLevelAtom(IZILjava/util/List;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)Z

    move-result v7

    .line 926
    invoke-virtual/range {p4 .. p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v8

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v9

    add-int/2addr v8, v9

    move-object/from16 v9, p4

    invoke-virtual {v9, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 927
    invoke-virtual/range {p4 .. p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 928
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v8, p5

    .line 929
    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 932
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 933
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 934
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 935
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 936
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 939
    invoke-virtual/range {p2 .. p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int v4, p12, p13

    add-int v4, v4, p11

    int-to-long v4, v4

    .line 942
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    if-eqz p10, :cond_0

    move-object/from16 p3, p0

    move-wide/from16 p4, v2

    move-object/from16 p6, p1

    move-object/from16 p7, p2

    move-object/from16 p8, p10

    .line 947
    invoke-direct/range {p3 .. p8}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeFromEndOfIlstToNeroTagsAndMakeNeroFree(JLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto :goto_0

    .line 952
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 953
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move-object/from16 p3, p2

    move-object/from16 p4, p1

    move-wide/from16 p5, v4

    move-wide/from16 p7, v2

    invoke-virtual/range {p3 .. p8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 954
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_0
    if-nez v7, :cond_1

    move-object v2, p0

    move/from16 v3, p14

    move/from16 v4, p15

    .line 959
    invoke-direct {p0, v0, v1, v3, v4}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;II)V

    goto :goto_1

    :cond_1
    move-object v2, p0

    .line 963
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v4, "Writing:Option 9;Top Level Free comes after Mdat or before Metadata or not large enough"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 965
    :goto_1
    invoke-direct/range {p0 .. p2}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    return-void
.end method

.method private writeOldMetadataLargerThanNewMetadata(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/util/List;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/channels/FileChannel;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;I)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v0, p12

    .line 223
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Writing:Option 1:Smaller Size"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p6 .. p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    const-wide/16 v13, 0x8

    add-long/2addr v3, v13

    sub-long/2addr v1, v3

    long-to-int v13, v1

    .line 229
    invoke-virtual/range {p10 .. p10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-lez v0, :cond_0

    .line 233
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing:Option 2:Smaller Size have free atom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, v7, v8, v9, v12}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 237
    invoke-virtual/range {p6 .. p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    sub-int/2addr v2, v1

    add-int v1, v0, v2

    .line 238
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 v1, v1, -0x8

    invoke-direct {v2, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 239
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 240
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 243
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {v7, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 244
    invoke-direct {p0, v7, v8, v10}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto/16 :goto_1

    .line 249
    :cond_0
    invoke-virtual/range {p6 .. p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_1

    .line 255
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Writing:Option 3:Smaller Size can create free atom"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 256
    invoke-direct {p0, v7, v8, v9, v12}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 259
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 260
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 261
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 262
    invoke-direct {p0, v7, v8, v10}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto/16 :goto_1

    .line 267
    :cond_1
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Writing:Option 4:Smaller Size <=8 cannot create free atoms"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p6 .. p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    sub-int v14, v0, v1

    const-wide/16 v0, 0x0

    .line 273
    invoke-virtual {v7, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x0

    .line 274
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 275
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 279
    invoke-virtual/range {p7 .. p7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 281
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    neg-int v2, v14

    .line 282
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    goto :goto_0

    :cond_2
    neg-int v3, v14

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p9

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 287
    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustSizeOfMoovHeader(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 289
    invoke-virtual/range {p9 .. p9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 290
    invoke-virtual {v11, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 291
    invoke-virtual {v8, v11}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 294
    invoke-virtual {v8, v12}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 297
    invoke-virtual/range {p9 .. p9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 298
    invoke-virtual/range {p6 .. p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v13, v0

    invoke-virtual {v11, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 299
    invoke-virtual {v8, v11}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 302
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v0

    int-to-long v2, v14

    add-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 303
    invoke-direct {p0, v7, v8, v10}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    :goto_1
    return-void
.end method

.method private writeUpToMoovHeader(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 8

    const-wide/16 v0, 0x0

    .line 618
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 619
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 620
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 1

    .line 871
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    .line 875
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/CannotWriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 879
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 28

    move-object/from16 v15, p0

    .line 350
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Started writing tag data"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 352
    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    .line 370
    :try_start_0
    new-instance v1, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;

    const/4 v2, 0x0

    move-object/from16 v13, p2

    invoke-direct {v1, v13, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMdatNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 385
    iget-object v3, v15, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->tc:Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;->convert(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 386
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 387
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 390
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMoovNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    .line 391
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getStcos()Ljava/util/List;

    move-result-object v11

    .line 392
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getIlstNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v8

    .line 393
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getUdtaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v5

    .line 394
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    .line 395
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getHdlrWithinMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v4

    .line 396
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getTagsNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v17

    .line 397
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getTrakNodes()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getTrakNodes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/16 v18, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v1, v9}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v9

    .line 398
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMoovBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    const-wide/16 v19, 0x8

    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    if-eqz v8, :cond_0

    .line 411
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    move/from16 p1, v3

    .line 414
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    long-to-int v2, v2

    move v9, v4

    int-to-long v3, v2

    .line 415
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    add-long v22, v22, v19

    sub-long v3, v3, v22

    long-to-int v3, v3

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_3

    :cond_0
    move/from16 p1, v3

    if-eqz v4, :cond_1

    .line 422
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    .line 423
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x4

    int-to-long v3, v2

    .line 430
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    goto :goto_0

    :cond_2
    move/from16 p1, v3

    .line 437
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    .line 438
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v20, v2

    move/from16 v19, v3

    goto :goto_2

    :cond_3
    move/from16 p1, v3

    if-eqz v6, :cond_4

    .line 450
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    .line 451
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    :goto_0
    add-long v22, v22, v19

    sub-long v3, v3, v22

    long-to-int v3, v3

    goto :goto_1

    .line 456
    :cond_4
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v2

    long-to-int v2, v2

    .line 457
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    :goto_1
    move/from16 v19, v2

    move/from16 v20, v3

    :goto_2
    const/4 v9, 0x0

    .line 462
    :goto_3
    invoke-direct {v15, v1}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->getMetaLevelFreeAtomSize(Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;)I

    move-result v22

    .line 469
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getFreeNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 471
    invoke-virtual {v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 472
    invoke-virtual {v3}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 474
    invoke-virtual {v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 475
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    .line 476
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    long-to-int v1, v3

    move/from16 v23, v2

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    const/16 v23, 0x0

    :goto_4
    if-lez v23, :cond_8

    int-to-long v2, v1

    .line 483
    invoke-virtual {v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v24

    cmp-long v4, v2, v24

    if-lez v4, :cond_7

    :goto_5
    move/from16 v21, v1

    const/16 v18, 0x0

    goto :goto_6

    .line 487
    :cond_7
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v24

    cmp-long v2, v2, v24

    if-gez v2, :cond_9

    goto :goto_5

    .line 494
    :cond_8
    invoke-virtual {v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v1

    long-to-int v1, v1

    :cond_9
    move/from16 v21, v1

    .line 497
    :goto_6
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Read header successfully ready for writing"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move/from16 v1, p1

    if-ne v9, v1, :cond_a

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v14

    move-object v4, v8

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    .line 502
    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeMetadataSameSize(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    move-object/from16 p1, v11

    move-object/from16 v24, v12

    :goto_7
    move-object/from16 v27, v14

    goto/16 :goto_8

    :cond_a
    if-le v9, v1, :cond_b

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v14

    move-object v4, v7

    move-object v7, v8

    move-object v8, v12

    move-object/from16 v9, v17

    move-object/from16 p1, v11

    move-object/from16 v11, v16

    move-object/from16 v24, v12

    move-object/from16 v12, p1

    move/from16 v13, v22

    .line 508
    invoke-direct/range {v1 .. v13}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeOldMetadataLargerThanNewMetadata(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/util/List;I)V

    goto :goto_7

    :cond_b
    move-object/from16 p1, v11

    move-object/from16 v24, v12

    sub-int v11, v1, v9

    add-int/lit8 v1, v22, -0x8

    if-gt v11, v1, :cond_c

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v14

    move-object v4, v8

    move-object/from16 v5, v17

    move/from16 v6, v22

    move-object/from16 v7, v16

    move v8, v11

    .line 527
    invoke-direct/range {v1 .. v8}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeNewMetadataLargerButCanUseFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;ILjava/nio/ByteBuffer;I)V

    goto :goto_7

    :cond_c
    sub-int v25, v11, v22

    .line 542
    invoke-direct {v15, v0, v14, v7}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeUpToMoovHeader(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    if-nez v5, :cond_d

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v14

    move-object/from16 v4, v16

    move-object v5, v7

    move-object v6, v10

    move-object/from16 v7, v24

    move-object/from16 v8, p1

    move/from16 v26, v9

    move/from16 v9, v23

    move/from16 v10, v18

    move-object/from16 v11, v17

    move/from16 v12, v22

    move/from16 v13, v19

    move-object/from16 v27, v14

    move/from16 v14, v26

    move/from16 v15, v21

    move/from16 v16, v25

    .line 545
    invoke-direct/range {v1 .. v16}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeNoExistingUdtaAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;IIIII)V

    goto :goto_8

    :cond_d
    move/from16 v26, v9

    move-object/from16 v27, v14

    if-nez v6, :cond_e

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v0

    move-object/from16 v4, v27

    move-object/from16 v5, v16

    move-object v6, v7

    move-object v7, v10

    move-object/from16 v8, v24

    move-object/from16 v9, p1

    move/from16 v10, v23

    move/from16 v11, v18

    move-object/from16 v12, v17

    move/from16 v13, v22

    move/from16 v14, v19

    move/from16 v15, v26

    move/from16 v16, v21

    move/from16 v17, v25

    .line 563
    invoke-direct/range {v1 .. v17}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeNoExistingMetaAtom(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;IIIII)V

    goto :goto_8

    :cond_e
    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    move-object v4, v0

    move-object/from16 v5, v27

    move/from16 v6, v20

    move-object v8, v10

    move-object/from16 v9, v24

    move-object/from16 v10, p1

    move/from16 v11, v25

    move/from16 v12, v23

    move/from16 v13, v18

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move/from16 v16, v22

    move/from16 v17, v19

    move/from16 v18, v26

    .line 583
    invoke-direct/range {v1 .. v18}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeHaveExistingMetadata(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IIZLjava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;III)V

    .line 605
    :goto_8
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 606
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->close()V

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p3

    move-object/from16 v3, v24

    move-object/from16 v2, v27

    .line 609
    invoke-direct {v1, v0, v3, v2, v4}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->checkFileWrittenCorrectly(Ljava/io/RandomAccessFile;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/util/List;)V

    return-void

    :cond_f
    move-object v1, v15

    .line 381
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_CANNOT_FIND_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v15

    .line 374
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
