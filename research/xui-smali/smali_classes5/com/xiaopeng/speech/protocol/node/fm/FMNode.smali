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

    .line 11
    return-void
.end method


# virtual methods
.method protected onFmLocalOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://fm.local.off"
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 29
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onFmLocalOff()V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onFmLocalOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://fm.local.on"
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 17
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 18
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 19
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onFmLocalOn()V

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onFmNetworkOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://fm.network.off"
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 49
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onFmNetworkOff()V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onFmNetworkOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://fm.network.on"
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 39
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onFmNetworkOn()V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onFmPlayChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://fm.play.channel"
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 59
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onFmPlayChannel(Ljava/lang/String;)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onFmPlayChannelName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://fm.play.channelname"
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 69
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onFmPlayChannelName(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlayCollectFM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://fm.play.collection"
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 79
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/fm/FMListener;->onPlayCollectFM()V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
