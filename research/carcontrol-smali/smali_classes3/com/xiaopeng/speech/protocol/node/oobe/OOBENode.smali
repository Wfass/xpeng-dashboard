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

    return-void
.end method


# virtual methods
.method protected onASRError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 85
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 86
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onASRError()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAddressSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 45
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 46
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onAddressSet(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 95
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 96
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onError(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 75
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 76
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onASRError()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onNetWorkError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 115
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 116
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onNetWorkError()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRecordInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 35
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 36
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onRecordInput(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRecordResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 23
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 25
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 26
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onRecordResult(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSearchError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 65
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 66
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onSearchError()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSkip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 55
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 56
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onSkip()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVolumeChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 106
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;->onVolumeChange(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
