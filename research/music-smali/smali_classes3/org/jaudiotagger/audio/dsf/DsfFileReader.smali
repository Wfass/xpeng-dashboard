.class public Lorg/jaudiotagger/audio/dsf/DsfFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader2;
.source "DsfFileReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader2;-><init>()V

    return-void
.end method

.method private readTag(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/dsf/DsdChunk;Ljava/lang/String;)Lorg/jaudiotagger/tag/Tag;
    .locals 6

    .line 90
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->getMetadataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 91
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->getMetadataOffset()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 92
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int p2, v2

    invoke-static {p1, p2}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lorg/jaudiotagger/audio/dsf/ID3Chunk;->readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dsf/ID3Chunk;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/dsf/ID3Chunk;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    const/4 v2, 0x2

    const-string v3, ""

    if-eq p2, v2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 104
    :try_start_0
    sget-object p1, Lorg/jaudiotagger/audio/dsf/DsfFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Unknown ID3v2 version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Returning an empty ID3v2 Tag."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    .line 102
    :cond_0
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/dsf/ID3Chunk;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p2, p1, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-object p2

    .line 100
    :cond_1
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/dsf/ID3Chunk;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p2, p1, v3}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-object p2

    .line 98
    :cond_2
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/dsf/ID3Chunk;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p2, p1, v3}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 108
    :catch_0
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Could not read ID3v2 tag:corruption"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_3
    sget-object p1, Lorg/jaudiotagger/audio/dsf/DsfFileReader;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " No existing ID3 tag(1)"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    .line 115
    :cond_4
    sget-object p1, Lorg/jaudiotagger/audio/dsf/DsfFileReader;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " No existing ID3 tag(2)"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/File;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 6

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
    sget v4, Lorg/jaudiotagger/audio/dsf/DsdChunk;->DSD_HEADER_LENGTH:I

    invoke-static {v2, v4}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dsf/DsdChunk;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 46
    sget v5, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    add-int/lit8 v5, v5, 0x8

    invoke-static {v2, v5}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 47
    invoke-static {v5}, Lorg/jaudiotagger/audio/dsf/FmtChunk;->readChunkHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dsf/FmtChunk;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 49
    invoke-virtual {v5, v4, v2}, Lorg/jaudiotagger/audio/dsf/FmtChunk;->readChunkData(Lorg/jaudiotagger/audio/dsf/DsdChunk;Ljava/nio/channels/FileChannel;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-object p1

    .line 51
    :cond_0
    :try_start_2
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Not a valid dsf file. Content does not include \'fmt \' chunk"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_1
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Not a valid dsf file. Content does not start with \'DSD \'"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v2

    .line 57
    :goto_0
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 58
    throw p1
.end method

.method protected getTag(Ljava/io/File;)Lorg/jaudiotagger/tag/Tag;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 67
    sget v4, Lorg/jaudiotagger/audio/dsf/DsdChunk;->DSD_HEADER_LENGTH:I

    invoke-static {v2, v4}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dsf/DsdChunk;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v4, p1}, Lorg/jaudiotagger/audio/dsf/DsfFileReader;->readTag(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/dsf/DsdChunk;Ljava/lang/String;)Lorg/jaudiotagger/tag/Tag;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-object p1

    .line 71
    :cond_0
    :try_start_2
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Not a valid dsf file. Content does not start with \'DSD \'."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v2

    .line 74
    :goto_0
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 75
    throw p1
.end method
