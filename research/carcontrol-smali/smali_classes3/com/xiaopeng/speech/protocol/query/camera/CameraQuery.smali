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

    return-void
.end method


# virtual methods
.method protected getBusinessCameraStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->getBusinessCameraStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getCameraThreeDSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->getCameraThreeDSupport()I

    move-result p1

    return p1
.end method

.method protected getCameraTransparentChassisSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->getCameraTransparentChassisSupport()I

    move-result p1

    return p1
.end method

.method protected getSupportPanoramicStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->getSupportPanoramicStatus()I

    move-result p1

    return p1
.end method

.method protected getSupportRearStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->getSupportRearStatus()I

    move-result p1

    return p1
.end method

.method protected getSupportTopStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 14
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->getSupportTopStatus()I

    move-result p1

    return p1
.end method

.method protected isCameraRecording(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/camera/ICameraCaller;->isCameraRecording()Z

    move-result p1

    return p1
.end method
