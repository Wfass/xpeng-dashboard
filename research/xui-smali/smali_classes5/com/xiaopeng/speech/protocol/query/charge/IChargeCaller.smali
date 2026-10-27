.class public interface abstract Lcom/xiaopeng/speech/protocol/query/charge/IChargeCaller;
.super Ljava/lang/Object;
.source "IChargeCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public abstract getChargeStatus()I
.end method

.method public abstract getGuiPageOpenState(Ljava/lang/String;)I
.end method

.method public abstract getLimitsAdjustMax()I
.end method

.method public abstract getLimitsAdjustMin()I
.end method

.method public getMaxDischargeLimit()I
    .locals 1

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getMinDischargeLimit()I
    .locals 1

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getRestartStatus()I
.end method

.method public abstract getStartStatus()I
.end method

.method public abstract getStopStatus()I
.end method

.method public getTrunkPowerStatus()I
    .locals 1

    .line 134
    const/4 v0, -0x1

    return v0
.end method

.method public getTrunkPowerStatusForOpen()I
    .locals 1

    .line 163
    const/4 v0, -0x1

    return v0
.end method

.method public hasCarRefrigerator()Z
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public hasSunRoof()Z
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isChargeReadyPage()Z
.end method

.method public abstract isHasChargingOrder()Z
.end method

.method public isSupportEnduranceMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isSupportLimitsAdjust()Z
.end method

.method public abstract isSupportOpenPort()Z
.end method

.method public abstract isSupportSmartMode()Z
.end method
