.class public final Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;
.super Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.source "FfmpegAudioRenderer.java"


# static fields
.field private static final DEFAULT_INPUT_BUFFER_SIZE:I = 0x1680

.field private static final NUM_BUFFERS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "FfmpegAudioRenderer"


# instance fields
.field private decoder:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

.field private final enableFloatOutput:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 93
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->enableFloatOutput:Z

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 3

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;Z[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;Z)V

    return-void
.end method

.method private isOutputSupported(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    .line 161
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->shouldUseFloatOutput(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-nez v0, :cond_1

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v0, 0x2

    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->supportsOutput(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isSupportDubby(Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .line 117
    invoke-static {}, Lcom/google/android/exoplayer2/util/SystemPropertiyUtil;->isSupportDubly()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/eac3"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private shouldUseFloatOutput(Lcom/google/android/exoplayer2/Format;)Z
    .locals 7

    .line 166
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->enableFloatOutput:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->supportsOutput(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0xb269698

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0xb26d66f

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "audio/raw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v1

    goto :goto_0

    :cond_2
    const-string v4, "audio/ac3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v6

    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    if-eq v3, v6, :cond_4

    return v6

    :cond_4
    return v1

    .line 173
    :cond_5
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_6

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v3, :cond_6

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    if-ne p1, v2, :cond_7

    :cond_6
    move v1, v6

    :cond_7
    :goto_1
    return v1
.end method


# virtual methods
.method protected bridge synthetic createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    move-result-object p1

    return-object p1
.end method

.method protected createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;
    .locals 6

    .line 131
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget p2, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    goto :goto_0

    :cond_0
    const/16 p2, 0x1680

    :goto_0
    move v3, p2

    .line 133
    new-instance p2, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    const/16 v1, 0x10

    const/16 v2, 0x10

    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->shouldUseFloatOutput(Lcom/google/android/exoplayer2/Format;)Z

    move-result v5

    move-object v0, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;-><init>(IIILcom/google/android/exoplayer2/Format;Z)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    .line 136
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "FfmpegAudioRenderer"

    return-object v0
.end method

.method public getOutputFormat()Lcom/google/android/exoplayer2/Format;
    .locals 13

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->getChannelCount()I

    move-result v6

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->getSampleRate()I

    move-result v7

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->decoder:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoder;->getEncoding()I

    move-result v8

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v1, 0x0

    const-string v2, "audio/raw"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 145
    invoke-static/range {v1 .. v12}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method protected supportsFormatInternal(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .line 99
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v1, p2, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->supportsFormat(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->isOutputSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    return p1

    .line 108
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;->isSupportDubby(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 p1, 0x4

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
