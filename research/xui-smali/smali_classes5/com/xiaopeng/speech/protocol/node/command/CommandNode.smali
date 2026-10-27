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

    .line 16
    return-void
.end method


# virtual methods
.method protected onJsonPost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://json.post"
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/command/CommandNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 21
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;

    move-result-object v1

    .line 22
    .local v1, "commandBean":Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;
    if-eqz v0, :cond_0

    .line 23
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 24
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/command/CommandListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/command/CommandListener;->postCommand(Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;)V

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
