.class public Lcom/xiaopeng/speech/protocol/node/music/MusicNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "MusicNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/music/MusicListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicNode"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 26
    const-class v0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    new-instance v1, Lcom/xiaopeng/speech/protocol/node/music/MusicNode$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode$1;-><init>(Lcom/xiaopeng/speech/protocol/node/music/MusicNode;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected onAudioBookPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.audiobook.play"
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onAudioBookPlay(Ljava/lang/String;)V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAudioBookSubscribe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.audiobook.subscribe"
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 277
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onAudioBookSubscribe()V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onCancelPlaySimilar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.sim.cancel"
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 357
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 358
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 359
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onCancelPlaySimilar()V

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.collect"
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 265
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 266
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 267
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onControlCollect()V

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDelCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.collect.cancel"
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 325
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 327
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onDelCollect()V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 181
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 183
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onExit()V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onMusicBackward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.backward"
    .end annotation

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 403
    .local v0, "listenerList":[Ljava/lang/Object;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 404
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 405
    .local v2, "second":I
    if-eqz v0, :cond_0

    .line 406
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 407
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v4, v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicBackward(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 412
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "second":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 413
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public onMusicDailyrecPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.dailyrec.play"
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 493
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 494
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 495
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicDailyrecPlay()V

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onMusicForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.forward"
    .end annotation

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 387
    .local v0, "listenerList":[Ljava/lang/Object;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 389
    .local v2, "second":I
    if-eqz v0, :cond_0

    .line 390
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 391
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v4, v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicForward(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 396
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "second":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 397
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method protected onMusicListPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.list.play"
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 223
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->isJson(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 227
    const-string v2, "from"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const-string v2, "from"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "from":Ljava/lang/String;
    const-string v3, "dui_xp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const-string v3, "MusicNode"

    const-string v4, "is from dui_xp"

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    return-void

    .line 237
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "from":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 240
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 241
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicListPlay(Ljava/lang/String;)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public onMusicNewsPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.news.play"
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 478
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 479
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 480
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicNewsPlay()V

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onMusicSettime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.settime"
    .end annotation

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "listenerList":[Ljava/lang/Object;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 420
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 421
    .local v2, "second":I
    if-eqz v0, :cond_0

    .line 422
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 423
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v4, v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicSettime(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "second":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 430
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public onMusicSpeedDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.speed.down"
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 445
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 446
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 447
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicSpeedDown()V

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onMusicSpeedSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.speed.set"
    .end annotation

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 457
    .local v0, "listenerList":[Ljava/lang/Object;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 458
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    .line 459
    .local v2, "speed":F
    if-eqz v0, :cond_0

    .line 460
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 461
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v4, v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicSpeedSet(F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "speed":F
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 468
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public onMusicSpeedUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.speed.up"
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 435
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 437
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicSpeedUp()V

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.next"
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 161
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onNext()V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.pause"
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 128
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPause()V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.play"
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 53
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlay()V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlayBlueTooth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.bluetooth.play.random"
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 192
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 194
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayBluetooth()V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlayCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.collect.play"
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 336
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

    move-result-object v1

    .line 337
    .local v1, "music":Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;
    if-eqz v0, :cond_0

    .line 338
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 339
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayCollect(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlayHistoryList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.playlist.history.play"
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 367
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

    move-result-object v1

    .line 368
    .local v1, "music":Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;
    if-eqz v0, :cond_0

    .line 369
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 370
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayHistoryList(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlayLoopAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.loop.all"
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 74
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    const-string v3, "order"

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayMode(Ljava/lang/String;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onPlayLoopClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.loop.close"
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayLoopClose()V

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlayLoopRandom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.random"
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 84
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    const-string v3, "random"

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayMode(Ljava/lang/String;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlayLoopSingle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.loop.single"
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 64
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    const-string v3, "single"

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayMode(Ljava/lang/String;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onPlayRandomClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.random.close"
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 534
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 535
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 536
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayRandomClose()V

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlaySimilar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.sim"
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 347
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 349
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlaySimilar()V

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onPlaySpotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.spotify.play"
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlaySpotify()V

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onPlayUsb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.play.usb"
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayUsb()V

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPrev(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.prev"
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 150
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPrev()V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.resume"
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 139
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onResume()V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://music.search"
    .end annotation

    .line 91
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;

    move-result-object v0

    .line 92
    .local v0, "searchMusic":Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 93
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 94
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 95
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v3, p1, v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onSearch(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSoundEffectLive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.soundeffect.live"
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 295
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 297
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onSoundEffectLive()V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSoundEffectStereo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.soundeffect.stereo"
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 285
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 286
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 287
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onSoundEffectStereo()V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSoundEffectSuperbass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.soundeffect.superbass"
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 315
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 317
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onSoundEffectSuperbass()V

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSoundEffectVocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.soundeffect.vocal"
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 305
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 307
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onSoundEffectVocal()V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.control.stop"
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 172
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onStop()V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSupportPlayModeChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://music.playmode.support"
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2, p1}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onSupportPlayModeChange(Ljava/lang/String;)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTwelveNovelPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://music.1212.novel.play"
    .end annotation

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "audioBookBean":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "param"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 253
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 254
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 255
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 256
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 257
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onTwelveNovelPlay(Ljava/lang/String;)V

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public startMusicSearch()V
    .locals 2

    .line 379
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    const-string v1, "music"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->startDialogFrom(Ljava/lang/String;)V

    .line 380
    return-void
.end method
