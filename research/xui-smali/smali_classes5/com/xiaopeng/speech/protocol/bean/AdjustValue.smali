.class public Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
.super Ljava/lang/Object;
.source "AdjustValue.java"


# instance fields
.field private isPercent:Z

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->isPercent:Z

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;-><init>()V

    .line 25
    .local v0, "adjustValue":Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    const/4 v1, 0x0

    .line 27
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 28
    const/4 v2, 0x0

    .line 29
    .local v2, "value":I
    const-string v3, "target"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, "target":Ljava/lang/String;
    const-string v4, "scale"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "scale":Ljava/lang/String;
    const-string v5, "number"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "number":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 40
    :cond_2
    :goto_0
    const-string v6, "percent"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "percent":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 42
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->isPercent:Z

    .line 43
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    .line 46
    :cond_3
    iput v2, v0, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v2    # "value":I
    .end local v3    # "target":Ljava/lang/String;
    .end local v4    # "scale":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "percent":Ljava/lang/String;
    goto :goto_1

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->value:I

    return v0
.end method

.method public isPercent()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->isPercent:Z

    return v0
.end method
