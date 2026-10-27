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

    .line 11
    return-void
.end method


# virtual methods
.method protected onCloseWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://floater.close.window"
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 17
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 18
    .local v1, "from":I
    if-eqz v0, :cond_0

    .line 19
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 20
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;->onCloseWindow(I)V

    .line 19
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSetAnimState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://floater.set.anim.state"
    .end annotation

    .line 27
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;

    move-result-object v0

    .line 28
    .local v0, "windowAnimState":Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 30
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 31
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;->onSetAnimState(Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;)V

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onXiaopExpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://xiaop.expression"
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 40
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 41
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;->onXiaopExpression(Ljava/lang/String;)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
