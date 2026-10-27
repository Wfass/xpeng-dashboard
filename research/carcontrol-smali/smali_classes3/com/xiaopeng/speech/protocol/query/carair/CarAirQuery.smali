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

    return-void
.end method


# virtual methods
.method protected getAcPanelStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getAcPanelStatus()I

    move-result p1

    return p1
.end method

.method protected getAirLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getAirLevel()I

    move-result p1

    return p1
.end method

.method protected getDriWindDirectionMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getDriWindDirectionMode()I

    move-result p1

    return p1
.end method

.method protected getHeatMax(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getHeatMax()I

    move-result p1

    return p1
.end method

.method protected getHeatMin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getHeatMin()I

    move-result p1

    return p1
.end method

.method protected getIntelligentPassengerStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getIntelligentPassengerStatus()I

    move-result p1

    return p1
.end method

.method protected getLeftRearSeatHeatLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getLeftRearSeatHeatLevel()I

    move-result p1

    return p1
.end method

.method protected getOutSidePmQuality(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getOutSidePmQuality()I

    move-result p1

    return p1
.end method

.method protected getPmLevelQuality(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getOutSidePmLevelQuality()I

    move-result p1

    return p1
.end method

.method protected getPsnWindDirectionMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getPsnWindDirectionMode()I

    move-result p1

    return p1
.end method

.method protected getRightRearSeatHeatLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getRightRearSeatHeatLevel()I

    move-result p1

    return p1
.end method

.method protected getSeatBlowMax(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getSeatBlowMax()I

    move-result p1

    return p1
.end method

.method protected getSeatBlowMin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getSeatBlowMin()I

    move-result p1

    return p1
.end method

.method protected getTempMax(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getTempMax()D

    move-result-wide p1

    return-wide p1
.end method

.method protected getTempMin(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getTempMin()D

    move-result-wide p1

    return-wide p1
.end method

.method protected getWindMax(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getWindMax()I

    move-result p1

    return p1
.end method

.method protected getWindMin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getWindMin()I

    move-result p1

    return p1
.end method

.method protected getWindMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getCurrWindMode()I

    move-result p1

    return p1
.end method

.method protected getWindsStatus(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->getWindsStatus()[I

    move-result-object p1

    return-object p1
.end method

.method protected isAcSupportPerfume(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isAcSupportPerfume()Z

    move-result p1

    return p1
.end method

.method protected isFastFridge(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isFastFridge()Z

    move-result p1

    return p1
.end method

.method protected isFreshAir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isFreshAir()Z

    move-result p1

    return p1
.end method

.method protected isSupportAutoOff(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 14
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportAutoOff()Z

    move-result p1

    return p1
.end method

.method protected isSupportDecimalValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportDecimalValue()Z

    move-result p1

    return p1
.end method

.method protected isSupportDemistFoot(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportDemistFoot()Z

    move-result p1

    return p1
.end method

.method protected isSupportMirrorHeat(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportMirrorHeat()I

    move-result p1

    return p1
.end method

.method protected isSupportMpQuery(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportOutSidePm()I

    move-result p1

    return p1
.end method

.method protected isSupportPm25(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportPm25()Z

    move-result p1

    return p1
.end method

.method protected isSupportPsnSeatHeat(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportPsnSeatHeat()Z

    move-result p1

    return p1
.end method

.method protected isSupportPurifier(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportPurifier()Z

    move-result p1

    return p1
.end method

.method protected isSupportRearSeatHeat(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportRearSeatHeat()Z

    move-result p1

    return p1
.end method

.method protected isSupportSeatBlow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportSeatBlow()Z

    move-result p1

    return p1
.end method

.method protected isSupportSeatHeat(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportSeatHeat()Z

    move-result p1

    return p1
.end method

.method protected isSupportTempDual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;->isSupportTempDual()Z

    move-result p1

    return p1
.end method
