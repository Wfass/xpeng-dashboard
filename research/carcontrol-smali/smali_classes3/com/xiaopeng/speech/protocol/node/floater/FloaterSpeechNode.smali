.class public Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "FloaterSpeechNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;",
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
.method protected onCloseWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 16
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 20
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;->onCloseWindow(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSetAnimState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 27
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 30
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 31
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;->onSetAnimState(Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onXiaopExpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 40
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 41
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;->onXiaopExpression(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
