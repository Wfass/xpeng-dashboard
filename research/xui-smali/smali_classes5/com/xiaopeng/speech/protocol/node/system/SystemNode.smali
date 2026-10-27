.class public Lcom/xiaopeng/speech/protocol/node/system/SystemNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "SystemNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/system/SystemListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAVI_VOICE_DATA:Ljava/lang/String; = "{\"stream_type\":9}"

.field private static final STREAM_MUSIC:Ljava/lang/String; = "3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method protected onBluetoothOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.bluetooth.off"
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 126
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onBluetoothOff()V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onBluetoothOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.bluetooth.on"
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 134
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 136
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onBluetoothOn()V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onBrightnessDownPercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.brightness.down.percent"
    .end annotation

    .line 393
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object v0

    .line 394
    .local v0, "adjustValue":Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 395
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 396
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 397
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onBrightnessDownPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onBrightnessSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.brightness.set"
    .end annotation

    .line 276
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object v0

    .line 277
    .local v0, "adjustValue":Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 278
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 279
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 280
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onBrightnessUpPercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.brightness.up.percent"
    .end annotation

    .line 254
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object v0

    .line 255
    .local v0, "adjustValue":Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 256
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 257
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 258
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onBrightnessUpPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onHeadsetMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.headrest.model.set"
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 616
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    .line 618
    .local v1, "mode":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 619
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "mode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 622
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 620
    :catch_0
    move-exception v2

    .line 621
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_0

    .line 624
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 625
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onHeadsetMode(I)V

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 628
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onIcmBrightnessDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.icm.brightness.down"
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 321
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 322
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 323
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessDown()V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onIcmBrightnessDownPercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.icm.brightness.down.percent"
    .end annotation

    .line 427
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object v0

    .line 428
    .local v0, "adjustValue":Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 429
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 430
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 431
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessDownPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onIcmBrightnessMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.icm.brightness.max"
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 310
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 311
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 312
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessMax()V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onIcmBrightnessMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.icm.brightness.min"
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 331
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 332
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 333
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessMin()V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onIcmBrightnessSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.icm.brightness.set"
    .end annotation

    .line 287
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object v0

    .line 288
    .local v0, "adjustValue":Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 289
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 290
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 291
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onIcmBrightnessSetPercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.icm.brightness.set.percent"
    .end annotation

    .line 416
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object v0

    .line 417
    .local v0, "adjustValue":Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 418
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 419
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 420
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessSetPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onIcmBrightnessUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.icm.brightness.up"
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 299
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 300
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 301
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessUp()V

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onIcmBrightnessUpPercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.icm.brightness.up.percent"
    .end annotation

    .line 405
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object v0

    .line 406
    .local v0, "adjustValue":Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 407
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 408
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 409
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessUpPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenSettingPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://bluetooth.setting.open"
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 374
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 375
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 376
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onOpenSettingPage()V

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenWifiPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.wifi.setting.open"
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 384
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 385
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 386
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onOpenWifiPage()V

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onScreenBrightnessAutoOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.brightness.auto.off"
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 484
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 485
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 486
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessAutoOff()V

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onScreenBrightnessAutoOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.brightness.auto.on"
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 474
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 475
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 476
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessAutoOn()V

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onScreenBrightnessDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.brightness.down"
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 46
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessDown()V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onScreenBrightnessMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.brightness.max"
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 36
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessMax()V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onScreenBrightnessMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.brightness.min"
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 56
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessMin()V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onScreenBrightnessSetPercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.brightness.set.percent"
    .end annotation

    .line 265
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object v0

    .line 266
    .local v0, "adjustValue":Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 267
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 268
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 269
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onBrightnessSetPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onScreenBrightnessStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.brightness.stop"
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 459
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 461
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessStop()V

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onScreenBrightnessUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.brightness.up"
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 24
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 25
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 26
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessUp()V

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onScreenModeClean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.mode.clean"
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 96
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenModeClean()V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onScreenOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.off"
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 439
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 440
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 441
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenOff()V

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onScreenOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.screen.on"
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 449
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 450
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 451
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenOn()V

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSoundEffectField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.music.sound.direction.set"
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 547
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    .line 549
    .local v1, "direction":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 550
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "direction"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 553
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 551
    :catch_0
    move-exception v2

    .line 552
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_0

    .line 555
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 556
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onSoundEffectField(I)V

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 559
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSoundEffectMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.music.sound.effect.model.set"
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 564
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    .line 566
    .local v1, "mode":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 567
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "mode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 570
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 568
    :catch_0
    move-exception v2

    .line 569
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_0

    .line 572
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 573
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onSoundEffectMode(I)V

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 576
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSoundEffectScene(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.sound.scene.set"
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 581
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    .line 583
    .local v1, "scene":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 584
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "scene"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 587
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 585
    :catch_0
    move-exception v2

    .line 586
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 588
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_0

    .line 589
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 590
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onSoundEffectScene(I)V

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 593
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSoundEffectStyle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.music.sound.effect.style.set"
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 598
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    .line 600
    .local v1, "style":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 601
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "style"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 604
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 602
    :catch_0
    move-exception v2

    .line 603
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 605
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_0

    .line 606
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 607
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onSoundEffectStyle(I)V

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 610
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onThemeModeAuto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.theme.mode.auto"
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 66
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onThemeModeAuto()V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onThemeModeDay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.theme.mode.day"
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 76
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onThemeModeDay()V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onThemeModeNight(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.theme.mode.night"
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 86
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onThemeModeNight()V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVolumeDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.volume.down"
    .end annotation

    .line 165
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/VolumeValue;

    move-result-object v0

    .line 166
    .local v0, "volumeValue":Lcom/xiaopeng/speech/protocol/bean/VolumeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 168
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 169
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeDown(Lcom/xiaopeng/speech/protocol/bean/VolumeValue;)V

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onVolumeMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.volume.max"
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, "listenerList":[Ljava/lang/Object;
    const-string v1, "3"

    .line 179
    .local v1, "streamType":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "stream_type"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 183
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 181
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 185
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 186
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    goto :goto_2

    :cond_0
    const-string v4, "3"

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeMax(I)V

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 189
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected onVolumeMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.volume.min"
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "listenerList":[Ljava/lang/Object;
    const-string v1, "3"

    .line 196
    .local v1, "streamType":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "stream_type"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 200
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 202
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 203
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    goto :goto_2

    :cond_0
    const-string v4, "3"

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeMin(I)V

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected onVolumeMute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.volume.mute"
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 211
    .local v0, "listenerList":[Ljava/lang/Object;
    const-string v1, "3"

    .line 213
    .local v1, "streamType":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "stream_type"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 217
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 219
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 220
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    goto :goto_2

    :cond_0
    const-string v4, "3"

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeMute(I)V

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 223
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected onVolumeNotificationDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.volume.notification.down"
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 535
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 536
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 537
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeNotificationDown()V

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVolumeNotificationMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.volume.notification.max"
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 494
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 495
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 496
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeNotificationMax()V

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVolumeNotificationMedium(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.volume.notification.medium"
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 514
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 515
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 516
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeNotificationMedium()V

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVolumeNotificationMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.volume.notification.min"
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 504
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 505
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 506
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeNotificationMin()V

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVolumeNotificationUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.volume.notification.up"
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 524
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 525
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 526
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeNotificationUp()V

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVolumeResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.volume.resume"
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 247
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeResume()V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVolumeSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.volume.set"
    .end annotation

    .line 154
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/VolumeValue;

    move-result-object v0

    .line 155
    .local v0, "volumeValue":Lcom/xiaopeng/speech/protocol/bean/VolumeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 156
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 158
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeSet(Lcom/xiaopeng/speech/protocol/bean/VolumeValue;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onVolumeUnmute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.volume.unmute"
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "listenerList":[Ljava/lang/Object;
    const-string v1, "3"

    .line 230
    .local v1, "streamType":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "stream_type"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 234
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 232
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 236
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 237
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    goto :goto_2

    :cond_0
    const-string v4, "3"

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeUnmute(I)V

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 240
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected onVolumeUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.volume.up"
    .end annotation

    .line 143
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/VolumeValue;

    move-result-object v0

    .line 144
    .local v0, "volumeValue":Lcom/xiaopeng/speech/protocol/bean/VolumeValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 145
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 146
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 147
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeUp(Lcom/xiaopeng/speech/protocol/bean/VolumeValue;)V

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWifiOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.wifi.off"
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 106
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onWifiOff()V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWifiOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.wifi.on"
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 116
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onWifiOn()V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
