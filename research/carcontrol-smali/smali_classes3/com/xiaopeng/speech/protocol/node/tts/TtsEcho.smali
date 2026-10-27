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

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v2, p1

    .line 71
    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;-><init>(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IIIJ)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    const/4 v0, -0x1

    .line 66
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

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    const/4 v0, -0x1

    .line 66
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

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 8

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    .line 75
    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;-><init>(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    if-eqz p1, :cond_0

    const-string v0, "screen"

    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->screen:I

    const-string v0, "soundArea"

    .line 101
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->soundArea:I

    const-string v0, "msgId"

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->msgId:Ljava/lang/String;

    const-string v0, "text"

    .line 103
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->text:Ljava/lang/String;

    const-string v0, "type"

    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type:I

    const-string v0, "type_action"

    .line 105
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    const-string v0, "type_action_desc"

    .line 106
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    const-string v0, "timestamp"

    .line 107
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->timestamp:J

    :cond_0
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;
    .locals 22

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

    move-object v14, v1

    move-wide/from16 v18, v2

    move/from16 v17, v4

    move/from16 v16, v5

    move v11, v6

    move v12, v7

    move-object v13, v8

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v20, v8

    move-object v8, v0

    move-object v0, v1

    move-object/from16 v1, v20

    move/from16 v21, v5

    move v5, v4

    move v4, v7

    move/from16 v7, v21

    goto :goto_1

    :catch_1
    move-exception v0

    move v9, v5

    move v5, v4

    move v4, v7

    move v7, v9

    move-object/from16 v20, v8

    move-object v8, v0

    move-object v0, v1

    move-object/from16 v1, v20

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move v9, v5

    move v5, v4

    move v4, v7

    move v7, v9

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move v7, v5

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move v6, v5

    move v7, v6

    :goto_0
    move v9, v7

    move v5, v4

    .line 188
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    move-object v14, v0

    move-object v13, v1

    move-wide/from16 v18, v2

    move v12, v4

    move/from16 v17, v5

    move v11, v6

    move/from16 v16, v7

    :goto_2
    move v15, v9

    .line 190
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;-><init>(IILjava/lang/String;Ljava/lang/String;IIIJ)V

    return-object v0
.end method

.method public static isEquals(Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 155
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

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
    check-cast p1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;

    .line 116
    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->screen:I

    iget v3, p1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->screen:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->soundArea:I

    iget v3, p1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->soundArea:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type:I

    iget v3, p1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    iget v3, p1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    iget v3, p1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->timestamp:J

    iget-wide v5, p1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->timestamp:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->msgId:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->msgId:Ljava/lang/String;

    .line 119
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->text:Ljava/lang/String;

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

.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.tts.echo"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "screen"

    .line 137
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->screen:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "soundArea"

    .line 138
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msgId"

    .line 139
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "text"

    .line 140
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 141
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type_action"

    .line 142
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type_action_desc"

    .line 143
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;->type_action_desc:I

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

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 125
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
