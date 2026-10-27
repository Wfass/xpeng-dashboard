.class public Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;
.super Ljava/lang/Object;
.source "MP3AudioHeader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/AudioHeader;


# static fields
.field private static final CONVERTS_BYTE_TO_BITS:I = 0x8

.field private static final CONVERT_TO_KILOBITS:I = 0x3e8

.field private static final FILE_BUFFER_SIZE:I = 0x1388

.field private static final MIN_BUFFER_REMAINING_REQUIRED:I = 0xc4

.field private static final NO_SECONDS_IN_HOUR:I = 0xe10

.field private static final TYPE_MP3:Ljava/lang/String; = "mp3"

.field private static final isVbrIdentifier:C = '~'

.field public static logger:Ljava/util/logging/Logger;

.field private static final timeInFormat:Ljava/text/SimpleDateFormat;

.field private static final timeOutFormat:Ljava/text/SimpleDateFormat;

.field private static final timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private audioDataEndPosition:Ljava/lang/Long;

.field private audioDataStartPosition:Ljava/lang/Long;

.field private bitrate:J

.field private encoder:Ljava/lang/String;

.field private fileSize:J

.field protected mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

.field protected mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

.field protected mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

.field private numberOfFrames:J

.field private numberOfFramesEstimate:J

.field private startByte:J

.field private timePerFrame:D

.field private trackLength:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeInFormat:Ljava/text/SimpleDateFormat;

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutFormat:Ljava/text/SimpleDateFormat;

    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "kk:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;

    const-string v0, "org.jaudiotagger.audio.mp3"

    .line 88
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->seek(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No audio header found within"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->seek(Ljava/io/File;J)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 141
    :cond_0
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    sget-object p3, Lorg/jaudiotagger/logging/ErrorMessage;->NO_AUDIO_HEADER_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p3, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getTimePerFrame()D
    .locals 2

    .line 504
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    return-wide v0
.end method

.method private isNextFrameValid(Ljava/io/File;JLjava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;)Z
    .locals 4

    .line 339
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking next frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":fpc:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "skipping to:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 345
    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 350
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v0

    const/16 v1, 0x12c4

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 352
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Frame size is too large to be a frame:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return v2

    .line 357
    :cond_1
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v1

    const/16 v3, 0xc4

    add-int/2addr v1, v3

    if-gt v0, v1, :cond_4

    .line 359
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer too small, need to reload, buffer size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 361
    invoke-virtual {p5, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 362
    invoke-virtual {p5}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p1

    invoke-virtual {p5, p4, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 363
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 367
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    if-gt p1, v3, :cond_2

    .line 370
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p2, "Nearly at end of file, no header found:"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return v2

    .line 375
    :cond_2
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    iget-object p2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result p2

    add-int/2addr p2, v3

    if-gt p1, p2, :cond_3

    .line 378
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p2, "Nearly at end of file, no room for next frame, no header found:"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return v2

    :cond_3
    move p1, v2

    .line 384
    :cond_4
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 385
    invoke-static {p4}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 389
    :try_start_0
    invoke-static {p4}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 390
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p3, "Check next frame confirms is an audio header "

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    .line 395
    :catch_0
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p3, "Check next frame has identified this is not an audio header"

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_5
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string p3, "isMPEGFrame has identified this is not an audio header"

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 404
    :goto_0
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v2
.end method


# virtual methods
.method public getAudioDataEndPosition()Ljava/lang/Long;
    .locals 1

    .line 864
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getAudioDataLength()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x0

    .line 847
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getAudioDataStartPosition()Ljava/lang/Long;
    .locals 1

    .line 853
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getBitRate()Ljava/lang/String;
    .locals 3

    .line 641
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    const/16 v1, 0x7e

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isVbr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 645
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 651
    :cond_1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitRateAsNumber()J
    .locals 2

    .line 632
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    return-wide v0
.end method

.method public getBitsPerSample()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getByteRate()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    .line 710
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getChannelModeAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmphasis()Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getEmphasisAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoder()Ljava/lang/String;
    .locals 1

    .line 775
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    const-string v0, "mp3"

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 2

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersionAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getLayerAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMp3StartByte()J
    .locals 2

    .line 428
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    return-wide v0
.end method

.method public getMpegLayer()Ljava/lang/String;
    .locals 1

    .line 694
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getLayerAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMpegVersion()Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersionAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoOfSamples()Ljava/lang/Long;
    .locals 2

    .line 465
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfFrames()J
    .locals 2

    .line 459
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    return-wide v0
.end method

.method public getNumberOfFramesEstimate()J
    .locals 2

    .line 473
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    return-wide v0
.end method

.method public getPreciseTrackLength()D
    .locals 2

    .line 525
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->trackLength:D

    return-wide v0
.end method

.method public getSampleRate()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRateAsNumber()I
    .locals 1

    .line 661
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrackLength()I
    .locals 2

    .line 530
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getPreciseTrackLength()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getTrackLengthAsString()Ljava/lang/String;
    .locals 6

    .line 542
    :try_start_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getTrackLength()I

    move-result v0

    int-to-long v0, v0

    .line 543
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeInFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :try_start_1
    sget-object v3, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeInFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 546
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v4, 0xe10

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 550
    :try_start_2
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 552
    :try_start_3
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 553
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 557
    :cond_0
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v0
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 559
    :try_start_5
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timeOutOverAnHourFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    .line 560
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_2
    move-exception v0

    .line 546
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 565
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getPreciseTrackLength()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " failed with ParseException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public isCopyrighted()Z
    .locals 1

    .line 752
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isCopyrighted()Z

    move-result v0

    return v0
.end method

.method public isLossless()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .line 757
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isOriginal()Z

    move-result v0

    return v0
.end method

.method public isPadding()Z
    .locals 1

    .line 762
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPadding()Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 747
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPrivate()Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 742
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isProtected()Z

    move-result v0

    return v0
.end method

.method public isVariableBitRate()Z
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isVbr()Z

    move-result v0

    return v0

    .line 730
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    .line 732
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->isVbr()Z

    move-result v0

    return v0

    .line 736
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isVariableBitRate()Z

    move-result v0

    return v0
.end method

.method public seek(Ljava/io/File;J)Z
    .locals 11

    .line 163
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    const/16 v1, 0x1388

    .line 167
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 170
    invoke-virtual {v7, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 176
    invoke-virtual {v7, v8, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 177
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v9, 0x0

    move v1, v9

    .line 187
    :cond_0
    :try_start_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0xc4

    if-gt v2, v3, :cond_2

    .line 189
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 190
    invoke-virtual {v7, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 191
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v7, v8, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 192
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 193
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v2, v3, :cond_2

    if-eqz v7, :cond_1

    .line 298
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 303
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return v9

    .line 200
    :cond_2
    :try_start_1
    invoke-static {v8}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x1

    if-eqz v2, :cond_8

    .line 204
    :try_start_2
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found Possible header at:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 209
    :cond_3
    invoke-static {v8}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    move-result-object v2

    iput-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;
    :try_end_2
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    :try_start_3
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-static {v8, v1}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isXingFrame(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 215
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Found Possible XingHeader"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    :cond_4
    :try_start_4
    invoke-static {v1}, Lorg/jaudiotagger/audio/mp3/XingFrame;->parseXingFrame(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/XingFrame;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;
    :try_end_4
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 231
    :cond_5
    :try_start_5
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-static {v8, v1}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->isVbriFrame(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 233
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 235
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    const-string v3, "Found Possible VbriHeader"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    :cond_6
    :try_start_6
    invoke-static {v1}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->parseVBRIFrame(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/VbriFrame;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;
    :try_end_6
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    :goto_0
    move v9, v10

    goto :goto_2

    :cond_7
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, v8

    move-object v6, v7

    .line 259
    :try_start_7
    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->isNextFrameValid(Ljava/io/File;JLjava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;)Z

    move-result v1
    :try_end_7
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_8

    goto :goto_1

    :catch_1
    move v1, v10

    .line 276
    :catch_2
    :cond_8
    :try_start_8
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v10

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    if-eqz v1, :cond_0

    :goto_1
    move v9, v1

    :goto_2
    if-eqz v7, :cond_9

    .line 298
    :goto_3
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 303
    :cond_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 290
    :try_start_9
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "IOException occurred whilst trying to find sync"

    invoke-virtual {p2, p3, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    throw p1

    :catch_4
    move-exception v1

    .line 285
    sget-object v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Reached end of file without finding sync match"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v7, :cond_9

    goto :goto_3

    .line 308
    :goto_4
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 310
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Return found matching mp3 header starting at"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 312
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setFileSize(J)V

    .line 313
    invoke-virtual {p0, p2, p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setMp3StartByte(J)V

    .line 314
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setTimePerFrame()V

    .line 315
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setNumberOfFrames()V

    .line 316
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setTrackLength()V

    .line 317
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setBitRate()V

    .line 318
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setEncoder()V

    return v9

    :goto_5
    if-eqz v7, :cond_b

    .line 298
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 303
    :cond_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 305
    throw p1
.end method

.method public setAudioDataEndPosition(Ljava/lang/Long;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    return-void
.end method

.method public setAudioDataStartPosition(Ljava/lang/Long;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    return-void
.end method

.method protected setBitRate()V
    .locals 9

    .line 584
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    const-wide/16 v1, 0x8

    const-wide v3, 0x408f400000000000L    # 1000.0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isVbr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isAudioSizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getAudioSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 588
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getAudioSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-double v0, v0

    iget-wide v5, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v5, v3

    div-double/2addr v0, v5

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    .line 592
    :cond_0
    iget-wide v5, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    iget-wide v7, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    sub-long/2addr v5, v7

    mul-long/2addr v5, v1

    long-to-double v0, v5

    iget-wide v5, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v5, v3

    div-double/2addr v0, v5

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_3

    .line 597
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getAudioSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 599
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getAudioSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-double v0, v0

    iget-wide v5, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v5, v3

    div-double/2addr v0, v5

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    .line 603
    :cond_2
    iget-wide v5, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    iget-wide v7, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    sub-long/2addr v5, v7

    mul-long/2addr v5, v1

    long-to-double v0, v5

    iget-wide v5, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v5, v7

    mul-double/2addr v5, v3

    div-double/2addr v0, v5

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    goto :goto_0

    .line 608
    :cond_3
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    :goto_0
    return-void
.end method

.method protected setEncoder()V
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getLameFrame()Lorg/jaudiotagger/audio/mp3/LameFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getLameFrame()Lorg/jaudiotagger/audio/mp3/LameFrame;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/LameFrame;->getEncoder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getEncoder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method protected setFileSize(J)V
    .locals 0

    .line 785
    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    return-void
.end method

.method protected setMp3StartByte(J)V
    .locals 0

    .line 415
    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    return-void
.end method

.method protected setNumberOfFrames()V
    .locals 4

    .line 437
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    iget-wide v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    .line 439
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->isFrameCountEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->getFrameCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    goto :goto_0

    .line 443
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->getFrameCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    goto :goto_0

    .line 449
    :cond_1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    :goto_0
    return-void
.end method

.method protected setTimePerFrame()V
    .locals 4

    .line 483
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getNoOfSamples()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    .line 487
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getVersion()I

    move-result v0

    if-nez v0, :cond_2

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getLayer()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getLayer()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 491
    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getNumberOfChannels()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 493
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    :cond_2
    return-void
.end method

.method protected setTrackLength()V
    .locals 4

    .line 516
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    long-to-double v0, v0

    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getTimePerFrame()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->trackLength:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " encoder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->encoder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startByte:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->startByte:J

    .line 796
    invoke-static {v1, v2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " numberOfFrames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFrames:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " numberOfFramesEst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->numberOfFramesEstimate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " timePerFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->timePerFrame:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " bitrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->bitrate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " trackLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getTrackLengthAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    if-eqz v1, :cond_0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 809
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mpegframeheader:false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    :goto_0
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    if-eqz v1, :cond_1

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3XingFrame:Lorg/jaudiotagger/audio/mp3/XingFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/XingFrame;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 818
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mp3XingFrame:false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 821
    :goto_1
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    if-eqz v1, :cond_2

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3VbriFrame:Lorg/jaudiotagger/audio/mp3/VbriFrame;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/VbriFrame;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 827
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mp3VbriFrame:false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method
