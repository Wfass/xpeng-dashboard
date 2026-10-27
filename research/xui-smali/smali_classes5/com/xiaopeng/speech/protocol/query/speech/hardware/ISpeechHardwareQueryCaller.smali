.class public interface abstract Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;
.super Ljava/lang/Object;
.source "ISpeechHardwareQueryCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public abstract getCarType()Ljava/lang/String;
.end method

.method public abstract getChecklistStatus(Ljava/lang/String;)I
.end method

.method public abstract getCpuTemperature()I
.end method

.method public abstract getCtrlCurr()D
.end method

.method public abstract getCtrlTemp()I
.end method

.method public abstract getCtrlVolt()D
.end method

.method public abstract getIpuFailStInfo()I
.end method

.method public abstract getMcuHardWareId()Ljava/lang/String;
.end method

.method public abstract getMotorStatus()I
.end method

.method public abstract getMotorTemp()I
.end method

.method public abstract getRollSpeed()I
.end method

.method public abstract getStreamType(Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;)I
.end method

.method public abstract getTorque()D
.end method
