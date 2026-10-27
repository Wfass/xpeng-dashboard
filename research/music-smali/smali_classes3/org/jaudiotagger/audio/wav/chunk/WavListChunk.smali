.class public Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;
.super Lorg/jaudiotagger/audio/iff/Chunk;
.source "WavListChunk.java"


# instance fields
.field private isValid:Z

.field private loggingName:Ljava/lang/String;

.field private tag:Lorg/jaudiotagger/tag/wav/WavTag;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;Lorg/jaudiotagger/tag/wav/WavTag;)V
    .locals 0

    .line 43
    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->isValid:Z

    .line 44
    iput-object p4, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->tag:Lorg/jaudiotagger/tag/wav/WavTag;

    .line 45
    iput-object p1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->loggingName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 6

    .line 57
    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 58
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavChunkType;->INFO:Lorg/jaudiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;

    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->tag:Lorg/jaudiotagger/tag/wav/WavTag;

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->loggingName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;-><init>(Lorg/jaudiotagger/tag/wav/WavTag;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoChunk;->readChunks(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 63
    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->tag:Lorg/jaudiotagger/tag/wav/WavTag;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->chunkHeader:Lorg/jaudiotagger/audio/iff/ChunkHeader;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->setStartLocationInFile(J)V

    .line 64
    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->tag:Lorg/jaudiotagger/tag/wav/WavTag;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/wav/WavTag;->getInfoTag()Lorg/jaudiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->chunkHeader:Lorg/jaudiotagger/audio/iff/ChunkHeader;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->chunkHeader:Lorg/jaudiotagger/audio/iff/ChunkHeader;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->setEndLocationInFile(J)V

    .line 65
    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->tag:Lorg/jaudiotagger/tag/wav/WavTag;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/tag/wav/WavTag;->setExistingInfoTag(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIFF-WAVE Header:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Is valid?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/jaudiotagger/audio/wav/chunk/WavListChunk;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
