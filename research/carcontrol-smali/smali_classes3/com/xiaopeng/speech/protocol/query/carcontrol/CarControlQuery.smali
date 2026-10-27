.class public Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "CarControlQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAtmosphereBrightnessStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getAtmosphereBrightnessStatus()I

    move-result p1

    return p1
.end method

.method protected getAtmosphereColorStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getAtmosphereColorStatus()I

    move-result p1

    return p1
.end method

.method protected getCapsuleCurrentMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getCapsuleCurrentMode()I

    move-result p1

    return p1
.end method

.method protected getControlComfortableDrivingModeSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlComfortableDrivingModeSupport()I

    move-result p1

    return p1
.end method

.method protected getControlElectricCurtainSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlElectricCurtainSupport()I

    move-result p1

    return p1
.end method

.method protected getControlLampSignalSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 231
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlLampSignalSupport()I

    move-result p1

    return p1
.end method

.method protected getControlLowSpeedAnalogSoundSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlLowSpeedAnalogSoundSupport()I

    move-result p1

    return p1
.end method

.method protected getControlScissorDoorCloseSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlScissorDoorRightOpenSupport()I

    move-result p1

    return p1
.end method

.method protected getControlScissorDoorLeftCloseSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlScissorDoorLeftCloseSupport()I

    move-result p1

    return p1
.end method

.method protected getControlScissorDoorLeftOpenSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlScissorDoorLeftOpenSupport()I

    move-result p1

    return p1
.end method

.method protected getControlScissorDoorLeftRunningSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlScissorDoorLeftRunningSupport()I

    move-result p1

    return p1
.end method

.method protected getControlScissorDoorRightCloseSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlScissorDoorRightCloseSupport()I

    move-result p1

    return p1
.end method

.method protected getControlScissorDoorRightRunningSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlScissorDoorRightRunningSupport()I

    move-result p1

    return p1
.end method

.method protected getControlSupportEnergyRecycleReason(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlSupportEnergyRecycleReason()I

    move-result p1

    return p1
.end method

.method protected getControlWindowsStateSupport(Ljava/lang/String;Ljava/lang/String;)[F
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlWindowsStateSupport()[F

    move-result-object p1

    return-object p1
.end method

.method protected getControlXpedalSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlXpedalSupport()I

    move-result p1

    return p1
.end method

.method protected getDoorKeyValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getDoorKeyValue()I

    move-result p1

    return p1
.end method

.method protected getExtraTrunkStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getExtraTrunkStatus()I

    move-result p1

    return p1
.end method

.method protected getGuiPageOpenState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getGuiPageOpenState(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getLegHeight(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getLegHeight()I

    move-result p1

    return p1
.end method

.method protected getMirrorStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getMirrorStatus()I

    move-result p1

    return p1
.end method

.method protected getNgpStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getNgpStatus()I

    move-result p1

    return p1
.end method

.method protected getStatusCloseLeftChargePort(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getStatusChargePortControl(II)I

    move-result p1

    return p1
.end method

.method protected getStatusCloseRightChargePort(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 p2, 0x1

    invoke-interface {p1, p2, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getStatusChargePortControl(II)I

    move-result p1

    return p1
.end method

.method protected getStatusOpenLeftChargePort(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getStatusChargePortControl(II)I

    move-result p1

    return p1
.end method

.method protected getStatusOpenRightChargePort(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getStatusChargePortControl(II)I

    move-result p1

    return p1
.end method

.method protected getSupportCloseTrunk(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getSupportCloseTrunk()I

    move-result p1

    return p1
.end method

.method protected getSupportOpenTrunk(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getSupportOpenTrunk()I

    move-result p1

    return p1
.end method

.method protected getSupportPsnSeat(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getSupportPsnSeat()I

    move-result p1

    return p1
.end method

.method protected getSupportSeat(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getSupportSeat()I

    move-result p1

    return p1
.end method

.method protected getTrunkStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getTrunkStatus()I

    move-result p1

    return p1
.end method

.method protected getVipChairStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getVipChairStatus()I

    move-result p1

    return p1
.end method

.method protected getWindowStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getWindowStatus()I

    move-result p1

    return p1
.end method

.method protected getWiperInterval(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getWiperInterval()I

    move-result p1

    return p1
.end method

.method protected isSteeringModeAdjustable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSteeringModeAdjustable()I

    move-result p1

    return p1
.end method

.method protected isSupportAtmosphere(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportAtmosphere()Z

    move-result p1

    return p1
.end method

.method protected isSupportCloseLeftChargePort(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportControlChargePort(II)Z

    move-result p1

    return p1
.end method

.method protected isSupportCloseMirror(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportCloseMirror()Z

    move-result p1

    return p1
.end method

.method protected isSupportCloseRightChargePort(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 p2, 0x1

    invoke-interface {p1, p2, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportControlChargePort(II)Z

    move-result p1

    return p1
.end method

.method protected isSupportControlMirror(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportControlMirror()Z

    move-result p1

    return p1
.end method

.method protected isSupportDrivingMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportDrivingMode()Z

    move-result p1

    return p1
.end method

.method protected isSupportEngryRecycle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportEnergyRecycle()Z

    move-result p1

    return p1
.end method

.method protected isSupportOpenLeftChargePort(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportControlChargePort(II)Z

    move-result p1

    return p1
.end method

.method protected isSupportOpenRightChargePort(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportControlChargePort(II)Z

    move-result p1

    return p1
.end method

.method protected isSupportUnlockTrunk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportUnlockTrunk()Z

    move-result p1

    return p1
.end method

.method protected isTirePressureNormal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isTirePressureNormal()Z

    move-result p1

    return p1
.end method
