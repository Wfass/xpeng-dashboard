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
    .locals 5

    .line 18
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;-><init>()V

    .line 21
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "xtarget"

    .line 25
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "vtarget"

    .line 26
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "htarget"

    .line 27
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v4

    .line 31
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v4

    .line 34
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 37
    :cond_2
    iput p0, v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->xValue:I

    .line 38
    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->yValue:I

    .line 39
    iput v4, v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->zValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
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

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->xValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->yValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->zValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
