.class public Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
.super Ljava/lang/Object;
.source "ChangeValue.java"


# instance fields
.field private decimal:I

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;-><init>()V

    .line 23
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    const/4 v1, 0x0

    .line 25
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 26
    const/4 v2, 0x0

    .line 27
    .local v2, "value":I
    const-string v3, "number"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "number":Ljava/lang/String;
    const-string v4, "target"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "target":Ljava/lang/String;
    const-string v5, "scale"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30
    .local v5, "scale":Ljava/lang/String;
    const-string v6, "d"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "decimal":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    goto :goto_0

    .line 38
    :cond_2
    const/4 v2, 0x1

    .line 41
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->decimal:I

    .line 44
    :cond_3
    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v2    # "value":I
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "target":Ljava/lang/String;
    .end local v5    # "scale":Ljava/lang/String;
    .end local v6    # "decimal":Ljava/lang/String;
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
.method public getDecimal()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->decimal:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->value:I

    return v0
.end method

.method public setValue(I)Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;
    .locals 0
    .param p1, "v"    # I

    .line 61
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->value:I

    .line 62
    return-object p0
.end method
