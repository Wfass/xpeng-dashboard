.class public Lorg/jaudiotagger/audio/wav/WavTagWriter;
.super Ljava/lang/Object;
.source "WavTagWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;,
        Lorg/jaudiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;
    }
.end annotation


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private loggingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.wav"

    .line 60
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    return-void
.end method

.method private checkExistingLocations(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;
    .locals 9

    .line 572
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;

    invoke-direct {v0, p0}, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;-><init>(Lorg/jaudiotagger/audio/wav/WavTagWriter;)V

    .line 573
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-gez v1, :cond_0

    .line 574
    iput-boolean v4, v0, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    .line 576
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-gtz v1, :cond_1

    .line 577
    iput-boolean v4, v0, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    .line 578
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 579
    iput-boolean v4, v0, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-gtz v1, :cond_1

    .line 585
    iput-boolean v4, v0, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    .line 586
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 587
    iput-boolean v4, v0, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method private deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 7

    .line 910
    invoke-static {p2}, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->getChunkBeforeFirstMetadataTag(Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkSummary;

    move-result-object v0

    .line 912
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v0

    const-string v1, " Truncating corrupted metadata tags from:"

    if-nez v0, :cond_0

    .line 913
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v5

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 918
    :cond_0
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :goto_0
    return-void
.end method

.method private deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V
    .locals 2

    .line 238
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    long-to-int p3, v0

    add-int/lit8 p3, p3, 0x8

    .line 239
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    return-void
.end method

.method private deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V
    .locals 2

    .line 224
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p2

    .line 225
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    long-to-int p3, v0

    add-int/lit8 p3, p3, 0x8

    .line 226
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    return-void
.end method

.method private deleteTagChunk(Ljava/nio/channels/FileChannel;II)V
    .locals 6

    int-to-long v0, p2

    .line 257
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 259
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 260
    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 269
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    int-to-long p2, p3

    sub-long/2addr v0, p2

    .line 270
    sget-object p2, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Setting new length to:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    return-void

    .line 261
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 262
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    int-to-long v2, p3

    sub-long v2, v0, v2

    .line 263
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 264
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 265
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 266
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private getExistingMetadata(Ljava/io/File;)Lorg/jaudiotagger/tag/wav/WavTag;
    .locals 3

    .line 73
    :try_start_0
    new-instance v0, Lorg/jaudiotagger/audio/wav/WavTagReader;

    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagReader;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagReader;->read(Ljava/io/File;)Lorg/jaudiotagger/tag/wav/WavTag;

    move-result-object p1
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 76
    :catch_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z
    .locals 6

    .line 643
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

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

.method private isInfoTagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z
    .locals 6

    .line 654
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

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

    .line 327
    sget v0, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 328
    sget v0, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 329
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 330
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    long-to-int v1, v1

    sget v2, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    sub-int/2addr v1, v2

    sget v2, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    sub-int/2addr v1, v2

    .line 331
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 332
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 333
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private saveActive(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 4

    .line 796
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/wav/WavInfoTag;

    const-string v1, " Metadata tags are corrupted and not at end of file so cannot be fixed"

    if-eqz v0, :cond_6

    .line 797
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->convertInfoChunk(Lorg/jaudiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 798
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v2, v0

    .line 801
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v0

    if-nez v0, :cond_4

    .line 803
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    invoke-direct {p0, p3, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 807
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    .line 808
    invoke-direct {p0, p2, p3, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 813
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 814
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    .line 815
    invoke-direct {p0, p3, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 816
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p3

    invoke-direct {p0, p2, p3, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavInfoTag;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    .line 818
    :cond_2
    invoke-direct {p0, p2, p3, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 819
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 820
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    int-to-long v0, p3

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_2

    .line 825
    :cond_3
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 826
    invoke-direct {p0, p2, p1, v2, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_2

    .line 832
    :cond_4
    invoke-static {p3}, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lorg/jaudiotagger/tag/wav/WavTag;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 833
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 834
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 835
    invoke-direct {p0, p2, p1, v2, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_2

    .line 837
    :cond_5
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 842
    :cond_6
    invoke-virtual {p0, p1, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->convertID3Chunk(Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 843
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v0

    if-nez v0, :cond_b

    .line 844
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 845
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    .line 846
    invoke-direct {p0, p3, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 847
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_1

    .line 849
    :cond_7
    invoke-direct {p0, p2, p3, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 853
    :cond_8
    :goto_1
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 854
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v0

    .line 855
    invoke-direct {p0, p3, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 856
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 858
    :cond_9
    invoke-direct {p0, p2, p3, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 859
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 860
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 863
    :cond_a
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 864
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 866
    :cond_b
    invoke-static {p3}, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lorg/jaudiotagger/tag/wav/WavTag;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 867
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 868
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 869
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    :goto_2
    return-void

    .line 871
    :cond_c
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private saveActiveExisting(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 1

    .line 887
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getActiveTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/wav/WavInfoTag;

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveBoth(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 891
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveActive(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 894
    :cond_1
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 895
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveBoth(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 897
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveActive(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    :goto_0
    return-void
.end method

.method private saveBoth(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 3

    .line 671
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->convertInfoChunk(Lorg/jaudiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 672
    invoke-virtual {p0, p1, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->convertID3Chunk(Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 675
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v1

    const-string v2, " Metadata tags are corrupted and not at end of file so cannot be fixed"

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 676
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v1

    if-nez v1, :cond_2

    .line 677
    invoke-direct {p0, p3, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->checkExistingLocations(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;

    move-result-object v1

    .line 679
    iget-boolean v2, v1, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    if-eqz v2, :cond_1

    .line 680
    iget-boolean v1, v1, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    if-eqz v1, :cond_0

    .line 681
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    .line 682
    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 683
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    .line 685
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    .line 686
    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 687
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    .line 692
    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v1

    .line 693
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v2

    .line 694
    invoke-direct {p0, p2, p3, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 695
    invoke-direct {p0, p2, p3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 696
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 697
    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 702
    :cond_2
    invoke-static {p3}, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lorg/jaudiotagger/tag/wav/WavTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 703
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 704
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 705
    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 707
    :cond_3
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 711
    :cond_4
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v1

    if-nez v1, :cond_8

    .line 712
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v1

    if-nez v1, :cond_6

    .line 713
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v1

    .line 714
    invoke-direct {p0, p3, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 715
    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 716
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    .line 718
    :cond_5
    invoke-direct {p0, p2, p3, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 719
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 720
    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 725
    :cond_6
    invoke-static {p3}, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lorg/jaudiotagger/tag/wav/WavTag;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 726
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 727
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 728
    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 730
    :cond_7
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 734
    :cond_8
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v1

    if-nez v1, :cond_c

    .line 735
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/wav/WavTag;->isIncorrectlyAlignedTag()Z

    move-result v1

    if-nez v1, :cond_a

    .line 736
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v1

    .line 737
    invoke-direct {p0, p3, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 738
    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 739
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 741
    :cond_9
    invoke-direct {p0, p2, p3, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 742
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 743
    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 748
    :cond_a
    invoke-static {p3}, Lorg/jaudiotagger/audio/wav/chunk/WavChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lorg/jaudiotagger/tag/wav/WavTag;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 749
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteExistingMetadataTagsToEndOfFile(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 750
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 751
    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 754
    :cond_b
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 760
    :cond_c
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 761
    invoke-direct {p0, p2, v0, p1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method private seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;
    .locals 4

    .line 109
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 110
    new-instance p2, Lorg/jaudiotagger/audio/iff/ChunkHeader;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p2, v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 111
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    .line 112
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 113
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 114
    :cond_0
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Unable to find ID3 chunk at original location has file been modified externally"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;
    .locals 4

    .line 89
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 90
    new-instance p2, Lorg/jaudiotagger/audio/iff/ChunkHeader;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p2, v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 91
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    .line 92
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 94
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavChunkType;->LIST:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 95
    :cond_0
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Unable to find List chunk at original location has file been modified externally"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeBothTags(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 775
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWavSaveOrder()Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/audio/wav/WavSaveOrder;->INFO_THEN_ID3:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    if-ne v0, v1, :cond_0

    .line 776
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    .line 777
    invoke-direct {p0, p1, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 779
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    .line 780
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method private writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V
    .locals 0

    .line 630
    invoke-static {p2, p3}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 631
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writePaddingToFile(Ljava/nio/channels/FileChannel;I)V

    :cond_0
    return-void
.end method

.method private writeID3DataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 382
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 383
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writePaddingToFile(Ljava/nio/channels/FileChannel;I)V

    :cond_0
    const/16 v0, 0x8

    .line 387
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 388
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 389
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->ID3:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 390
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 391
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 392
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 395
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private writeInfoChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavInfoTag;Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 605
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    .line 607
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getSizeOfTag()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    .line 608
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getSizeOfTag()J

    move-result-wide v2

    invoke-direct {p0, p1, p3, v2, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    .line 610
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getSizeOfTag()J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-lez p3, :cond_1

    .line 611
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getSizeOfTag()J

    move-result-wide p2

    sub-long/2addr p2, v0

    long-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writePaddingToFile(Ljava/nio/channels/FileChannel;I)V

    goto :goto_0

    .line 616
    :cond_0
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 370
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method private writeInfoDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V
    .locals 3

    .line 346
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 347
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writePaddingToFile(Ljava/nio/channels/FileChannel;I)V

    :cond_0
    const/16 v0, 0x8

    .line 350
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 351
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 352
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->LIST:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    long-to-int v1, p3

    .line 353
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 354
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 355
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 358
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 359
    invoke-direct {p0, p1, p3, p4}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V

    return-void
.end method

.method private writePaddingToFile(Ljava/nio/channels/FileChannel;I)V
    .locals 0

    .line 406
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method


# virtual methods
.method public convertID3Chunk(Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;
    .locals 9

    .line 519
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 520
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getSizeOfID3TagOnly()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_0

    const-wide/16 v5, 0x1

    and-long v7, v1, v5

    cmp-long p2, v7, v3

    if-eqz p2, :cond_0

    add-long/2addr v1, v5

    .line 530
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p2

    long-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/OutputStream;I)V

    .line 534
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length p2, p2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 535
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    .line 536
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 537
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/OutputStream;I)V

    .line 539
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 540
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 544
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public convertInfoChunk(Lorg/jaudiotagger/tag/wav/WavTag;)Ljava/nio/ByteBuffer;
    .locals 10

    .line 434
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 435
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object p1

    .line 438
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getAll()Ljava/util/List;

    move-result-object v1

    .line 439
    new-instance v2, Lorg/jaudiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;

    invoke-direct {v2, p0}, Lorg/jaudiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;-><init>(Lorg/jaudiotagger/audio/wav/WavTagWriter;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 440
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, ":"

    const-string v5, " Writing:"

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 441
    check-cast v2, Lorg/jaudiotagger/tag/TagTextField;

    .line 442
    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagTextField;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jaudiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v6

    invoke-static {v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getByByFieldKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v6

    .line 443
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/jaudiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 444
    sget-object v7, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 447
    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/jaudiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 448
    array-length v8, v7

    invoke-static {v8}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeLEInt32(I)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 449
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 452
    array-length v8, v7

    int-to-long v8, v8

    invoke-static {v8, v9}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 453
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 457
    :cond_1
    sget-object v8, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    if-ne v6, v8, :cond_0

    .line 458
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteWavForTwonky()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 459
    sget-object v6, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TWONKY_TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lorg/jaudiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 460
    sget-object v6, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->TWONKY_TRACKNO:Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 462
    array-length v2, v7

    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeLEInt32(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 463
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 466
    array-length v2, v7

    int-to-long v4, v2

    invoke-static {v4, v5}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 474
    :cond_2
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getUnrecognisedFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 475
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 476
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/TagTextField;

    .line 477
    invoke-interface {v1}, Lorg/jaudiotagger/tag/TagTextField;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lorg/jaudiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 478
    sget-object v2, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/jaudiotagger/tag/TagTextField;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 479
    invoke-interface {v1}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 480
    array-length v2, v1

    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->getSizeLEInt32(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 481
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 484
    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 485
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 489
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 490
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 493
    sget v0, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 494
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->INFO:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 495
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 499
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 500
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 501
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 502
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 506
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public delete(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
    .locals 12

    .line 128
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Deleting metadata from file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 133
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->getExistingMetadata(Ljava/io/File;)Lorg/jaudiotagger/tag/wav/WavTag;

    move-result-object v3

    .line 136
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, ":Setting new length to:"

    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 137
    invoke-direct {p0, v3, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->checkExistingLocations(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;

    move-result-object v4

    .line 139
    iget-boolean v6, v4, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isContiguous:Z

    if-eqz v6, :cond_3

    .line 141
    iget-boolean v6, v4, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isAtEnd:Z

    if-eqz v6, :cond_1

    .line 142
    iget-boolean v4, v4, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    if-eqz v4, :cond_0

    .line 143
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    .line 146
    :cond_0
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    .line 152
    :cond_1
    iget-boolean v4, v4, Lorg/jaudiotagger/audio/wav/WavTagWriter$BothTagsFileStructure;->isInfoTagFirst:Z

    if-eqz v4, :cond_2

    .line 153
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 154
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getEndLocationInFileOfId3Chunk()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-direct {p0, v1, v3, v4}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto/16 :goto_0

    .line 156
    :cond_2
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 157
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-direct {p0, v1, v3, v4}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;II)V

    goto/16 :goto_0

    .line 163
    :cond_3
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v4

    .line 164
    invoke-direct {p0, v1, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v5

    .line 166
    invoke-direct {p0, v1, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v6

    .line 169
    invoke-direct {p0, v3, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isInfoTagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 170
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 171
    invoke-direct {p0, v1, v3, v6}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    goto/16 :goto_0

    .line 172
    :cond_4
    invoke-direct {p0, v3, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 174
    invoke-direct {p0, v1, v3, v5}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    goto/16 :goto_0

    .line 176
    :cond_5
    invoke-direct {p0, v1, v3, v6}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 178
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->getExistingMetadata(Ljava/io/File;)Lorg/jaudiotagger/tag/wav/WavTag;

    move-result-object v3

    .line 179
    invoke-direct {p0, v1, v3, v5}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    goto/16 :goto_0

    .line 184
    :cond_6
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 185
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v4

    .line 186
    invoke-direct {p0, v1, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfListInfoMetadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v6

    .line 188
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    .line 189
    sget-object v3, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 192
    :cond_7
    invoke-direct {p0, v1, v3, v6}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteInfoTagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    goto :goto_0

    .line 194
    :cond_8
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 195
    invoke-direct {p0, v1, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->seekToStartOfId3Metadata(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Lorg/jaudiotagger/audio/iff/ChunkHeader;

    move-result-object v4

    .line 197
    invoke-direct {p0, v3, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->isID3TagAtEndOfFileAllowingForPaddingByte(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 198
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 201
    :cond_9
    invoke-direct {p0, v1, v3, v4}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->deleteId3TagChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 207
    :cond_a
    :goto_0
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 211
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

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 209
    :goto_1
    :try_start_3
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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 211
    :goto_2
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, p1

    invoke-static {v0}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 212
    throw p2
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
    .locals 8

    const-string v0, ":"

    .line 280
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Writing tag to file:start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWavSaveOptions()Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    move-result-object v1

    .line 285
    :try_start_0
    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->getExistingMetadata(Ljava/io/File;)Lorg/jaudiotagger/tag/wav/WavTag;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 292
    :try_start_1
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v6, p2, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 293
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 294
    check-cast p1, Lorg/jaudiotagger/tag/wav/WavTag;

    .line 295
    sget-object v7, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    if-ne v1, v7, :cond_0

    .line 296
    invoke-direct {p0, p1, v3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveBoth(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 297
    :cond_0
    sget-object v7, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_ACTIVE:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    if-ne v1, v7, :cond_1

    .line 298
    invoke-direct {p0, p1, v3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveActive(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 299
    :cond_1
    sget-object v7, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    if-ne v1, v7, :cond_2

    .line 300
    invoke-direct {p0, p1, v3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveActiveExisting(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 301
    :cond_2
    sget-object v7, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    if-ne v1, v7, :cond_3

    .line 302
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->syncTagBeforeWrite()V

    .line 303
    invoke-direct {p0, p1, v3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveBoth(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    goto :goto_0

    .line 304
    :cond_3
    sget-object v7, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE_AND_SYNC:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    if-ne v1, v7, :cond_4

    .line 305
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->syncTagBeforeWrite()V

    .line 306
    invoke-direct {p0, p1, v3, v2}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->saveActiveExisting(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 312
    :goto_0
    invoke-direct {p0, v3}, Lorg/jaudiotagger/audio/wav/WavTagWriter;->rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    new-array p1, v5, [Ljava/io/Closeable;

    aput-object v6, p1, v4

    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    .line 310
    :cond_4
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " No setting for:WavSaveOptions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, v6

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v6, v3

    goto :goto_2

    :catch_1
    move-exception p1

    .line 314
    :goto_1
    :try_start_4
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
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 316
    :goto_2
    new-array p2, v5, [Ljava/io/Closeable;

    aput-object v6, p2, v4

    invoke-static {p2}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 317
    throw p1

    :catch_2
    move-exception p1

    .line 287
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
