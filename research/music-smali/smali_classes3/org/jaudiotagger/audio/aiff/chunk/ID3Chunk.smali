.class public Lorg/jaudiotagger/audio/aiff/chunk/ID3Chunk;
.super Lorg/jaudiotagger/audio/iff/Chunk;
.source "ID3Chunk.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private aiffTag:Lorg/jaudiotagger/tag/aiff/AiffTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.aiff.chunk"

    .line 22
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/aiff/chunk/ID3Chunk;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/tag/aiff/AiffTag;)V
    .locals 0

    .line 34
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 35
    iput-object p3, p0, Lorg/jaudiotagger/audio/aiff/chunk/ID3Chunk;->aiffTag:Lorg/jaudiotagger/tag/aiff/AiffTag;

    return-void
.end method

.method private isId3v2Tag(Ljava/nio/ByteBuffer;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    sget-object v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public readChunk()Z
    .locals 5

    .line 41
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v1, "Reading chunk"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/ID3Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/aiff/chunk/ID3Chunk;->isId3v2Tag(Ljava/nio/ByteBuffer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lorg/jaudiotagger/audio/aiff/chunk/ID3Chunk;->logger:Ljava/util/logging/Logger;

    const-string v2, "Invalid ID3 header for ID3 chunk"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return v1

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/ID3Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    return v1

    .line 61
    :cond_1
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>()V

    .line 62
    sget-object v2, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v3, "Reading ID3V2.4 tag"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>()V

    .line 58
    sget-object v2, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v3, "Reading ID3V2.3 tag"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>()V

    .line 54
    sget-object v2, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v3, "Reading ID3V2.2 tag"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 68
    :goto_0
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/chunk/ID3Chunk;->aiffTag:Lorg/jaudiotagger/tag/aiff/AiffTag;

    invoke-virtual {v2, v0}, Lorg/jaudiotagger/tag/aiff/AiffTag;->setID3Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 69
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/chunk/ID3Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 72
    :try_start_0
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/chunk/ID3Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->read(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 76
    sget-object v2, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading ID3 tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return v1
.end method
