.class public Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;
.super Ljava/lang/Object;
.source "OggInfoReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.ogg.atom"

    .line 39
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(IJ)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 158
    :cond_0
    sget v0, Lorg/jaudiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    int-to-long v0, v0

    div-long/2addr p2, v0

    sget v0, Lorg/jaudiotagger/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    int-to-long v0, v0

    mul-long/2addr p2, v0

    int-to-long v0, p1

    div-long/2addr p2, v0

    long-to-int p1, p2

    return p1
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 18

    move-object/from16 v0, p1

    .line 43
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .line 44
    new-instance v3, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    invoke-direct {v3}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    .line 45
    sget-object v4, Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;->logger:Ljava/util/logging/Logger;

    const-string v5, "Started"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 49
    sget-object v4, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    array-length v4, v4

    new-array v4, v4, [B

    .line 50
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 51
    sget-object v5, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v5, :cond_1

    .line 53
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 54
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->isId3Tag(Ljava/io/RandomAccessFile;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 57
    sget-object v5, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->OGG_HEADER_CANNOT_BE_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v9, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 73
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v4, 0x2

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 74
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const-wide/16 v10, 0x4

    cmp-long v1, v1, v10

    const/16 v2, 0x1b

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    if-ltz v1, :cond_3

    .line 76
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    sget-object v14, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    const/4 v15, 0x3

    aget-byte v14, v14, v15

    if-ne v1, v14, :cond_2

    .line 78
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v16

    sub-long v10, v16, v10

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 79
    new-array v1, v15, [B

    .line 80
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 81
    aget-byte v10, v1, v8

    sget-object v11, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    aget-byte v11, v11, v8

    if-ne v10, v11, :cond_2

    aget-byte v10, v1, v9

    sget-object v11, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_2

    const/4 v10, 0x2

    aget-byte v1, v1, v10

    sget-object v11, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    aget-byte v10, v11, v10

    if-ne v1, v10, :cond_2

    .line 83
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v10, 0x3

    sub-long/2addr v4, v10

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .line 86
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    const-wide/16 v14, 0x1a

    add-long/2addr v10, v14

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 87
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 88
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/2addr v1, v2

    .line 90
    new-array v1, v1, [B

    .line 91
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 93
    new-instance v4, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    invoke-direct {v4, v1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;-><init>([B)V

    .line 94
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 95
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getAbsoluteGranulePosition()D

    move-result-wide v4

    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1

    :cond_3
    move-wide v4, v12

    :goto_2
    cmpl-double v1, v4, v12

    if-eqz v1, :cond_7

    .line 109
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v1

    new-array v1, v1, [B

    .line 112
    array-length v6, v1

    if-lt v6, v2, :cond_6

    .line 116
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 117
    new-instance v2, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;

    invoke-direct {v2, v1}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;-><init>([B)V

    .line 120
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getSamplingRate()I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v1, v4

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    .line 121
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getChannelNumber()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 122
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getSamplingRate()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 123
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    const/16 v1, 0x10

    .line 126
    invoke-virtual {v3, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    .line 129
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getMaxBitrate()I

    move-result v1

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v4

    if-ne v1, v4, :cond_4

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getMinBitrate()I

    move-result v1

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 132
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v3, v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 133
    invoke-virtual {v3, v8}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    :goto_3
    move-object/from16 v0, p0

    goto :goto_4

    .line 136
    :cond_4
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getMaxBitrate()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getMinBitrate()I

    move-result v1

    if-nez v1, :cond_5

    .line 139
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v3, v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 140
    invoke-virtual {v3, v9}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    goto :goto_3

    .line 145
    :cond_5
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getTrackLength()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4, v5}, Lorg/jaudiotagger/audio/ogg/util/OggInfoReader;->computeBitrate(IJ)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 146
    invoke-virtual {v3, v9}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    :goto_4
    return-object v3

    :cond_6
    move-object/from16 v0, p0

    .line 114
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    const-string v2, "Invalid Identification header for this Ogg File"

    invoke-direct {v1, v2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object/from16 v0, p0

    .line 105
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->OGG_VORBIS_NO_SETUP_BLOCK:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
