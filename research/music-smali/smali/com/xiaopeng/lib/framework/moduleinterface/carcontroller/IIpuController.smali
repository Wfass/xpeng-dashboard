.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController;
.super Ljava/lang/Object;
.source "IIpuController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$IpuVendorCodeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$IpuKl15VoltageEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$MotorStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$RollSpeedEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$TorqueEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$MotorTempEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$CtrlTempEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$CtrlCurrEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$CtrlVoltEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController$IpuFailStInfoEventMsg;
    }
.end annotation


# virtual methods
.method public abstract getCtrlCurr()I
.end method

.method public abstract getCtrlTemp()I
.end method

.method public abstract getCtrlVolt()I
.end method

.method public abstract getIpuFailStInfo()I
.end method

.method public abstract getIpuInvtOverTempFault()I
.end method

.method public abstract getIpuInvtOverTempFlag()I
.end method

.method public abstract getIpuInvtOverTempWarn()I
.end method

.method public abstract getIpuKl15Voltage()I
.end method

.method public abstract getIpuMotOverTempFault()I
.end method

.method public abstract getIpuMotOverTempFlag()I
.end method

.method public abstract getIpuMotOverTempWarn()I
.end method

.method public abstract getIpuMotorOverTempFault()I
.end method

.method public abstract getIpuMotorOverTempWarn()I
.end method

.method public abstract getIpuNtcOverTempFault()I
.end method

.method public abstract getIpuNtcOverTempWarn()I
.end method

.method public abstract getIpuVendorCode()I
.end method

.method public abstract getMotorStatus()I
.end method

.method public abstract getMotorTemp()I
.end method

.method public abstract getRollSpeed()I
.end method

.method public abstract getTorque()F
.end method
