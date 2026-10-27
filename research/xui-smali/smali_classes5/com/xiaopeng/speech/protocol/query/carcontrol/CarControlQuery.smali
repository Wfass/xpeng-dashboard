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

    .line 16
    return-void
.end method


# virtual methods
.method protected getAtmosphereBrightnessStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.light.atmosphere.brightness.status"
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getAtmosphereBrightnessStatus()I

    move-result v0

    return v0
.end method

.method protected getAtmosphereColorStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.light.atmosphere.color.status"
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getAtmosphereColorStatus()I

    move-result v0

    return v0
.end method

.method protected getCapsuleCurrentMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.capsule.mode"
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getCapsuleCurrentMode()I

    move-result v0

    return v0
.end method

.method protected getControlComfortableDrivingModeSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.comfortable.driving.mode.support"
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlComfortableDrivingModeSupport()I

    move-result v0

    return v0
.end method

.method protected getControlElectricCurtainSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.electric.curtain.support"
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlElectricCurtainSupport()I

    move-result v0

    return v0
.end method

.method protected getControlLampSignalSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.lamp.signal.support"
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlLampSignalSupport()I

    move-result v0

    return v0
.end method

.method protected getControlLowSpeedAnalogSoundSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.low.speed.analog.sound.support"
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlLowSpeedAnalogSoundSupport()I

    move-result v0

    return v0
.end method

.method protected getControlScissorDoorCloseSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.scissor.door.right.open.support"
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlScissorDoorRightOpenSupport()I

    move-result v0

    return v0
.end method

.method protected getControlScissorDoorLeftCloseSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.scissor.door.left.close.support"
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlScissorDoorLeftCloseSupport()I

    move-result v0

    return v0
.end method

.method protected getControlScissorDoorLeftOpenSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.scissor.door.left.open.support"
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlScissorDoorLeftOpenSupport()I

    move-result v0

    return v0
.end method

.method protected getControlScissorDoorLeftRunningSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.scissor.door.left.running.support"
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlScissorDoorLeftRunningSupport()I

    move-result v0

    return v0
.end method

.method protected getControlScissorDoorRightCloseSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.scissor.door.right.close.support"
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlScissorDoorRightCloseSupport()I

    move-result v0

    return v0
.end method

.method protected getControlScissorDoorRightRunningSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.scissor.door.right.running.support"
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlScissorDoorRightRunningSupport()I

    move-result v0

    return v0
.end method

.method protected getControlSupportEnergyRecycleReason(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.support.energy.recycle.reason"
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlSupportEnergyRecycleReason()I

    move-result v0

    return v0
.end method

.method protected getControlWindowsStateSupport(Ljava/lang/String;Ljava/lang/String;)[F
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.get.windows.state.support"
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlWindowsStateSupport()[F

    move-result-object v0

    return-object v0
.end method

.method protected getControlXpedalSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.xpedal.support"
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getControlXpedalSupport()I

    move-result v0

    return v0
.end method

.method protected getDoorKeyValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.set.speech.wakeup.status"
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getDoorKeyValue()I

    move-result v0

    return v0
.end method

.method protected getExtraTrunkStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.extra.trunk.status"
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getExtraTrunkStatus()I

    move-result v0

    return v0
.end method

.method protected getGuiPageOpenState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.page.open.carcontrol"
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getGuiPageOpenState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getLegHeight(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.leg.height.get"
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getLegHeight()I

    move-result v0

    return v0
.end method

.method protected getMirrorStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.mirror.status"
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getMirrorStatus()I

    move-result v0

    return v0
.end method

.method protected getNgpStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "xpu.ngp.status"
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getNgpStatus()I

    move-result v0

    return v0
.end method

.method protected getStatusCloseLeftChargePort(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.alternating.port.off.status"
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getStatusChargePortControl(II)I

    move-result v0

    return v0
.end method

.method protected getStatusCloseRightChargePort(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.direct.port.off.status"
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getStatusChargePortControl(II)I

    move-result v0

    return v0
.end method

.method protected getStatusOpenLeftChargePort(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.alternating.port.on.status"
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getStatusChargePortControl(II)I

    move-result v0

    return v0
.end method

.method protected getStatusOpenRightChargePort(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.direct.port.on.status"
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getStatusChargePortControl(II)I

    move-result v0

    return v0
.end method

.method protected getSupportCloseTrunk(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.get.close.trunk"
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getSupportCloseTrunk()I

    move-result v0

    return v0
.end method

.method protected getSupportOpenTrunk(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.get.open.trunk"
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getSupportOpenTrunk()I

    move-result v0

    return v0
.end method

.method protected getSupportPsnSeat(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.get.psn.support.seat"
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getSupportPsnSeat()I

    move-result v0

    return v0
.end method

.method protected getSupportSeat(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.get.support.seat"
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getSupportSeat()I

    move-result v0

    return v0
.end method

.method protected getTrunkStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.trunk.status"
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getTrunkStatus()I

    move-result v0

    return v0
.end method

.method protected getVipChairStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.vip.chair.status"
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getVipChairStatus()I

    move-result v0

    return v0
.end method

.method protected getWindowStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.get.window.status"
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getWindowStatus()I

    move-result v0

    return v0
.end method

.method protected getWiperInterval(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.wiper.current.level"
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->getWiperInterval()I

    move-result v0

    return v0
.end method

.method protected isSteeringModeAdjustable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.control.steering.mode.adjustable"
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSteeringModeAdjustable()I

    move-result v0

    return v0
.end method

.method protected isSupportAtmosphere(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.support.light.atmosphere"
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportAtmosphere()Z

    move-result v0

    return v0
.end method

.method protected isSupportCloseLeftChargePort(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.alternating.port.on.support"
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportControlChargePort(II)Z

    move-result v0

    return v0
.end method

.method protected isSupportCloseMirror(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.support.close.mirror"
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportCloseMirror()Z

    move-result v0

    return v0
.end method

.method protected isSupportCloseRightChargePort(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.direct.port.off.support"
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportControlChargePort(II)Z

    move-result v0

    return v0
.end method

.method protected isSupportControlMirror(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.mirror.rear.set.support"
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportControlMirror()Z

    move-result v0

    return v0
.end method

.method protected isSupportDrivingMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.support.driving.mode"
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportDrivingMode()Z

    move-result v0

    return v0
.end method

.method protected isSupportEngryRecycle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "carcontrol.support.energy.recycle"
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportEnergyRecycle()Z

    move-result v0

    return v0
.end method

.method protected isSupportOpenLeftChargePort(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.alternating.port.off.support"
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportControlChargePort(II)Z

    move-result v0

    return v0
.end method

.method protected isSupportOpenRightChargePort(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "charge.direct.port.on.support"
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportControlChargePort(II)Z

    move-result v0

    return v0
.end method

.method protected isSupportUnlockTrunk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.trunk.unlock.support"
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isSupportUnlockTrunk()Z

    move-result v0

    return v0
.end method

.method protected isTirePressureNormal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.is.tairpressure.normal"
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/carcontrol/ICarControlCaller;->isTirePressureNormal()Z

    move-result v0

    return v0
.end method
