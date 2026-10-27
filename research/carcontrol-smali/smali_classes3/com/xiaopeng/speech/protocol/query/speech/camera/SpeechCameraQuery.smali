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

    return-void
.end method


# virtual methods
.method protected getCameraAngle(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getCameraAngle()I

    move-result p1

    return p1
.end method

.method protected getCameraDisplayMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getCameraDisplayMode()I

    move-result p1

    return p1
.end method

.method protected getCameraHeight(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getCameraHeight()Z

    move-result p1

    return p1
.end method

.method protected getHasPanoCamera(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getHasPanoCamera()Z

    move-result p1

    return p1
.end method

.method protected getHasRoofCamera(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getHasRoofCamera()Z

    move-result p1

    return p1
.end method

.method protected getRoofCameraPosition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getRoofCameraPosition()I

    move-result p1

    return p1
.end method

.method protected getRoofCameraState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/camera/SpeechCameraQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/camera/ISpeechCameraQueryCaller;->getRoofCameraState()I

    move-result p1

    return p1
.end method
