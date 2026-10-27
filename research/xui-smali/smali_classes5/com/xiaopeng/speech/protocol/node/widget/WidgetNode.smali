.class public Lcom/xiaopeng/speech/protocol/node/widget/WidgetNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "WidgetNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/widget/WidgetListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method protected onAcWidgetOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ac.widget.on"
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/widget/WidgetNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 18
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 19
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 20
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/widget/WidgetListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/widget/WidgetListener;->onAcWidgetOn()V

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
