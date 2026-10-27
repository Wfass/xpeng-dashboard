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

    return-void
.end method


# virtual methods
.method protected onTtsEcho(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 63
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 66
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 67
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;->ttsEcho(Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTtsEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 38
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 39
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;->ttsEnd(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTtsStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 26
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 28
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 29
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;->ttsStart(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTtsTimbreSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 49
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "timbre_type"

    .line 50
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 52
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 55
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 56
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;->onTtsTimbreSetting(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method
