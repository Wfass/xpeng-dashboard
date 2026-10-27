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

    return-void
.end method


# virtual methods
.method protected onErrorAsrResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/error/ErrorNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

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

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/error/IErrorListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/error/IErrorListener;->onErrorAsrResult()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
