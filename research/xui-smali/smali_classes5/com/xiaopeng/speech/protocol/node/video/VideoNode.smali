.class public Lcom/xiaopeng/speech/protocol/node/video/VideoNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "VideoNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/video/VideoListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method protected onBarrageClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.barrage.close"
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 439
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 440
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onBarrageClose(Ljava/lang/String;)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onBarrageOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.barrage.open"
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 423
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 424
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onBarrageOpen(Ljava/lang/String;)V

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoAudioMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.audio.mode"
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 380
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 381
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 382
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoAudioMode(Ljava/lang/String;)V

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoBackward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.backward"
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 102
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoBackward(Ljava/lang/String;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoClarityDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.clarity.down"
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 259
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 261
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoClarityDown(Ljava/lang/String;)V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoClaritySet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.clarity.set"
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 279
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoClaritySet(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoClarityUP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.clarity.up"
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 242
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 244
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoClarityUP(Ljava/lang/String;)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.collect"
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoCollect(Ljava/lang/String;)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoCollectCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.collect.cancel"
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 313
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 314
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 315
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoCollectCancel(Ljava/lang/String;)V

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoDemand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "gui.video.app.demand"
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 396
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 397
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 398
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoDemand(Ljava/lang/String;)V

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.end"
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 224
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoEnd(Ljava/lang/String;)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.forward"
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoForward(Ljava/lang/String;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.next"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 47
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 48
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoNext(Ljava/lang/String;)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.pause"
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 138
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoPause(Ljava/lang/String;)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoPrev(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.prev"
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 30
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoPrev(Ljava/lang/String;)V

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.resume"
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoResume(Ljava/lang/String;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "gui.video.search"
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 406
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 407
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 408
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSearch(Ljava/lang/String;)V

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.set"
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "listenerList":[Ljava/lang/Object;
    const-string v1, ""

    .line 65
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 66
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 67
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v3, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSet(Ljava/lang/String;)V

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoSettime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.settime"
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 118
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 120
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSettime(Ljava/lang/String;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoSkipAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.skip.all"
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 369
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 370
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 371
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSkipAll(Ljava/lang/String;)V

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoSkipBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.skip.begin"
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 332
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 334
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSkipBegin(Ljava/lang/String;)V

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoSkipEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.skip.end"
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 351
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 352
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 353
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSkipEnd(Ljava/lang/String;)V

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoSpeedDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.speed.down"
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 189
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSpeedDown(Ljava/lang/String;)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoSpeedSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.speed.set"
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 207
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSpeedSet(Ljava/lang/String;)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVideoSpeedUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "video.play.speed.up"
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 173
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSpeedUp(Ljava/lang/String;)V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
