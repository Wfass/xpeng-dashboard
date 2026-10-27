.class public Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;
.super Ljava/lang/Object;
.source "DialogEndReason.java"


# instance fields
.field public event:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;->reason:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;->event:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;->sessionId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .line 42
    const-string v0, "normal"

    .line 43
    .local v0, "reason":Ljava/lang/String;
    const-string v1, ""

    .line 44
    .local v1, "event":Ljava/lang/String;
    const-string v2, ""

    .line 46
    .local v2, "sessionId":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 48
    const-string v4, "reason"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 49
    const-string v4, "event"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 50
    const-string v4, "sessionId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 55
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 53
    :catch_0
    move-exception v3

    .line 54
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v3, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;

    invoke-direct {v3, v0, v1, v2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
