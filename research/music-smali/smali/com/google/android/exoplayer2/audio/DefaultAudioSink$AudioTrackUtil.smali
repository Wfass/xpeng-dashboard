.class Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioTrackUtil"
.end annotation


# static fields
.field private static final FORCE_RESET_WORKAROUND_TIMEOUT_MS:J = 0xc8L


# instance fields
.field protected audioTrack:Landroid/media/AudioTrack;

.field private endPlaybackHeadPosition:J

.field private forceResetWorkaroundTimeMs:J

.field private lastRawPlaybackHeadPosition:J

.field private needsPassthroughWorkaround:Z

.field private passthroughWorkaroundPauseOffset:J

.field private rawPlaybackHeadWrapCount:J

.field private sampleRate:I

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 1382
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackHeadPosition()J
    .locals 10

    .line 1464
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1466
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    sub-long/2addr v0, v2

    .line 1467
    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->sampleRate:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 1468
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->endPlaybackHeadPosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopPlaybackHeadPosition:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    if-ne v0, v1, :cond_1

    return-wide v4

    :cond_1
    const-wide v6, 0xffffffffL

    .line 1477
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v8, v1

    and-long/2addr v6, v8

    .line 1478
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->needsPassthroughWorkaround:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    cmp-long v1, v6, v4

    if-nez v1, :cond_2

    .line 1483
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    iput-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    .line 1485
    :cond_2
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v6, v8

    .line 1488
    :cond_3
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v8, 0x1a

    if-gt v1, v8, :cond_6

    cmp-long v1, v6, v4

    if-nez v1, :cond_5

    .line 1489
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    cmp-long v1, v8, v4

    if-lez v1, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1496
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1497
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    .line 1499
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    return-wide v0

    .line 1501
    :cond_5
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    .line 1505
    :cond_6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_7

    .line 1507
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 1509
    :cond_7
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 1510
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v6, v0

    return-wide v6
.end method

.method public getPositionUs()J
    .locals 4

    .line 1517
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimestampFramePosition()J
    .locals 1

    .line 1557
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTimestampNanoTime()J
    .locals 1

    .line 1541
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleEndOfStream(J)V
    .locals 4

    .line 1426
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopPlaybackHeadPosition:J

    .line 1427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    .line 1428
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->endPlaybackHeadPosition:J

    .line 1429
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public needsReset(J)Z
    .locals 4

    .line 1450
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 1451
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pause()V
    .locals 4

    .line 1437
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .locals 2

    .line 1406
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    .line 1407
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->needsPassthroughWorkaround:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1408
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->stopTimestampUs:J

    .line 1409
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->forceResetWorkaroundTimeMs:J

    const-wide/16 v0, 0x0

    .line 1410
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 1411
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 1412
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    if-eqz p1, :cond_0

    .line 1414
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->sampleRate:I

    :cond_0
    return-void
.end method

.method public updateTimestamp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
