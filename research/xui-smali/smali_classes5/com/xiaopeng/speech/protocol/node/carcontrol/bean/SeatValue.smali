.class public Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;
.super Ljava/lang/Object;
.source "SeatValue.java"


# instance fields
.field private xValue:I

.field private yValue:I

.field private zValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;-><init>()V

    .line 19
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;
    const/4 v1, 0x0

    .line 21
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 22
    const/4 v2, -0x1

    .line 23
    .local v2, "xValue":I
    const/4 v3, -0x1

    .line 24
    .local v3, "yValue":I
    const/4 v4, -0x1

    .line 25
    .local v4, "zValue":I
    const-string v5, "xtarget"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, "xTarget":Ljava/lang/String;
    const-string v6, "vtarget"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 27
    .local v6, "yTarget":Ljava/lang/String;
    const-string v7, "htarget"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 28
    .local v7, "zTarget":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v2, v8

    .line 31
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 32
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v3, v8

    .line 34
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 35
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 37
    :cond_2
    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->xValue:I

    .line 38
    iput v3, v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->yValue:I

    .line 39
    iput v4, v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->zValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v2    # "xValue":I
    .end local v3    # "yValue":I
    .end local v4    # "zValue":I
    .end local v5    # "xTarget":Ljava/lang/String;
    .end local v6    # "yTarget":Ljava/lang/String;
    .end local v7    # "zTarget":Ljava/lang/String;
    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getxValue()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->xValue:I

    return v0
.end method

.method public getyValue()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->yValue:I

    return v0
.end method

.method public getzValue()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->zValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeatValue{xValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->xValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", yValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->yValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->zValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
