.class public Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;
.super Ljava/lang/Object;
.source "Mp4InfoReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.mp4.atom"

    .line 60
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isTrackAtomVideo(Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 65
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDIA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 70
    :cond_0
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-nez p1, :cond_1

    return p2

    .line 75
    :cond_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MINF:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-nez p1, :cond_2

    return p2

    .line 81
    :cond_2
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->VMHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return p2
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 11

    .line 91
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 92
    new-instance v1, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;

    invoke-direct {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;-><init>()V

    .line 95
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->FTYP:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 100
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 101
    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 102
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 103
    new-instance v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;

    invoke-direct {v4, v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 104
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->processData()V

    .line 105
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->getMajorBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBrand(Ljava/lang/String;)V

    .line 109
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MOOV:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 114
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 115
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 117
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 121
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MVHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 126
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 127
    new-instance v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;

    invoke-direct {v5, v3, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 128
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->getLength()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setPreciseLength(D)V

    .line 130
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    .line 134
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v3, :cond_10

    .line 141
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDIA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 147
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 152
    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 153
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->getSampleRate()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setSamplingRate(I)V

    .line 168
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MINF:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 177
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 178
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->SMHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-nez v6, :cond_1

    .line 181
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->VMHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_0
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->STBL:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 206
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 207
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->STSD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 210
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;

    invoke-direct {v7, v6, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 211
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;->processData()V

    .line 212
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 215
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MP4A:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 218
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 219
    new-instance v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4Mp4aBox;

    invoke-direct {v8, v7, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4Mp4aBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 220
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4Mp4aBox;->processData()V

    .line 222
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ESDS:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 225
    new-instance v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 228
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getAvgBitrate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 231
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getNumberOfChannels()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setChannelNumber(I)V

    .line 233
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getKind()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setKind(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;)V

    .line 234
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getAudioProfile()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setProfile(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;)V

    .line 236
    sget-object v6, Lorg/jaudiotagger/audio/mp4/EncoderType;->AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_2
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 243
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->DRMS:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 246
    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4DrmsBox;

    invoke-direct {v6, v7, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4DrmsBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 247
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4DrmsBox;->processData()V

    .line 250
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ESDS:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 253
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 256
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getAvgBitrate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 259
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getNumberOfChannels()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setChannelNumber(I)V

    .line 261
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getKind()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setKind(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;)V

    .line 262
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getAudioProfile()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setProfile(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;)V

    .line 264
    sget-object v6, Lorg/jaudiotagger/audio/mp4/EncoderType;->DRM_AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 271
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ALAC:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 275
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;

    invoke-direct {v7, v6, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 276
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->processData()V

    .line 279
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ALAC:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 282
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;

    invoke-direct {v7, v6, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 283
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->processData()V

    .line 284
    sget-object v6, Lorg/jaudiotagger/audio/mp4/EncoderType;->APPLE_LOSSLESS:Lorg/jaudiotagger/audio/mp4/EncoderType;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->getChannels()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setChannelNumber(I)V

    .line 286
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->getBitRate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 287
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->getSampleSize()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBitsPerSample(I)V

    .line 295
    :cond_4
    :goto_0
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 296
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->STCO:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 299
    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    invoke-direct {v6, v3, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 300
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setAudioDataStartPosition(Ljava/lang/Long;)V

    .line 301
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setAudioDataEndPosition(Ljava/lang/Long;)V

    .line 302
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v0

    int-to-long v9, v0

    sub-long/2addr v7, v9

    invoke-virtual {v1, v7, v8}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setAudioDataLength(J)V

    .line 306
    :cond_5
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->getChannelNumber()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    const/4 v0, 0x2

    .line 308
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setChannelNumber(I)V

    .line 312
    :cond_6
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->getBitRateAsNumber()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_7

    const/16 v0, 0x80

    .line 314
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 318
    :cond_7
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->getBitsPerSample()I

    move-result v0

    if-ne v0, v3, :cond_8

    const/16 v0, 0x10

    .line 320
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBitsPerSample(I)V

    .line 324
    :cond_8
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 326
    sget-object v0, Lorg/jaudiotagger/audio/mp4/EncoderType;->AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 329
    :cond_9
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 335
    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 337
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 340
    invoke-direct {p0, v4, v0, v2}, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;->isTrackAtomVideo(Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    .line 342
    :cond_a
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_b
    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V

    return-object v1

    .line 199
    :cond_c
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_d
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_e
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_f
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_10
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_11
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_12
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_13
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_CONTAINER:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
