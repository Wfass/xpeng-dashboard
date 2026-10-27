.class public Lcom/xiaopeng/speech/jarvisproto/ContextInput;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "ContextInput.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.context.input"

.field public static final TYPE_ASR:Ljava/lang/String; = "asr"


# instance fields
.field public invalid:Z

.field public isEof:Z

.field public isInterrupted:Z

.field public msgId:Ljava/lang/String;

.field public pinyin:Ljava/lang/String;

.field public screen:I

.field public soundArea:I

.field public text:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->pinyin:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 1
    .param p1, "screen"    # I
    .param p2, "soundArea"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "isEof"    # Z
    .param p6, "invalid"    # Z
    .param p7, "isInterrupted"    # Z
    .param p8, "pinyin"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->pinyin:Ljava/lang/String;

    .line 46
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->screen:I

    .line 47
    iput p2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->soundArea:I

    .line 48
    iput-object p3, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->type:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->text:Ljava/lang/String;

    .line 50
    iput-boolean p5, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->isEof:Z

    .line 51
    iput-boolean p6, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->invalid:Z

    .line 52
    iput-boolean p7, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->isInterrupted:Z

    .line 53
    iput-object p8, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->pinyin:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "screen"    # I
    .param p2, "soundArea"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "isEof"    # Z
    .param p6, "invalid"    # Z
    .param p7, "isInterrupted"    # Z
    .param p8, "pinyin"    # Ljava/lang/String;
    .param p9, "msgId"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->pinyin:Ljava/lang/String;

    .line 58
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->screen:I

    .line 59
    iput p2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->soundArea:I

    .line 60
    iput-object p3, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->type:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->text:Ljava/lang/String;

    .line 62
    iput-boolean p5, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->isEof:Z

    .line 63
    iput-boolean p6, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->invalid:Z

    .line 64
    iput-boolean p7, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->isInterrupted:Z

    .line 65
    iput-object p8, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->pinyin:Ljava/lang/String;

    .line 66
    iput-object p9, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->msgId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ZZZLjava/lang/String;)V
    .locals 1
    .param p1, "screen"    # I
    .param p2, "soundArea"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "isEof"    # Z
    .param p5, "invalid"    # Z
    .param p6, "isInterrupted"    # Z
    .param p7, "pinyin"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->pinyin:Ljava/lang/String;

    .line 35
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->screen:I

    .line 36
    iput p2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->soundArea:I

    .line 37
    iput-object p3, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->text:Ljava/lang/String;

    .line 38
    iput-boolean p4, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->isEof:Z

    .line 39
    iput-boolean p5, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->invalid:Z

    .line 40
    iput-boolean p6, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->isInterrupted:Z

    .line 41
    iput-object p7, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->pinyin:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/ContextInput;
    .locals 21
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 94
    const-string v1, ""

    .line 95
    .local v1, "text":Ljava/lang/String;
    const/4 v2, 0x0

    .line 96
    .local v2, "isEof":Z
    const/4 v3, 0x0

    .line 97
    .local v3, "isInterrupted":Z
    const-string v4, ""

    .line 98
    .local v4, "pinyin":Ljava/lang/String;
    const/4 v5, 0x0

    .line 99
    .local v5, "invalid":Z
    const/4 v6, -0x1

    .line 100
    .local v6, "soundArea":I
    const/4 v7, 0x0

    .line 101
    .local v7, "screen":I
    const-string v8, ""

    .line 102
    .local v8, "type":Ljava/lang/String;
    const-string v0, ""

    move-object v9, v0

    .line 105
    .local v9, "msgId":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p0

    :try_start_1
    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "text"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    .line 107
    const-string v11, "isEof"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    move v2, v11

    .line 108
    const-string v11, "isInterrupted"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    move v3, v11

    .line 109
    const-string v11, "pinyin"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 110
    const-string v11, "soundArea"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    move v6, v11

    .line 111
    const-string v11, "invalid"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    move v5, v11

    .line 112
    const-string v11, "screen"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    move v7, v11

    .line 113
    const-string v11, "type"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 114
    const-string v11, "msgId"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v11

    .line 118
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    .line 117
    .local v0, "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 119
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;

    move-object v11, v0

    move v12, v7

    move v13, v6

    move-object v14, v8

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v5

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v9

    invoke-direct/range {v11 .. v20}, Lcom/xiaopeng/speech/jarvisproto/ContextInput;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "jarvis.context.input"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "text"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v1, "isEof"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->isEof:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 79
    const-string v1, "isInterrupted"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->isInterrupted:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 80
    const-string v1, "pinyin"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "type"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "soundArea"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v1, "invalid"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->invalid:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 84
    const-string v1, "screen"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->screen:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 90
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
