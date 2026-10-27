.class public Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "TtsEcho.java"


# static fields
.field public static final EVENT_TTS_ECHO:Ljava/lang/String; = "jarvis.tts.echo"

.field public static final TYPE_ACTION_AIGCDRAWPICTURE:I = 0xf

.field public static final TYPE_ACTION_AIGCMULTIMODALQA:I = 0x10

.field public static final TYPE_ACTION_AIGCTELLSTORY:I = 0xe

.field public static final TYPE_ACTION_BAIKEGENERAL:I = 0x13

.field public static final TYPE_ACTION_CHATGENERAL:I = 0x11

.field public static final TYPE_ACTION_DEFAULT:I = 0x0

.field public static final TYPE_ACTION_DESC_DEFAULT:I = -0x1

.field public static final TYPE_ACTION_DESC_WHETHER_RAINY:I = 0x1

.field public static final TYPE_ACTION_DESC_WHETHER_SNOWY:I = 0x2

.field public static final TYPE_ACTION_DESC_WHETHER_SUNNY:I = 0x0

.field public static final TYPE_ACTION_DRIVER_MODE:I = 0x6

.field public static final TYPE_ACTION_NAVI_CHARGE:I = 0x5

.field public static final TYPE_ACTION_NAVI_COMPANY:I = 0x4

.field public static final TYPE_ACTION_NAVI_HOME:I = 0x3

.field public static final TYPE_ACTION_OPEN_AC_CLEAR:I = 0x7

.field public static final TYPE_ACTION_QACARUSAGE:I = 0x12

.field public static final TYPE_ACTION_SEARCH_MUSIC:I = 0x2

.field public static final TYPE_ACTION_SEARCH_POI:I = 0x1

.field public static final TYPE_ACTION_SEARCH_WHETHER:I = 0x8

.field public static final TYPE_ACTION_XP_AIGC_TASK_BEGIN:I = 0xc

.field public static final TYPE_ACTION_XP_AIGC_TASK_END:I = 0xd

.field public static final TYPE_ACTION_XP_SCENE_CREATING:I = 0x9

.field public static final TYPE_ACTION_XP_SCENE_FAILED:I = 0xb

.field public static final TYPE_ACTION_XP_SCENE_SUCCESS:I = 0xa

.field public static final TYPE_FAIL:I = -0x1

.field public static final TYPE_LIGHTNING:I = 0x3

.field public static final TYPE_SQUARE:I = 0x4

.field public static final TYPE_SUCCESS:I = 0x1

.field public static final TYPE_UNKNOWN:I


# instance fields
.field public msgId:Ljava/lang/String;

.field public screen:I

.field public soundArea:I

.field public text:Ljava/lang/String;

.field public timestamp:J

.field public type:I

.field public type_action:I

.field public type_action_desc:I


# direct methods
.method public constructor <init>(I)V
    .locals 8
    .param p1, "soundArea"    # I

    .line 71
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;-><init>(IILjava/lang/String;Ljava/lang/String;IJ)V

    .line 72
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IIIJ)V
    .locals 1
    .param p1, "screen"    # I
    .param p2, "soundArea"    # I
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "type_action"    # I
    .param p7, "type_action_desc"    # I
    .param p8, "timestamp"    # J

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    .line 88
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->screen:I

    .line 89
    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->soundArea:I

    .line 90
    iput-object p3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->msgId:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->text:Ljava/lang/String;

    .line 92
    iput p5, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type:I

    .line 93
    iput p6, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    .line 94
    iput p7, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    .line 95
    iput-wide p8, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->timestamp:J

    .line 96
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "screen"    # I
    .param p2, "soundArea"    # I
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "timestamp"    # J

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    .line 79
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->screen:I

    .line 80
    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->soundArea:I

    .line 81
    iput-object p3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->msgId:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->text:Ljava/lang/String;

    .line 83
    iput p5, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type:I

    .line 84
    iput-wide p6, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->timestamp:J

    .line 85
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 8
    .param p1, "soundArea"    # I
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "timestamp"    # J

    .line 75
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;-><init>(IILjava/lang/String;Ljava/lang/String;IJ)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    .line 99
    if-eqz p1, :cond_0

    .line 100
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->screen:I

    .line 101
    const-string v0, "soundArea"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->soundArea:I

    .line 102
    const-string v0, "msgId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->msgId:Ljava/lang/String;

    .line 103
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->text:Ljava/lang/String;

    .line 104
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type:I

    .line 105
    const-string v0, "type_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    .line 106
    const-string v0, "type_action_desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    .line 107
    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->timestamp:J

    .line 109
    :cond_0
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;
    .locals 21
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 165
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    const/4 v1, 0x0

    .line 169
    .local v1, "screen":I
    const/4 v2, -0x1

    .line 170
    .local v2, "soundArea":I
    const-string v3, ""

    .line 171
    .local v3, "msgId":Ljava/lang/String;
    const-string v4, ""

    .line 172
    .local v4, "text":Ljava/lang/String;
    const/4 v5, 0x0

    .line 173
    .local v5, "type":I
    const/4 v6, 0x0

    .line 174
    .local v6, "type_action":I
    const/4 v7, -0x1

    .line 175
    .local v7, "type_action_desc":I
    const-wide/16 v8, 0x0

    .line 178
    .local v8, "timestamp":J
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p0

    :try_start_1
    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "screen"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    move v1, v11

    .line 180
    const-string v11, "soundArea"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    move v2, v11

    .line 181
    const-string v11, "msgId"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 182
    const-string v11, "text"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 183
    const-string v11, "type"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    move v5, v11

    .line 184
    const-string v11, "type_action"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    move v6, v11

    .line 185
    const-string v11, "type_action_desc"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    move v7, v11

    .line 186
    const-string v11, "timestamp"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v8, v11

    .line 189
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    .line 188
    .local v0, "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 190
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;

    move-object v11, v0

    move v12, v1

    move v13, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v19, v8

    invoke-direct/range {v11 .. v20}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;-><init>(IILjava/lang/String;Ljava/lang/String;IIIJ)V

    return-object v0
.end method

.method public static isEquals(Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;)Z
    .locals 1
    .param p0, "first"    # Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;
    .param p1, "second"    # Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;

    .line 152
    if-nez p0, :cond_1

    .line 153
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 155
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 113
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 114
    :cond_0
    instance-of v1, p1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 115
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;

    .line 116
    .local v1, "echo":Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;
    iget v3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->screen:I

    iget v4, v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->screen:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->soundArea:I

    iget v4, v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->soundArea:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type:I

    iget v4, v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    iget v4, v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    iget v4, v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->timestamp:J

    iget-wide v5, v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->timestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->msgId:Ljava/lang/String;

    iget-object v4, v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->msgId:Ljava/lang/String;

    .line 119
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->text:Ljava/lang/String;

    iget-object v4, v1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->text:Ljava/lang/String;

    .line 120
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 130
    const-string v0, "jarvis.tts.echo"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 137
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "screen"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->screen:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    const-string v1, "soundArea"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v1, "text"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v1, "type"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    const-string v1, "type_action"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    const-string v1, "type_action_desc"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 148
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .line 125
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->soundArea:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->msgId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->text:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
