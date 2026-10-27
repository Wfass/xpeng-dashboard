.class public abstract Lcom/xiaopeng/speech/protocol/node/carac/AbsCaracListener;
.super Ljava/lang/Object;
.source "AbsCaracListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/carac/CaracListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeIntelligentPsn()V
    .locals 0

    .line 535
    return-void
.end method

.method public onAcOff()V
    .locals 0

    .line 30
    return-void
.end method

.method public onAcOn()V
    .locals 0

    .line 25
    return-void
.end method

.method public onAcPanelOn()V
    .locals 0

    .line 525
    return-void
.end method

.method public onAqsOff()V
    .locals 0

    .line 420
    return-void
.end method

.method public onAqsOn()V
    .locals 0

    .line 415
    return-void
.end method

.method public onAutoOff()V
    .locals 0

    .line 45
    return-void
.end method

.method public onAutoOffSupport()V
    .locals 0

    .line 40
    return-void
.end method

.method public onAutoOn()V
    .locals 0

    .line 35
    return-void
.end method

.method public onBlowFootOn()V
    .locals 0

    .line 50
    return-void
.end method

.method public onBlowHeadOn()V
    .locals 0

    .line 60
    return-void
.end method

.method public onDataTempTTS()V
    .locals 0

    .line 230
    return-void
.end method

.method public onDataWindTTS()V
    .locals 0

    .line 235
    return-void
.end method

.method public onDemistFootOn()V
    .locals 0

    .line 90
    return-void
.end method

.method public onDemistFootOnSupport()V
    .locals 0

    .line 85
    return-void
.end method

.method public onDemistFrontOff()V
    .locals 0

    .line 65
    return-void
.end method

.method public onDemistFrontOn()V
    .locals 0

    .line 70
    return-void
.end method

.method public onDemistRearOff()V
    .locals 0

    .line 75
    return-void
.end method

.method public onDemistRearOn()V
    .locals 0

    .line 80
    return-void
.end method

.method public onExitFastFridge()V
    .locals 0

    .line 395
    return-void
.end method

.method public onExitFreshAir()V
    .locals 0

    .line 400
    return-void
.end method

.method public onHeadFootOn()V
    .locals 0

    .line 55
    return-void
.end method

.method public onHeatingOff()V
    .locals 0

    .line 440
    return-void
.end method

.method public onHeatingOn()V
    .locals 0

    .line 435
    return-void
.end method

.method public onHvacOff()V
    .locals 0

    .line 15
    return-void
.end method

.method public onHvacOn()V
    .locals 0

    .line 20
    return-void
.end method

.method public onInnerOff()V
    .locals 0

    .line 95
    return-void
.end method

.method public onInnerOn()V
    .locals 0

    .line 100
    return-void
.end method

.method public onMirrorOff(I)V
    .locals 0
    .param p1, "pilot"    # I

    .line 510
    return-void
.end method

.method public onMirrorOn(I)V
    .locals 0
    .param p1, "pilot"    # I

    .line 505
    return-void
.end method

.method public onModesEcoOff()V
    .locals 0

    .line 430
    return-void
.end method

.method public onModesEcoOn()V
    .locals 0

    .line 425
    return-void
.end method

.method public onNatureOff()V
    .locals 0

    .line 450
    return-void
.end method

.method public onNatureOn()V
    .locals 0

    .line 445
    return-void
.end method

.method public onOpenFastFridge()V
    .locals 0

    .line 385
    return-void
.end method

.method public onOpenFreshAir()V
    .locals 0

    .line 390
    return-void
.end method

.method public onPsnTempSynOff()V
    .locals 0

    .line 500
    return-void
.end method

.method public onPsnTempSynOn()V
    .locals 0

    .line 495
    return-void
.end method

.method public onPurifierClose()V
    .locals 0

    .line 170
    return-void
.end method

.method public onPurifierCloseSupport()V
    .locals 0

    .line 165
    return-void
.end method

.method public onPurifierOpen()V
    .locals 0

    .line 160
    return-void
.end method

.method public onPurifierOpenSupport()V
    .locals 0

    .line 155
    return-void
.end method

.method public onPurifierPm25()V
    .locals 0

    .line 175
    return-void
.end method

.method public onRearHeatOff()V
    .locals 0

    .line 115
    return-void
.end method

.method public onRearHeatOffSupport()V
    .locals 0

    .line 120
    return-void
.end method

.method public onRearHeatOn()V
    .locals 0

    .line 125
    return-void
.end method

.method public onRearHeatOnSupport()V
    .locals 0

    .line 130
    return-void
.end method

.method public onSeatHeatDriverSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 365
    return-void
.end method

.method public onSeatHeatPassengerDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 380
    return-void
.end method

.method public onSeatHeatPassengerSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 370
    return-void
.end method

.method public onSeatHeatPassengerUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 375
    return-void
.end method

.method public onSeatHeatingClose()V
    .locals 0

    .line 310
    return-void
.end method

.method public onSeatHeatingDown()V
    .locals 0

    .line 330
    return-void
.end method

.method public onSeatHeatingMax()V
    .locals 0

    .line 315
    return-void
.end method

.method public onSeatHeatingMin()V
    .locals 0

    .line 320
    return-void
.end method

.method public onSeatHeatingOpen()V
    .locals 0

    .line 305
    return-void
.end method

.method public onSeatHeatingUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 325
    return-void
.end method

.method public onSeatPsnHeatingClose()V
    .locals 0

    .line 410
    return-void
.end method

.method public onSeatPsnHeatingOpen()V
    .locals 0

    .line 405
    return-void
.end method

.method public onSeatVentilateDown()V
    .locals 0

    .line 350
    return-void
.end method

.method public onSeatVentilateDriverSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 360
    return-void
.end method

.method public onSeatVentilateMax()V
    .locals 0

    .line 340
    return-void
.end method

.method public onSeatVentilateMin()V
    .locals 0

    .line 345
    return-void
.end method

.method public onSeatVentilateOff()V
    .locals 0

    .line 335
    return-void
.end method

.method public onSeatVentilateOn(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V
    .locals 0
    .param p1, "param"    # Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    .line 255
    return-void
.end method

.method public onSeatVentilateUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 355
    return-void
.end method

.method public onTempDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 140
    return-void
.end method

.method public onTempDownHalfSupport()V
    .locals 0

    .line 135
    return-void
.end method

.method public onTempDriveMax()V
    .locals 0

    .line 290
    return-void
.end method

.method public onTempDriveMin()V
    .locals 0

    .line 285
    return-void
.end method

.method public onTempDriverDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 195
    return-void
.end method

.method public onTempDriverDownSupport()V
    .locals 0

    .line 190
    return-void
.end method

.method public onTempDriverSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 275
    return-void
.end method

.method public onTempDriverUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 185
    return-void
.end method

.method public onTempDriverUpSupport()V
    .locals 0

    .line 180
    return-void
.end method

.method public onTempDualOff()V
    .locals 0

    .line 225
    return-void
.end method

.method public onTempDualSyn()V
    .locals 0

    .line 220
    return-void
.end method

.method public onTempMax()V
    .locals 0

    .line 260
    return-void
.end method

.method public onTempMin(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V
    .locals 0
    .param p1, "param"    # Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    .line 250
    return-void
.end method

.method public onTempPassengerDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 215
    return-void
.end method

.method public onTempPassengerDownSupport()V
    .locals 0

    .line 210
    return-void
.end method

.method public onTempPassengerMax()V
    .locals 0

    .line 300
    return-void
.end method

.method public onTempPassengerMin()V
    .locals 0

    .line 295
    return-void
.end method

.method public onTempPassengerSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 280
    return-void
.end method

.method public onTempPassengerUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 205
    return-void
.end method

.method public onTempPassengerUpSupport()V
    .locals 0

    .line 200
    return-void
.end method

.method public onTempSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 270
    return-void
.end method

.method public onTempUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 145
    return-void
.end method

.method public onTempUpHalfSupport()V
    .locals 0

    .line 150
    return-void
.end method

.method public onWindAutoSweepOff()V
    .locals 0

    .line 485
    return-void
.end method

.method public onWindAutoSweepOn()V
    .locals 0

    .line 480
    return-void
.end method

.method public onWindDown(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 105
    return-void
.end method

.method public onWindEvad(II)V
    .locals 0
    .param p1, "pilot"    # I
    .param p2, "direction"    # I

    .line 460
    return-void
.end method

.method public onWindFree(II)V
    .locals 0
    .param p1, "pilot"    # I
    .param p2, "direction"    # I

    .line 470
    return-void
.end method

.method public onWindFront(II)V
    .locals 0
    .param p1, "pilot"    # I
    .param p2, "direction"    # I

    .line 465
    return-void
.end method

.method public onWindMax(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V
    .locals 0
    .param p1, "param"    # Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    .line 240
    return-void
.end method

.method public onWindMin(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V
    .locals 0
    .param p1, "param"    # Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    .line 245
    return-void
.end method

.method public onWindOutletOff(I)V
    .locals 0
    .param p1, "pilot"    # I

    .line 520
    return-void
.end method

.method public onWindOutletOn(I)V
    .locals 0
    .param p1, "pilot"    # I

    .line 515
    return-void
.end method

.method public onWindSet(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 265
    return-void
.end method

.method public onWindUnidirection(II)V
    .locals 0
    .param p1, "pilot"    # I
    .param p2, "direction"    # I

    .line 455
    return-void
.end method

.method public onWindUnidirectionSet(II)V
    .locals 0
    .param p1, "pilot"    # I
    .param p2, "direction"    # I

    .line 475
    return-void
.end method

.method public onWindUp(Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;)V
    .locals 0
    .param p1, "changeValue"    # Lcom/xiaopeng/speech/protocol/node/carac/bean/ChangeValue;

    .line 110
    return-void
.end method

.method public onWindowOn()V
    .locals 0

    .line 490
    return-void
.end method

.method public openIntelligentPsn()V
    .locals 0

    .line 530
    return-void
.end method
