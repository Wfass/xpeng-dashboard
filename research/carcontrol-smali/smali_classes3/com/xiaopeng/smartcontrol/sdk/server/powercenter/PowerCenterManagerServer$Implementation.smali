.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/server/powercenter/PowerCenterManagerServer$Implementation;
.super Ljava/lang/Object;
.source "PowerCenterManagerServer.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer$IBaseImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/server/powercenter/PowerCenterManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Implementation"
.end annotation


# virtual methods
.method public abstract getACMaxPower()I
.end method

.method public abstract getBatteryKeepTemperatureMode()I
.end method

.method public abstract getChargeAppointmentTime()Ljava/lang/String;
.end method

.method public abstract getChargeFault()Ljava/lang/String;
.end method

.method public abstract getChargeGunLockStatus()Ljava/lang/String;
.end method

.method public abstract getChargeGunStatus()I
.end method

.method public abstract getChargeLimit()I
.end method

.method public abstract getChargeRemainingTime()I
.end method

.method public abstract getChargeStatus()I
.end method

.method public abstract getConsumptionAverage()F
.end method

.method public abstract getConsumptionAverage_100()F
.end method

.method public abstract getDCMaxPower()I
.end method

.method public abstract getDischargeError()Ljava/lang/String;
.end method

.method public abstract getDischargeLimit()I
.end method

.method public abstract getElectricityMode()I
.end method

.method public abstract getIs800v()Z
.end method

.method public abstract getKeepTemperatureAppointTime()Ljava/lang/String;
.end method

.method public abstract getLfpTipsFlag()Z
.end method

.method public abstract getPowerData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRemainingDistance()F
.end method

.method public abstract getSoc()I
.end method

.method public abstract getStartChartSoc()I
.end method

.method public abstract isSuperCharge()Z
.end method

.method public abstract loadChartData()V
.end method

.method public abstract setLfpTipsFlag(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation
.end method

.method public abstract setTrunkPowerOffDelay(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "min"
        }
    .end annotation
.end method

.method public abstract setTrunkPowerSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation
.end method

.method public abstract startCharge()V
.end method

.method public abstract startDischarge()V
.end method

.method public abstract startPowerCenter()V
.end method

.method public abstract startPreheat()V
.end method

.method public abstract stopCharge()V
.end method

.method public abstract stopChargeWithConfirm()V
.end method

.method public abstract stopDischarge()V
.end method

.method public abstract stopPreheat()V
.end method
