.class public Lcom/xiaopeng/speech/jarvisproto/HotWordResult;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "HotWordResult.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.hotword.result"


# instance fields
.field public command:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public tts:Ljava/lang/String;

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "scene"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "tts"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;->word:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;->scene:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;->command:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;->tts:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/HotWordResult;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .line 39
    const-string v0, ""

    .line 40
    .local v0, "word":Ljava/lang/String;
    const-string v1, ""

    .line 41
    .local v1, "scene":Ljava/lang/String;
    const-string v2, ""

    .line 42
    .local v2, "command":Ljava/lang/String;
    const-string v3, ""

    .line 44
    .local v3, "tts":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v4, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 46
    const-string v5, "word"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 47
    const-string v5, "scene"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 48
    const-string v5, "command"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 49
    const-string v5, "tts"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 53
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 51
    :catch_0
    move-exception v4

    .line 52
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v4, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "jarvis.hotword.result"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "word"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;->word:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v1, "scene"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;->scene:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v1, "command"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;->command:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v1, "tts"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;->tts:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 35
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
