.class public Lcom/xiaopeng/speech/protocol/node/error/ErrorNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "ErrorNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/error/IErrorListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method protected onErrorAsrResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://error.asr.result"
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/error/ErrorNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/error/IErrorListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/error/IErrorListener;->onErrorAsrResult()V

    .line 17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
