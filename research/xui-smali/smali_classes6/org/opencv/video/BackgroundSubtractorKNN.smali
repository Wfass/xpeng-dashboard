.class public Lorg/opencv/video/BackgroundSubtractorKNN;
.super Lorg/opencv/video/BackgroundSubtractor;
.source "BackgroundSubtractorKNN.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .line 17
    invoke-direct {p0, p1, p2}, Lorg/opencv/video/BackgroundSubtractor;-><init>(J)V

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorKNN;
    .locals 1
    .param p0, "addr"    # J

    .line 20
    new-instance v0, Lorg/opencv/video/BackgroundSubtractorKNN;

    invoke-direct {v0, p0, p1}, Lorg/opencv/video/BackgroundSubtractorKNN;-><init>(J)V

    return-object v0
.end method

.method private static native delete(J)V
.end method

.method private static native getDetectShadows_0(J)Z
.end method

.method private static native getDist2Threshold_0(J)D
.end method

.method private static native getHistory_0(J)I
.end method

.method private static native getNSamples_0(J)I
.end method

.method private static native getShadowThreshold_0(J)D
.end method

.method private static native getShadowValue_0(J)I
.end method

.method private static native getkNNSamples_0(J)I
.end method

.method private static native setDetectShadows_0(JZ)V
.end method

.method private static native setDist2Threshold_0(JD)V
.end method

.method private static native setHistory_0(JI)V
.end method

.method private static native setNSamples_0(JI)V
.end method

.method private static native setShadowThreshold_0(JD)V
.end method

.method private static native setShadowValue_0(JI)V
.end method

.method private static native setkNNSamples_0(JI)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 225
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->delete(J)V

    .line 226
    return-void
.end method

.method public getDetectShadows()Z
    .locals 2

    .line 34
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->getDetectShadows_0(J)Z

    move-result v0

    return v0
.end method

.method public getDist2Threshold()D
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->getDist2Threshold_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getHistory()I
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->getHistory_0(J)I

    move-result v0

    return v0
.end method

.method public getNSamples()I
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->getNSamples_0(J)I

    move-result v0

    return v0
.end method

.method public getShadowThreshold()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->getShadowThreshold_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getShadowValue()I
    .locals 2

    .line 110
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->getShadowValue_0(J)I

    move-result v0

    return v0
.end method

.method public getkNNSamples()I
    .locals 2

    .line 126
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->getkNNSamples_0(J)I

    move-result v0

    return v0
.end method

.method public setDetectShadows(Z)V
    .locals 2
    .param p1, "detectShadows"    # Z

    .line 139
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorKNN;->setDetectShadows_0(JZ)V

    .line 140
    return-void
.end method

.method public setDist2Threshold(D)V
    .locals 2
    .param p1, "_dist2Threshold"    # D

    .line 152
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/BackgroundSubtractorKNN;->setDist2Threshold_0(JD)V

    .line 153
    return-void
.end method

.method public setHistory(I)V
    .locals 2
    .param p1, "history"    # I

    .line 165
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorKNN;->setHistory_0(JI)V

    .line 166
    return-void
.end method

.method public setNSamples(I)V
    .locals 2
    .param p1, "_nN"    # I

    .line 180
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorKNN;->setNSamples_0(JI)V

    .line 181
    return-void
.end method

.method public setShadowThreshold(D)V
    .locals 2
    .param p1, "threshold"    # D

    .line 193
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/BackgroundSubtractorKNN;->setShadowThreshold_0(JD)V

    .line 194
    return-void
.end method

.method public setShadowValue(I)V
    .locals 2
    .param p1, "value"    # I

    .line 206
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorKNN;->setShadowValue_0(JI)V

    .line 207
    return-void
.end method

.method public setkNNSamples(I)V
    .locals 2
    .param p1, "_nkNN"    # I

    .line 219
    iget-wide v0, p0, Lorg/opencv/video/BackgroundSubtractorKNN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/BackgroundSubtractorKNN;->setkNNSamples_0(JI)V

    .line 220
    return-void
.end method
