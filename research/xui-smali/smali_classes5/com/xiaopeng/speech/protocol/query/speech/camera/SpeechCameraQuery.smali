.class public Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SpeechCameraQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected getCameraAngle(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.angle"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getCameraAngle()I

    move-result v0

    return v0
.end method

.method protected getCameraDisplayMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.display.mode"
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getCameraDisplayMode()I

    move-result v0

    return v0
.end method

.method protected getCameraHeight(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.height.state"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getCameraHeight()Z

    move-result v0

    return v0
.end method

.method protected getHasPanoCamera(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.has.pano"
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getHasPanoCamera()Z

    move-result v0

    return v0
.end method

.method protected getHasRoofCamera(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.has.roof"
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getHasRoofCamera()Z

    move-result v0

    return v0
.end method

.method protected getRoofCameraPosition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.roof.position"
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getRoofCameraPosition()I

    move-result v0

    return v0
.end method

.method protected getRoofCameraState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "camera.roof.state"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getRoofCameraState()I

    move-result v0

    return v0
.end method
