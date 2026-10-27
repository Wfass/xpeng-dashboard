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

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isPercent:Z

    .line 13
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale:Z

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    .locals 6

    .line 23
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;-><init>()V

    .line 26
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "target"

    .line 28
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "scale"

    .line 29
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 31
    iput-boolean v5, v0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale:Z

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 34
    iput-boolean v4, v0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isScale:Z

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_1
    :goto_0
    const-string p0, "percent"

    .line 38
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    iput-boolean v4, v0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->isPercent:Z

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 44
    :cond_2
    iput v5, v0, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->value:I
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
