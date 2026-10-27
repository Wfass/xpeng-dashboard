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

    return-void
.end method


# virtual methods
.method protected onAudioBookPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 214
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 215
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onAudioBookPlay(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAudioBookSubscribe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 276
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 277
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onAudioBookSubscribe()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCancelPlaySimilar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 356
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 358
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 359
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onCancelPlaySimilar()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 266
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 267
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onControlCollect()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDelCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 324
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 326
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 327
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onDelCollect()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 182
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 183
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onExit()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMusicBackward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 402
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 403
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 404
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 406
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 407
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicBackward(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 411
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onMusicDailyrecPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 492
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 494
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 495
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicDailyrecPlay()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMusicForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 386
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 387
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 388
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 390
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 391
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicForward(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 395
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected onMusicListPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p1, "from"

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 223
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->isJson(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "dui_xp"

    .line 229
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MusicNode"

    const-string v1, "is from dui_xp"

    .line 230
    invoke-static {p1, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    .line 240
    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 241
    aget-object v1, v0, p1

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicListPlay(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMusicNewsPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 477
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 479
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 480
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicNewsPlay()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMusicSettime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 418
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 419
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 420
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 422
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 423
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicSettime(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 427
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onMusicSpeedDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 444
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 446
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 447
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicSpeedDown()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMusicSpeedSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 456
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 457
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 458
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->floatValue()F

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 460
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 461
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicSpeedSet(F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 465
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onMusicSpeedUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 434
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 436
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 437
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onMusicSpeedUp()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 160
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 161
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onNext()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 127
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 128
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPause()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 52
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 53
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlay()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayBlueTooth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 193
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 194
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayBluetooth()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 335
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 336
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 338
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 339
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayCollect(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayHistoryList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 366
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 367
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 369
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 370
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayHistoryList(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayLoopAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 73
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 74
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    const-string v1, "order"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayMode(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayLoopClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 523
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 525
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 526
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayLoopClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayLoopRandom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 83
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 84
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    const-string v1, "random"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayMode(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayLoopSingle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 63
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 64
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    const-string v1, "single"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayMode(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayRandomClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 533
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 535
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 536
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayRandomClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlaySimilar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 346
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 348
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 349
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlaySimilar()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlaySpotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 513
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 515
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 516
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlaySpotify()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayUsb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 503
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 505
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 506
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPlayUsb()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPrev(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 149
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 150
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onPrev()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 138
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 139
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onResume()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 91
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;

    move-result-object p2

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 94
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 95
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onSearch(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSoundEffectLive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 294
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 296
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 297
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onSoundEffectLive()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSoundEffectStereo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 284
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 286
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 287
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onSoundEffectStereo()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSoundEffectSuperbass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 316
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 317
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onSoundEffectSuperbass()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSoundEffectVocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 304
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 306
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 307
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onSoundEffectVocal()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 171
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 172
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onStop()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSupportPlayModeChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 202
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 204
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 205
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onSupportPlayModeChange(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTwelveNovelPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 249
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "param"

    .line 250
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    .line 254
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 256
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 257
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/music/MusicListener;->onTwelveNovelPlay(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

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

    return-void
.end method
