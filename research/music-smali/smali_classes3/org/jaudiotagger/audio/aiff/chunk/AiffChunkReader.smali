.class public abstract Lorg/jaudiotagger/audio/aiff/chunk/AiffChunkReader;
.super Ljava/lang/Object;
.source "AiffChunkReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected readChunkDataIntoBuffer(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 26
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 27
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p2
.end method
