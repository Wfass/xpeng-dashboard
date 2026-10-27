.class public Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "ChangbaNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/changba/ChangbaListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected onMusicChangbaSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://changba.search.music"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/changba/ChangbaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 20
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/changba/bean/ChangbaBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/changba/bean/ChangbaBean;

    move-result-object v1

    .line 21
    .local v1, "changbaBean":Lcom/xiaopeng/speech/protocol/node/changba/bean/ChangbaBean;
    if-eqz v0, :cond_0

    .line 22
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 23
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/changba/ChangbaListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/changba/ChangbaListener;->onMusicChangbaSearch(Lcom/xiaopeng/speech/protocol/node/changba/bean/ChangbaBean;)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
