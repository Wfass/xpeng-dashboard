.class public Lorg/jaudiotagger/audio/dsf/DsfFileWriter;
.super Lorg/jaudiotagger/audio/generic/AudioFileWriter2;
.source "DsfFileWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileWriter2;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)Ljava/nio/ByteBuffer;
    .locals 5

    .line 82
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getSize()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 87
    invoke-static {v1, v2}, Lorg/jaudiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    :cond_0
    long-to-int v1, v1

    .line 93
    invoke-virtual {p1, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/OutputStream;I)V

    .line 97
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 99
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 100
    invoke-virtual {p1, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/OutputStream;I)V

    move-object v0, v1

    .line 102
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected deleteTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
    .locals 11

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 125
    sget v3, Lorg/jaudiotagger/audio/dsf/DsdChunk;->DSD_HEADER_LENGTH:I

    invoke-static {v1, v3}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dsf/DsdChunk;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->getMetadataOffset()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 128
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->getMetadataOffset()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 129
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    sub-long/2addr v4, v8

    long-to-int v4, v4

    invoke-static {v1, v4}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lorg/jaudiotagger/audio/dsf/ID3Chunk;->readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dsf/ID3Chunk;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->getMetadataOffset()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 133
    invoke-virtual {v3, v6, v7}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->setMetadataOffset(J)V

    .line 134
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->setFileLength(J)V

    .line 135
    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 136
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->write()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :cond_0
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object v2, p2, p1

    invoke-static {p2}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 143
    :goto_0
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

    .line 145
    :goto_1
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, p1

    invoke-static {v0}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 146
    throw p2
.end method

.method protected writeTag(Lorg/jaudiotagger/tag/Tag;Ljava/io/File;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 42
    sget v4, Lorg/jaudiotagger/audio/dsf/DsdChunk;->DSD_HEADER_LENGTH:I

    invoke-static {v2, v4}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dsf/DsdChunk;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 44
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->getMetadataOffset()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 45
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->getMetadataOffset()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 46
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {v2, v5}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lorg/jaudiotagger/audio/dsf/ID3Chunk;->readChunk(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/dsf/ID3Chunk;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 49
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->getMetadataOffset()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 50
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/dsf/DsfFileWriter;->convert(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 51
    invoke-virtual {v2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "Could not find existing ID3v2 Tag"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 58
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->setMetadataOffset(J)V

    .line 59
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/dsf/DsfFileWriter;->convert(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 60
    invoke-virtual {v2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 61
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p1

    invoke-virtual {v4, p1, p2}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->setFileLength(J)V

    .line 62
    invoke-virtual {v2, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 63
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/dsf/DsdChunk;->write()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_2
    :goto_0
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v3, p1, v0

    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_2

    :catch_1
    move-exception p1

    .line 67
    :goto_1
    :try_start_2
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    :goto_2
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object v3, p2, v0

    invoke-static {p2}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 70
    throw p1
.end method
