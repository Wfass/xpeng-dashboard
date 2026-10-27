.class public Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "UserBookNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/userbook/UserBookListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCheckUserBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 16
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 17
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 20
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onCheckUserBook(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCloseUserBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 39
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 40
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onCloseUserBook()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onOpenUserBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 29
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 30
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onOpenUserBook()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
