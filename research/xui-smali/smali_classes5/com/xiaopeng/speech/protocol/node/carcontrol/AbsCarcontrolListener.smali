.class public abstract Lcom/xiaopeng/speech/protocol/node/carcontrol/AbsCarcontrolListener;
.super Ljava/lang/Object;
.source "AbsCarcontrolListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChargePortControl(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "mode"    # I

    .line 433
    return-void
.end method

.method public onCheckUserBook(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;)V
    .locals 0
    .param p1, "userBookValue"    # Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;

    .line 323
    return-void
.end method

.method public onCloseUserBook()V
    .locals 0

    .line 333
    return-void
.end method

.method public onControlComfortableDrivingModeClose()V
    .locals 0

    .line 552
    return-void
.end method

.method public onControlComfortableDrivingModeOpen()V
    .locals 0

    .line 547
    return-void
.end method

.method public onControlLightResume()V
    .locals 0

    .line 303
    return-void
.end method

.method public onControlScissorLeftDoorOff()V
    .locals 0

    .line 527
    return-void
.end method

.method public onControlScissorLeftDoorOn()V
    .locals 0

    .line 517
    return-void
.end method

.method public onControlScissorLeftDoorPause()V
    .locals 0

    .line 537
    return-void
.end method

.method public onControlScissorRightDoorOff()V
    .locals 0

    .line 532
    return-void
.end method

.method public onControlScissorRightDoorOn()V
    .locals 0

    .line 522
    return-void
.end method

.method public onControlScissorRightDoorPause()V
    .locals 0

    .line 542
    return-void
.end method

.method public onControlSeatResume()V
    .locals 0

    .line 308
    return-void
.end method

.method public onControlSunShade(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "pos"    # I

    .line 562
    return-void
.end method

.method public onControlXpedalOff()V
    .locals 0

    .line 512
    return-void
.end method

.method public onControlXpedalOn()V
    .locals 0

    .line 507
    return-void
.end method

.method public onEnergyRecycleDown()V
    .locals 0

    .line 183
    return-void
.end method

.method public onEnergyRecycleHigh()V
    .locals 0

    .line 163
    return-void
.end method

.method public onEnergyRecycleLow()V
    .locals 0

    .line 168
    return-void
.end method

.method public onEnergyRecycleMedia()V
    .locals 0

    .line 173
    return-void
.end method

.method public onEnergyRecycleUp()V
    .locals 0

    .line 178
    return-void
.end method

.method public onLegDown(I)V
    .locals 0
    .param p1, "pilot"    # I

    .line 413
    return-void
.end method

.method public onLegHighest(I)V
    .locals 0
    .param p1, "pilot"    # I

    .line 418
    return-void
.end method

.method public onLegLowest(I)V
    .locals 0
    .param p1, "pilot"    # I

    .line 423
    return-void
.end method

.method public onLegUp(I)V
    .locals 0
    .param p1, "pilot"    # I

    .line 408
    return-void
.end method

.method public onLightAtmosphereBrightnessDown()V
    .locals 0

    .line 462
    return-void
.end method

.method public onLightAtmosphereBrightnessMax()V
    .locals 0

    .line 467
    return-void
.end method

.method public onLightAtmosphereBrightnessMin()V
    .locals 0

    .line 472
    return-void
.end method

.method public onLightAtmosphereBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;)V
    .locals 0
    .param p1, "value"    # Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;

    .line 452
    return-void
.end method

.method public onLightAtmosphereBrightnessUp()V
    .locals 0

    .line 457
    return-void
.end method

.method public onLightAtmosphereColor(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;)V
    .locals 0
    .param p1, "value"    # Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;

    .line 447
    return-void
.end method

.method public onLightAtmosphereOff(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 398
    return-void
.end method

.method public onLightAtmosphereOn()V
    .locals 0

    .line 358
    return-void
.end method

.method public onLightAutoOff()V
    .locals 0

    .line 58
    return-void
.end method

.method public onLightAutoOn()V
    .locals 0

    .line 53
    return-void
.end method

.method public onLightHomeOff()V
    .locals 0

    .line 18
    return-void
.end method

.method public onLightHomeOn()V
    .locals 0

    .line 23
    return-void
.end method

.method public onLightLowOff()V
    .locals 0

    .line 28
    return-void
.end method

.method public onLightLowOff(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;)V
    .locals 0
    .param p1, "reason"    # Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;

    .line 33
    return-void
.end method

.method public onLightLowOn()V
    .locals 0

    .line 38
    return-void
.end method

.method public onLightPositionOff()V
    .locals 0

    .line 48
    return-void
.end method

.method public onLightPositionOn()V
    .locals 0

    .line 43
    return-void
.end method

.method public onLightTopAutoOff()V
    .locals 0

    .line 343
    return-void
.end method

.method public onLightTopAutoOn()V
    .locals 0

    .line 338
    return-void
.end method

.method public onLightTopOff()V
    .locals 0

    .line 353
    return-void
.end method

.method public onLightTopOn()V
    .locals 0

    .line 348
    return-void
.end method

.method public onLowVolumeOff()V
    .locals 0

    .line 318
    return-void
.end method

.method public onLowVolumeOn()V
    .locals 0

    .line 313
    return-void
.end method

.method public onMirrorRearClose()V
    .locals 0

    .line 73
    return-void
.end method

.method public onMirrorRearOn()V
    .locals 0

    .line 78
    return-void
.end method

.method public onMirrorRearSet(I)V
    .locals 0
    .param p1, "direction"    # I

    .line 403
    return-void
.end method

.method public onMistLightOff()V
    .locals 0

    .line 63
    return-void
.end method

.method public onMistLightOn()V
    .locals 0

    .line 68
    return-void
.end method

.method public onModesConservationSupport()V
    .locals 0

    .line 233
    return-void
.end method

.method public onModesDrivingConservation()V
    .locals 0

    .line 138
    return-void
.end method

.method public onModesDrivingNormal()V
    .locals 0

    .line 143
    return-void
.end method

.method public onModesDrivingSport()V
    .locals 0

    .line 133
    return-void
.end method

.method public onModesSportSupport()V
    .locals 0

    .line 228
    return-void
.end method

.method public onModesSteeringNormal()V
    .locals 0

    .line 153
    return-void
.end method

.method public onModesSteeringSoft()V
    .locals 0

    .line 148
    return-void
.end method

.method public onModesSteeringSport()V
    .locals 0

    .line 158
    return-void
.end method

.method public onOpenUserBook()V
    .locals 0

    .line 328
    return-void
.end method

.method public onPsnSeatBackrestBack()V
    .locals 0

    .line 477
    return-void
.end method

.method public onPsnSeatBackrestForward()V
    .locals 0

    .line 482
    return-void
.end method

.method public onPsnSeatMoveBack()V
    .locals 0

    .line 487
    return-void
.end method

.method public onPsnSeatMoveDown()V
    .locals 0

    .line 492
    return-void
.end method

.method public onPsnSeatMoveForward()V
    .locals 0

    .line 497
    return-void
.end method

.method public onPsnSeatMoveUp()V
    .locals 0

    .line 502
    return-void
.end method

.method public onSeatAdjust(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;)V
    .locals 0
    .param p1, "seatValue"    # Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;

    .line 298
    return-void
.end method

.method public onSeatBackrestBack(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    .param p2, "speechParam"    # Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    .line 278
    return-void
.end method

.method public onSeatBackrestForemost()V
    .locals 0

    .line 293
    return-void
.end method

.method public onSeatBackrestForward(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    .line 283
    return-void
.end method

.method public onSeatBackrestRear(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V
    .locals 0
    .param p1, "speechParam"    # Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    .line 288
    return-void
.end method

.method public onSeatMoveBack(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    .line 258
    return-void
.end method

.method public onSeatMoveDown()V
    .locals 0

    .line 243
    return-void
.end method

.method public onSeatMoveForemost()V
    .locals 0

    .line 273
    return-void
.end method

.method public onSeatMoveForward(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    .line 263
    return-void
.end method

.method public onSeatMoveHighest()V
    .locals 0

    .line 248
    return-void
.end method

.method public onSeatMoveLowest()V
    .locals 0

    .line 253
    return-void
.end method

.method public onSeatMoveRear(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V
    .locals 0
    .param p1, "speechParam"    # Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    .line 268
    return-void
.end method

.method public onSeatMoveUp()V
    .locals 0

    .line 238
    return-void
.end method

.method public onSeatRestore()V
    .locals 0

    .line 428
    return-void
.end method

.method public onTirePressureShow()V
    .locals 0

    .line 443
    return-void
.end method

.method public onTrunkClose()V
    .locals 0

    .line 118
    return-void
.end method

.method public onTrunkOpen()V
    .locals 0

    .line 83
    return-void
.end method

.method public onTrunkUnlock()V
    .locals 0

    .line 393
    return-void
.end method

.method public onWindowDriverClose()V
    .locals 0

    .line 88
    return-void
.end method

.method public onWindowDriverOpen()V
    .locals 0

    .line 93
    return-void
.end method

.method public onWindowFrontClose()V
    .locals 0

    .line 213
    return-void
.end method

.method public onWindowFrontOpen()V
    .locals 0

    .line 208
    return-void
.end method

.method public onWindowLeftRearClose()V
    .locals 0

    .line 203
    return-void
.end method

.method public onWindowLeftRearOpen()V
    .locals 0

    .line 198
    return-void
.end method

.method public onWindowPassengerClose()V
    .locals 0

    .line 98
    return-void
.end method

.method public onWindowPassengerOpen()V
    .locals 0

    .line 103
    return-void
.end method

.method public onWindowRearClose()V
    .locals 0

    .line 223
    return-void
.end method

.method public onWindowRearOpen()V
    .locals 0

    .line 218
    return-void
.end method

.method public onWindowRightRearClose()V
    .locals 0

    .line 193
    return-void
.end method

.method public onWindowRightRearOpen()V
    .locals 0

    .line 188
    return-void
.end method

.method public onWindowsClose()V
    .locals 0

    .line 108
    return-void
.end method

.method public onWindowsControl(III)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "mode"    # I
    .param p3, "percent"    # I

    .line 438
    return-void
.end method

.method public onWindowsOpen()V
    .locals 0

    .line 113
    return-void
.end method

.method public onWindowsVentilateOff()V
    .locals 0

    .line 128
    return-void
.end method

.method public onWindowsVentilateOn()V
    .locals 0

    .line 123
    return-void
.end method

.method public onWiperHigh()V
    .locals 0

    .line 378
    return-void
.end method

.method public onWiperMedium()V
    .locals 0

    .line 383
    return-void
.end method

.method public onWiperSlow()V
    .locals 0

    .line 373
    return-void
.end method

.method public onWiperSpeedDown()V
    .locals 0

    .line 368
    return-void
.end method

.method public onWiperSpeedUp()V
    .locals 0

    .line 363
    return-void
.end method

.method public onWiperSuperhigh()V
    .locals 0

    .line 388
    return-void
.end method

.method public setLluSw(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .line 557
    return-void
.end method
