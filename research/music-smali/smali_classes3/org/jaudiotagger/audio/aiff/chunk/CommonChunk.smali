.class public Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;
.super Lorg/jaudiotagger/audio/iff/Chunk;
.source "CommonChunk.java"


# instance fields
.field private aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;)V
    .locals 0

    .line 29
    invoke-direct {p0, p2, p1}, Lorg/jaudiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    .line 30
    iput-object p3, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 13

    .line 38
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->u(S)I

    move-result v0

    .line 39
    iget-object v1, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    .line 40
    iget-object v3, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lorg/jaudiotagger/audio/generic/Utils;->u(S)I

    move-result v3

    .line 41
    iget-object v4, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lorg/jaudiotagger/audio/aiff/AiffUtil;->read80BitDouble(Ljava/nio/ByteBuffer;)D

    move-result-wide v4

    .line 45
    iget-object v6, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->getFileType()Lorg/jaudiotagger/audio/aiff/AiffType;

    move-result-object v6

    sget-object v7, Lorg/jaudiotagger/audio/aiff/AiffType;->AIFC:Lorg/jaudiotagger/audio/aiff/AiffType;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_5

    .line 49
    iget-object v6, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-nez v6, :cond_0

    return v9

    .line 53
    :cond_0
    iget-object v6, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v6}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 54
    sget-object v7, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->SOWT:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 56
    iget-object v7, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    sget-object v10, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;->LITTLE_ENDIAN:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    invoke-virtual {v7, v10}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setEndian(Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;)V

    .line 58
    :cond_1
    iget-object v7, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lorg/jaudiotagger/audio/generic/Utils;->readPascalString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_6

    .line 64
    invoke-static {v6}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->getByCode(Ljava/lang/String;)Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 67
    invoke-virtual {v10}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->getCompression()Ljava/lang/String;

    move-result-object v7

    .line 68
    iget-object v11, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v10}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->isLossless()Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setLossless(Z)V

    .line 70
    sget-object v11, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->NONE:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    if-ne v10, v11, :cond_3

    .line 71
    iget-object v10, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v10, v9}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setVariableBitRate(Z)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v10, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v10, v9}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setLossless(Z)V

    .line 80
    :cond_3
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 82
    iget-object v7, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v7, v6}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_4
    iget-object v6, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v6, v7}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_5
    iget-object v6, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v6, v8}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setLossless(Z)V

    .line 94
    iget-object v6, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    sget-object v7, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->NONE:Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/aiff/chunk/AiffCompressionType;->getCompression()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 96
    iget-object v6, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v6, v9}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setVariableBitRate(Z)V

    .line 99
    :cond_6
    :goto_1
    iget-object v6, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v6, v3}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setBitsPerSample(I)V

    .line 100
    iget-object v3, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    double-to-int v6, v4

    invoke-virtual {v3, v6}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setSamplingRate(I)V

    .line 101
    iget-object v3, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v3, v0}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setChannelNumber(I)V

    .line 102
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    long-to-double v6, v1

    div-double/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setPreciseLength(D)V

    .line 103
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->setNoOfSamples(Ljava/lang/Long;)V

    return v8
.end method
