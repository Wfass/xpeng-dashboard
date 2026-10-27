.class public Lorg/jaudiotagger/audio/flac/FlacStreamReader;
.super Ljava/lang/Object;
.source "FlacStreamReader.java"


# static fields
.field public static final FLAC_STREAM_IDENTIFIER:Ljava/lang/String; = "fLaC"

.field public static final FLAC_STREAM_IDENTIFIER_LENGTH:I = 0x4

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private fc:Ljava/nio/channels/FileChannel;

.field private loggingName:Ljava/lang/String;

.field private startOfFlacInFile:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.flac"

    .line 20
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->fc:Ljava/nio/channels/FileChannel;

    .line 37
    iput-object p2, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->loggingName:Ljava/lang/String;

    return-void
.end method

.method private isFlacHeader()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->fc:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferBE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fLaC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isId3v2Tag()Z
    .locals 8

    .line 74
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->fc:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 75
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->fc:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->isId3Tag(Ljava/nio/channels/FileChannel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->FLAC_CONTAINS_ID3TAG:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isFlacHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    return v1
.end method


# virtual methods
.method public findStream()V
    .locals 4

    .line 49
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 57
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isFlacHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    return-void

    .line 64
    :cond_0
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isId3v2Tag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    return-void

    .line 69
    :cond_1
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->FLAC_NO_FLAC_HEADER_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: File empty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartOfFlacInFile()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    return v0
.end method
