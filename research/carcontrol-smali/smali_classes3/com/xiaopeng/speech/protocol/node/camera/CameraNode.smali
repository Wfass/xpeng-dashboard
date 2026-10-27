.class public Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "CameraNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCameraPhotoalbumOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 428
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 430
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 431
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCameraPhotoalbumOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCameraThreeDOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 398
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 400
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 401
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCameraThreeDOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCameraThreeDOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 388
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 390
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 391
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCameraThreeDOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCameraTransparentChassisOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 418
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 420
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 421
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCameraTransparentChassisOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCameraTransparentChassisOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 408
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 410
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 411
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCameraTransparentChassisOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCarcorderLock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 214
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 215
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCarcorderLock()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCarcorderRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 224
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 225
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCarcorderRecord()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCarcorderTake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 204
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 205
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCarcorderTake()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFrontOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 184
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 185
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onFrontOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFrontRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 94
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 95
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onFrontRecord()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFrontTake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 84
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 85
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onFrontTake()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLeftOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 144
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 145
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onLeftOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLeftRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 114
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 115
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onLeftRecord()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLeftTake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 104
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 105
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onLeftTake()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onOverallOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 29
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 30
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 32
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 36
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 37
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onOverallOn(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onRearOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 194
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 195
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRearOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRearOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 164
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 165
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRearOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRearOnNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 174
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 175
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRearOnNew()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRearRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 67
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 68
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 70
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 74
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 75
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRearRecord(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onRearTake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 48
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 49
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 51
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 55
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 56
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRearTake(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onRightOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 154
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 155
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRightOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRightRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 134
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 135
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRightRecord()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRightTake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 124
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 125
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRightTake()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTopOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 236
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 237
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 239
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 243
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 244
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopOff(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onTopOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 251
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 255
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 256
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 258
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 262
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 263
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopOn(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onTopRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 282
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 283
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopRecord()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTopRecordEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 292
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 293
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopRecordEnd()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTopRotateFront(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 340
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 344
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 345
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 347
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 351
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 352
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopRotateFront(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onTopRotateLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 300
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object p1

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 305
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 306
    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 308
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 312
    :goto_1
    array-length v2, v0

    if-ge p2, v2, :cond_0

    .line 313
    aget-object v2, v0, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2, p1, v1}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopRotateLeft(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onTopRotateRear(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 359
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 363
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 364
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 366
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 370
    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 371
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopRotateRear(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onTopRotateRight(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 320
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object p1

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 325
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isTTS"

    .line 326
    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 328
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 332
    :goto_1
    array-length v2, v0

    if-ge p2, v2, :cond_0

    .line 333
    aget-object v2, v0, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2, p1, v1}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopRotateRight(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onTopTake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 272
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 273
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopTake()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTransparentChassisCMD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 378
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 380
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 381
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTransparentChassisCMD(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
