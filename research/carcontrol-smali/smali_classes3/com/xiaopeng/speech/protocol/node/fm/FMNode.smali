.class public Lcom/xiaopeng/speech/protocol/node/fm/FMNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "FMNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/fm/FMListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFmLocalOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 28
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 29
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onFmLocalOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFmLocalOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 18
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 19
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onFmLocalOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFmNetworkOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 48
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 49
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onFmNetworkOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFmNetworkOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 38
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 39
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onFmNetworkOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFmPlayChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 59
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onFmPlayChannel(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFmPlayChannelName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 68
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 69
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onFmPlayChannelName(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayCollectFM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 78
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 79
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onPlayCollectFM()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
