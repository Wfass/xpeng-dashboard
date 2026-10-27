.class public interface abstract Lcom/xiaopeng/speech/protocol/query/carair/ICarAirCaller;
.super Ljava/lang/Object;
.source "ICarAirCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public abstract getAcPanelStatus()I
.end method

.method public abstract getAirLevel()I
.end method

.method public abstract getCurrWindMode()I
.end method

.method public abstract getDriWindDirectionMode()I
.end method

.method public abstract getHeatMax()I
.end method

.method public abstract getHeatMin()I
.end method

.method public abstract getIntelligentPassengerStatus()I
.end method

.method public getLeftRearSeatHeatLevel()I
    .locals 1

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getOutSidePmLevelQuality()I
.end method

.method public abstract getOutSidePmQuality()I
.end method

.method public abstract getPsnWindDirectionMode()I
.end method

.method public getRightRearSeatHeatLevel()I
    .locals 1

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getSeatBlowMax()I
.end method

.method public abstract getSeatBlowMin()I
.end method

.method public abstract getTempMax()D
.end method

.method public abstract getTempMin()D
.end method

.method public abstract getWindMax()I
.end method

.method public abstract getWindMin()I
.end method

.method public abstract getWindsStatus()[I
.end method

.method public isAcSupportPerfume()Z
    .locals 1

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isFastFridge()Z
.end method

.method public abstract isFreshAir()Z
.end method

.method public abstract isSupportAutoOff()Z
.end method

.method public abstract isSupportDecimalValue()Z
.end method

.method public abstract isSupportDemistFoot()Z
.end method

.method public abstract isSupportMirrorHeat()I
.end method

.method public abstract isSupportOutSidePm()I
.end method

.method public abstract isSupportPm25()Z
.end method

.method public abstract isSupportPsnSeatHeat()Z
.end method

.method public abstract isSupportPurifier()Z
.end method

.method public isSupportRearSeatHeat()Z
    .locals 1

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSupportSeatBlow()Z
.end method

.method public abstract isSupportSeatHeat()Z
.end method

.method public abstract isSupportTempDual()Z
.end method
