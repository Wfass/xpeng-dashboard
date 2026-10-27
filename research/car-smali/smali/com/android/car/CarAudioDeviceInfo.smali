.class Lcom/android/car/CarAudioDeviceInfo;
.super Ljava/lang/Object;
.source "CarAudioDeviceInfo.java"


# instance fields
.field private final mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

.field private final mBusNumber:I

.field private final mChannelCount:I

.field private mCurrentGain:I

.field private final mDefaultGain:I

.field private final mEncodingFormat:I

.field private final mMaxGain:I

.field private final mMinGain:I

.field private final mSampleRate:I


# direct methods
.method constructor <init>(Landroid/media/AudioDeviceInfo;)V
    .locals 3
    .param p1, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/car/CarAudioDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 58
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/CarAudioDeviceInfo;->parseDeviceAddress(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mBusNumber:I

    .line 59
    invoke-direct {p0, p1}, Lcom/android/car/CarAudioDeviceInfo;->getMaxSampleRate(Landroid/media/AudioDeviceInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mSampleRate:I

    .line 60
    invoke-direct {p0, p1}, Lcom/android/car/CarAudioDeviceInfo;->getEncodingFormat(Landroid/media/AudioDeviceInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mEncodingFormat:I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/car/CarAudioDeviceInfo;->getMaxChannels(Landroid/media/AudioDeviceInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mChannelCount:I

    .line 62
    nop

    .line 63
    invoke-virtual {p0}, Lcom/android/car/CarAudioDeviceInfo;->getAudioGain()Landroid/media/AudioGain;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No audio gain on device port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioGain;

    .line 64
    .local v0, "audioGain":Landroid/media/AudioGain;
    invoke-virtual {v0}, Landroid/media/AudioGain;->defaultValue()I

    move-result v1

    iput v1, p0, Lcom/android/car/CarAudioDeviceInfo;->mDefaultGain:I

    .line 65
    invoke-virtual {v0}, Landroid/media/AudioGain;->maxValue()I

    move-result v1

    iput v1, p0, Lcom/android/car/CarAudioDeviceInfo;->mMaxGain:I

    .line 66
    invoke-virtual {v0}, Landroid/media/AudioGain;->minValue()I

    move-result v1

    iput v1, p0, Lcom/android/car/CarAudioDeviceInfo;->mMinGain:I

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/car/CarAudioDeviceInfo;->mCurrentGain:I

    .line 69
    return-void
.end method

.method private checkAudioGainConfiguration(Landroid/media/AudioGain;)Landroid/media/AudioGain;
    .locals 4
    .param p1, "audioGain"    # Landroid/media/AudioGain;

    .line 227
    invoke-virtual {p1}, Landroid/media/AudioGain;->maxValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioGain;->minValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 228
    invoke-virtual {p1}, Landroid/media/AudioGain;->defaultValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioGain;->minValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 229
    invoke-virtual {p1}, Landroid/media/AudioGain;->defaultValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioGain;->maxValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 228
    move v0, v3

    goto :goto_1

    .line 229
    :cond_1
    nop

    .line 228
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 230
    nop

    .line 231
    invoke-virtual {p1}, Landroid/media/AudioGain;->maxValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioGain;->minValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/media/AudioGain;->stepValue()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 230
    move v0, v3

    goto :goto_2

    .line 231
    :cond_2
    nop

    .line 230
    move v0, v2

    :goto_2
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 232
    nop

    .line 233
    invoke-virtual {p1}, Landroid/media/AudioGain;->defaultValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioGain;->minValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/media/AudioGain;->stepValue()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 232
    move v2, v3

    goto :goto_3

    .line 233
    :cond_3
    nop

    .line 232
    :goto_3
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 234
    return-object p1
.end method

.method private getEncodingFormat(Landroid/media/AudioDeviceInfo;)I
    .locals 1
    .param p1, "info"    # Landroid/media/AudioDeviceInfo;

    .line 181
    const/4 v0, 0x2

    return v0
.end method

.method private getMaxChannels(Landroid/media/AudioDeviceInfo;)I
    .locals 6
    .param p1, "info"    # Landroid/media/AudioDeviceInfo;

    .line 192
    const/4 v0, 0x1

    .line 193
    .local v0, "numChannels":I
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getChannelMasks()[I

    move-result-object v1

    .line 194
    .local v1, "channelMasks":[I
    if-nez v1, :cond_0

    .line 195
    return v0

    .line 197
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 198
    .local v4, "channelMask":I
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    .line 199
    .local v5, "currentNumChannels":I
    if-le v5, v0, :cond_1

    .line 200
    move v0, v5

    .line 197
    .end local v4    # "channelMask":I
    .end local v5    # "currentNumChannels":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_2
    return v0
.end method

.method private getMaxSampleRate(Landroid/media/AudioDeviceInfo;)I
    .locals 4
    .param p1, "info"    # Landroid/media/AudioDeviceInfo;

    .line 166
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getSampleRates()[I

    move-result-object v0

    .line 167
    .local v0, "sampleRates":[I
    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 171
    .local v1, "sampleRate":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 172
    aget v3, v0, v2

    if-le v3, v1, :cond_1

    .line 173
    aget v1, v0, v2

    .line 171
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "i":I
    :cond_2
    return v1

    .line 168
    .end local v1    # "sampleRate":I
    :cond_3
    :goto_1
    const v1, 0xbb80

    return v1
.end method

.method private parseDeviceAddress(Ljava/lang/String;)I
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .line 150
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "words":[Ljava/lang/String;
    const/4 v1, -0x1

    .line 152
    .local v1, "addressParsed":I
    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    :try_start_0
    aget-object v2, v0, v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v2

    .line 159
    :cond_0
    :goto_0
    if-gez v1, :cond_1

    .line 160
    const/4 v2, -0x1

    return v2

    .line 162
    :cond_1
    return v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 250
    const-string v0, "Bus Number (%d) / address (%s)\n "

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/car/CarAudioDeviceInfo;->mBusNumber:I

    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/car/CarAudioDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 250
    invoke-virtual {p1, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 252
    const-string v0, "\tsample rate / encoding format / channel count: %d %d %d\n"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    .line 253
    invoke-virtual {p0}, Lcom/android/car/CarAudioDeviceInfo;->getSampleRate()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p0}, Lcom/android/car/CarAudioDeviceInfo;->getEncodingFormat()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p0}, Lcom/android/car/CarAudioDeviceInfo;->getChannelCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    .line 252
    invoke-virtual {p1, v0, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 254
    const-string v0, "\tGain in millibel (min / max / default/ current): %d %d %d %d\n"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/car/CarAudioDeviceInfo;->mMinGain:I

    .line 255
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    iget v4, p0, Lcom/android/car/CarAudioDeviceInfo;->mMaxGain:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/car/CarAudioDeviceInfo;->mDefaultGain:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v1, p0, Lcom/android/car/CarAudioDeviceInfo;->mCurrentGain:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 254
    invoke-virtual {p1, v0, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 256
    return-void
.end method

.method getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    return-object v0
.end method

.method getAudioDevicePort()Landroid/media/AudioDevicePort;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v0

    return-object v0
.end method

.method getAudioGain()Landroid/media/AudioGain;
    .locals 6

    .line 212
    invoke-virtual {p0}, Lcom/android/car/CarAudioDeviceInfo;->getAudioDevicePort()Landroid/media/AudioDevicePort;

    move-result-object v0

    .line 213
    .local v0, "audioPort":Landroid/media/AudioDevicePort;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 214
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 215
    .local v4, "audioGain":Landroid/media/AudioGain;
    invoke-virtual {v4}, Landroid/media/AudioGain;->mode()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 216
    invoke-direct {p0, v4}, Lcom/android/car/CarAudioDeviceInfo;->checkAudioGainConfiguration(Landroid/media/AudioGain;)Landroid/media/AudioGain;

    move-result-object v1

    return-object v1

    .line 214
    .end local v4    # "audioGain":Landroid/media/AudioGain;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getBusNumber()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mBusNumber:I

    return v0
.end method

.method getChannelCount()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mChannelCount:I

    return v0
.end method

.method getDefaultGain()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mDefaultGain:I

    return v0
.end method

.method getEncodingFormat()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mEncodingFormat:I

    return v0
.end method

.method getMaxGain()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mMaxGain:I

    return v0
.end method

.method getMinGain()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mMinGain:I

    return v0
.end method

.method getSampleRate()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mSampleRate:I

    return v0
.end method

.method setCurrentGain(I)V
    .locals 6
    .param p1, "gainInMillibels"    # I

    .line 110
    iget v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mMinGain:I

    if-ge p1, v0, :cond_0

    .line 111
    iget p1, p0, Lcom/android/car/CarAudioDeviceInfo;->mMinGain:I

    goto :goto_0

    .line 112
    :cond_0
    iget v0, p0, Lcom/android/car/CarAudioDeviceInfo;->mMaxGain:I

    if-le p1, v0, :cond_1

    .line 113
    iget p1, p0, Lcom/android/car/CarAudioDeviceInfo;->mMaxGain:I

    .line 118
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/car/CarAudioDeviceInfo;->getAudioGain()Landroid/media/AudioGain;

    move-result-object v0

    .line 119
    .local v0, "audioGain":Landroid/media/AudioGain;
    if-nez v0, :cond_2

    .line 120
    const-string v1, "CAR.AUDIO"

    const-string v2, "getAudioGain() returned null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 125
    :cond_2
    nop

    .line 127
    invoke-virtual {v0}, Landroid/media/AudioGain;->channelMask()I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    .line 125
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v1

    .line 130
    .local v1, "audioGainConfig":Landroid/media/AudioGainConfig;
    if-nez v1, :cond_3

    .line 131
    const-string v2, "CAR.AUDIO"

    const-string v3, "Failed to construct AudioGainConfig"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/android/car/CarAudioDeviceInfo;->getAudioDevicePort()Landroid/media/AudioDevicePort;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    move-result v2

    .line 136
    .local v2, "r":I
    if-nez v2, :cond_4

    .line 139
    iput p1, p0, Lcom/android/car/CarAudioDeviceInfo;->mCurrentGain:I

    goto :goto_1

    .line 141
    :cond_4
    const-string v3, "CAR.AUDIO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setAudioPortGain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bus number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarAudioDeviceInfo;->mBusNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarAudioDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 240
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sampleRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0}, Lcom/android/car/CarAudioDeviceInfo;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encodingFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0}, Lcom/android/car/CarAudioDeviceInfo;->getEncodingFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channelCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p0}, Lcom/android/car/CarAudioDeviceInfo;->getChannelCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentGain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarAudioDeviceInfo;->mCurrentGain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxGain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarAudioDeviceInfo;->mMaxGain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " minGain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarAudioDeviceInfo;->mMinGain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    return-object v0
.end method
