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

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/HotWordResult;
    .locals 5

    const-string v0, ""

    .line 44
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "word"

    .line 46
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v2, "scene"

    .line 47
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v3, "command"

    .line 48
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v4, "tts"

    .line 49
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v3, v0

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_0

    :catch_3
    move-exception v1

    move-object p0, v0

    move-object v2, p0

    :goto_0
    move-object v3, v2

    .line 52
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    :goto_2
    new-instance v1, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.hotword.result"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "word"

    .line 28
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;->word:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "scene"

    .line 29
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;->scene:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "command"

    .line 30
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;->command:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tts"

    .line 31
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/HotWordResult;->tts:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 33
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 35
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
