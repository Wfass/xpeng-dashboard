.class public Lorg/jaudiotagger/audio/aiff/AiffTagReader;
.super Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkReader;
.source "AiffTagReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.aiff"

    .line 28
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkReader;-><init>()V

    return-void
.end method

.method private readChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/lang/String;)Z
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 71
    sget-object v3, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Reading Tag Chunk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 73
    new-instance v3, Lorg/jaudiotagger/audio/iff/ChunkHeader;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v4}, Lorg/jaudiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 74
    invoke-virtual {v3, v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 77
    :cond_0
    sget-object v4, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Reading Chunk:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":starting at:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":sizeIncHeader:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    .line 82
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->get(Ljava/lang/String;)Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    move-result-object v7

    const-wide/16 v11, 0x1

    const-string v8, ":"

    const/4 v13, 0x1

    if-eqz v7, :cond_2

    .line 83
    sget-object v14, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->TAG:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    if-ne v7, v14, :cond_2

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    move-object/from16 v14, p0

    .line 84
    invoke-virtual {v14, v0, v3}, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->readChunkDataIntoBuffer(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 85
    new-instance v15, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v17

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v19

    move-object/from16 v21, v15

    invoke-direct/range {v15 .. v20}, Lorg/jaudiotagger/audio/iff/ChunkSummary;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v1, v15}, Lorg/jaudiotagger/tag/aiff/AiffTag;->addChunkSummary(Lorg/jaudiotagger/audio/iff/ChunkSummary;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v15

    if-nez v15, :cond_1

    .line 89
    new-instance v15, Lorg/jaudiotagger/audio/aiff/chunk/ID3Chunk;

    invoke-direct {v15, v3, v7, v1}, Lorg/jaudiotagger/audio/aiff/chunk/ID3Chunk;-><init>(Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/tag/aiff/AiffTag;)V

    .line 90
    invoke-virtual {v15}, Lorg/jaudiotagger/audio/iff/Chunk;->readChunk()Z

    .line 91
    invoke-virtual {v1, v13}, Lorg/jaudiotagger/tag/aiff/AiffTag;->setExistingId3Tag(Z)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->setStartLocationInFile(J)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->setEndLocationInFile(J)V

    .line 97
    :cond_1
    sget-object v1, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Ignoring ID3Tag because already have one:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v7

    sub-long/2addr v7, v11

    invoke-static {v7, v8}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v5

    add-long/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v14, p0

    if-eqz v7, :cond_4

    .line 106
    sget-object v4, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->CORRUPT_TAG_LATE:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    if-ne v7, v4, :cond_4

    .line 107
    sget-object v4, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Found Corrupt ID3 Chunk, starting at Odd Location:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v7

    sub-long/2addr v7, v11

    invoke-static {v7, v8}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    add-long/2addr v2, v9

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v2

    if-nez v2, :cond_3

    .line 113
    invoke-virtual {v1, v13}, Lorg/jaudiotagger/tag/aiff/AiffTag;->setIncorrectlyAlignedTag(Z)V

    .line 115
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    const-wide/16 v3, 0x9

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return v13

    :cond_4
    if-eqz v7, :cond_6

    .line 119
    sget-object v4, Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;->CORRUPT_TAG_EARLY:Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkType;

    if-ne v7, v4, :cond_6

    .line 120
    sget-object v4, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Found Corrupt ID3 Chunk, starting at Odd Location:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    add-long/2addr v2, v9

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v2

    if-nez v2, :cond_5

    .line 126
    invoke-virtual {v1, v13}, Lorg/jaudiotagger/tag/aiff/AiffTag;->setIncorrectlyAlignedTag(Z)V

    .line 128
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    const-wide/16 v3, 0x7

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return v13

    .line 131
    :cond_6
    sget-object v4, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Skipping Chunk:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 132
    new-instance v2, Lorg/jaudiotagger/audio/iff/ChunkSummary;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v7

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v9

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lorg/jaudiotagger/audio/iff/ChunkSummary;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/tag/aiff/AiffTag;->addChunkSummary(Lorg/jaudiotagger/audio/iff/ChunkSummary;)V

    .line 133
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 135
    :goto_0
    invoke-static {v0, v3}, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->ensureOnEqualBoundary(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    return v13
.end method


# virtual methods
.method public read(Ljava/io/File;)Lorg/jaudiotagger/tag/aiff/AiffTag;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 44
    new-instance v4, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-direct {v4}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;-><init>()V

    .line 45
    new-instance v5, Lorg/jaudiotagger/tag/aiff/AiffTag;

    invoke-direct {v5}, Lorg/jaudiotagger/tag/aiff/AiffTag;-><init>()V

    .line 47
    new-instance v6, Lorg/jaudiotagger/audio/aiff/AiffFileHeader;

    invoke-direct {v6}, Lorg/jaudiotagger/audio/aiff/AiffFileHeader;-><init>()V

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v4, v7}, Lorg/jaudiotagger/audio/aiff/AiffFileHeader;->readHeader(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;Ljava/lang/String;)J

    .line 49
    :cond_0
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-gez v4, :cond_1

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v5, v4}, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->readChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/tag/aiff/AiffTag;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    sget-object v2, Lorg/jaudiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " UnableToReadProcessChunk"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 56
    :cond_1
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/aiff/AiffTag;->getID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    if-nez p1, :cond_2

    .line 57
    invoke-static {}, Lorg/jaudiotagger/tag/aiff/AiffTag;->createDefaultID3Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    invoke-virtual {v5, p1}, Lorg/jaudiotagger/tag/aiff/AiffTag;->setID3Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_2
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v3, p1, v0

    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-object v5

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v2

    :goto_0
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 62
    throw p1
.end method
