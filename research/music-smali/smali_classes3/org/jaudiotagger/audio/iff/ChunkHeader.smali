.class public Lorg/jaudiotagger/audio/iff/ChunkHeader;
.super Ljava/lang/Object;
.source "ChunkHeader.java"


# static fields
.field public static final CHUNK_HEADER_SIZE:I = 0x8


# instance fields
.field private byteOrder:Ljava/nio/ByteOrder;

.field private chunkId:Ljava/lang/String;

.field private size:J

.field private startLocationInFile:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->chunkId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->size:J

    return-wide v0
.end method

.method public getStartLocationInFile()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->startLocationInFile:J

    return-wide v0
.end method

.method public readHeader(Ljava/io/RandomAccessFile;)Z
    .locals 3

    const/16 v0, 0x8

    .line 55
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->startLocationInFile:J

    .line 57
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 58
    iget-object p1, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 59
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->chunkId:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->size:J

    const/4 p1, 0x1

    return p1
.end method

.method public readHeader(Ljava/nio/channels/FileChannel;)Z
    .locals 3

    const/16 v0, 0x8

    .line 37
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->startLocationInFile:J

    .line 39
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 40
    iget-object p1, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 41
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->chunkId:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->size:J

    const/4 p1, 0x1

    return p1
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->chunkId:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 119
    iput-wide p1, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->size:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "startLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeHeader()Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x8

    .line 73
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 75
    iget-object v1, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->chunkId:Ljava/lang/String;

    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 76
    iget-wide v1, p0, Lorg/jaudiotagger/audio/iff/ChunkHeader;->size:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method
