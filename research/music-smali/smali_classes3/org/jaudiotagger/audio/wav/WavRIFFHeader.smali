.class public Lorg/jaudiotagger/audio/wav/WavRIFFHeader;
.super Ljava/lang/Object;
.source "WavRIFFHeader.java"


# static fields
.field public static final RIFF_SIGNATURE:Ljava/lang/String; = "RIFF"

.field public static final WAVE_SIGNATURE:Ljava/lang/String; = "WAVE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidHeader(Ljava/nio/channels/FileChannel;)Z
    .locals 4

    .line 42
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->HEADER_LENGTH:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 46
    sget v0, Lorg/jaudiotagger/audio/iff/IffHeaderChunk;->HEADER_LENGTH:I

    invoke-static {p0, v0}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 47
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RIFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WAVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 44
    :cond_1
    new-instance p0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    const-string v0, "This is not a WAV File (<12 bytes)"

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
