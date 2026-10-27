.class public Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "SpeechCarControlNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method protected onCloseSoc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.power.close"
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 15
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 16
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 17
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;->onCloseDriveMileIncrease()V

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenSoc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.power.open"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;->onOpenDriveMileIncrease()V

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRiseSpeaker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 37
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;->onOpenLoudspeaker()V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
