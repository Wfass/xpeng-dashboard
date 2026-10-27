.class public Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
.super Ljava/lang/Object;
.source "GenericAudioHeader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/AudioHeader;


# instance fields
.field private audioDataEndPosition:Ljava/lang/Long;

.field private audioDataLength:Ljava/lang/Long;

.field private audioDataStartPosition:Ljava/lang/Long;

.field private bitRate:Ljava/lang/Integer;

.field private bitsPerSample:Ljava/lang/Integer;

.field private byteRate:Ljava/lang/Integer;

.field private encodingType:Ljava/lang/String;

.field private isLossless:Ljava/lang/Boolean;

.field private isVbr:Ljava/lang/Boolean;

.field private noOfChannels:Ljava/lang/Integer;

.field private noOfSamples:Ljava/lang/Long;

.field private samplingRate:Ljava/lang/Integer;

.field private trackLength:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isVbr:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAudioDataEndPosition()Ljava/lang/Long;
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getAudioDataLength()Ljava/lang/Long;
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->audioDataLength:Ljava/lang/Long;

    return-object v0
.end method

.method public getAudioDataStartPosition()Ljava/lang/Long;
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getBitRate()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->bitRate:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitRateAsNumber()J
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->bitRate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getBitsPerSample()I
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->bitsPerSample:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getByteRate()Ljava/lang/Integer;
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->byteRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChannelNumber()I
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->noOfChannels:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getChannelNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getNoOfSamples()Ljava/lang/Long;
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->noOfSamples:Ljava/lang/Long;

    return-object v0
.end method

.method public getPreciseTrackLength()D
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->trackLength:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSampleRate()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->samplingRate:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRateAsNumber()I
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->samplingRate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrackLength()I
    .locals 2

    .line 129
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->getPreciseTrackLength()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public isLossless()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isLossless:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 201
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isVariableBitRate()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isVbr:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 185
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setAudioDataEndPosition(Ljava/lang/Long;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    return-void
.end method

.method public setAudioDataLength(J)V
    .locals 0

    .line 370
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->audioDataLength:Ljava/lang/Long;

    return-void
.end method

.method public setAudioDataStartPosition(Ljava/lang/Long;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    return-void
.end method

.method public setBitRate(I)V
    .locals 0

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->bitRate:Ljava/lang/Integer;

    return-void
.end method

.method public setBitsPerSample(I)V
    .locals 0

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->bitsPerSample:Ljava/lang/Integer;

    return-void
.end method

.method public setByteRate(I)V
    .locals 0

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->byteRate:Ljava/lang/Integer;

    return-void
.end method

.method public setChannelNumber(I)V
    .locals 0

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->noOfChannels:Ljava/lang/Integer;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setLossless(Z)V
    .locals 0

    .line 294
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isLossless:Ljava/lang/Boolean;

    return-void
.end method

.method public setNoOfSamples(Ljava/lang/Long;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->noOfSamples:Ljava/lang/Long;

    return-void
.end method

.method public setPreciseLength(D)V
    .locals 0

    .line 243
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->trackLength:Ljava/lang/Double;

    return-void
.end method

.method public setSamplingRate(I)V
    .locals 0

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->samplingRate:Ljava/lang/Integer;

    return-void
.end method

.method public setVariableBitRate(Z)V
    .locals 0

    .line 284
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isVbr:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio Header content:\n"

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->audioDataLength:Ljava/lang/Long;

    const-string v2, "\n"

    if-eqz v1, :cond_0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\taudioDataLength:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->audioDataLength:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_0
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\taudioDataStartPosition:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->audioDataStartPosition:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_1
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\taudioDataEndPosition:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->audioDataEndPosition:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_2
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->byteRate:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tbyteRate:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->byteRate:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_3
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->bitRate:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tbitRate:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->bitRate:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_4
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->samplingRate:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tsamplingRate:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->samplingRate:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_5
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->bitsPerSample:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tbitsPerSample:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->bitsPerSample:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_6
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->noOfSamples:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ttotalNoSamples:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->noOfSamples:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_7
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->noOfChannels:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tnumberOfChannels:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->noOfChannels:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_8
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->encodingType:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tencodingType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->encodingType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_9
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isVbr:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tisVbr:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isVbr:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_a
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isLossless:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tisLossless:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->isLossless:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_b
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->trackLength:Ljava/lang/Double;

    if-eqz v1, :cond_c

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ttrackDuration:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->trackLength:Ljava/lang/Double;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
