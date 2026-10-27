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

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "tip"    # Ljava/lang/String;
    .param p4, "expression"    # Ljava/lang/String;
    .param p5, "speaking"    # Z

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

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "tip"    # Ljava/lang/String;
    .param p4, "expression"    # Ljava/lang/String;
    .param p5, "speaking"    # Z
    .param p6, "soundArea"    # I

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

    .line 78
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DMWait;
    .locals 14
    .param p0, "data"    # Ljava/lang/String;

    .line 102
    const-string v0, "normal"

    .line 103
    .local v0, "reason":Ljava/lang/String;
    const-string v1, ""

    .line 104
    .local v1, "sessionId":Ljava/lang/String;
    const-string v2, ""

    .line 105
    .local v2, "tip":Ljava/lang/String;
    const-string v3, ""

    .line 106
    .local v3, "expression":Ljava/lang/String;
    const/4 v4, -0x1

    .line 107
    .local v4, "soundArea":I
    const/4 v5, 0x0

    .line 109
    .local v5, "speaking":Z
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v6, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 111
    const-string v7, "reason"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 112
    const-string v7, "tips"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 113
    const-string v7, "sessionId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 114
    const-string v7, "expression"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 115
    const-string v7, "speaking"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    move v5, v7

    .line 116
    const-string v7, "soundArea"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    .line 121
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 122
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v6, Lcom/xiaopeng/speech/jarvisproto/DMWait;

    move-object v7, v6

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v5

    move v13, v4

    invoke-direct/range {v7 .. v13}, Lcom/xiaopeng/speech/jarvisproto/DMWait;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v6
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "jarvis.dm.wait"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "reason"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v1, "tips"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->tips:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v1, "expression"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->expression:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v1, "speaking"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->speaking:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 94
    const-string v1, "soundArea"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMWait;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 98
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
