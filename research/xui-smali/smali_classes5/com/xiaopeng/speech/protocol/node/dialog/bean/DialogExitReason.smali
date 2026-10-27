.class public Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;
.super Ljava/lang/Object;
.source "DialogExitReason.java"


# instance fields
.field public reason:Ljava/lang/String;

.field public soundArea:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "soundArea"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;->soundArea:I

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;->reason:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;->soundArea:I

    .line 27
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .line 36
    const-string v0, "normal"

    .line 37
    .local v0, "reason":Ljava/lang/String;
    const/4 v1, -0x1

    .line 39
    .local v1, "soundArea":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 41
    const-string v3, "reason"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 42
    const-string v3, "soundArea"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 47
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 48
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v2, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;

    invoke-direct {v2, v0, v1}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogExitReason;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method
