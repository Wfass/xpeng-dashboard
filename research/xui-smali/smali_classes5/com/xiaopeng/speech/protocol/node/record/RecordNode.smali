.class public Lcom/xiaopeng/speech/protocol/node/record/RecordNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "RecordNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/record/RecordListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public onAsrResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.asr.cloundresult"
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;

    move-result-object v1

    .line 33
    .local v1, "asrResult":Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;
    if-eqz v0, :cond_0

    .line 34
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 35
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onAsrResult(Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;)V

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onRecordBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.record.begin"
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 45
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onRecordBegin()V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onRecordEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.record.end"
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x0

    move v2, v1

    .line 55
    .local v2, "isStopRecord":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, "object":Lorg/json/JSONObject;
    const-string v4, "isStopRecord"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 59
    .end local v3    # "object":Lorg/json/JSONObject;
    goto :goto_0

    .line 57
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 61
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 62
    nop

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 63
    aget-object v3, v0, v1

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v3, v2}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onRecordEnd(Z)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onRecordError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.record.error"
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/record/bean/RecordErrReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/record/bean/RecordErrReason;

    move-result-object v1

    .line 72
    .local v1, "recordError":Lcom/xiaopeng/speech/protocol/node/record/bean/RecordErrReason;
    if-eqz v0, :cond_0

    .line 73
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 74
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onRecordError(Lcom/xiaopeng/speech/protocol/node/record/bean/RecordErrReason;)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onRecordMaxLength(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.record.maxlength"
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 115
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onRecordMaxLength()V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSpeechBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.speech.begin"
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 84
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onSpeechBegin()V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSpeechEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.speech.end"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 94
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onSpeechEnd()V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSpeechVolume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.speech.volume"
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;

    move-result-object v1

    .line 103
    .local v1, "volume":Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;
    if-eqz v0, :cond_0

    .line 104
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 105
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onSpeechVolume(Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
