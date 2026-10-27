.class public interface abstract Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;
.super Ljava/lang/Object;
.source "ICameraCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public abstract getBusinessCameraStatus(Ljava/lang/String;)I
.end method

.method public abstract getCameraThreeDSupport()I
.end method

.method public abstract getCameraTransparentChassisSupport()I
.end method

.method public abstract getSupportPanoramicStatus()I
.end method

.method public abstract getSupportRearStatus()I
.end method

.method public abstract getSupportTopStatus()I
.end method

.method public isCameraRecording()Z
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method
