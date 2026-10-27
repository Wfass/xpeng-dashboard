.class public Lorg/jaudiotagger/audio/flac/FlacTagWriter;
.super Ljava/lang/Object;
.source "FlacTagWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;
    }
.end annotation


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.flac"

    .line 53
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    return-void
.end method

.method private computeAvailableRoom(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)I
    .locals 3

    .line 448
    invoke-static {p1}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$300(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 449
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 452
    :cond_0
    invoke-static {p1}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$400(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 453
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 456
    :cond_1
    invoke-static {p1}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$500(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 457
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    .line 461
    :cond_2
    invoke-static {p1}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$200(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 462
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_3

    :cond_3
    return v1
.end method

.method private computeNeededRoom(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)I
    .locals 3

    .line 476
    invoke-static {p1}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$300(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 477
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 480
    :cond_0
    invoke-static {p1}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$400(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 481
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 484
    :cond_1
    invoke-static {p1}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$500(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 485
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_2
    return v1
.end method

.method private insertTagAndShift(Ljava/io/File;Lorg/jaudiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;II)V
    .locals 17

    move/from16 v13, p6

    .line 324
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x22

    add-int v1, v0, v13

    add-int/lit16 v1, v1, 0xfa0

    int-to-long v5, v1

    .line 327
    invoke-virtual/range {p3 .. p3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    add-int v0, v0, p7

    int-to-long v3, v0

    sub-long/2addr v1, v3

    add-long v14, v5, v1

    const/4 v1, 0x0

    .line 333
    :try_start_0
    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v9, 0x0

    move-object/from16 v7, p3

    move-wide v11, v14

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    move-wide v7, v14

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    .line 334
    :try_start_1
    invoke-direct/range {v1 .. v12}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->insertTagAndShiftViaMappedByteBuffer(Lorg/jaudiotagger/tag/Tag;Ljava/nio/MappedByteBuffer;Ljava/nio/channels/FileChannel;JJLorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    if-nez v1, :cond_0

    add-int/lit16 v13, v13, 0xfa0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v14, p7

    .line 338
    invoke-direct/range {v7 .. v14}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->insertUsingChunks(Ljava/io/File;Lorg/jaudiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;II)V

    :goto_1
    return-void

    .line 340
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    throw v0
.end method

.method private insertTagAndShiftViaMappedByteBuffer(Lorg/jaudiotagger/tag/Tag;Ljava/nio/MappedByteBuffer;Ljava/nio/channels/FileChannel;JJLorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;II)V
    .locals 3

    .line 366
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jaudiotagger/utils/PrimitiveUtils;->safeLongToInt(J)I

    move-result v0

    const-wide/16 v1, 0xfa0

    sub-long/2addr p4, v1

    int-to-long v1, p10

    sub-long/2addr p4, v1

    int-to-long p10, p11

    add-long/2addr p4, p10

    .line 370
    invoke-static {p4, p5}, Lorg/jaudiotagger/utils/PrimitiveUtils;->safeLongToInt(J)I

    move-result p4

    int-to-long p10, v0

    sub-long/2addr p6, p10

    .line 371
    invoke-static {p6, p7}, Lorg/jaudiotagger/utils/PrimitiveUtils;->safeLongToInt(J)I

    move-result p5

    .line 372
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p6

    invoke-virtual {p6}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide p6

    invoke-static {p6, p7}, Lorg/jaudiotagger/utils/PrimitiveUtils;->safeLongToInt(J)I

    move-result p6

    sub-int/2addr v0, p6

    .line 374
    new-array p7, p6, [B

    :goto_0
    const/4 p10, 0x0

    if-lt v0, p4, :cond_0

    .line 376
    invoke-virtual {p2, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 377
    invoke-virtual {p2, p7, p10, p6}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int p11, v0, p5

    .line 378
    invoke-virtual {p2, p11}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 379
    invoke-virtual {p2, p7, p10, p6}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, p6

    goto :goto_0

    :cond_0
    add-int/2addr v0, p6

    sub-int/2addr v0, p4

    if-lez v0, :cond_1

    .line 387
    invoke-virtual {p2, p4}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 388
    invoke-virtual {p2, p7, p10, v0}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p4, p5

    .line 389
    invoke-virtual {p2, p4}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 390
    invoke-virtual {p2, p7, p10, v0}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 393
    :cond_1
    invoke-static {p2}, Lorg/jaudiotagger/utils/DirectByteBufferUtils;->release(Ljava/nio/Buffer;)V

    .line 396
    invoke-direct {p0, p1, p3, p8, p9}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->writeTags(Lorg/jaudiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;)V

    return-void
.end method

.method private insertUsingChunks(Ljava/io/File;Lorg/jaudiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;II)V
    .locals 6

    .line 249
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 253
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x22

    add-int/2addr v2, p7

    int-to-long v2, v2

    sub-int/2addr p6, p7

    .line 261
    sget-object p7, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Audio needs shifting:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide v4

    long-to-int p1, v4

    if-ge p1, p6, :cond_0

    move p1, p6

    .line 269
    :cond_0
    new-instance p6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 272
    invoke-virtual {p3, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 274
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p7

    .line 275
    invoke-virtual {p3, p7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 276
    invoke-virtual {p7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 277
    invoke-interface {p6, p7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    .line 282
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result p5

    add-int/lit8 p5, p5, 0x4

    int-to-long v4, p5

    invoke-virtual {p3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 283
    invoke-direct {p0, p3, p4}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->writeOtherMetadataBlocks(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)V

    .line 284
    iget-object p4, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    const/16 p5, 0xfa0

    invoke-virtual {p4, p2, p5}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 285
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p4

    .line 288
    invoke-virtual {p3, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 289
    :goto_0
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-gez p2, :cond_1

    .line 291
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 292
    invoke-virtual {p3, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 293
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    .line 294
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 295
    invoke-interface {p6, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {p3, p4, p5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 299
    invoke-interface {p6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 300
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p4

    .line 302
    invoke-virtual {p3, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p3, p4, p5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 305
    invoke-interface {p6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private insertUsingDirectBuffer(Ljava/io/File;Lorg/jaudiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;I)V
    .locals 4

    .line 209
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x22

    add-int/2addr p1, p6

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 216
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 217
    invoke-virtual {p3, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 218
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 221
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result p5

    add-int/lit8 p5, p5, 0x4

    int-to-long p5, p5

    invoke-virtual {p3, p5, p6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 222
    invoke-direct {p0, p3, p4}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->writeOtherMetadataBlocks(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)V

    .line 225
    iget-object p4, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    const/16 p5, 0xfa0

    invoke-virtual {p4, p2, p5}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 228
    invoke-virtual {p3, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private writeOtherMetadataBlocks(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)V
    .locals 3

    .line 419
    invoke-static {p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$100(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 420
    invoke-static {p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$100(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 423
    invoke-static {p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$300(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 424
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 425
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    .line 429
    :cond_0
    invoke-static {p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$400(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 430
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 431
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_1

    .line 435
    :cond_1
    invoke-static {p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$500(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    .line 436
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 437
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    :cond_2
    return-void
.end method

.method private writeTags(Lorg/jaudiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;)V
    .locals 2

    .line 401
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result p4

    add-int/lit8 p4, p4, 0x4

    int-to-long v0, p4

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 402
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->writeOtherMetadataBlocks(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)V

    .line 405
    iget-object p3, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    const/16 p4, 0xfa0

    invoke-virtual {p3, p1, p4}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method


# virtual methods
.method public delete(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
    .locals 2

    .line 64
    new-instance p1, Lorg/jaudiotagger/tag/flac/FlacTag;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lorg/jaudiotagger/tag/flac/FlacTag;-><init>(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V

    return-void
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
    .locals 13

    .line 83
    sget-object v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Writing tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 86
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 88
    new-instance v9, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;

    invoke-direct {v9, v1}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;-><init>(Lorg/jaudiotagger/audio/flac/FlacTagWriter$1;)V

    .line 91
    new-instance v10, Lorg/jaudiotagger/audio/flac/FlacStreamReader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v8, v1}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    invoke-virtual {v10}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->findStream()V
    :try_end_2
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 101
    :try_start_3
    invoke-static {v8}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 103
    sget-object v4, Lorg/jaudiotagger/audio/flac/FlacTagWriter$1;->$SwitchMap$org$jaudiotagger$audio$flac$metadatablock$BlockType:[I

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 136
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    goto :goto_1

    .line 130
    :pswitch_0
    new-instance v4, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;

    invoke-direct {v4, v1, v8}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    .line 131
    invoke-static {v9}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$500(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v6, v1, v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 125
    :pswitch_1
    new-instance v4, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;

    invoke-direct {v4, v1, v8}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    .line 126
    invoke-static {v9}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$400(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v6, v1, v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 120
    :pswitch_2
    new-instance v4, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;

    invoke-direct {v4, v1, v8}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    .line 121
    invoke-static {v9}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$300(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v6, v1, v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 114
    :pswitch_3
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v8, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 115
    new-instance v4, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;-><init>(I)V

    .line 116
    invoke-static {v9}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$200(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v6, v1, v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :pswitch_4
    new-instance v4, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    new-instance v5, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;

    invoke-direct {v5, v1, v8}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    invoke-direct {v4, v1, v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-static {v9, v4}, Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->access$102(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    goto :goto_2

    .line 136
    :goto_1
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v8, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 141
    :cond_0
    :goto_2
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v1
    :try_end_3
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 143
    :try_start_4
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_1
    invoke-direct {p0, v9}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->computeAvailableRoom(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)I

    move-result v12

    .line 151
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 154
    invoke-direct {p0, v9}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->computeNeededRoom(Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)I

    move-result v4

    add-int/2addr v4, v1

    .line 160
    invoke-virtual {v10}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v8, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 162
    sget-object v5, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":Writing tag available bytes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":needed bytes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-eq v12, v4, :cond_3

    add-int/lit8 v5, v4, 0x4

    if-le v12, v5, :cond_2

    goto :goto_3

    .line 179
    :cond_2
    sget-object v5, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":Audio must be shifted NewTagSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":AvailableRoom:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":MinimumAdditionalRoomRequired:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v1, v4, v12

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    add-int/lit16 v11, v4, 0xfa0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p1

    .line 181
    invoke-direct/range {v5 .. v12}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->insertUsingChunks(Ljava/io/File;Lorg/jaudiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lorg/jaudiotagger/audio/flac/FlacStreamReader;II)V

    goto :goto_4

    .line 167
    :cond_3
    :goto_3
    sget-object v1, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":Room to Rewrite"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v10}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    int-to-long v5, v1

    invoke-virtual {v8, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 172
    invoke-direct {p0, v8, v9}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->writeOtherMetadataBlocks(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)V

    .line 175
    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    sub-int/2addr v12, v4

    invoke-virtual {v1, p1, v12}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    :goto_4
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v3, p1, v2

    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catch_1
    move-exception p1

    .line 95
    :try_start_5
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v1, v3

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v3, v1

    goto :goto_6

    :catch_3
    move-exception p1

    .line 184
    :goto_5
    :try_start_6
    sget-object v3, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 187
    :goto_6
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object v3, p2, v2

    invoke-static {p2}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 188
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
