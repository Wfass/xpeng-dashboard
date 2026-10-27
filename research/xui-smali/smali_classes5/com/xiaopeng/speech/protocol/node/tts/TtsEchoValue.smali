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
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "soundArea"    # I
    .param p3, "positive"    # Z

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;->text:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;->soundArea:I

    .line 26
    iput-boolean p3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;->positive:Z

    .line 27
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;
    .locals 5
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 36
    const-string v0, ""

    .line 37
    .local v0, "text":Ljava/lang/String;
    const/4 v1, -0x1

    .line 38
    .local v1, "soundArea":I
    const/4 v2, 0x0

    .line 40
    .local v2, "positive":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "text"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 42
    const-string v4, "soundArea"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 43
    const-string v4, "positive"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 46
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 44
    :catch_0
    move-exception v3

    .line 45
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v3, Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;

    invoke-direct {v3, v0, v1, v2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;-><init>(Ljava/lang/String;IZ)V

    return-object v3
.end method
