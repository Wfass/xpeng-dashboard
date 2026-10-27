.class public Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;
.super Ljava/lang/Object;
.source "TtsEchoValue.java"


# instance fields
.field public positive:Z

.field public soundArea:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;->text:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;->soundArea:I

    .line 26
    iput-boolean p3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;->positive:Z

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;
    .locals 3

    const-string v0, ""

    const/4 v1, -0x1

    .line 40
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "text"

    .line 41
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "soundArea"

    .line 42
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string p0, "positive"

    .line 43
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    .line 47
    :goto_0
    new-instance v2, Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;

    invoke-direct {v2, v0, v1, p0}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;-><init>(Ljava/lang/String;IZ)V

    return-object v2
.end method
