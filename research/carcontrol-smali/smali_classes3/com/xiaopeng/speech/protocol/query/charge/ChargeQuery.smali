.class public Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "ChargeQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected getChargeStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getChargeStatus()I

    move-result p1

    return p1
.end method

.method protected getLimitsAdjustMax(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getLimitsAdjustMax()I

    move-result p1

    return p1
.end method

.method protected getLimitsAdjustMin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getLimitsAdjustMin()I

    move-result p1

    return p1
.end method

.method protected getMaxDischargeLimit(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getMaxDischargeLimit()I

    move-result p1

    return p1
.end method

.method protected getMinDischargeLimit(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getMinDischargeLimit()I

    move-result p1

    return p1
.end method

.method protected getPageOpenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getGuiPageOpenState(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getRestartStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getRestartStatus()I

    move-result p1

    return p1
.end method

.method protected getStartStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getStartStatus()I

    move-result p1

    return p1
.end method

.method protected getStopStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getStopStatus()I

    move-result p1

    return p1
.end method

.method protected getTrunkPowerStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getTrunkPowerStatus()I

    move-result p1

    return p1
.end method

.method protected getTrunkPowerStatusForOpen(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getTrunkPowerStatusForOpen()I

    move-result p1

    return p1
.end method

.method protected hasCarRefrigerator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->hasCarRefrigerator()Z

    move-result p1

    return p1
.end method

.method protected hasSunRoof(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->hasSunRoof()Z

    move-result p1

    return p1
.end method

.method protected isChargeReadyPage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->isChargeReadyPage()Z

    move-result p1

    return p1
.end method

.method protected isHasChargingOrder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->isHasChargingOrder()Z

    move-result p1

    return p1
.end method

.method protected isSupportEnduranceMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 p1, 0x1

    .line 109
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "mode"

    .line 111
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 114
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 116
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->isSupportEnduranceMode(I)Z

    move-result p1

    return p1
.end method

.method protected isSupportLimitsAdjust(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->isSupportLimitsAdjust()Z

    move-result p1

    return p1
.end method

.method protected isSupportOpenPort(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->isSupportOpenPort()Z

    move-result p1

    return p1
.end method

.method protected isSupportSmartMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->isSupportSmartMode()Z

    move-result p1

    return p1
.end method
