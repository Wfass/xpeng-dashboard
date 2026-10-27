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

    .line 12
    return-void
.end method


# virtual methods
.method protected onCheckUserBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.manual.search"
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 17
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;

    move-result-object v1

    .line 18
    .local v1, "userBookValue":Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;
    if-eqz v0, :cond_0

    .line 19
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 20
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onCheckUserBook(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;)V

    .line 19
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onCloseUserBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.close.user.book"
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 40
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onCloseUserBook()V

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenUserBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.open.user.book"
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/userbook/UserBookNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 30
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onOpenUserBook()V

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
