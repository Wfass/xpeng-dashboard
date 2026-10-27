.class interface abstract Lcom/xiaopeng/unity/carcontrol/ICarBodyManager;
.super Ljava/lang/Object;
.source "ICarBodyManager.java"


# virtual methods
.method public abstract controlSdc(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "open"
        }
    .end annotation
.end method

.method public abstract getArsWorkMode()I
.end method

.method public abstract getBrakeLightOnOff()Z
.end method

.method public abstract getCarBodyColor()I
.end method

.method public abstract getCarLicensePlate()Ljava/lang/String;
.end method

.method public abstract getDaytimeRunningLightsOutputStatus()I
.end method

.method public abstract getDoubleFlashBeamState()I
.end method

.method public abstract getElcTrunkPos()I
.end method

.method public abstract getEnvironmentMode()I
.end method

.method public abstract getInnerPositionBeamStatus()I
.end method

.method public abstract getLeftSdcDoorPos()I
.end method

.method public abstract getOuterPositionBeamStatus()I
.end method

.method public abstract getRightSdcDoorPos()I
.end method

.method public abstract getSaberMode()I
.end method

.method public abstract getSdcLeftRadarDisLevel()I
.end method

.method public abstract getSdcRightRadarDisLevel()I
.end method

.method public abstract isAllDoorsClosed()Z
.end method

.method public abstract isBonnetClosed()Z
.end method

.method public abstract isCentralLocked()Z
.end method

.method public abstract isChargeGunUnlinked(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation
.end method

.method public abstract isChargePortClosed(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation
.end method

.method public abstract isDoorClosed(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract isHighBeamOn()Z
.end method

.method public abstract isLowBeamOn()Z
.end method

.method public abstract isPositionBeamOn()Z
.end method

.method public abstract isRearFogLampOn()Z
.end method

.method public abstract isReverseLampOn()Z
.end method

.method public abstract isTrunkClosed()Z
.end method

.method public abstract setArsWorkMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setCentralLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLocked"
        }
    .end annotation
.end method
