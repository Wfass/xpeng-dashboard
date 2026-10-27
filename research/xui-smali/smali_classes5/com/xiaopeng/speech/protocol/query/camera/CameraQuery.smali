.class public Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "CameraQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method protected getBusinessCameraStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.business.status"
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->getBusinessCameraStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getCameraThreeDSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.three.d.support"
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->getCameraThreeDSupport()I

    move-result v0

    return v0
.end method

.method protected getCameraTransparentChassisSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.transparent.chassis.support"
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->getCameraTransparentChassisSupport()I

    move-result v0

    return v0
.end method

.method protected getSupportPanoramicStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.support.panoramic.status"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->getSupportPanoramicStatus()I

    move-result v0

    return v0
.end method

.method protected getSupportRearStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.support.rear.status"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->getSupportRearStatus()I

    move-result v0

    return v0
.end method

.method protected getSupportTopStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.support.top.status"
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->getSupportTopStatus()I

    move-result v0

    return v0
.end method

.method protected isCameraRecording(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.is.recording"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->isCameraRecording()Z

    move-result v0

    return v0
.end method
