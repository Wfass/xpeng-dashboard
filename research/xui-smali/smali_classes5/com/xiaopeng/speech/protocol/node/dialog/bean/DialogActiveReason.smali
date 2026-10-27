.class public Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;
.super Ljava/lang/Object;
.source "DialogActiveReason.java"


# instance fields
.field public screenId:I

.field public soundArea:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "soundArea"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;->soundArea:I

    .line 18
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;->soundArea:I

    .line 19
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "screenId"    # I
    .param p2, "soundArea"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;->soundArea:I

    .line 22
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;->screenId:I

    .line 23
    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;->soundArea:I

    .line 24
    iput-object p3, p0, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;->type:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;
    .locals 5
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    .line 35
    .local v0, "soundArea":I
    const/4 v1, 0x0

    .line 36
    .local v1, "screenId":I
    const-string v2, ""

    .line 38
    .local v2, "type":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "soundArea"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 40
    const-string v4, "screenId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 41
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 44
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 42
    :catch_0
    move-exception v3

    .line 43
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 45
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v3, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;

    invoke-direct {v3, v1, v0, v2}, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogActiveReason;-><init>(IILjava/lang/String;)V

    return-object v3
.end method
