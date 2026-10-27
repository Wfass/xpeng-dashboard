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
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatResumeValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatResumeValue;-><init>()V

    .line 21
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatResumeValue;
    const/4 v1, 0x0

    .line 23
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 24
    const-string v2, "fromDriveDoor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatResumeValue;->fromDriveDoor:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
