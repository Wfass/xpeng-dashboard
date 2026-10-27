.class public Lorg/jaudiotagger/audio/flac/FlacInfoReader;
.super Ljava/lang/Object;
.source "FlacInfoReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.flac"

    .line 39
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(JF)I
    .locals 2

    .line 98
    sget v0, Lorg/jaudiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    sget v0, Lorg/jaudiotagger/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    long-to-float p1, p1

    div-float/2addr p1, p3

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public countMetaBlocks(Ljava/io/File;)I
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 112
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 114
    new-instance v4, Lorg/jaudiotagger/audio/flac/FlacStreamReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->findStream()V

    move v4, v1

    move v5, v4

    :goto_0
    if-nez v4, :cond_0

    .line 121
    invoke-static {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v4

    .line 122
    sget-object v6, Lorg/jaudiotagger/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ":Found block:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 124
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    :cond_0
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v3, p1, v1

    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return v5

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v2

    :goto_1
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-static {v0}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 130
    throw p1
.end method

.method public read(Ljava/io/File;)Lorg/jaudiotagger/audio/flac/FlacAudioHeader;
    .locals 10

    .line 43
    sget-object v0, Lorg/jaudiotagger/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 46
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 48
    new-instance v5, Lorg/jaudiotagger/audio/flac/FlacStreamReader;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->findStream()V

    move-object v5, v0

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 58
    invoke-static {v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v0

    .line 59
    sget-object v6, Lorg/jaudiotagger/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v6

    sget-object v7, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->STREAMINFO:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    if-ne v6, v7, :cond_1

    .line 61
    new-instance v5, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;

    invoke-direct {v5, v0, v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    .line 62
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":FLAC StreamInfo not valid"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 68
    :goto_1
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v0

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    if-eqz v5, :cond_3

    .line 78
    new-instance p1, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;

    invoke-direct {p1}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;-><init>()V

    .line 79
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getNoOfSamples()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->setNoOfSamples(Ljava/lang/Long;)V

    .line 80
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getPreciseLength()F

    move-result v0

    float-to-double v8, v0

    invoke-virtual {p1, v8, v9}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->setPreciseLength(D)V

    .line 81
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getNoOfChannels()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->setChannelNumber(I)V

    .line 82
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getSamplingRate()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->setSamplingRate(I)V

    .line 83
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getBitsPerSample()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->setBitsPerSample(I)V

    .line 84
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v2}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->setLossless(Z)V

    .line 86
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getMD5Signature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->setMd5(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {p1, v8, v9}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->setAudioDataLength(J)V

    .line 88
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->setAudioDataStartPosition(Ljava/lang/Long;)V

    .line 89
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->setAudioDataEndPosition(Ljava/lang/Long;)V

    .line 90
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->getAudioDataLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getPreciseLength()F

    move-result v0

    invoke-direct {p0, v6, v7, v0}, Lorg/jaudiotagger/audio/flac/FlacInfoReader;->computeBitrate(JF)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/flac/FlacAudioHeader;->setBitRate(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-static {v0}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-object p1

    .line 75
    :cond_3
    :try_start_2
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":Unable to find Flac StreamInfo"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v3, v0

    .line 93
    :goto_2
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-static {v0}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 94
    throw p1
.end method
