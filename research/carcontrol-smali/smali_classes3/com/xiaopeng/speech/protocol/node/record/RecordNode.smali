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

    return-void
.end method


# virtual methods
.method public onAsrResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 32
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 34
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 35
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onAsrResult(Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRecordBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 44
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 45
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onRecordBegin()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRecordEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 55
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "isStopRecord"

    .line 56
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 58
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    move p2, v0

    :goto_0
    if-eqz p1, :cond_0

    .line 62
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 63
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onRecordEnd(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public onRecordError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 71
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/record/bean/RecordErrReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/record/bean/RecordErrReason;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 74
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onRecordError(Lcom/xiaopeng/speech/protocol/node/record/bean/RecordErrReason;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRecordMaxLength(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 114
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 115
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onRecordMaxLength()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSpeechBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 83
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 84
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onSpeechBegin()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSpeechEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 93
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 94
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onSpeechEnd()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSpeechVolume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 102
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 104
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 105
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/record/RecordListener;->onSpeechVolume(Lcom/xiaopeng/speech/protocol/node/record/bean/Volume;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
