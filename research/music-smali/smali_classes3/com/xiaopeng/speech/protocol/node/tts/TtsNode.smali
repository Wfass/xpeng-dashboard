.class public Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;
.super Lbut;
.source "TtsNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/tts/c;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 26
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 28
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 29
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/tts/c;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/tts/c;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 38
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 39
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/tts/c;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/tts/c;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

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

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/tts/c;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/tts/c;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 63
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/tts/b;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/tts/b;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 66
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 67
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/tts/c;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/tts/c;->a(Lcom/xiaopeng/speech/protocol/node/tts/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
