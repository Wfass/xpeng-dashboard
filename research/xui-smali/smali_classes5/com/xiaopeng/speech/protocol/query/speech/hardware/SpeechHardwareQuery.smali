.class public Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SpeechHardwareQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method protected getCarType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.car.type"
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getCarType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChecklistStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.checklist"
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getChecklistStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getCpuTemperature(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.cpu.temp"
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getCpuTemperature()I

    move-result v0

    return v0
.end method

.method protected getCtrlCurr(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.ctrl.curr"
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getCtrlCurr()D

    move-result-wide v0

    return-wide v0
.end method

.method protected getCtrlTemp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.ctrl.temp"
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getCtrlTemp()I

    move-result v0

    return v0
.end method

.method protected getCtrlVolt(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.ctrl.volt"
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getCtrlVolt()D

    move-result-wide v0

    return-wide v0
.end method

.method protected getIpuFailStInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.ipu.fail.info"
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getIpuFailStInfo()I

    move-result v0

    return v0
.end method

.method protected getMcuHardWareId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.mcu.id"
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getMcuHardWareId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMotorStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.motor.state"
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getMotorStatus()I

    move-result v0

    return v0
.end method

.method protected getMotorTemp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.motor.temp"
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getMotorTemp()I

    move-result v0

    return v0
.end method

.method protected getRollSpeed(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.roll.speed"
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getRollSpeed()I

    move-result v0

    return v0
.end method

.method protected getStreamType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.stream.type"
    .end annotation

    .line 75
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;

    move-result-object v0

    .line 76
    .local v0, "streamType":Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getStreamType(Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;)I

    move-result v1

    return v1
.end method

.method protected getTorque(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "hardware.torque"
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getTorque()D

    move-result-wide v0

    return-wide v0
.end method
