.class public Lcom/xiaopeng/speech/protocol/bean/SpeechParam;
.super Ljava/lang/Object;
.source "SpeechParam.java"


# instance fields
.field private isAnimation:Z

.field private isAppTTS:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;-><init>()V

    .line 15
    .local v0, "param":Lcom/xiaopeng/speech/protocol/bean/SpeechParam;
    const/4 v1, 0x0

    .line 17
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 18
    const-string v2, "app_tts"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->isAppTTS:Z

    .line 19
    const-string v2, "animation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->isAnimation:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 20
    :catch_0
    move-exception v2

    .line 21
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public isAnimation()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->isAnimation:Z

    return v0
.end method

.method public isAppTTS()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->isAppTTS:Z

    return v0
.end method
