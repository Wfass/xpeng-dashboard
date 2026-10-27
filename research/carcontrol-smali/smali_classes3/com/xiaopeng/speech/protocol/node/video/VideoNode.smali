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

    return-void
.end method


# virtual methods
.method protected onBarrageClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 437
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 439
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 440
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onBarrageClose(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onBarrageOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 421
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 423
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 424
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onBarrageOpen(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoAudioMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 378
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 381
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 382
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoAudioMode(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoBackward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 101
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 102
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoBackward(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoClarityDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 257
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 260
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 261
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoClarityDown(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoClaritySet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 278
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 279
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoClaritySet(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoClarityUP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 243
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 244
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoClarityUP(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 293
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 296
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 297
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoCollect(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoCollectCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 314
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 315
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoCollectCancel(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoDemand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 395
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 397
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 398
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoDemand(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 223
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 224
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoEnd(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 83
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 84
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoForward(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 47
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 48
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoNext(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 137
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 138
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoPause(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoPrev(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 26
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 29
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 30
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoPrev(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 155
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoResume(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 405
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 407
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 408
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSearch(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 66
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 67
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSet(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoSettime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 119
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 120
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSettime(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoSkipAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 367
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 370
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 371
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSkipAll(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoSkipBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 330
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 333
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 334
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSkipBegin(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoSkipEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 349
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 352
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 353
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSkipEnd(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoSpeedDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 188
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 189
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSpeedDown(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoSpeedSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 206
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 207
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSpeedSet(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVideoSpeedUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 172
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 173
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoListener;->onVideoSpeedUp(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
