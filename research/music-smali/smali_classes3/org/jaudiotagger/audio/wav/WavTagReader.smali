.class public Lorg/jaudiotagger/audio/wav/WavTagReader;
.super Ljava/lang/Object;
.source "WavTagReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private loggingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.wav"

    .line 46
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    return-void
.end method

.method private createDefaultMetadataTagsIfMissing(Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 1

    .line 94
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lorg/jaudiotagger/tag/wav/WavTag;->createDefaultID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/wav/WavTag;->setID3Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 97
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lorg/jaudiotagger/tag/wav/WavInfoTag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;-><init>()V

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/wav/WavTag;->setInfoTag(Lorg/jaudiotagger/tag/wav/WavInfoTag;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public read(Ljava/io/File;)Lorg/jaudiotagger/tag/wav/WavTag;
    .locals 9

    .line 64
    sget-object v0, Lorg/jaudiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Read Tag:start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lorg/jaudiotagger/tag/wav/WavTag;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWavOptions()Lorg/jaudiotagger/audio/wav/WavOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/wav/WavTag;-><init>(Lorg/jaudiotagger/audio/wav/WavOptions;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 70
    invoke-static {p1}, Lorg/jaudiotagger/audio/wav/WavRIFFHeader;->isValidHeader(Ljava/nio/channels/FileChannel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    .line 72
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/wav/WavTagReader;->readChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 80
    :cond_1
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v4, p1, v1

    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 82
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/wav/WavTagReader;->createDefaultMetadataTagsIfMissing(Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 83
    sget-object p1, Lorg/jaudiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Read Tag:end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-object v0

    .line 77
    :cond_2
    :try_start_2
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Wav RIFF Header not valid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v4, v3

    .line 80
    :goto_0
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v4, v0, v1

    invoke-static {v0}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 81
    throw p1
.end method

.method protected readChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/wav/WavTag;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 113
    new-instance v3, Lorg/jaudiotagger/audio/iff/ChunkHeader;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v4}, Lorg/jaudiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 114
    invoke-virtual {v3, v1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 118
    :cond_0
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v4

    .line 119
    sget-object v6, Lorg/jaudiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Next Id is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":FileLocation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ":Size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 120
    invoke-static {v4}, Lorg/jaudiotagger/audio/wav/WavChunkType;->get(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/WavChunkType;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v4, :cond_b

    .line 122
    sget-object v7, Lorg/jaudiotagger/audio/wav/WavTagReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavChunkType:[I

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/wav/WavChunkType;->ordinal()I

    move-result v4

    aget v4, v7, v4

    const-wide/16 v7, 0x8

    const-string v9, ":sizeIncHeader:"

    const-string v10, ":"

    if-eq v4, v6, :cond_9

    const/4 v11, 0x2

    const-wide/16 v12, 0x7

    if-eq v4, v11, :cond_7

    const/4 v11, 0x3

    if-eq v4, v11, :cond_5

    const/4 v5, 0x4

    const-string v7, " Found Corrupt id3 chunk, starting at Odd Location:"

    if-eq v4, v5, :cond_3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    .line 177
    new-instance v4, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v16

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v18

    move-object v14, v4

    invoke-direct/range {v14 .. v19}, Lorg/jaudiotagger/audio/iff/ChunkSummary;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v2, v4}, Lorg/jaudiotagger/tag/wav/WavTag;->addChunkSummary(Lorg/jaudiotagger/audio/iff/ChunkSummary;)V

    .line 178
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    add-long/2addr v4, v7

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    .line 169
    :cond_1
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v3

    if-nez v3, :cond_2

    .line 171
    invoke-virtual {v2, v6}, Lorg/jaudiotagger/tag/wav/WavTag;->setIncorrectlyAlignedTag(Z)V

    .line 173
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return v6

    .line 161
    :cond_3
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v3

    if-nez v3, :cond_4

    .line 163
    invoke-virtual {v2, v6}, Lorg/jaudiotagger/tag/wav/WavTag;->setIncorrectlyAlignedTag(Z)V

    .line 165
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return v6

    .line 147
    :cond_5
    new-instance v4, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v13

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v15

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lorg/jaudiotagger/audio/iff/ChunkSummary;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v2, v4}, Lorg/jaudiotagger/tag/wav/WavTag;->addChunkSummary(Lorg/jaudiotagger/audio/iff/ChunkSummary;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v4

    if-nez v4, :cond_6

    .line 149
    new-instance v4, Lorg/jaudiotagger/audio/wav/chunk/WavId3Chunk;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v1, v7}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {v4, v7, v3, v2}, Lorg/jaudiotagger/audio/wav/chunk/WavId3Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 150
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/iff/Chunk;->readChunk()Z

    move-result v2

    if-nez v2, :cond_c

    return v5

    .line 154
    :cond_6
    sget-object v2, Lorg/jaudiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Ignoring id3 chunk because already have one:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v9

    add-long/2addr v9, v7

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_7
    sget-object v4, Lorg/jaudiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Found Corrupt LIST Chunk, starting at Odd Location:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v3

    if-nez v3, :cond_8

    .line 141
    invoke-virtual {v2, v6}, Lorg/jaudiotagger/tag/wav/WavTag;->setIncorrectlyAlignedTag(Z)V

    .line 143
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return v6

    .line 124
    :cond_9
    new-instance v4, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v13

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v15

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lorg/jaudiotagger/audio/iff/ChunkSummary;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v2, v4}, Lorg/jaudiotagger/tag/wav/WavTag;->addChunkSummary(Lorg/jaudiotagger/audio/iff/ChunkSummary;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v4

    if-nez v4, :cond_a

    .line 126
    new-instance v4, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;

    iget-object v7, v0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v1, v8}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v4, v7, v8, v3, v2}, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;Lorg/jaudiotagger/tag/wav/WavTag;)V

    .line 127
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/iff/Chunk;->readChunk()Z

    move-result v2

    if-nez v2, :cond_c

    return v5

    .line 131
    :cond_a
    sget-object v2, Lorg/jaudiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Ignoring LIST chunk because already have one:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v9

    add-long/2addr v9, v7

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_b
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v2, v4, v7

    if-ltz v2, :cond_e

    .line 189
    sget-object v2, Lorg/jaudiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Skipping chunk bytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    add-long/2addr v4, v7

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 191
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    cmp-long v2, v4, v7

    if-gtz v2, :cond_d

    .line 198
    :cond_c
    :goto_0
    invoke-static {v1, v3}, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->ensureOnEqualBoundary(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    return v6

    .line 192
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Failed to move to invalid position to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " because file length is only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " indicates invalid chunk"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    sget-object v2, Lorg/jaudiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 195
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {v2, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/jaudiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Not a valid header, unable to read a sensible size:Header"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    sget-object v2, Lorg/jaudiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 187
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {v2, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
