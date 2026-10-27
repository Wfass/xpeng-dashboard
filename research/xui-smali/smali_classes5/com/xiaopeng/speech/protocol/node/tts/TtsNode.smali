.class public Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "TtsNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method protected onTtsEcho(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "speech.tts.echo"
    .end annotation

    .line 63
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;

    move-result-object v0

    .line 64
    .local v0, "echoValue":Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 66
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 67
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;->ttsEcho(Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;)V

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onTtsEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "speech.tts.end"
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 39
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;->ttsEnd(Ljava/lang/String;)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTtsStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "speech.tts.start"
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 29
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;->ttsStart(Ljava/lang/String;)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTtsTimbreSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "tts.timbre.setting"
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    .line 49
    .local v1, "type":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "timbre_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 53
    .end local v2    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 55
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 56
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;->onTtsTimbreSetting(I)V

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
