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

    .line 11
    return-void
.end method


# virtual methods
.method protected onVADBeginSpeech(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "wakeup.test.vad.begin"
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 16
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 17
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 18
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;->onVADBeginSpeech()V

    .line 17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onVADEndSpeech(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "wakeup.test.vad.end"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 25
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 27
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;->onVADEndSpeech()V

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWakeupFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "wakeup.test.wakeup.failed"
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 45
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;->onWakeupFailed(Ljava/lang/String;)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWakeupSucced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "wakeup.test.wakeup.succ"
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestListener;->onWakeupSucced(Ljava/lang/String;)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
