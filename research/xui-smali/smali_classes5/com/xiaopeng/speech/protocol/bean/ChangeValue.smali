.class public Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
.super Ljava/lang/Object;
.source "ChangeValue.java"


# instance fields
.field private isPercent:Z

.field private isScale:Z

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isPercent:Z

    .line 13
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale:Z

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;-><init>()V

    .line 24
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    const/4 v1, 0x0

    .line 26
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, "value":I
    const-string v3, "target"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "target":Ljava/lang/String;
    const-string v4, "scale"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, "scale":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 31
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale:Z

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 34
    iput-boolean v6, v0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale:Z

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 38
    :cond_1
    :goto_0
    const-string v5, "percent"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "percent":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 40
    iput-boolean v6, v0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isPercent:Z

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 44
    :cond_2
    iput v2, v0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v2    # "value":I
    .end local v3    # "target":Ljava/lang/String;
    .end local v4    # "scale":Ljava/lang/String;
    .end local v5    # "percent":Ljava/lang/String;
    goto :goto_1

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->value:I

    return v0
.end method

.method public isPercent()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isPercent:Z

    return v0
.end method

.method public isScale()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale:Z

    return v0
.end method
