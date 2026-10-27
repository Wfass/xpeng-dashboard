.class public Lcom/xiaopeng/speech/protocol/node/tts/a;
.super Lcom/xiaopeng/speech/jarvisproto/e;
.source "TtsEcho.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IIIJ)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/e;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->f:I

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->g:I

    .line 88
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->b:I

    .line 89
    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->a:I

    .line 90
    iput-object p3, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->c:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->d:Ljava/lang/String;

    .line 92
    iput p5, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->e:I

    .line 93
    iput p6, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->f:I

    .line 94
    iput p7, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->g:I

    .line 95
    iput-wide p8, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->h:J

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/tts/a;
    .locals 20

    const-string v1, ""

    .line 165
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 178
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v6, p0

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "screen"

    .line 179
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v7, "soundArea"

    .line 180
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v8, "msgId"

    .line 181
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v9, "text"

    .line 182
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "type"

    .line 183
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string v10, "type_action"

    .line 184
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v10, "type_action_desc"

    .line 185
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v10, "timestamp"

    .line 186
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v8, v1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v8, v1

    move v7, v4

    :goto_0
    move v9, v5

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v8, v1

    move v7, v4

    move v6, v5

    move v9, v6

    .line 188
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    move-object v14, v1

    move-wide/from16 v18, v2

    move/from16 v17, v4

    move/from16 v16, v5

    move v11, v6

    move v12, v7

    move-object v13, v8

    move v15, v9

    .line 190
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/tts/a;

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Lcom/xiaopeng/speech/protocol/node/tts/a;-><init>(IILjava/lang/String;Ljava/lang/String;IIIJ)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "screen"

    .line 137
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "soundArea"

    .line 138
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msgId"

    .line 139
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "text"

    .line 140
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 141
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type_action"

    .line 142
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type_action_desc"

    .line 143
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 146
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 148
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 114
    :cond_0
    instance-of v1, p1, Lcom/xiaopeng/speech/protocol/node/tts/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 115
    :cond_1
    check-cast p1, Lcom/xiaopeng/speech/protocol/node/tts/a;

    .line 116
    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->b:I

    iget v3, p1, Lcom/xiaopeng/speech/protocol/node/tts/a;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->a:I

    iget v3, p1, Lcom/xiaopeng/speech/protocol/node/tts/a;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->e:I

    iget v3, p1, Lcom/xiaopeng/speech/protocol/node/tts/a;->e:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->f:I

    iget v3, p1, Lcom/xiaopeng/speech/protocol/node/tts/a;->f:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->g:I

    iget v3, p1, Lcom/xiaopeng/speech/protocol/node/tts/a;->g:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->h:J

    iget-wide v5, p1, Lcom/xiaopeng/speech/protocol/node/tts/a;->h:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaopeng/speech/protocol/node/tts/a;->c:Ljava/lang/String;

    .line 119
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/speech/protocol/node/tts/a;->d:Ljava/lang/String;

    .line 120
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    .line 125
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->d:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/a;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
