.class public Lcom/xiaopeng/speech/protocol/node/command/CommandNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "CommandNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/command/CommandListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method


# virtual methods
.method protected onJsonPost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/command/CommandNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 21
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 23
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 24
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/command/CommandListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/command/CommandListener;->postCommand(Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
