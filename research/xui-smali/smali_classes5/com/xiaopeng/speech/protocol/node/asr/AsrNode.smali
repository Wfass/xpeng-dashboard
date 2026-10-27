.class public Lcom/xiaopeng/speech/protocol/node/asr/AsrNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "AsrNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/app/AppListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method protected onAsrEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.asr.event"
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asr/AsrNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 21
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/AsrEvent;

    move-result-object v1

    .line 23
    .local v1, "asrEvent":Lcom/xiaopeng/speech/jarvisproto/AsrEvent;
    if-eqz v0, :cond_1

    .line 24
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 25
    iget v3, v1, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->soundArea:I

    if-lez v3, :cond_0

    .line 26
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/asr/AsrListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/asr/AsrListener;->onAsrEvent(Lcom/xiaopeng/speech/jarvisproto/AsrEvent;)V

    goto :goto_1

    .line 28
    :cond_0
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/asr/AsrListener;

    iget v4, v1, Lcom/xiaopeng/speech/jarvisproto/AsrEvent;->mEvent:I

    invoke-interface {v3, v4}, Lcom/xiaopeng/speech/protocol/node/asr/AsrListener;->onAsrEvent(I)V

    .line 24
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "asrEvent":Lcom/xiaopeng/speech/jarvisproto/AsrEvent;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
