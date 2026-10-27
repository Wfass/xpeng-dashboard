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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->soundArea:I

    .line 62
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->reason:I

    .line 63
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->soundArea:I

    .line 67
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->reason:I

    .line 68
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->sessionId:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;->soundArea:I

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;
    .locals 13

    const-string v0, "reason"

    const-string v1, ""

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 83
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {p0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->isJson(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v6, "wakeup.major"

    if-eqz v5, :cond_0

    .line 86
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 92
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v5, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x6

    const/4 v12, 0x2

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "api.triggerIntent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v5

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "api.sendText"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "api.avatarPress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "api.avatarClick"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v9

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "click.start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v11

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "music"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v12

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "wait_awake"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xd

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "wakeup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xb

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "wakeup.command"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v3

    goto :goto_1

    :sswitch_9
    const-string v0, "cloudWakeup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xc

    goto :goto_1

    :sswitch_a
    const-string/jumbo v0, "wheel.start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v7

    goto :goto_1

    :sswitch_b
    const-string v0, "boss.start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    goto :goto_1

    :sswitch_c
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_d
    const-string v0, "api.startDialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v10

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move v3, v5

    goto :goto_2

    :pswitch_1
    move v3, v7

    goto :goto_2

    :pswitch_2
    move v3, v8

    goto :goto_2

    :pswitch_3
    move v3, v9

    goto :goto_2

    :pswitch_4
    move v3, v10

    goto :goto_2

    :pswitch_5
    move v3, v11

    goto :goto_2

    :pswitch_6
    move v3, v12

    :goto_2
    :pswitch_7
    const-string p0, "sessionId"

    .line 126
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "soundArea"

    .line 127
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 129
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 131
    :goto_3
    new-instance p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;

    invoke-direct {p0, v3, v1, v2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/WakeupReason;-><init>(ILjava/lang/String;I)V

    return-object p0

    nop

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
