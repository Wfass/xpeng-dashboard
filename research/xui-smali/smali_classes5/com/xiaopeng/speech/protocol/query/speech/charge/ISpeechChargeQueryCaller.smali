.class public interface abstract Lcom/xiaopeng/speech/protocol/query/speech/charge/ISpeechChargeQueryCaller;
.super Ljava/lang/Object;
.source "ISpeechChargeQueryCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public abstract getACChargingCurrent()F
.end method

.method public abstract getACChargingVolt()F
.end method

.method public abstract getACInputStatus()Z
.end method

.method public abstract getAddedElectricity()I
.end method

.method public abstract getAverageVehConsume()Ljava/lang/String;
.end method

.method public abstract getAverageVehConsume100km()Ljava/lang/String;
.end method

.method public abstract getBatteryCoolStatus()Z
.end method

.method public abstract getBatteryWarmingStatus()Z
.end method

.method public abstract getChargeGunLockSt()Z
.end method

.method public abstract getChargeLimitSoc()I
.end method

.method public abstract getChargeStatus()I
.end method

.method public abstract getChargingError()I
.end method

.method public abstract getChargingGunStatus()I
.end method

.method public abstract getChargingMaxSoc()[I
.end method

.method public getCltcMieageNumber()I
    .locals 1

    .line 66
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getColdWarningTips()Z
.end method

.method public abstract getDCChargingCurrent()F
.end method

.method public abstract getDCChargingVolt()F
.end method

.method public getDynamicMileageNumber()I
    .locals 1

    .line 75
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getElectricityPercent()F
.end method

.method public abstract getEnduranceMileageMode()I
.end method

.method public abstract getHvacConsume()F
.end method

.method public abstract getMileageNumber()I
.end method

.method public abstract getSOH()F
.end method

.method public abstract getWltpMileageNumber()I
.end method
