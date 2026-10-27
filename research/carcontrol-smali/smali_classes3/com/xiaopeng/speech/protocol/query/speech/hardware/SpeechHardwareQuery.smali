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

    return-void
.end method


# virtual methods
.method protected getCarType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getCarType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getChecklistStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getChecklistStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getCpuTemperature(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getCpuTemperature()I

    move-result p1

    return p1
.end method

.method protected getCtrlCurr(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getCtrlCurr()D

    move-result-wide p1

    return-wide p1
.end method

.method protected getCtrlTemp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getCtrlTemp()I

    move-result p1

    return p1
.end method

.method protected getCtrlVolt(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getCtrlVolt()D

    move-result-wide p1

    return-wide p1
.end method

.method protected getIpuFailStInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getIpuFailStInfo()I

    move-result p1

    return p1
.end method

.method protected getMcuHardWareId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getMcuHardWareId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getMotorStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getMotorStatus()I

    move-result p1

    return p1
.end method

.method protected getMotorTemp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getMotorTemp()I

    move-result p1

    return p1
.end method

.method protected getRollSpeed(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getRollSpeed()I

    move-result p1

    return p1
.end method

.method protected getStreamType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 75
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;

    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getStreamType(Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;)I

    move-result p1

    return p1
.end method

.method protected getTorque(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/ISpeechHardwareQueryCaller;->getTorque()D

    move-result-wide p1

    return-wide p1
.end method
