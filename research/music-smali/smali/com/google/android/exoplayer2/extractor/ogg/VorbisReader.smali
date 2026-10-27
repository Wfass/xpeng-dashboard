.class final Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;
.super Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# instance fields
.field private commentHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

.field private previousPacketBlockSize:I

.field private seenFirstAudioPacket:Z

.field private vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

.field private vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static appendNumberOfSamples(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V
    .locals 6

    .line 162
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x18

    ushr-long/2addr p1, v1

    and-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    return-void
.end method

.method private static decodeBlockSize(BLcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;)I
    .locals 2

    .line 173
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->readBits(BII)I

    move-result p0

    .line 175
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;->blockFlag:Z

    if-nez p0, :cond_0

    .line 176
    iget-object p0, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    goto :goto_0

    .line 178
    :cond_0
    iget-object p0, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize1:I

    :goto_0
    return p0
.end method

.method static readBits(BII)I
    .locals 0

    shr-int/2addr p0, p2

    rsub-int/lit8 p1, p1, 0x8

    const/16 p2, 0xff

    ushr-int p1, p2, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static verifyBitstreamType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 1

    const/4 v0, 0x1

    .line 45
    :try_start_0
    invoke-static {v0, p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected onSeekEnd(J)V
    .locals 2

    .line 65
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->onSeekEnd(J)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 66
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 67
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    if-eqz p1, :cond_1

    iget p2, p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    :cond_1
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-void
.end method

.method protected preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 5

    .line 73
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->decodeBlockSize(BLcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;)I

    move-result v0

    .line 81
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-eqz v3, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_1
    int-to-long v3, v1

    .line 84
    invoke-static {p1, v3, v4}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->appendNumberOfSamples(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V

    .line 87
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 88
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-wide v3
.end method

.method protected readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .locals 18

    move-object/from16 v0, p0

    .line 95
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 99
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->readSetupHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    .line 100
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 104
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->data:[B

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->commentHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 110
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v17

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 112
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v6, v1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    const/4 v7, -0x1

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v8, v1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    long-to-int v9, v9

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v4, "audio/vorbis"

    invoke-static/range {v3 .. v17}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    move-object/from16 v3, p4

    iput-object v1, v3, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    return v2
.end method

.method readSetupHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;
    .locals 7

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 123
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readVorbisIdentificationHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    return-object v1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    if-nez v0, :cond_1

    .line 128
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    return-object v1

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    new-array v4, v0, [B

    .line 135
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readVorbisModes(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    move-result-object v5

    .line 139
    array-length p1, v5

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v6

    .line 141
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;[B[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;I)V

    return-object p1
.end method

.method protected reset(Z)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    .line 56
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    :cond_0
    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 60
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    return-void
.end method
