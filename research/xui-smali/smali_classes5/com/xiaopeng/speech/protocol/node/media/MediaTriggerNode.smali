.class public Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "MediaTriggerNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaTriggerNode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method

.method private getCancelObj()Lorg/json/JSONObject;
    .locals 3

    .line 121
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "command"

    const-string v2, "command://media.message.cancel"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v1, "type"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 128
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method private getSubmitObj()Lorg/json/JSONObject;
    .locals 3

    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "command"

    const-string v2, "command://media.message.submit"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v1, "type"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 117
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method private getWordList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "ok_text"    # Ljava/lang/String;
    .param p2, "cancel_text"    # Ljava/lang/String;

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v0, "resultObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 92
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "okArray":[Ljava/lang/String;
    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 94
    aget-object v4, v1, v3

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;->getSubmitObj()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "okArray":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    const-string v1, "\\|"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "cancelArray":[Ljava/lang/String;
    nop

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 100
    aget-object v3, v1, v2

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;->getCancelObj()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    .end local v1    # "cancelArray":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method


# virtual methods
.method public leaveTrigger()V
    .locals 4

    .line 78
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "triggerID"

    const/16 v2, 0x4e21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "media.message.trigger.leave"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendApiRoute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 85
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method protected onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.message.cancel"
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 49
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerListener;->onCancel()V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.message.submit"
    .end annotation

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "appName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 32
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 33
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerListener;

    invoke-interface {v4}, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerListener;->onSubmit()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 41
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public sendTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tts"    # Ljava/lang/String;
    .param p2, "okText"    # Ljava/lang/String;
    .param p3, "cancelText"    # Ljava/lang/String;

    .line 62
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "triggerID"

    const/16 v2, 0x4e21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v1, "tts"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v1, "wordList"

    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;->getWordList(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v1, "ifMergeWords"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 67
    const-string v1, "repeatNum"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "media.message.trigger.send"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendApiRoute(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "MediaTriggerNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTrigger :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "data":Lorg/json/JSONObject;
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
