.class public Lcom/xiaopeng/speech/jarvisproto/DMWait;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "DMWait.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.dm.wait"

.field public static final STATUS_END:Ljava/lang/String; = "end"

.field public static final STATUS_END_ASR:Ljava/lang/String; = "end_asr"

.field public static final STATUS_ENTER:Ljava/lang/String; = "enter"

.field public static final STATUS_FEED_NLU:Ljava/lang/String; = "feednlu"

.field public static final STATUS_INVALID_SPEECH:Ljava/lang/String; = "invalid_speech"

.field public static final STATUS_START_ASR:Ljava/lang/String; = "start_asr"

.field public static final STATUS_TIME:Ljava/lang/String; = "timeout"

.field public static final STATUS_TTS_END:Ljava/lang/String; = "tts_end"

.field public static final STATUS_UPDATE:Ljava/lang/String; = "update"


# instance fields
.field public expression:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public soundArea:I

.field public speaking:Z

.field public tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->reason:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->tips:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->sessionId:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->expression:Ljava/lang/String;

    .line 67
    iput-boolean p5, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->speaking:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->reason:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->tips:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->sessionId:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->expression:Ljava/lang/String;

    .line 76
    iput-boolean p5, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->speaking:Z

    .line 77
    iput p6, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->soundArea:I

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DMWait;
    .locals 13

    const-string v0, ""

    const-string v1, "normal"

    const/4 v2, 0x0

    .line 109
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "reason"

    .line 111
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "tips"

    .line 112
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, "sessionId"

    .line 113
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "expression"

    .line 114
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "speaking"

    .line 115
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "soundArea"

    .line 116
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, p0

    move-object v9, v0

    move-object v6, v1

    move v10, v2

    move v11, v3

    move-object v7, v4

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v12, v1

    move-object v1, v0

    move-object v0, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v12

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception v3

    move-object p0, v0

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, p0

    .line 120
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v4, -0x1

    move-object v8, p0

    move-object v7, v0

    move-object v9, v1

    move-object v6, v2

    move v10, v3

    move v11, v4

    .line 122
    :goto_1
    new-instance p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/xiaopeng/speech/jarvisproto/DMWait;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object p0
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.dm.wait"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "reason"

    .line 89
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tips"

    .line 90
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->tips:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sessionId"

    .line 91
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expression"

    .line 92
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->expression:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "speaking"

    .line 93
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->speaking:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "soundArea"

    .line 94
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 96
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 98
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
