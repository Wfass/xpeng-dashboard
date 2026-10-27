.class public Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "WakeupTestNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;",
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
.method protected onVADBeginSpeech(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 17
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 18
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;->onVADBeginSpeech()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVADEndSpeech(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 26
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 27
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;->onVADEndSpeech()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWakeupFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 44
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 45
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;->onWakeupFailed(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWakeupSucced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;->onWakeupSucced(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
