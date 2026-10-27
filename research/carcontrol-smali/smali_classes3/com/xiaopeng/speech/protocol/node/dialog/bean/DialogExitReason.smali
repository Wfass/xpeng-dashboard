.class public Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;
.super Ljava/lang/Object;
.source "DialogExitReason.java"


# instance fields
.field public reason:Ljava/lang/String;

.field public soundArea:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;->soundArea:I

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;->reason:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;->soundArea:I

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;
    .locals 2

    const-string v0, "normal"

    .line 39
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "reason"

    .line 41
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "soundArea"

    .line 42
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, -0x1

    .line 48
    :goto_0
    new-instance v1, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;

    invoke-direct {v1, v0, p0}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method
