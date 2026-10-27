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

    .line 20
    return-void
.end method


# virtual methods
.method protected onCameraPhotoalbumOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.photoalbum.open"
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 429
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 430
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 431
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCameraPhotoalbumOpen()V

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCameraThreeDOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.three.d.off"
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 399
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 400
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 401
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCameraThreeDOff()V

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCameraThreeDOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.three.d.on"
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 389
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 390
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 391
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCameraThreeDOn()V

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCameraTransparentChassisOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.transparent.chassis.off"
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 421
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCameraTransparentChassisOff()V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCameraTransparentChassisOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.transparent.chassis.on"
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 409
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 410
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 411
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCameraTransparentChassisOn()V

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCarcorderLock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 214
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 215
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCarcorderLock()V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCarcorderRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 223
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 225
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCarcorderRecord()V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCarcorderTake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 205
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onCarcorderTake()V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onFrontOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.front.on"
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 185
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onFrontOn()V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onFrontRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.front.record"
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 95
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onFrontRecord()V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onFrontTake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.front.take"
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 85
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onFrontTake()V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLeftOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.left.on"
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 145
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onLeftOn()V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLeftRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.left.record"
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 115
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onLeftRecord()V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLeftTake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.left.take"
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 104
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 105
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onLeftTake()V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOverallOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.overall.on"
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    move v2, v1

    .line 29
    .local v2, "isTTS":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "isTTS"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 33
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 35
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 37
    aget-object v3, v0, v1

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v3, v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onOverallOn(Z)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 40
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRearOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.rear.off"
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 194
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 195
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRearOff()V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRearOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.rear.on"
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 165
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRearOn()V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRearOnNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.rear.on.new"
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 175
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRearOnNew()V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRearRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.rear.record"
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    move v2, v1

    .line 67
    .local v2, "isTTS":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "isTTS"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 71
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 75
    aget-object v3, v0, v1

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v3, v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRearRecord(Z)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRearTake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.rear.take"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    move v2, v1

    .line 48
    .local v2, "isTTS":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "isTTS"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 52
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 56
    aget-object v3, v0, v1

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v3, v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRearTake(Z)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRightOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.right.on"
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 153
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 155
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRightOn()V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRightRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.right.record"
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 135
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRightRecord()V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRightTake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.right.take"
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 125
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onRightTake()V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTopOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.top.off"
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 234
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    move v2, v1

    .line 236
    .local v2, "isTTS":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "isTTS"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 240
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 242
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 244
    aget-object v3, v0, v1

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v3, v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopOff(Z)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTopOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.top.on"
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 253
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    move v2, v1

    .line 255
    .local v2, "isTTS":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 256
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "isTTS"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 259
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 261
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 263
    aget-object v3, v0, v1

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v3, v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopOn(Z)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTopRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 281
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 282
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 283
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopRecord()V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTopRecordEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 292
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 293
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopRecordEnd()V

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTopRotateFront(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.top.rotate.front"
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 342
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    move v2, v1

    .line 344
    .local v2, "isTTS":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 345
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "isTTS"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 348
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 350
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 351
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 352
    aget-object v3, v0, v1

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v3, v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopRotateFront(Z)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTopRotateLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.top.rotate.left"
    .end annotation

    .line 300
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v0

    .line 301
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 303
    .local v1, "listenerList":[Ljava/lang/Object;
    const/4 v2, 0x1

    move v3, v2

    .line 305
    .local v3, "isTTS":Z
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "isTTS"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 309
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 307
    :catch_0
    move-exception v2

    .line 308
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 311
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v1, :cond_0

    .line 312
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 313
    aget-object v4, v1, v2

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v4, v0, v3}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopRotateLeft(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;Z)V

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTopRotateRear(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.top.rotate.rear"
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 361
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    move v2, v1

    .line 363
    .local v2, "isTTS":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 364
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "isTTS"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 367
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 369
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 370
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 371
    aget-object v3, v0, v1

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v3, v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopRotateRear(Z)V

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 374
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTopRotateRight(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.top.rotate.right"
    .end annotation

    .line 320
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v0

    .line 321
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 323
    .local v1, "listenerList":[Ljava/lang/Object;
    const/4 v2, 0x1

    move v3, v2

    .line 325
    .local v3, "isTTS":Z
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 326
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "isTTS"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 329
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 331
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v1, :cond_0

    .line 332
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 333
    aget-object v4, v1, v2

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v4, v0, v3}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopRotateRight(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;Z)V

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 336
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTopTake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.top.take"
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 272
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 273
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTopTake()V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTransparentChassisCMD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://camera.transparent.chassis"
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/camera/CameraNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 379
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 380
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 381
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/camera/CameraListener;->onTransparentChassisCMD(Ljava/lang/String;)V

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
