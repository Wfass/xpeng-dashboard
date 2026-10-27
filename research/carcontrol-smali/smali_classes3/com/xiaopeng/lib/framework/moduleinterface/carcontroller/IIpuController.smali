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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getCtrlTemp()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getCtrlVolt()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuFailStInfo()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuInvtOverTempFault()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuInvtOverTempFlag()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuInvtOverTempWarn()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuKl15Voltage()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuMotOverTempFault()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuMotOverTempFlag()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuMotOverTempWarn()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuMotorOverTempFault()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuMotorOverTempWarn()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuNtcOverTempFault()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuNtcOverTempWarn()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuVendorCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getMotorStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getMotorTemp()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRollSpeed()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getTorque()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
