.class public interface abstract Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;
.super Ljava/lang/Object;
.source "CarcontrolListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onChargePortControl(II)V
.end method

.method public abstract onCheckUserBook(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;)V
.end method

.method public abstract onCloseUserBook()V
.end method

.method public onControlComfortableDrivingModeClose()V
    .locals 0

    .line 734
    return-void
.end method

.method public onControlComfortableDrivingModeOpen()V
    .locals 0

    .line 728
    return-void
.end method

.method public abstract onControlElectricCurtainClose(I)V
.end method

.method public abstract onControlElectricCurtainOpen(I)V
.end method

.method public abstract onControlLightResume()V
.end method

.method public abstract onControlScissorLeftDoorOff()V
.end method

.method public abstract onControlScissorLeftDoorOn()V
.end method

.method public abstract onControlScissorLeftDoorPause()V
.end method

.method public abstract onControlScissorRightDoorOff()V
.end method

.method public abstract onControlScissorRightDoorOn()V
.end method

.method public abstract onControlScissorRightDoorPause()V
.end method

.method public abstract onControlSeatResume()V
.end method

.method public onControlSunShade(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "pos"    # I

    .line 752
    return-void
.end method

.method public abstract onControlXpedalOff()V
.end method

.method public abstract onControlXpedalOn()V
.end method

.method public abstract onEnergyRecycleDown()V
.end method

.method public abstract onEnergyRecycleHigh()V
.end method

.method public abstract onEnergyRecycleLow()V
.end method

.method public abstract onEnergyRecycleMedia()V
.end method

.method public abstract onEnergyRecycleUp()V
.end method

.method public abstract onLegDown(I)V
.end method

.method public abstract onLegHighest(I)V
.end method

.method public abstract onLegLowest(I)V
.end method

.method public abstract onLegUp(I)V
.end method

.method public abstract onLightAtmosphereBrightnessDown()V
.end method

.method public abstract onLightAtmosphereBrightnessMax()V
.end method

.method public abstract onLightAtmosphereBrightnessMin()V
.end method

.method public abstract onLightAtmosphereBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;)V
.end method

.method public abstract onLightAtmosphereBrightnessUp()V
.end method

.method public abstract onLightAtmosphereColor(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;)V
.end method

.method public abstract onLightAtmosphereOff(I)V
.end method

.method public abstract onLightAtmosphereOn()V
.end method

.method public abstract onLightAutoOff()V
.end method

.method public abstract onLightAutoOn()V
.end method

.method public abstract onLightHomeOff()V
.end method

.method public abstract onLightHomeOn()V
.end method

.method public abstract onLightLowOff()V
.end method

.method public abstract onLightLowOff(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;)V
.end method

.method public abstract onLightLowOn()V
.end method

.method public abstract onLightPositionOff()V
.end method

.method public abstract onLightPositionOn()V
.end method

.method public abstract onLightTopAutoOff()V
.end method

.method public abstract onLightTopAutoOn()V
.end method

.method public abstract onLightTopOff()V
.end method

.method public abstract onLightTopOn()V
.end method

.method public abstract onLowVolumeOff()V
.end method

.method public abstract onLowVolumeOn()V
.end method

.method public abstract onMirrorRearClose()V
.end method

.method public abstract onMirrorRearOn()V
.end method

.method public abstract onMirrorRearSet(I)V
.end method

.method public abstract onMistLightOff()V
.end method

.method public abstract onMistLightOn()V
.end method

.method public abstract onModesConservationSupport()V
.end method

.method public abstract onModesDrivingConservation()V
.end method

.method public abstract onModesDrivingNormal()V
.end method

.method public abstract onModesDrivingSport()V
.end method

.method public abstract onModesSportSupport()V
.end method

.method public abstract onModesSteeringNormal()V
.end method

.method public abstract onModesSteeringSoft()V
.end method

.method public abstract onModesSteeringSport()V
.end method

.method public abstract onOpenUserBook()V
.end method

.method public abstract onPsnSeatBackrestBack()V
.end method

.method public abstract onPsnSeatBackrestForward()V
.end method

.method public abstract onPsnSeatMoveBack()V
.end method

.method public abstract onPsnSeatMoveDown()V
.end method

.method public abstract onPsnSeatMoveForward()V
.end method

.method public abstract onPsnSeatMoveUp()V
.end method

.method public abstract onSeatAdjust(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;)V
.end method

.method public abstract onSeatBackrestBack(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V
.end method

.method public abstract onSeatBackrestForemost()V
.end method

.method public abstract onSeatBackrestForward(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;)V
.end method

.method public abstract onSeatBackrestRear(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V
.end method

.method public abstract onSeatMoveBack(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;)V
.end method

.method public abstract onSeatMoveDown()V
.end method

.method public abstract onSeatMoveForemost()V
.end method

.method public abstract onSeatMoveForward(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;)V
.end method

.method public abstract onSeatMoveHighest()V
.end method

.method public abstract onSeatMoveLowest()V
.end method

.method public abstract onSeatMoveRear(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V
.end method

.method public abstract onSeatMoveUp()V
.end method

.method public abstract onSeatRestore()V
.end method

.method public abstract onTirePressureShow()V
.end method

.method public abstract onTrunkClose()V
.end method

.method public abstract onTrunkOpen()V
.end method

.method public abstract onTrunkUnlock()V
.end method

.method public abstract onWindowDriverClose()V
.end method

.method public abstract onWindowDriverOpen()V
.end method

.method public abstract onWindowFrontClose()V
.end method

.method public abstract onWindowFrontOpen()V
.end method

.method public abstract onWindowLeftRearClose()V
.end method

.method public abstract onWindowLeftRearOpen()V
.end method

.method public abstract onWindowPassengerClose()V
.end method

.method public abstract onWindowPassengerOpen()V
.end method

.method public abstract onWindowRearClose()V
.end method

.method public abstract onWindowRearOpen()V
.end method

.method public abstract onWindowRightRearClose()V
.end method

.method public abstract onWindowRightRearOpen()V
.end method

.method public abstract onWindowsClose()V
.end method

.method public abstract onWindowsControl(III)V
.end method

.method public abstract onWindowsOpen()V
.end method

.method public abstract onWindowsVentilateOff()V
.end method

.method public abstract onWindowsVentilateOn()V
.end method

.method public abstract onWiperHigh()V
.end method

.method public abstract onWiperMedium()V
.end method

.method public abstract onWiperSlow()V
.end method

.method public abstract onWiperSpeedDown()V
.end method

.method public abstract onWiperSpeedUp()V
.end method

.method public abstract onWiperSuperhigh()V
.end method

.method public setCapsuleUniversal(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .line 758
    return-void
.end method

.method public setLluSw(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .line 742
    return-void
.end method
