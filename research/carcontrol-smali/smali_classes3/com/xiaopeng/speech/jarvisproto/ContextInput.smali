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

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->pinyin:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    const-string v0, ""

    .line 20
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

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    const-string v0, ""

    .line 20
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

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ZZZLjava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    const-string v0, ""

    .line 20
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

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/ContextInput;
    .locals 21

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 105
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v4, p0

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "text"

    .line 106
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    const-string v5, "isEof"

    .line 107
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    const-string v6, "isInterrupted"

    .line 108
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    const-string v7, "pinyin"

    .line 109
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-string v8, "soundArea"

    .line 110
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v8, "invalid"

    .line 111
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    const-string v9, "screen"

    .line 112
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v9, "type"

    .line 113
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    const-string v10, "msgId"

    .line 114
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v19, v1

    move v11, v2

    move v12, v3

    move-object v14, v4

    move v15, v5

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v9, v1

    :goto_0
    move/from16 v20, v5

    move-object v5, v0

    move v0, v2

    move/from16 v2, v20

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v9, v1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v7, v1

    move-object v9, v7

    :goto_1
    move v8, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v7, v1

    move-object v9, v7

    move v6, v2

    move v8, v6

    :goto_2
    move v2, v5

    move-object v5, v0

    move v0, v8

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v5, v0

    move-object v7, v1

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v5, v0

    move-object v4, v1

    move-object v7, v4

    :goto_3
    move-object v9, v7

    move v0, v2

    move v6, v0

    move v8, v6

    .line 117
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    move v11, v0

    move-object/from16 v19, v1

    move v15, v2

    move v12, v3

    move-object v14, v4

    :goto_5
    move/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v16, v8

    move-object v13, v9

    .line 119
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Lcom/xiaopeng/speech/jarvisproto/ContextInput;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.context.input"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "text"

    .line 77
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isEof"

    .line 78
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->isEof:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isInterrupted"

    .line 79
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->isInterrupted:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "pinyin"

    .line 80
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 81
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "soundArea"

    .line 82
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "invalid"

    .line 83
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->invalid:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "screen"

    .line 84
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->screen:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msgId"

    .line 85
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextInput;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 88
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 90
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
