.class public Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "OOBENode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBENode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method protected onASRError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://oobe.asr.error"
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onASRError()V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAddressSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://oobe.address.set"
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onAddressSet(Ljava/lang/String;)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://oobe.other.error"
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onError(Ljava/lang/String;)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://error.asr.result"
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onASRError()V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onNetWorkError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://oobe.network.error"
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onNetWorkError()V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRecordInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://oobe.record.input"
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onRecordInput(Ljava/lang/String;)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRecordResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://oobe.record.result"
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onRecordResult(Ljava/lang/String;)V

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSearchError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://oobe.search.error"
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onSearchError()V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSkip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://oobe.skip"
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onSkip()V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVolumeChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://oobe.volume"
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onVolumeChange(Ljava/lang/String;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
