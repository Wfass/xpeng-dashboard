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

    .line 13
    return-void
.end method


# virtual methods
.method protected getChargeStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "powercenter.charge.status"
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getChargeStatus()I

    move-result v0

    return v0
.end method

.method protected getLimitsAdjustMax(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.limits.adjust.max"
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getLimitsAdjustMax()I

    move-result v0

    return v0
.end method

.method protected getLimitsAdjustMin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.limits.adjust.min"
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getLimitsAdjustMin()I

    move-result v0

    return v0
.end method

.method protected getMaxDischargeLimit(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.discharge.limit.max.value"
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getMaxDischargeLimit()I

    move-result v0

    return v0
.end method

.method protected getMinDischargeLimit(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.discharge.limit.min.value"
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getMinDischargeLimit()I

    move-result v0

    return v0
.end method

.method protected getPageOpenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.page.open.status.charge"
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getGuiPageOpenState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getRestartStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.get.restart.status"
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getRestartStatus()I

    move-result v0

    return v0
.end method

.method protected getStartStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.get.start.status"
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getStartStatus()I

    move-result v0

    return v0
.end method

.method protected getStopStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.get.stop.status"
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getStopStatus()I

    move-result v0

    return v0
.end method

.method protected getTrunkPowerStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.get.trunk.power.status"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getTrunkPowerStatus()I

    move-result v0

    return v0
.end method

.method protected getTrunkPowerStatusForOpen(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.trunk.power.status.open"
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->getTrunkPowerStatusForOpen()I

    move-result v0

    return v0
.end method

.method protected hasCarRefrigerator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.has.car.refrigerator"
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->hasCarRefrigerator()Z

    move-result v0

    return v0
.end method

.method protected hasSunRoof(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.has.sun.roof"
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->hasSunRoof()Z

    move-result v0

    return v0
.end method

.method protected isChargeReadyPage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.is.ready.page"
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->isChargeReadyPage()Z

    move-result v0

    return v0
.end method

.method protected isHasChargingOrder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.has.charging.order"
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->isHasChargingOrder()Z

    move-result v0

    return v0
.end method

.method protected isSupportEnduranceMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.support.endurance.mode"
    .end annotation

    .line 107
    const/4 v0, 0x1

    move v1, v0

    .line 109
    .local v1, "mode":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 111
    const-string v3, "mode"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 115
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 116
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->isSupportEnduranceMode(I)Z

    move-result v0

    return v0
.end method

.method protected isSupportLimitsAdjust(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.support.limits.adjust"
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->isSupportLimitsAdjust()Z

    move-result v0

    return v0
.end method

.method protected isSupportOpenPort(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.support.open.port"
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->isSupportOpenPort()Z

    move-result v0

    return v0
.end method

.method protected isSupportSmartMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.support.smart.mode"
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;->isSupportSmartMode()Z

    move-result v0

    return v0
.end method
