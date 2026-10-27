.class public Lorg/jaudiotagger/audio/wav/WavInfoReader;
.super Ljava/lang/Object;
.source "WavInfoReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private loggingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.wav"

    .line 44
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/wav/WavInfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/jaudiotagger/audio/wav/WavInfoReader;->loggingName:Ljava/lang/String;

    return-void
.end method

.method private calculateTrackLength(Lorg/jaudiotagger/audio/generic/GenericAudioHeader;)V
    .locals 4

    .line 84
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getNoOfSamples()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getSampleRateAsNumber()I

    move-result v0

    if-lez v0, :cond_1

    .line 86
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getNoOfSamples()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getSampleRateAsNumber()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getAudioDataLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 91
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getAudioDataLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getByteRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/audio/wav/WavInfoReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Wav Data Header Missing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public read(Ljava/io/File;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 9

    .line 54
    new-instance v0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 59
    invoke-static {p1}, Lorg/jaudiotagger/audio/wav/WavRIFFHeader;->isValidHeader(Ljava/nio/channels/FileChannel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    .line 61
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/wav/WavInfoReader;->readChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/generic/GenericAudioHeader;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 69
    :cond_1
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v4, p1, v1

    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 71
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/wav/WavInfoReader;->calculateTrackLength(Lorg/jaudiotagger/audio/generic/GenericAudioHeader;)V

    return-object v0

    .line 66
    :cond_2
    :try_start_2
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jaudiotagger/audio/wav/WavInfoReader;->loggingName:Ljava/lang/String;

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

    .line 69
    :goto_0
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v4, v0, v1

    invoke-static {v0}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 70
    throw p1
.end method

.method protected readChunk(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/generic/GenericAudioHeader;)Z
    .locals 9

    .line 102
    new-instance v0, Lorg/jaudiotagger/audio/iff/ChunkHeader;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    .line 103
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 107
    :cond_0
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v1

    .line 108
    sget-object v3, Lorg/jaudiotagger/audio/wav/WavInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/jaudiotagger/audio/wav/WavInfoReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Reading Chunk:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":starting at:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":sizeIncHeader:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v5

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 111
    invoke-static {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->get(Ljava/lang/String;)Lorg/jaudiotagger/audio/wav/WavChunkType;

    move-result-object v1

    const-string v3, " Skipping chunk bytes:"

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 115
    sget-object v5, Lorg/jaudiotagger/audio/wav/WavInfoReader$1;->$SwitchMap$org$jaudiotagger$audio$wav$WavChunkType:[I

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/wav/WavChunkType;->ordinal()I

    move-result v1

    aget v1, v5, v1

    if-eq v1, v4, :cond_4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    const/4 p2, 0x4

    if-eq v1, p2, :cond_1

    .line 150
    sget-object p2, Lorg/jaudiotagger/audio/wav/WavInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/WavInfoReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v5

    add-long/2addr v1, v5

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    .line 144
    :cond_1
    sget-object p2, Lorg/jaudiotagger/audio/wav/WavInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/WavInfoReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Found Corrupt LIST Chunk, starting at Odd Location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return v4

    .line 135
    :cond_2
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-static {p1, v1}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 136
    new-instance v3, Lorg/jaudiotagger/audio/wav/chunk/WavFormatChunk;

    invoke-direct {v3, v1, v0, p2}, Lorg/jaudiotagger/audio/wav/chunk/WavFormatChunk;-><init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;Lorg/jaudiotagger/audio/generic/GenericAudioHeader;)V

    .line 137
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/Chunk;->readChunk()Z

    move-result p2

    if-nez p2, :cond_6

    return v2

    .line 127
    :cond_3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setAudioDataLength(J)V

    .line 128
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setAudioDataStartPosition(Ljava/lang/Long;)V

    .line 129
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v5

    add-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setAudioDataEndPosition(Ljava/lang/Long;)V

    .line 130
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v5

    add-long/2addr v1, v5

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-static {p1, v1}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 118
    new-instance v3, Lorg/jaudiotagger/audio/wav/chunk/WavFactChunk;

    invoke-direct {v3, v1, v0, p2}, Lorg/jaudiotagger/audio/wav/chunk/WavFactChunk;-><init>(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/iff/ChunkHeader;Lorg/jaudiotagger/audio/generic/GenericAudioHeader;)V

    .line 119
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/iff/Chunk;->readChunk()Z

    move-result p2

    if-nez p2, :cond_6

    return v2

    .line 156
    :cond_5
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long p2, v1, v5

    if-ltz p2, :cond_8

    .line 162
    sget-object p2, Lorg/jaudiotagger/audio/wav/WavInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/audio/wav/WavInfoReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v5

    add-long/2addr v1, v5

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 165
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    cmp-long p2, v1, v5

    if-gtz p2, :cond_7

    .line 172
    :cond_6
    :goto_0
    invoke-static {p1, v0}, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->ensureOnEqualBoundary(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/iff/ChunkHeader;)V

    return v4

    .line 166
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/WavInfoReader;->loggingName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Failed to move to invalid position to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " because file length is only "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " indicates invalid chunk"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    sget-object p2, Lorg/jaudiotagger/audio/wav/WavInfoReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 169
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 157
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lorg/jaudiotagger/audio/wav/WavInfoReader;->loggingName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not a valid header, unable to read a sensible size:Header"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    sget-object p2, Lorg/jaudiotagger/audio/wav/WavInfoReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 160
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
