.class public Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;
.super Ljava/lang/Object;
.source "CarcontrolNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 109

    const-string v0, "command://control.light.home.off"

    const-string v1, "command://control.light.home.on"

    const-string v2, "command://control.light.low.off"

    const-string v3, "command://control.light.low.on"

    const-string v4, "command://control.light.position.on"

    const-string v5, "command://control.light.position.off"

    const-string v6, "command://control.light.auto.on"

    const-string v7, "command://control.light.auto.off"

    const-string v8, "command://control.rear.mist.light.off"

    const-string v9, "command://control.rear.mist.light.on"

    const-string v10, "command://control.mirror.rear.close"

    const-string v11, "command://control.mirror.rear.on"

    const-string v12, "command://control.trunk.open"

    const-string v13, "command://control.window.driver.close"

    const-string v14, "command://control.window.driver.open"

    const-string v15, "command://control.window.passenger.close"

    const-string v16, "command://control.window.passenger.open"

    const-string v17, "command://control.windows.close"

    const-string v18, "command://control.windows.open"

    const-string v19, "command://control.trunk.close"

    const-string v20, "command://control.windows.ventilate.on"

    const-string v21, "command://control.windows.ventilate.off"

    const-string v22, "command://control.modes.driving.sport"

    const-string v23, "command://control.modes.driving.conservation"

    const-string v24, "command://control.modes.driving.normal"

    const-string v25, "command://control.modes.steering.soft"

    const-string v26, "command://control.modes.steering.normal"

    const-string v27, "command://control.modes.steering.sport"

    const-string v28, "command://control.energy.recycle.high"

    const-string v29, "command://control.energy.recycle.low"

    const-string v30, "command://control.energy.recycle.medium"

    const-string v31, "command://control.energy.recycle.up"

    const-string v32, "command://control.energy.recycle.down"

    const-string v33, "command://control.window.right.rear.open"

    const-string v34, "command://control.window.right.rear.close"

    const-string v35, "command://control.window.left.rear.open"

    const-string v36, "command://control.window.left.rear.close"

    const-string v37, "command://control.window.front.open"

    const-string v38, "command://control.window.front.close"

    const-string v39, "command://control.window.rear.open"

    const-string v40, "command://control.window.rear.close"

    const-string v41, "command://control.seat.move.up"

    const-string v42, "command://control.seat.move.down"

    const-string v43, "command://control.seat.move.highest"

    const-string v44, "command://control.seat.move.lowest"

    const-string v45, "command://control.seat.move.back"

    const-string v46, "command://control.seat.move.forward"

    const-string v47, "command://control.seat.move.rear"

    const-string v48, "command://control.seat.move.foremost"

    const-string v49, "command://control.seat.backrest.move.back"

    const-string v50, "command://control.seat.backrest.move.forward"

    const-string v51, "command://control.seat.backrest.move.rear"

    const-string v52, "command://control.seat.backrest.move.foremost"

    const-string v53, "command://control.seat.adjust"

    const-string v54, "command://control.light.resume"

    const-string v55, "command://control.seat.resume"

    const-string v56, "command://control.low.volume.on"

    const-string v57, "command://control.low.volume.off"

    const-string v58, "command://control.light.atmosphere.on"

    const-string v59, "command://control.light.atmosphere.off"

    const-string v60, "command://control.mirror.rear.set"

    const-string v61, "command://control.wiper.speed.up"

    const-string v62, "command://control.wiper.speed.down"

    const-string v63, "command://control.wiper.slow"

    const-string v64, "command://control.wiper.high"

    const-string v65, "command://control.wiper.medium"

    const-string v66, "command://control.wiper.superhigh"

    const-string v67, "command://control.trunk.unlock"

    const-string v68, "command://control.window.left.close"

    const-string v69, "command://control.window.left.open"

    const-string v70, "command://control.window.right.close"

    const-string v71, "command://control.window.right.open"

    const-string v72, "command://control.leg.up"

    const-string v73, "command://control.leg.down"

    const-string v74, "command://control.leg.highest"

    const-string v75, "command://control.leg.lowest"

    const-string v76, "command://control.seat.restore"

    const-string v77, "command://charge.direct.port.on"

    const-string v78, "command://charge.direct.port.off"

    const-string v79, "command://charge.alternating.port.off"

    const-string v80, "command://charge.alternating.port.on"

    const-string v81, "command://control.query.tire.pressure"

    const-string v82, "command://control.light.atmosphere.color"

    const-string v83, "command://control.light.atmosphere.brightness.set"

    const-string v84, "command://control.light.atmosphere.brightness.up"

    const-string v85, "command://control.light.atmosphere.brightness.down"

    const-string v86, "command://control.light.atmosphere.brightness.max"

    const-string v87, "command://control.light.atmosphere.brightness.min"

    const-string v88, "command://control.psn.seat.move.up"

    const-string v89, "command://control.psn.seat.move.down"

    const-string v90, "command://control.psn.seat.backrest.move.back"

    const-string v91, "command://control.psn.seat.backrest.move.forward"

    const-string v92, "command://control.psn.seat.move.back"

    const-string v93, "command://control.psn.seat.move.forward"

    const-string v94, "command://control.xpedal.on"

    const-string v95, "command://control.xpedal.off"

    const-string v96, "command://control.scissor.left.door.on"

    const-string v97, "command://control.scissor.right.door.on"

    const-string v98, "command://control.scissor.left.door.off"

    const-string v99, "command://control.scissor.right.door.off"

    const-string v100, "command://control.scissor.left.door.pause"

    const-string v101, "command://control.scissor.right.door.pause"

    const-string v102, "command://control.electric.curtain.open"

    const-string v103, "command://control.electric.curtain.close"

    const-string v104, "command://control.comfortable.driving.mode.open"

    const-string v105, "command://control.comfortable.driving.mode.close"

    const-string v106, "command://control.light.language.on"

    const-string v107, "command://control.light.language.off"

    const-string v108, "command://control.capsule.universal.set"

    .line 348
    filled-new-array/range {v0 .. v108}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "command://control.window.front.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x6c

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "command://control.modes.driving.normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x6b

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "command://control.mirror.rear.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x6a

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "command://control.modes.steering.soft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x69

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "command://control.psn.seat.move.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x68

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "command://control.psn.seat.move.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x67

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "command://control.modes.steering.sport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x66

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "command://control.light.auto.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x65

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "command://control.xpedal.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x64

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "command://control.xpedal.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x63

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "command://control.window.left.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x62

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "command://control.window.right.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x61

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "command://control.light.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x60

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "command://control.windows.ventilate.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x5f

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "command://control.trunk.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x5e

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "command://control.seat.move.lowest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x5d

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "command://charge.alternating.port.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x5c

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "command://control.light.low.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x5b

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "command://control.leg.lowest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x5a

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "command://control.windows.ventilate.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x59

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "command://control.light.atmosphere.color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x58

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "command://control.window.right.rear.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x57

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "command://control.electric.curtain.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x56

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "command://control.seat.move.highest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x55

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "command://control.energy.recycle.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x54

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "command://control.window.right.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x53

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "command://control.seat.backrest.move.foremost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x52

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "command://control.wiper.slow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x51

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "command://control.wiper.high"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x50

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "command://control.scissor.right.door.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x4f

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "command://control.scissor.left.door.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x4e

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "command://control.comfortable.driving.mode.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0x4d

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "command://control.window.left.rear.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x4c

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "command://control.electric.curtain.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x4b

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "command://control.energy.recycle.medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x4a

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "command://control.seat.move.rear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0x49

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "command://control.seat.move.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0x48

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "command://control.seat.move.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0x47

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "command://control.light.atmosphere.brightness.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v1, 0x46

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "command://control.comfortable.driving.mode.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0x45

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "command://control.windows.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v1, 0x44

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "command://control.windows.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v1, 0x43

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "command://control.window.left.rear.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0x42

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "command://control.window.rear.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v1, 0x41

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "command://control.seat.move.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v1, 0x40

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "command://control.psn.seat.backrest.move.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v1, 0x3f

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "command://control.window.passenger.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v1, 0x3e

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "command://control.window.front.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v1, 0x3d

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "command://control.trunk.unlock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v1, 0x3c

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "command://control.light.language.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v1, 0x3b

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "command://control.wiper.superhigh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v1, 0x3a

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "command://control.light.home.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v1, 0x39

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "command://control.seat.restore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v1, 0x38

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "command://control.leg.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v1, 0x37

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "command://charge.direct.port.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v1, 0x36

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "command://control.modes.steering.normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v1, 0x35

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "command://control.window.driver.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v1, 0x34

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "command://control.light.home.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v1, 0x33

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "command://control.modes.driving.sport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v1, 0x32

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "command://control.energy.recycle.high"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v1, 0x31

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "command://control.energy.recycle.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v1, 0x30

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "command://control.trunk.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v1, 0x2f

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "command://charge.alternating.port.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v1, 0x2e

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "command://control.window.driver.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "command://control.wiper.speed.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "command://control.scissor.left.door.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "command://control.psn.seat.backrest.move.forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "command://control.light.low.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "command://control.seat.move.forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "command://control.modes.driving.conservation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "command://control.light.position.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "command://control.light.atmosphere.brightness.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "command://control.light.atmosphere.brightness.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "command://control.light.atmosphere.brightness.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "command://control.window.rear.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_4b
    const-string v0, "command://control.window.left.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "command://control.scissor.right.door.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_4d
    const-string v0, "command://control.window.right.rear.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_4e
    const-string v0, "command://control.seat.backrest.move.rear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "command://control.seat.backrest.move.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "command://control.low.volume.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "command://control.wiper.medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "command://control.scissor.right.door.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_53
    const-string v0, "command://control.leg.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_54
    const-string v0, "command://control.rear.mist.light.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_55
    const-string v0, "command://control.light.atmosphere.brightness.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_56
    const-string v0, "command://control.rear.mist.light.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_57
    const-string v0, "command://control.mirror.rear.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_58
    const-string v0, "command://control.light.auto.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_59
    const-string v0, "command://control.seat.backrest.move.forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_5a
    const-string v0, "command://control.psn.seat.move.forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_5b
    const-string v0, "command://control.seat.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_5c
    const-string v0, "command://control.light.atmosphere.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_5d
    const-string v0, "command://control.seat.move.foremost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_5e
    const-string v0, "command://control.capsule.universal.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_5f
    const-string v0, "command://control.light.language.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_60
    const-string v0, "command://control.energy.recycle.low"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_61
    const-string v0, "command://control.query.tire.pressure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_62
    const-string v0, "command://control.low.volume.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_63
    const-string v0, "command://control.light.atmosphere.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_64
    const-string v0, "command://control.scissor.left.door.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_65
    const-string v0, "command://control.wiper.speed.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_0

    :cond_65
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_66
    const-string v0, "command://control.leg.highest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_0

    :cond_66
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_67
    const-string v0, "command://control.light.position.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_0

    :cond_67
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_68
    const-string v0, "command://control.mirror.rear.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto :goto_0

    :cond_68
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_69
    const-string v0, "command://charge.direct.port.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_0

    :cond_69
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6a
    const-string v0, "command://control.seat.adjust"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_0

    :cond_6a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6b
    const-string v0, "command://control.window.passenger.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_0

    :cond_6b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6c
    const-string v0, "command://control.psn.seat.move.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto :goto_0

    :cond_6c
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowFrontOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onModesDrivingNormal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onMirrorRearSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onModesSteeringSoft(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 283
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onPsnSeatMoveDown()V

    goto/16 :goto_1

    .line 292
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onPsnSeatMoveBack()V

    goto/16 :goto_1

    .line 97
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onModesSteeringSport(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 37
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightAutoOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 298
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlXpedalOn()V

    goto/16 :goto_1

    .line 301
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlXpedalOff()V

    goto/16 :goto_1

    .line 223
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowsLeftOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 226
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowsRightClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 178
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlLightResume(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 79
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowsVentilateOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 52
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onTrunkOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 148
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatMoveLowest(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 256
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLeftChargePortOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 25
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightLowOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 241
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLegLowest(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 76
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowsVentilateOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 262
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightAtmosphereColor(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 115
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowRightRearOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 325
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlElectricCurtainClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 145
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatMoveHighest(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 109
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onEnergyRecycleUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 229
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowsRightOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 172
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatBackrestForemost(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWiperSlow(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 208
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWiperHigh(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 319
    :pswitch_1d
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlScissorRightDoorPause()V

    goto/16 :goto_1

    .line 304
    :pswitch_1e
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlScissorLeftDoorOn()V

    goto/16 :goto_1

    .line 331
    :pswitch_1f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlComfortableDrivingModeClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    :pswitch_20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowLeftRearClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 322
    :pswitch_21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlElectricCurtainOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 106
    :pswitch_22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onEnergyRecycleMedia(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 157
    :pswitch_23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatMoveRear(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 142
    :pswitch_24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatMoveDown(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 151
    :pswitch_25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatMoveBack(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 271
    :pswitch_26
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightAtmosphereBrightnessDown()V

    goto/16 :goto_1

    .line 328
    :pswitch_27
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlComfortableDrivingModeOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 70
    :pswitch_28
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowsOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 67
    :pswitch_29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowsClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 121
    :pswitch_2a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowLeftRearOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 136
    :pswitch_2b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowRearClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 139
    :pswitch_2c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatMoveUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    :pswitch_2d
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onPsnSeatBackrestBack()V

    goto/16 :goto_1

    .line 61
    :pswitch_2e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowPassengerClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 130
    :pswitch_2f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowFrontClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 217
    :pswitch_30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onTrunkUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 337
    :pswitch_31
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlLightLanguageOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 214
    :pswitch_32
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWiperSuperhigh(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 19
    :pswitch_33
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightHomeOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 244
    :pswitch_34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatRestore(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 232
    :pswitch_35
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLegUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 250
    :pswitch_36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onRightChargePortClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 94
    :pswitch_37
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onModesSteeringNormal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 58
    :pswitch_38
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowDriverOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :pswitch_39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightHomeOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 82
    :pswitch_3a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onModesDrivingSport(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 100
    :pswitch_3b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onEnergyRecycleHigh(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 112
    :pswitch_3c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onEnergyRecycleDown(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 73
    :pswitch_3d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onTrunkClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 253
    :pswitch_3e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLeftChargePortClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 55
    :pswitch_3f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowDriverClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 199
    :pswitch_40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWiperSpeedUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 316
    :pswitch_41
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlScissorLeftDoorPause()V

    goto/16 :goto_1

    .line 289
    :pswitch_42
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onPsnSeatBackrestForward()V

    goto/16 :goto_1

    .line 22
    :pswitch_43
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightLowOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 154
    :pswitch_44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatMoveForward(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 85
    :pswitch_45
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onModesDrivingConservation(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 28
    :pswitch_46
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightPositionOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 265
    :pswitch_47
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightAtmosphereBrightnessSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 277
    :pswitch_48
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightAtmosphereBrightnessMin()V

    goto/16 :goto_1

    .line 274
    :pswitch_49
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightAtmosphereBrightnessMax()V

    goto/16 :goto_1

    .line 133
    :pswitch_4a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowRearOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 220
    :pswitch_4b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowsLeftClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 307
    :pswitch_4c
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlScissorRightDoorOn()V

    goto/16 :goto_1

    .line 118
    :pswitch_4d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowRightRearClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 169
    :pswitch_4e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatBackrestRear(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    :pswitch_4f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatBackrestBack(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 187
    :pswitch_50
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLowVolumeOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 211
    :pswitch_51
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWiperMedium(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 313
    :pswitch_52
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlScissorRightDoorOff()V

    goto/16 :goto_1

    .line 235
    :pswitch_53
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLegDown(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 40
    :pswitch_54
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onMistLightOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 268
    :pswitch_55
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightAtmosphereBrightnessUp()V

    goto/16 :goto_1

    .line 43
    :pswitch_56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onMistLightOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 49
    :pswitch_57
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onMirrorRearOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 34
    :pswitch_58
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightAutoOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 166
    :pswitch_59
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatBackrestForward(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 295
    :pswitch_5a
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onPsnSeatMoveForward()V

    goto/16 :goto_1

    .line 181
    :pswitch_5b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlSeatResume(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :pswitch_5c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightAtmosphereOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 160
    :pswitch_5d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatMoveForemost(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :pswitch_5e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->setCapsuleUniversal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 334
    :pswitch_5f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlLightLanguageOn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :pswitch_60
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onEnergyRecycleLow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 259
    :pswitch_61
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onTirePressureShow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :pswitch_62
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLowVolumeOn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :pswitch_63
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightAtmosphereOn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 310
    :pswitch_64
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onControlScissorLeftDoorOff()V

    goto :goto_1

    .line 202
    :pswitch_65
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWiperSpeedDown(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :pswitch_66
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLegHighest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :pswitch_67
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onLightPositionOff(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :pswitch_68
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onMirrorRearClose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :pswitch_69
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onRightChargePortOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :pswitch_6a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onSeatAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :pswitch_6b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onWindowPassengerOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 280
    :pswitch_6c
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->onPsnSeatMoveUp()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e695aee -> :sswitch_6c
        -0x7b2dbb04 -> :sswitch_6b
        -0x776a9c48 -> :sswitch_6a
        -0x732a9d2e -> :sswitch_69
        -0x7248d523 -> :sswitch_68
        -0x70223b1e -> :sswitch_67
        -0x6da9d71c -> :sswitch_66
        -0x6964ed74 -> :sswitch_65
        -0x6695813c -> :sswitch_64
        -0x6608688d -> :sswitch_63
        -0x653830c7 -> :sswitch_62
        -0x63e38c7b -> :sswitch_61
        -0x639a3d0d -> :sswitch_60
        -0x628b2083 -> :sswitch_5f
        -0x5fc633a2 -> :sswitch_5e
        -0x5fbe808d -> :sswitch_5d
        -0x5b04a9a5 -> :sswitch_5c
        -0x5a560baa -> :sswitch_5b
        -0x5a349152 -> :sswitch_5a
        -0x591277ce -> :sswitch_59
        -0x573c3a3a -> :sswitch_58
        -0x56ec8ce6 -> :sswitch_57
        -0x5548b362 -> :sswitch_56
        -0x53dfacbc -> :sswitch_55
        -0x53cdb970 -> :sswitch_54
        -0x51f8eb9e -> :sswitch_53
        -0x4c67ad0d -> :sswitch_52
        -0x46450668 -> :sswitch_51
        -0x41cde8ab -> :sswitch_50
        -0x3d2b3166 -> :sswitch_4f
        -0x3d23dca9 -> :sswitch_4e
        -0x39ba0962 -> :sswitch_4d
        -0x34035825 -> :sswitch_4c
        -0x2f42edd1 -> :sswitch_4b
        -0x2874304a -> :sswitch_4a
        -0x28160a25 -> :sswitch_49
        -0x28160937 -> :sswitch_48
        -0x2815f327 -> :sswitch_47
        -0x24a643f4 -> :sswitch_46
        -0x1e6293fe -> :sswitch_45
        -0x1bd4d8ef -> :sswitch_44
        -0x1b8714e3 -> :sswitch_43
        -0x17487ecb -> :sswitch_42
        -0x172e09f5 -> :sswitch_41
        -0x127d90fb -> :sswitch_40
        -0x126411f0 -> :sswitch_3f
        -0x122da2fc -> :sswitch_3e
        -0x10f1daa2 -> :sswitch_3d
        -0xfb1071d -> :sswitch_3c
        -0xfaf4e1d -> :sswitch_3b
        -0x407ab91 -> :sswitch_3a
        -0x3070e68 -> :sswitch_39
        0x7afb332 -> :sswitch_38
        0xa190e66 -> :sswitch_37
        0xdd6f6dc -> :sswitch_36
        0xe90ee5b -> :sswitch_35
        0xf942b85 -> :sswitch_34
        0x106b2096 -> :sswitch_33
        0x10f5569a -> :sswitch_32
        0x11270f91 -> :sswitch_31
        0x1188849e -> :sswitch_30
        0x1467b8d5 -> :sswitch_2f
        0x14cb9586 -> :sswitch_2e
        0x18162c77 -> :sswitch_2d
        0x1847facf -> :sswitch_2c
        0x1943620c -> :sswitch_2b
        0x1a35ad0b -> :sswitch_2a
        0x2177eaed -> :sswitch_29
        0x222226b5 -> :sswitch_28
        0x2283bba6 -> :sswitch_27
        0x2550e30b -> :sswitch_26
        0x262bb41b -> :sswitch_25
        0x262cd3d6 -> :sswitch_24
        0x263308d8 -> :sswitch_23
        0x273a5776 -> :sswitch_22
        0x2b960d77 -> :sswitch_21
        0x2bd52f57 -> :sswitch_20
        0x2d48f41c -> :sswitch_1f
        0x2e3d3dea -> :sswitch_1e
        0x2edb7a7a -> :sswitch_1d
        0x31777485 -> :sswitch_1c
        0x317c80e4 -> :sswitch_1b
        0x35cb4272 -> :sswitch_1a
        0x3d2797ba -> :sswitch_19
        0x3ed9ff1c -> :sswitch_18
        0x4318c4f0 -> :sswitch_17
        0x4680dc6b -> :sswitch_16
        0x487b60e4 -> :sswitch_15
        0x52da4d4f -> :sswitch_14
        0x55c9d2be -> :sswitch_13
        0x563a3572 -> :sswitch_12
        0x59f36271 -> :sswitch_11
        0x5a4097aa -> :sswitch_10
        0x5bede7e6 -> :sswitch_f
        0x62925a24 -> :sswitch_e
        0x63708470 -> :sswitch_d
        0x63a2c3e5 -> :sswitch_c
        0x67209a88 -> :sswitch_b
        0x69da0f33 -> :sswitch_a
        0x6e59cd63 -> :sswitch_9
        0x6eea1f6b -> :sswitch_8
        0x6fb4f268 -> :sswitch_7
        0x74372a15 -> :sswitch_6
        0x7678d99e -> :sswitch_5
        0x7679f959 -> :sswitch_4
        0x775c9969 -> :sswitch_3
        0x795afe87 -> :sswitch_2
        0x7a7d2f4c -> :sswitch_1
        0x7c8cfbcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
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
