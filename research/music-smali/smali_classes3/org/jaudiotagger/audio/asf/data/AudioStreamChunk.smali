.class public final Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;
.super Lorg/jaudiotagger/audio/asf/data/StreamChunk;
.source "AudioStreamChunk.java"


# static fields
.field public static final CODEC_DESCRIPTIONS:[[Ljava/lang/String;

.field public static final WMA:J = 0x161L

.field public static final WMA_CBR:J = 0x7a21L

.field public static final WMA_LOSSLESS:J = 0x163L

.field public static final WMA_PRO:J = 0x162L

.field public static final WMA_VBR:J = 0x7a22L


# instance fields
.field private averageBytesPerSec:J

.field private bitsPerSample:I

.field private blockAlignment:J

.field private channelCount:J

.field private codecData:[B

.field private compressionFormat:J

.field private errorConcealment:Lorg/jaudiotagger/audio/asf/data/GUID;

.field private samplingRate:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    .line 35
    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "161"

    const-string v2, " (Windows Media Audio (ver 7,8,9))"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "162"

    const-string v2, " (Windows Media Audio 9 series (Professional))"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "163"

    const-string v2, "(Windows Media Audio 9 series (Lossless))"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "7A21"

    const-string v2, " (GSM-AMR (CBR))"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "7A22"

    const-string v2, " (GSM-AMR (VBR))"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 107
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    const/4 p1, 0x0

    .line 83
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->codecData:[B

    return-void
.end method


# virtual methods
.method public getAverageBytesPerSec()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->averageBytesPerSec:J

    return-wide v0
.end method

.method public getBitsPerSample()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->bitsPerSample:I

    return v0
.end method

.method public getBlockAlignment()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->blockAlignment:J

    return-wide v0
.end method

.method public getChannelCount()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->channelCount:J

    return-wide v0
.end method

.method public getCodecData()[B
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->codecData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCodecDescription()Ljava/lang/String;
    .locals 8

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getCompressionFormat()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 163
    aget-object v6, v5, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    .line 165
    aget-object v1, v5, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v1, " (Unknown)"

    .line 169
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    const-string v2, "0x"

    .line 171
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v2, "0x0"

    .line 175
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompressionFormat()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->compressionFormat:J

    return-wide v0
.end method

.method public getErrorConcealment()Lorg/jaudiotagger/audio/asf/data/GUID;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->errorConcealment:Lorg/jaudiotagger/audio/asf/data/GUID;

    return-object v0
.end method

.method public getKbps()I
    .locals 2

    .line 206
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getAverageBytesPerSec()J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getSamplingRate()J
    .locals 2

    .line 214
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->samplingRate:J

    return-wide v0
.end method

.method public isErrorConcealed()Z
    .locals 2

    .line 225
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getErrorConcealment()Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/StreamChunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  |-> Audio info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  |  : Bitrate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getKbps()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  |  : Channels : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getChannelCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getSamplingRate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Hz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  |  : Bits per Sample: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getBitsPerSample()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  |  : Formatcode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->getCodecDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAverageBytesPerSec(J)V
    .locals 0

    .line 248
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->averageBytesPerSec:J

    return-void
.end method

.method public setBitsPerSample(I)V
    .locals 0

    .line 258
    iput p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->bitsPerSample:I

    return-void
.end method

.method public setBlockAlignment(J)V
    .locals 0

    .line 268
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->blockAlignment:J

    return-void
.end method

.method public setChannelCount(J)V
    .locals 0

    .line 276
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->channelCount:J

    return-void
.end method

.method public setCodecData([B)V
    .locals 0

    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->codecData:[B

    return-void

    .line 288
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setCompressionFormat(J)V
    .locals 0

    .line 298
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->compressionFormat:J

    return-void
.end method

.method public setErrorConcealment(Lorg/jaudiotagger/audio/asf/data/GUID;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->errorConcealment:Lorg/jaudiotagger/audio/asf/data/GUID;

    return-void
.end method

.method public setSamplingRate(J)V
    .locals 0

    .line 316
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/AudioStreamChunk;->samplingRate:J

    return-void
.end method
