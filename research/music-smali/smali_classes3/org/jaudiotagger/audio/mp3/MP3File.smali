.class public Lorg/jaudiotagger/audio/mp3/MP3File;
.super Lorg/jaudiotagger/audio/AudioFile;
.source "MP3File.java"


# static fields
.field public static final LOAD_ALL:I = 0xe

.field public static final LOAD_IDV1TAG:I = 0x2

.field public static final LOAD_IDV2TAG:I = 0x4

.field public static final LOAD_LYRICS3:I = 0x8

.field private static final MINIMUM_FILESIZE:I = 0x96

.field protected static tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;


# instance fields
.field private id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

.field private id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

.field private id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

.field private lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/jaudiotagger/audio/AudioFile;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 61
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 66
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;

    .line 72
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/16 v0, 0xe

    .line 582
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZ)V
    .locals 5

    .line 412
    invoke-direct {p0}, Lorg/jaudiotagger/audio/AudioFile;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 61
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 66
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;

    .line 72
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 416
    :try_start_0
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    .line 419
    invoke-virtual {p0, p1, p3}, Lorg/jaudiotagger/audio/mp3/MP3File;->checkFilePermissions(Ljava/io/File;Z)Ljava/io/RandomAccessFile;

    move-result-object v0

    .line 422
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getV2TagSizeIfExists(Ljava/io/File;)J

    move-result-wide v1

    .line 423
    sget-object p3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TagHeaderSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 424
    new-instance p3, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-direct {p3, p1, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    iput-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 427
    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    check-cast p3, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-eqz p3, :cond_0

    .line 429
    sget-object p3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First header found after tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 430
    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    check-cast p3, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-direct {p0, v1, v2, p3}, Lorg/jaudiotagger/audio/mp3/MP3File;->checkAudioStart(JLorg/jaudiotagger/audio/mp3/MP3AudioHeader;)Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    move-result-object p3

    iput-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 434
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->readV1Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V

    .line 437
    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    check-cast p3, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    long-to-int p3, v1

    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/mp3/MP3File;->readV2Tag(Ljava/io/File;II)V

    .line 443
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 445
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->tag:Lorg/jaudiotagger/tag/Tag;

    goto :goto_0

    .line 447
    :cond_1
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-eqz p1, :cond_2

    .line 449
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->tag:Lorg/jaudiotagger/tag/Tag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 456
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 458
    :cond_4
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private checkAudioStart(JLorg/jaudiotagger/audio/mp3/MP3AudioHeader;)Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;
    .locals 9

    .line 328
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_ID3TAG_LENGTH_INCORRECT:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, p2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 333
    new-instance v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    .line 334
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking from start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v7

    cmp-long v1, v1, v7

    if-nez v1, :cond_0

    .line 341
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_START_OF_AUDIO_CONFIRMED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 342
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    .line 341
    invoke-virtual {p2, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-object p3

    .line 349
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_RECALCULATED_POSSIBLE_START_OF_MP3_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 350
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 349
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v7

    cmp-long v1, v1, v7

    if-nez v1, :cond_1

    .line 355
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array p3, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    .line 356
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v5

    .line 355
    invoke-virtual {p2, p3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    :cond_1
    long-to-int p1, p1

    .line 363
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    long-to-int p2, v1

    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->isFilePortionNull(II)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p3

    .line 369
    :cond_2
    new-instance p1, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    iget-object p2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    iget-object v3, v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->mp3FrameHeader:Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    .line 370
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v3

    int-to-long v7, v3

    add-long/2addr v1, v7

    invoke-direct {p1, p2, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    .line 374
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v7

    cmp-long p2, v1, v7

    if-nez p2, :cond_3

    .line 376
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_START_OF_AUDIO_CONFIRMED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 377
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 376
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object p3

    .line 383
    :cond_3
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide p1

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getNumberOfFrames()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-nez p1, :cond_4

    .line 385
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array p3, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    .line 386
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v5

    .line 385
    invoke-virtual {p2, p3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    .line 392
    :cond_4
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_RECALCULATED_START_OF_MP3_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 393
    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/jaudiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 392
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object p3
.end method

.method private static createPlainTextStructureFormatter()V
    .locals 1

    .line 1058
    new-instance v0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;

    invoke-direct {v0}, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    return-void
.end method

.method private static createXMLStructureFormatter()V
    .locals 1

    .line 1053
    new-instance v0, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;

    invoke-direct {v0}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    return-void
.end method

.method public static getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;
    .locals 1

    .line 1063
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    return-object v0
.end method

.method private isFilePortionNull(II)Z
    .locals 4

    .line 281
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking file portion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/jaudiotagger/logging/Hex;->asHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/jaudiotagger/logging/Hex;->asHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 286
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 287
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    int-to-long v2, p1

    .line 288
    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sub-int/2addr p2, p1

    .line 289
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 290
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 291
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 293
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 308
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return p1

    :cond_2
    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 308
    :cond_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_4

    .line 303
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    if-eqz v1, :cond_5

    .line 308
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 310
    :cond_5
    throw p1
.end method

.method private readLyrics3Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V
    .locals 0

    return-void
.end method

.method private readV1Tag(Ljava/io/File;Ljava/io/RandomAccessFile;I)V
    .locals 1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 138
    sget-object p3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v0, "Attempting to read id3v1tags"

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 141
    :try_start_0
    new-instance p3, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;
    :try_end_0
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    sget-object p3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v0, "No ids3v11 tag found"

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 150
    :goto_0
    :try_start_1
    iget-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-nez p3, :cond_0

    .line 152
    new-instance p3, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;
    :try_end_1
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 157
    :catch_1
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string p2, "No id3v1 tag found"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method private readV2Tag(Ljava/io/File;II)V
    .locals 7

    const/16 v0, 0xa

    if-lt p3, v0, :cond_2

    .line 178
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "Attempting to read id3v2tags"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 182
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    :try_start_1
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 184
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v5, 0x0

    invoke-virtual {v0, p3, v5, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 185
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    .line 189
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_2
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 196
    :catch_0
    :try_start_3
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v0, "No id3v24 tag found"

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    :goto_0
    :try_start_4
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-nez p2, :cond_0

    .line 203
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_4
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 208
    :catch_1
    :try_start_5
    sget-object p2, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v0, "No id3v23 tag found"

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    :cond_0
    :goto_1
    :try_start_6
    iget-object p2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-nez p2, :cond_1

    .line 215
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_6
    .catch Lorg/jaudiotagger/tag/TagNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 220
    :catch_2
    :try_start_7
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string p2, "No id3v22 tag found"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 224
    :cond_1
    :goto_2
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v4, p1, v2

    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v4, v0

    :goto_3
    new-array p2, v3, [Ljava/io/Closeable;

    aput-object v4, p2, v2

    invoke-static {p2}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 225
    throw p1

    .line 229
    :cond_2
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough room for valid id3v2 tag:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 2

    .line 874
    :try_start_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->save()V
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 886
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 882
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 878
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/NoWritePermissionsException;

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/NoWritePermissionsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createDefaultTag()Lorg/jaudiotagger/tag/Tag;
    .locals 2

    .line 1094
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V24:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_0

    .line 1096
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>()V

    return-object v0

    .line 1098
    :cond_0
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V23:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_1

    .line 1100
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>()V

    return-object v0

    .line 1102
    :cond_1
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V22:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    if-ne v0, v1, :cond_2

    .line 1104
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>()V

    return-object v0

    .line 1107
    :cond_2
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>()V

    return-object v0
.end method

.method public delete(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .locals 3

    .line 839
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractTag;->delete(Ljava/io/RandomAccessFile;)V

    .line 841
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 842
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 844
    iput-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 847
    :cond_0
    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz p1, :cond_1

    .line 849
    iput-object v1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    :cond_1
    return-void
.end method

.method public displayStructureAsPlainText()Ljava/lang/String;
    .locals 3

    .line 1037
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->createPlainTextStructureFormatter()V

    .line 1038
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1041
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->createStructure()V

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1045
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructure()V

    .line 1047
    :cond_1
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 1048
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public displayStructureAsXML()Ljava/lang/String;
    .locals 3

    .line 1018
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->createXMLStructureFormatter()V

    .line 1019
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->createStructure()V

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1026
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructure()V

    .line 1028
    :cond_1
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 1029
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->tagFormatter:Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extractID3v2TagDataIntoFile(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 508
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    check-cast v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v0

    long-to-int v0, v0

    if-ltz v0, :cond_0

    .line 513
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 514
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 515
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 516
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 519
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 520
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 521
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 522
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 523
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object p1

    .line 526
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    const-string v0, "There is no ID3v2Tag data in this file"

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHash()[B
    .locals 2

    const-string v0, "MD5"

    const v1, 0x8000

    .line 672
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3File;->getHash(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getHash(I)[B
    .locals 1

    const-string v0, "MD5"

    .line 656
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/audio/mp3/MP3File;->getHash(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public getHash(Ljava/lang/String;)[B
    .locals 1

    const v0, 0x8000

    .line 639
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getHash(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public getHash(Ljava/lang/String;I)[B
    .locals 8

    .line 688
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getFile()Ljava/io/File;

    move-result-object v0

    .line 689
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getMP3StartByte(Ljava/io/File;)J

    move-result-wide v1

    .line 692
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->hasID3v1Tag()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 693
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    move-result-object v3

    .line 694
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getSize()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 697
    :goto_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 699
    new-array p2, p2, [B

    .line 701
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 703
    invoke-virtual {v5, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 706
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long/2addr v6, v1

    int-to-long v0, v3

    sub-long/2addr v6, v0

    .line 707
    array-length v0, p2

    :goto_1
    int-to-long v1, v0

    cmp-long v1, v1, v6

    if-gtz v1, :cond_1

    .line 711
    invoke-virtual {v5, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 713
    invoke-virtual {p1, p2, v4, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 714
    array-length v1, p2

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    long-to-int v1, v6

    sub-int/2addr v1, v0

    .line 716
    array-length v0, p2

    add-int/2addr v1, v0

    invoke-virtual {v5, p2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 717
    invoke-virtual {p1, p2, v4, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 719
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 721
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return-object p1
.end method

.method public getID3v1Tag()Lorg/jaudiotagger/tag/id3/ID3v1Tag;
    .locals 1

    .line 623
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-object v0
.end method

.method public getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
    .locals 1

    .line 779
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-object v0
.end method

.method public getID3v2TagAsv24()Lorg/jaudiotagger/tag/id3/ID3v24Tag;
    .locals 1

    .line 787
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    return-object v0
.end method

.method public getMP3AudioHeader()Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;
    .locals 1

    .line 535
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getAudioHeader()Lorg/jaudiotagger/audio/AudioHeader;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    return-object v0
.end method

.method public getMP3StartByte(Ljava/io/File;)J
    .locals 5

    .line 474
    :try_start_0
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getV2TagSizeIfExists(Ljava/io/File;)J

    move-result-wide v0

    .line 476
    new-instance v2, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    invoke-direct {v2, p1, v0, v1}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;-><init>(Ljava/io/File;J)V

    .line 477
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-eqz p1, :cond_0

    .line 479
    sget-object p1, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First header found after tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 480
    invoke-direct {p0, v0, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3File;->checkAudioStart(JLorg/jaudiotagger/audio/mp3/MP3AudioHeader;)Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    move-result-object v2

    .line 482
    :cond_0
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v0
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 490
    throw p1

    :catch_1
    move-exception p1

    .line 486
    throw p1
.end method

.method public getTagAndConvertOrCreateAndSetDefault()Lorg/jaudiotagger/tag/Tag;
    .locals 3

    .line 1139
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getTagOrCreateDefault()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    .line 1140
    move-object v1, v0

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jaudiotagger/audio/mp3/MP3File;->convertID3Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/reference/ID3V2Version;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1143
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/mp3/MP3File;->setTag(Lorg/jaudiotagger/tag/Tag;)V

    goto :goto_0

    .line 1147
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;->setTag(Lorg/jaudiotagger/tag/Tag;)V

    .line 1149
    :goto_0
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTagOrCreateDefault()Lorg/jaudiotagger/tag/Tag;
    .locals 1

    .line 1120
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getID3v2Tag()Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->createDefaultTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasID3v1Tag()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasID3v2Tag()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public precheck(Ljava/io/File;)V
    .locals 7

    .line 898
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 904
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isCheckIsWritable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 907
    new-instance v0, Ljava/io/IOException;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x96

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    return-void

    .line 912
    :cond_2
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 913
    new-instance v0, Ljava/io/IOException;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_IS_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_3
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 901
    new-instance v0, Ljava/io/IOException;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save()V
    .locals 1

    .line 861
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/mp3/MP3File;->save(Ljava/io/File;)V

    return-void
.end method

.method public save(Ljava/io/File;)V
    .locals 12

    .line 928
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    .line 930
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/mp3/MP3File;->precheck(Ljava/io/File;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 939
    :try_start_0
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v2Save()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "rw"

    if-eqz v4, :cond_1

    .line 941
    :try_start_1
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-nez v4, :cond_0

    .line 943
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 944
    :try_start_2
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v3}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>()V

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 945
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v3}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>()V

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 946
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-direct {v3}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>()V

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 947
    sget-object v3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting ID3v2 tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 948
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v4

    goto :goto_0

    .line 952
    :cond_0
    :try_start_3
    sget-object v4, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Writing ID3v2 tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MP3File;->getAudioHeader()Lorg/jaudiotagger/audio/AudioHeader;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;

    .line 954
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->getMp3StartByte()J

    move-result-wide v6

    .line 955
    iget-object v8, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v8, p1, v6, v7}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/File;J)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 957
    sget-object v6, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New mp3 start byte: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v4, v8, v9}, Lorg/jaudiotagger/audio/mp3/MP3AudioHeader;->setMp3StartByte(J)V

    .line 963
    :cond_1
    :goto_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 966
    :try_start_4
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isLyrics3Save()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 968
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;

    if-eqz v3, :cond_2

    .line 970
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->lyrics3tag:Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;->write(Ljava/io/RandomAccessFile;)V

    .line 974
    :cond_2
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1Save()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 976
    sget-object v3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v5, "Processing ID3v1"

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 977
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-nez v3, :cond_3

    .line 979
    sget-object v3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v5, "Deleting ID3v1"

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 980
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    invoke-direct {v3}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>()V

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->delete(Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 984
    :cond_3
    sget-object v3, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v5, "Saving ID3v1"

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 985
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->write(Ljava/io/RandomAccessFile;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1008
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v4, v3

    goto :goto_5

    :catch_3
    move-exception v4

    move-object v11, v4

    move-object v4, v3

    move-object v3, v11

    .line 1001
    :goto_2
    :try_start_5
    sget-object v5, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v7, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v7, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v6, p1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1002
    throw v3

    :catch_4
    move-exception v4

    move-object v11, v4

    move-object v4, v3

    move-object v3, v11

    .line 996
    :goto_3
    sget-object v5, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v7, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v7, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v6, p1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 997
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception v0

    .line 991
    :goto_4
    :try_start_6
    sget-object v4, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_BECAUSE_FILE_NOT_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v6, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 992
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_5
    if-eqz v4, :cond_5

    .line 1008
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 1010
    :cond_5
    throw p1
.end method

.method public setID3v1Tag(Lorg/jaudiotagger/tag/Tag;)V
    .locals 2

    .line 598
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:v1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 599
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public setID3v1Tag(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .locals 2

    .line 612
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:abstract"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 613
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public setID3v1Tag(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V
    .locals 2

    .line 592
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MP3File;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting tagv1:v1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 593
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method public setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 1

    .line 748
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 749
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_0

    .line 751
    iget-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    goto :goto_0

    .line 755
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    :goto_0
    return-void
.end method

.method public setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .locals 1

    .line 735
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    return-void
.end method

.method public setID3v2TagOnly(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2tag:Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    const/4 p1, 0x0

    .line 769
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->id3v2Asv24tag:Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    return-void
.end method

.method public setTag(Lorg/jaudiotagger/tag/Tag;)V
    .locals 1

    .line 1075
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MP3File;->tag:Lorg/jaudiotagger/tag/Tag;

    .line 1076
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_0

    .line 1078
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v1Tag(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V

    goto :goto_0

    .line 1082
    :cond_0
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/mp3/MP3File;->setID3v2Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    :goto_0
    return-void
.end method
