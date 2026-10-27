.class public Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatResumeValue;
.super Ljava/lang/Object;
.source "SeatResumeValue.java"


# instance fields
.field public fromDriveDoor:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatResumeValue;
    .locals 2

    .line 20
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatResumeValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatResumeValue;-><init>()V

    .line 23
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "fromDriveDoor"

    .line 24
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatResumeValue;->fromDriveDoor:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method
