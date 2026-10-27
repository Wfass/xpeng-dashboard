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

    return-void
.end method


# virtual methods
.method protected onCloseSoc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 16
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 17
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;->onCloseDriveMileIncrease()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onOpenSoc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;->onOpenDriveMileIncrease()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRiseSpeaker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 36
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 37
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/speech/carcontrol/SpeechCarControlListener;->onOpenLoudspeaker()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
