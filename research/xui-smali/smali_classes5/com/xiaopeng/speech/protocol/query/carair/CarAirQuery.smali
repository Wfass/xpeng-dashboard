.class public Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "CarAirQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method protected getAcPanelStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "card.ac.panel.status"
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getAcPanelStatus()I

    move-result v0

    return v0
.end method

.method protected getAirLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.air.quality.level"
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getAirLevel()I

    move-result v0

    return v0
.end method

.method protected getDriWindDirectionMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.dri.wind.direction.mode"
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getDriWindDirectionMode()I

    move-result v0

    return v0
.end method

.method protected getHeatMax(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.get.heat.max"
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getHeatMax()I

    move-result v0

    return v0
.end method

.method protected getHeatMin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.get.heat.min"
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getHeatMin()I

    move-result v0

    return v0
.end method

.method protected getIntelligentPassengerStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.intelligent.passenger.status"
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getIntelligentPassengerStatus()I

    move-result v0

    return v0
.end method

.method protected getLeftRearSeatHeatLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.left.rear.seat.heat.lv"
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getLeftRearSeatHeatLevel()I

    move-result v0

    return v0
.end method

.method protected getOutSidePmQuality(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.outside.air.quality"
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getOutSidePmQuality()I

    move-result v0

    return v0
.end method

.method protected getPmLevelQuality(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.outside.air.quality.level"
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getOutSidePmLevelQuality()I

    move-result v0

    return v0
.end method

.method protected getPsnWindDirectionMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.psn.wind.direction.mode"
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getPsnWindDirectionMode()I

    move-result v0

    return v0
.end method

.method protected getRightRearSeatHeatLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.right.rear.seat.heat.lv"
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getRightRearSeatHeatLevel()I

    move-result v0

    return v0
.end method

.method protected getSeatBlowMax(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.get.seat.blow.max"
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getSeatBlowMax()I

    move-result v0

    return v0
.end method

.method protected getSeatBlowMin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.get.seat.blow.min"
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getSeatBlowMin()I

    move-result v0

    return v0
.end method

.method protected getTempMax(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.get.temp.max"
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getTempMax()D

    move-result-wide v0

    return-wide v0
.end method

.method protected getTempMin(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.get.temp.min"
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getTempMin()D

    move-result-wide v0

    return-wide v0
.end method

.method protected getWindMax(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.get.wind.max"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getWindMax()I

    move-result v0

    return v0
.end method

.method protected getWindMin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.get.wind.min"
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getWindMin()I

    move-result v0

    return v0
.end method

.method protected getWindMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.wind.mode"
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getCurrWindMode()I

    move-result v0

    return v0
.end method

.method protected getWindsStatus(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.wind.outlet.status"
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getWindsStatus()[I

    move-result-object v0

    return-object v0
.end method

.method protected isAcSupportPerfume(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.is.support.perfume"
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isAcSupportPerfume()Z

    move-result v0

    return v0
.end method

.method protected isFastFridge(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.is.fast.fridge"
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isFastFridge()Z

    move-result v0

    return v0
.end method

.method protected isFreshAir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.is.fresh.air"
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isFreshAir()Z

    move-result v0

    return v0
.end method

.method protected isSupportAutoOff(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.support.auto.off"
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportAutoOff()Z

    move-result v0

    return v0
.end method

.method protected isSupportDecimalValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.support.decimal.value"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportDecimalValue()Z

    move-result v0

    return v0
.end method

.method protected isSupportDemistFoot(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.support.demist.foot"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportDemistFoot()Z

    move-result v0

    return v0
.end method

.method protected isSupportMirrorHeat(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.mirror.rear.heat.status"
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportMirrorHeat()I

    move-result v0

    return v0
.end method

.method protected isSupportMpQuery(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.outside.air.status"
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportOutSidePm()I

    move-result v0

    return v0
.end method

.method protected isSupportPm25(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.support.pm25"
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportPm25()Z

    move-result v0

    return v0
.end method

.method protected isSupportPsnSeatHeat(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.support.psn.seat.heat"
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportPsnSeatHeat()Z

    move-result v0

    return v0
.end method

.method protected isSupportPurifier(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.support.purifier"
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportPurifier()Z

    move-result v0

    return v0
.end method

.method protected isSupportRearSeatHeat(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.support.rear.seat.heat"
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportRearSeatHeat()Z

    move-result v0

    return v0
.end method

.method protected isSupportSeatBlow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.support.seat.blow"
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportSeatBlow()Z

    move-result v0

    return v0
.end method

.method protected isSupportSeatHeat(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.support.seat.heat"
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportSeatHeat()Z

    move-result v0

    return v0
.end method

.method protected isSupportTempDual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "ac.support.temp.dual"
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportTempDual()Z

    move-result v0

    return v0
.end method
