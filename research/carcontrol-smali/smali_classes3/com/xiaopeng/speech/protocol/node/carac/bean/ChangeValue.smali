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
    .locals 5

    .line 22
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;-><init>()V

    .line 25
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "number"

    .line 27
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "target"

    .line 28
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "scale"

    .line 29
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "d"

    .line 30
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    .line 41
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->decimal:I

    .line 44
    :cond_3
    iput p0, v0, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

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

    .line 61
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;->value:I

    return-object p0
.end method
