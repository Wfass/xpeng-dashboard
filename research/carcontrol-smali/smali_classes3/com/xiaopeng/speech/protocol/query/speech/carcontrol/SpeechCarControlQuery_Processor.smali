.class public Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;
.super Ljava/lang/Object;
.source "SpeechCarControlQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 68

    const-string v0, "carcontrol.lamp.rearfog"

    const-string v1, "carcontrol.lamp.near"

    const-string v2, "carcontrol.lamp.location"

    const-string v3, "carcontrol.lamp.far"

    const-string v4, "carcontrol.lamp.headgroup"

    const-string v5, "carcontrol.lamp.inner"

    const-string v6, "carcontrol.brake.emergency.warn"

    const-string v7, "carcontrol.atws.state"

    const-string v8, "carcontrol.oled.state"

    const-string v9, "carcontrol.lightmehome.state"

    const-string v10, "carcontrol.lock.drive.auto"

    const-string v11, "carcontrol.lock.parking.auto"

    const-string v12, "carcontrol.lock.state"

    const-string v13, "carcontrol.trunk.state"

    const-string v14, "carcontrol.trunk.openner.state"

    const-string v15, "carcontrol.mode.welcome.state"

    const-string v16, "carcontrol.belt.electric.state"

    const-string v17, "carcontrol.belt.rearseat.state"

    const-string v18, "carcontrol.lock.unlock.response"

    const-string v19, "carcontrol.door.sate"

    const-string v20, "carcontrol.window.sate"

    const-string v21, "carcontrol.seat.direction"

    const-string v22, "carcontrol.seat.error"

    const-string v23, "carcontrol.seat.position"

    const-string v24, "carcontrol.passenger.seat.position"

    const-string v25, "carcontrol.seat.welcome.mode.state"

    const-string v26, "carcontrol.drive.mode"

    const-string v27, "carcontrol.steer.eps"

    const-string v28, "carcontrol.icm.volume.warn"

    const-string v29, "carcontrol.speed.limit.state"

    const-string v30, "carcontrol.speed.limit.value"

    const-string v31, "carcontrol.meter.a"

    const-string v32, "carcontrol.meter.b"

    const-string v33, "carcontrol.meter.total"

    const-string v34, "carcontrol.meter.last.charge"

    const-string v35, "carcontrol.meter.last.start"

    const-string v36, "carcontrol.front.collision.state"

    const-string v37, "carcontrol.meter.limit.intel"

    const-string v38, "carcontrol.lane.change.assist.state"

    const-string v39, "carcontrol.warn.side.rever.state"

    const-string v40, "carcontrol.warn.lane.departure.state"

    const-string v41, "carcontrol.warn.blind.area.state"

    const-string v42, "carcontrol.warn.radar.slow.state"

    const-string v43, "carcontrol.recycle.lv"

    const-string v44, "carcontrol.shift.state"

    const-string v45, "carcontrol.seat.main.human.state"

    const-string v46, "carcontrol.seat.passenger.human.state"

    const-string v47, "carcontrol.rotation.steer"

    const-string v48, "carcontrol.speed.car"

    const-string v49, "carcontrol.icm.state"

    const-string v50, "carcontrol.ig.state"

    const-string v51, "carcontrol.icm.wind.mode"

    const-string v52, "carcontrol.icm.driver.temp"

    const-string v53, "carcontrol.icm.wind.lv"

    const-string v54, "carcontrol.is.car.trip"

    const-string v55, "carcontrol.wiper.level"

    const-string v56, "carcontrol.tire.pressure"

    const-string v57, "carcontrol.tire.pressure.warnings"

    const-string v58, "control.tire.temperature.warnings"

    const-string v59, "carcontrol.acc.state"

    const-string v60, "carcontrol.lcc.state"

    const-string v61, "carcontrol.window.lock_state"

    const-string v62, "control.charge.power.status"

    const-string v63, "control.cruise.status"

    const-string v64, "control.tpm.system.warn.status"

    const-string v65, "control.tpm.pressure.warn.status"

    const-string v66, "carcontrol.amp.feature"

    const-string v67, "carcontrol.ngp.mode.index.mode"

    .line 158
    filled-new-array/range {v0 .. v67}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "carcontrol.steer.eps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x43

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "carcontrol.passenger.seat.position"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x42

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "carcontrol.lane.change.assist.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x41

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "carcontrol.tire.pressure.warnings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x40

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "carcontrol.icm.wind.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x3f

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "control.tpm.pressure.warn.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x3e

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "carcontrol.mode.welcome.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x3d

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "carcontrol.lamp.near"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x3c

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "carcontrol.lock.parking.auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x3b

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "carcontrol.acc.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x3a

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "carcontrol.meter.total"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x39

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "carcontrol.meter.b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x38

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "carcontrol.meter.a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x37

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "carcontrol.lamp.location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x36

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "control.charge.power.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x35

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "carcontrol.warn.side.rever.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x34

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "carcontrol.oled.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x33

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "carcontrol.lock.unlock.response"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x32

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "carcontrol.seat.direction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x31

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "carcontrol.seat.passenger.human.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x30

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "carcontrol.amp.feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x2f

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "carcontrol.icm.driver.temp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x2e

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "carcontrol.icm.wind.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "carcontrol.rotation.steer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "carcontrol.seat.main.human.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "carcontrol.shift.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "carcontrol.ig.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "carcontrol.seat.welcome.mode.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "carcontrol.trunk.openner.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "carcontrol.brake.emergency.warn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "carcontrol.speed.limit.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "carcontrol.speed.limit.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "carcontrol.icm.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "carcontrol.lamp.rearfog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "carcontrol.warn.radar.slow.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "carcontrol.meter.last.charge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "carcontrol.ngp.mode.index.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "carcontrol.recycle.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "carcontrol.atws.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "carcontrol.drive.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "carcontrol.is.car.trip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "carcontrol.window.sate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "carcontrol.lock.drive.auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "carcontrol.meter.last.start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "carcontrol.door.sate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "carcontrol.window.lock_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "carcontrol.belt.rearseat.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "carcontrol.speed.car"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "carcontrol.meter.limit.intel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "carcontrol.lock.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "carcontrol.lamp.inner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "carcontrol.lcc.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "control.cruise.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "carcontrol.seat.error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "carcontrol.icm.volume.warn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "control.tpm.system.warn.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "carcontrol.tire.pressure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "carcontrol.wiper.level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "carcontrol.warn.lane.departure.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "control.tire.temperature.warnings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "carcontrol.trunk.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_0

    :cond_3c
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3d
    const-string v0, "carcontrol.warn.blind.area.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_0

    :cond_3d
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3e
    const-string v0, "carcontrol.lamp.headgroup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_0

    :cond_3e
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3f
    const-string v0, "carcontrol.lamp.far"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_0

    :cond_3f
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_40
    const-string v0, "carcontrol.belt.electric.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_0

    :cond_40
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_41
    const-string v0, "carcontrol.seat.position"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_0

    :cond_41
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_42
    const-string v0, "carcontrol.lightmehome.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_0

    :cond_42
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_43
    const-string v0, "carcontrol.front.collision.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_0

    :cond_43
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getSteeringWheelEPS(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getPassengerChairLocationValue(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 93
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getLaneChangeAssist(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 131
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getAllTirePressureWarnings(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 119
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getICMWindBlowMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 147
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getAbnormalTirePressureState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getChairWelcomeMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getNearLampState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getParkingAutoUnlock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 135
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getACCStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getDriveTotalMileage(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 81
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getMeterMileageB(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 79
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getMeterMileageA(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getLocationLampState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 141
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getLowSocStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 95
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getSideReversingWarning(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getOled(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getUnlockResponse(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getChairDirection(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 109
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getPassengerSeatStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 149
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getCarControlAMPFeature(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 121
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getICMDriverTempValue(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 123
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getICMWindLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 111
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getSteerWheelRotationAngle(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 107
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getDriverSeatStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 105
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getShiftStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 117
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getBCMIgStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getWelcomeModeBackStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getTrunkOpennerState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_1d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getEmergencyBrakeWarning(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 77
    :pswitch_1e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getSpeedLimitWarningValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 75
    :pswitch_1f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getSpeedLimitWarningSwitch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 115
    :pswitch_20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getIcmConnectionState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getRearFogLamp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 101
    :pswitch_22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getRadarWarningVoiceStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 85
    :pswitch_23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getLastChargeMileage(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 151
    :pswitch_24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getNgpMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 103
    :pswitch_25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getEnergyRecycleLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getATWSState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 69
    :pswitch_27
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getDrivingMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 125
    :pswitch_28
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->isCarTrip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getWindowsState(Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_2a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getDriveAutoLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 87
    :pswitch_2b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getLastStartUpMileage(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_2c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getDoorsState(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 139
    :pswitch_2d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getWindowLockStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_2e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getRearSeatBeltWarning(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 113
    :pswitch_2f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getCarSpeed(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 91
    :pswitch_30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getIntelligentSpeedLimit(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_31
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getDoorLockState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_32
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getInternalLight(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 137
    :pswitch_33
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getLCCStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 143
    :pswitch_34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getCruiseControlStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_35
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getSeatErrorState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 73
    :pswitch_36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getIcmAlarmVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 145
    :pswitch_37
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getSystemFaultWarnLampStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 129
    :pswitch_38
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getTirePressureAll(Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object p1

    return-object p1

    .line 127
    :pswitch_39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getWiperInterval(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 97
    :pswitch_3a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getLaneDepartureWarning(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 133
    :pswitch_3b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getAllTireTemperatureWarnings(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_3c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getTrunk(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 99
    :pswitch_3d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getBlindAreaDetectionWarning(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_3e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getHeadLampGroup(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_3f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getFarLampState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getElectricSeatBelt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_41
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getChairLocationValue(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_42
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getLightMeHome(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 89
    :pswitch_43
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carcontrol/SpeechCarControlQuery;->getFrontCollisionSecurity(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ad09015 -> :sswitch_43
        -0x75aa0935 -> :sswitch_42
        -0x745b6733 -> :sswitch_41
        -0x73b1e2a2 -> :sswitch_40
        -0x6ff008ba -> :sswitch_3f
        -0x67c7de72 -> :sswitch_3e
        -0x63311a94 -> :sswitch_3d
        -0x5f53878e -> :sswitch_3c
        -0x526d06fa -> :sswitch_3b
        -0x51fe4528 -> :sswitch_3a
        -0x5198b284 -> :sswitch_39
        -0x4cd4101a -> :sswitch_38
        -0x4a2f4997 -> :sswitch_37
        -0x4818d6e6 -> :sswitch_36
        -0x3ff86b1c -> :sswitch_35
        -0x3ce03fa6 -> :sswitch_34
        -0x3c1a2ab6 -> :sswitch_33
        -0x33e0953b -> :sswitch_32
        -0x2eddf5ed -> :sswitch_31
        -0x2b0f7da7 -> :sswitch_30
        -0x211806f8 -> :sswitch_2f
        -0x1de67b16 -> :sswitch_2e
        -0x1638f26a -> :sswitch_2d
        -0x14a80126 -> :sswitch_2c
        -0xf68e92c -> :sswitch_2b
        -0x84a40af -> :sswitch_2a
        -0x7874ae8 -> :sswitch_29
        -0x7465922 -> :sswitch_28
        -0x5256074 -> :sswitch_27
        -0x3e64bc9 -> :sswitch_26
        -0x133c536 -> :sswitch_25
        0x30f5dee -> :sswitch_24
        0x6551e82 -> :sswitch_23
        0xd5e2b8f -> :sswitch_22
        0xdfadd49 -> :sswitch_21
        0x1816d8d1 -> :sswitch_20
        0x1bba09d2 -> :sswitch_1f
        0x1bdbd6b2 -> :sswitch_1e
        0x1c3d67ab -> :sswitch_1d
        0x26040a55 -> :sswitch_1c
        0x26829936 -> :sswitch_1b
        0x2a9a8d06 -> :sswitch_1a
        0x2ac2d4c0 -> :sswitch_19
        0x2dcec77f -> :sswitch_18
        0x2e648ce6 -> :sswitch_17
        0x2f46b170 -> :sswitch_16
        0x36bea21a -> :sswitch_15
        0x4500a167 -> :sswitch_14
        0x466e3c18 -> :sswitch_13
        0x49cdfc5b -> :sswitch_12
        0x4d2fdead -> :sswitch_11
        0x4ea7cb64 -> :sswitch_10
        0x50c440df -> :sswitch_f
        0x51fd53e4 -> :sswitch_e
        0x559878e6 -> :sswitch_d
        0x59841957 -> :sswitch_c
        0x59841958 -> :sswitch_b
        0x5dd9893a -> :sswitch_a
        0x64f5103f -> :sswitch_9
        0x716ada63 -> :sswitch_8
        0x71f2a1d9 -> :sswitch_7
        0x748da0ff -> :sswitch_6
        0x76ad4dff -> :sswitch_5
        0x78607c09 -> :sswitch_4
        0x79c8c95f -> :sswitch_3
        0x7afdf28d -> :sswitch_2
        0x7e53bcb9 -> :sswitch_1
        0x7f31fee6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
