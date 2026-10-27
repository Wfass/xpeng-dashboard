.class public Lorg/jaudiotagger/audio/aiff/AiffTagWriter;
.super Ljava/lang/Object;
.source "AiffTagWriter.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.aiff"

    .line 50
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deleteRemainderOfFile(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/lang/String;)V
    .locals 7

    .line 185
    invoke-static {p2}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkSummary;->getChunkBeforeStartingMetadataTag(Lorg/jaudiotagger/tag/aiff/AiffTag;)Lorg/jaudiotagger/audio/iff/ChunkSummary;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v0

    const-string v1, " Truncating corrupted ID3 tags from:"

    if-nez v0, :cond_0

    .line 187
    sget-object v0, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide p2

    sub-long/2addr p2, v5

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 190
    :cond_0
    sget-object v0, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :goto_0
    return-void
.end method

.method private deleteTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/aiff/AiffTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/lang/String;)V
    .locals 9

    .line 159
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    long-to-int p3, v0

    add-int/lit8 p3, p3, 0x8

    int-to-long v0, p3

    .line 160
    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    int-to-long v7, p3

    sub-long/2addr v0, v7

    .line 166
    sget-object v2, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Size of id3 chunk to delete is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":Location:"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v2

    add-long/2addr v2, v7

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, v0

    .line 171
    invoke-direct/range {v2 .. v8}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->deleteTagChunkUsingSmallByteBufferSegments(Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/nio/channels/FileChannel;JJ)V

    .line 173
    sget-object p2, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " Setting new length to:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private deleteTagChunkUsingChannelTransfer(Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/nio/channels/FileChannel;J)V
    .locals 10

    .line 209
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    :goto_0
    sub-long v8, p3, v0

    move-object v2, p2

    move-object v3, p2

    move-wide v4, v0

    move-wide v6, v8

    .line 210
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2

    cmp-long p1, v2, v8

    if-gez p1, :cond_0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deleteTagChunkUsingSmallByteBufferSegments(Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/nio/channels/FileChannel;JJ)V
    .locals 4

    .line 229
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide p3

    long-to-int p1, p3

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 230
    :goto_0
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p3

    if-gez p3, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 231
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 232
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p3

    sub-long v0, p3, p5

    .line 233
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 234
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 235
    invoke-virtual {p2, p3, p4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 236
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private getExistingMetadata(Ljava/io/File;)Lorg/jaudiotagger/tag/aiff/AiffTag;
    .locals 2

    .line 63
    :try_start_0
    new-instance v0, Lorg/jaudiotagger/audio/aiff/AiffTagReader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/aiff/AiffTagReader;-><init>()V

    .line 64
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->read(Ljava/io/File;)Lorg/jaudiotagger/tag/aiff/AiffTag;

    move-result-object p1
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 66
    :catch_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Failed to read file"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/nio/channels/FileChannel;)Z
    .locals 4

    .line 99
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V
    .locals 3

    .line 321
    sget v0, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 322
    sget v0, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 323
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 324
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    long-to-int v1, v1

    sget v2, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    sub-int/2addr v1, v2

    sget v2, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    sub-int/2addr v1, v2

    .line 325
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 326
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 327
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private seekToStartOfMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/lang/String;)Lorg/jaudiotagger/audio/iff/ChunkHeader;
    .locals 5

    .line 79
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 80
    new-instance v0, Lorg/jaudiotagger/audio/iff/ChunkHeader;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 81
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    .line 82
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 84
    sget-object p1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->TAG:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 85
    :cond_0
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Unable to find ID3 chunk at expected location:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 339
    new-instance v0, Lorg/jaudiotagger/audio/iff/ChunkHeader;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 340
    sget-object v1, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->TAG:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->setID(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->setSize(J)V

    .line 342
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->writeHeader()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 343
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 344
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V

    return-void
.end method

.method private writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V
    .locals 0

    .line 359
    invoke-static {p2, p3}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 360
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public convert(Lorg/jaudiotagger/tag/aiff/AiffTag;Lorg/jaudiotagger/tag/aiff/AiffTag;)Ljava/nio/ByteBuffer;
    .locals 9

    .line 374
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 375
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getSizeOfID3TagOnly()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_0

    const-wide/16 v5, 0x1

    and-long v7, v1, v5

    cmp-long p2, v7, v3

    if-eqz p2, :cond_0

    add-long/2addr v1, v5

    .line 385
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p2

    long-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/OutputStream;I)V

    .line 389
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length p2, p2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 390
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    .line 391
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 392
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/OutputStream;I)V

    .line 394
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 395
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 399
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public delete(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
    .locals 9

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 123
    sget-object v3, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Deleting tag from file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->getExistingMetadata(Ljava/io/File;)Lorg/jaudiotagger/tag/aiff/AiffTag;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 127
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->seekToStartOfMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/lang/String;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v4

    .line 128
    invoke-direct {p0, v3, v1}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->isAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/nio/channels/FileChannel;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    sget-object v4, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " Setting new length to:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 132
    :cond_0
    sget-object v5, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " Deleting tag chunk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v3, v4, v5}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/aiff/AiffTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/lang/String;)V

    .line 135
    :goto_0
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V

    .line 137
    :cond_1
    sget-object v1, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Deleted tag from file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object v2, p2, p1

    invoke-static {p2}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 139
    :goto_1
    :try_start_2
    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 141
    :goto_2
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, p1

    invoke-static {v0}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 142
    throw p2
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
    .locals 13

    const-string v0, ":"

    .line 247
    sget-object v1, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Writing Aiff tag to file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 250
    :try_start_0
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->getExistingMetadata(Ljava/io/File;)Lorg/jaudiotagger/tag/aiff/AiffTag;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 257
    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v5, p2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 259
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 261
    check-cast p1, Lorg/jaudiotagger/tag/aiff/AiffTag;

    .line 262
    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->convert(Lorg/jaudiotagger/tag/aiff/AiffTag;Lorg/jaudiotagger/tag/aiff/AiffTag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 265
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 267
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->isIncorrectlyAlignedTag()Z

    move-result v8

    if-nez v8, :cond_1

    .line 268
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v1, v8}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->seekToStartOfMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/lang/String;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v8

    .line 269
    sget-object v9, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "Current Space allocated:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getSizeOfID3TagOnly()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ":NewTagRequires:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, v1, v2}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->isAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/nio/channels/FileChannel;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 273
    invoke-direct {p0, v2, p1}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->writeDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v2, v1, v8, v9}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/aiff/AiffTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 279
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-direct {p0, v2, v8, v9}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V

    .line 280
    invoke-direct {p0, v2, p1}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->writeDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-static {v1}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lorg/jaudiotagger/tag/aiff/AiffTag;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 286
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v1, v8}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->deleteRemainderOfFile(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 288
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-direct {p0, v2, v8, v9}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V

    .line 289
    invoke-direct {p0, v2, p1}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->writeDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 291
    :cond_2
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Metadata tags are corrupted and not at end of file so cannot be fixed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 297
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 298
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 300
    :cond_4
    invoke-direct {p0, v2, p1}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->writeDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    .line 303
    :goto_0
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    cmp-long p1, v6, v8

    if-eqz p1, :cond_5

    .line 304
    invoke-direct {p0, v2}, Lorg/jaudiotagger/audio/aiff/AiffTagWriter;->rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :cond_5
    new-array p1, v4, [Ljava/io/Closeable;

    aput-object v5, p1, v3

    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v5

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v5, v2

    goto :goto_2

    :catch_1
    move-exception p1

    .line 307
    :goto_1
    :try_start_3
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    :goto_2
    new-array p2, v4, [Ljava/io/Closeable;

    aput-object v5, p2, v3

    invoke-static {p2}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 310
    throw p1

    :catch_2
    move-exception p1

    .line 252
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
