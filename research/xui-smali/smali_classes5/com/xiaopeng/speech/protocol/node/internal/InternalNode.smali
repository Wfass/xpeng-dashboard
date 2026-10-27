.class public Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "InternalNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;",
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
.method protected onDmOutput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "dm.output"
    .end annotation

    .line 21
    const/4 v0, 0x0

    .line 23
    .local v0, "dm":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "dm"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v0, v2

    .line 25
    const-string v2, "dataFrom"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "dataFrom":Ljava/lang/String;
    const-string v3, "native"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    const-string v3, "api"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "api":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "native://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object p1, v4

    .line 33
    .end local v3    # "api":Ljava/lang/String;
    :cond_1
    const-string v3, "command"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 34
    .local v3, "commandObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 35
    const-string v4, "api"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "api":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v5

    .line 42
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "dataFrom":Ljava/lang/String;
    .end local v3    # "commandObj":Lorg/json/JSONObject;
    .end local v4    # "api":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 44
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 45
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 46
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 47
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;

    invoke-interface {v3, p2}, Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;->onDmOutput(Ljava/lang/String;)V

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method protected onInputDmData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "input.dm.data"
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 57
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;->onInputDmData(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLocalWakeupResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "local_wakeup.result"
    .end annotation

    .line 64
    const-string v0, ""

    .line 65
    .local v0, "type":Ljava/lang/String;
    const-string v1, ""

    .line 66
    .local v1, "word":Ljava/lang/String;
    const-string v2, ""

    .line 68
    .local v2, "channel":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 70
    const-string v4, "word"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 71
    const-string v4, "channel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 74
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 72
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 76
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v3

    .line 77
    .local v3, "listenerList":[Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 78
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 79
    aget-object v5, v3, v4

    check-cast v5, Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;

    invoke-interface {v5, v0, v1}, Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;->onLocalWakeupResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    aget-object v5, v3, v4

    check-cast v5, Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;

    invoke-interface {v5, v0, v1, v2}, Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;->onLocalWakeupResultWithChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 83
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method protected onRebootComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "sys.reboot.complete"
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 100
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;->onRebootComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onResourceUpdateFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "sys.resource.updateFinish"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 90
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;->onResourceUpdateFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
