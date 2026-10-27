.class public Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;
.super Ljava/lang/Object;
.source "WakeupReason.java"


# static fields
.field public static final REASON_BOSS:I = 0x7

.field public static final REASON_FAST_WAKEUP:I = 0x2

.field public static final REASON_MAJOR:I = 0x1

.field public static final REASON_MANUALLY:I = 0x3

.field public static final REASON_MUSIC:I = 0x6

.field public static final REASON_REAR_BOSS:I = 0x8

.field public static final REASON_SEND_TEXT:I = 0x4

.field public static final REASON_TRIGGER_INTENT:I = 0x5

.field public static final REASON_WAIT_WAKE:I = 0x9


# instance fields
.field public reason:I

.field public sessionId:Ljava/lang/String;

.field public soundArea:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "reason"    # I
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->soundArea:I

    .line 62
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->reason:I

    .line 63
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->sessionId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # I
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "soundArea"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->soundArea:I

    .line 67
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->reason:I

    .line 68
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->sessionId:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->soundArea:I

    .line 70
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;
    .locals 9
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x1

    .line 80
    .local v0, "reason":I
    const-string v1, ""

    .line 81
    .local v1, "sessionId":Ljava/lang/String;
    const/4 v2, -0x1

    move v3, v2

    .line 83
    .local v3, "soundArea":I
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "reason"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "reasonStr":Ljava/lang/String;
    invoke-static {v5}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->isJson(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v6, "reasonJson":Lorg/json/JSONObject;
    const-string v7, "reason"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    const-string v7, "reason"

    const-string v8, "wakeup.major"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 92
    .end local v6    # "reasonJson":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "api.triggerIntent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "api.sendText"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v6, "api.avatarPress"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_0

    :sswitch_3
    const-string v6, "api.avatarClick"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x4

    goto/16 :goto_0

    :sswitch_4
    const-string v6, "click.start"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_5
    const-string v6, "music"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v6, "wait_awake"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v2, 0xd

    goto :goto_0

    :sswitch_7
    const-string v6, "wakeup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v2, 0xb

    goto :goto_0

    :sswitch_8
    const-string v6, "wakeup.command"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_9
    const-string v6, "cloudWakeup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v2, 0xc

    goto :goto_0

    :sswitch_a
    const-string v6, "wheel.start"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_b
    const-string v6, "boss.start"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_c
    const-string v6, "wakeup.major"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_d
    const-string v6, "api.startDialog"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x3

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 121
    :pswitch_0
    const/16 v0, 0x9

    .line 122
    goto :goto_1

    .line 116
    :pswitch_1
    const/4 v0, 0x7

    .line 117
    goto :goto_1

    .line 113
    :pswitch_2
    const/4 v0, 0x5

    .line 114
    goto :goto_1

    .line 110
    :pswitch_3
    const/4 v0, 0x4

    .line 111
    goto :goto_1

    .line 107
    :pswitch_4
    const/4 v0, 0x3

    .line 108
    goto :goto_1

    .line 100
    :pswitch_5
    const/4 v0, 0x6

    .line 101
    goto :goto_1

    .line 97
    :pswitch_6
    const/4 v0, 0x2

    .line 98
    goto :goto_1

    .line 94
    :pswitch_7
    const/4 v0, 0x1

    .line 95
    nop

    .line 126
    :goto_1
    const-string v2, "sessionId"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 127
    const-string v2, "soundArea"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 130
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "reasonStr":Ljava/lang/String;
    goto :goto_2

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 131
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_2
    new-instance v2, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;

    invoke-direct {v2, v0, v1, v3}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;-><init>(ILjava/lang/String;I)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x76a1c98a -> :sswitch_d
        -0x74c241b6 -> :sswitch_c
        -0x6f99195f -> :sswitch_b
        -0x6ad9c3f1 -> :sswitch_a
        -0x550faa2c -> :sswitch_9
        -0x4629f864 -> :sswitch_8
        -0x2f6638c1 -> :sswitch_7
        -0x8953dc5 -> :sswitch_6
        0x636ee25 -> :sswitch_5
        0x10d7307c -> :sswitch_4
        0x28f4dddb -> :sswitch_3
        0x29aebc96 -> :sswitch_2
        0x2f23ba29 -> :sswitch_1
        0x41974da0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
