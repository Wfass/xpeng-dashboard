.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;
.super Ljava/lang/Object;
.source "ChargeBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private available:I

.field private power:Ljava/lang/String;

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;
    .locals 3
    .param p0, "fromJson"    # Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;-><init>()V

    .line 43
    .local v0, "chargeBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "total"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "total"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->total:I

    .line 47
    :cond_0
    const-string v2, "available"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    const-string v2, "available"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->available:I

    .line 50
    :cond_1
    const-string v2, "power"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    const-string v2, "power"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->power:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_2
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAvailable()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->available:I

    return v0
.end method

.method public getPower()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->power:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->total:I

    return v0
.end method

.method public setAvailable(I)V
    .locals 0
    .param p1, "available"    # I

    .line 28
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->available:I

    .line 29
    return-void
.end method

.method public setPower(Ljava/lang/String;)V
    .locals 0
    .param p1, "power"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->power:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .line 20
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->total:I

    .line 21
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "total"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->total:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v1, "available"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->available:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string v1, "power"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->power:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargeBean{total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->available:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->power:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
