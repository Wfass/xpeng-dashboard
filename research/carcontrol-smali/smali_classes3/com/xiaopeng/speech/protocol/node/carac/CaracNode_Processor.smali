.class public Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;
.super Ljava/lang/Object;
.source "CaracNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 103

    const-string v0, "command://ac.hvac.off"

    const-string v1, "command://ac.hvac.on"

    const-string v2, "command://ac.ac.on"

    const-string v3, "command://ac.ac.off"

    const-string v4, "command://ac.auto.on"

    const-string v5, "command://ac.auto.off"

    const-string v6, "command://ac.blow.foot.on"

    const-string v7, "command://ac.blow.head.foot.on"

    const-string v8, "command://ac.blow.head.on"

    const-string v9, "command://ac.defrost.demist.front.off"

    const-string v10, "command://ac.defrost.demist.front.on"

    const-string v11, "command://ac.defrost.demist.rear.off"

    const-string v12, "command://ac.defrost.demist.rear.on"

    const-string v13, "command://ac.demist.foot.on"

    const-string v14, "command://ac.inner.off"

    const-string v15, "command://ac.inner.on"

    const-string v16, "command://ac.wind.down"

    const-string v17, "command://ac.wind.up"

    const-string v18, "command://ac.wind.set"

    const-string v19, "command://ac.mirror.rear.heat.off"

    const-string v20, "command://ac.mirror.rear.heat.on"

    const-string v21, "command://ac.temp.down"

    const-string v22, "command://ac.temp.up"

    const-string v23, "command://ac.temp.set"

    const-string v24, "command://ac.purifier.open"

    const-string v25, "command://ac.purifier.close"

    const-string v26, "command://ac.temp.driver.up"

    const-string v27, "command://ac.temp.driver.down"

    const-string v28, "command://ac.temp.driver.set"

    const-string v29, "command://ac.temp.passenger.up"

    const-string v30, "command://ac.temp.passenger.down"

    const-string v31, "command://ac.temp.passenger.set"

    const-string v32, "command://ac.temp.dual.syn"

    const-string v33, "command://ac.temp.dual.off"

    const-string v34, "command://ac.wind.max"

    const-string v35, "command://ac.wind.min"

    const-string v36, "command://ac.temp.min"

    const-string v37, "command://ac.temp.max"

    const-string v38, "command://ac.temp.driver.min"

    const-string v39, "command://ac.temp.driver.max"

    const-string v40, "command://ac.temp.passenger.min"

    const-string v41, "command://ac.temp.passenger.max"

    const-string v42, "command://ac.seat.heating.open"

    const-string v43, "command://ac.seat.heating.close"

    const-string v44, "command://ac.seat.psn.heat.open"

    const-string v45, "command://ac.seat.psn.heat.close"

    const-string v46, "command://ac.seat.heating.max"

    const-string v47, "command://ac.seat.heating.min"

    const-string v48, "command://ac.seat.heating.up"

    const-string v49, "command://ac.seat.heating.down"

    const-string v50, "command://ac.seat.ventilate.on"

    const-string v51, "command://ac.seat.ventilate.off"

    const-string v52, "command://ac.seat.ventilate.max"

    const-string v53, "command://ac.seat.ventilate.min"

    const-string v54, "command://ac.seat.ventilate.down"

    const-string v55, "command://ac.seat.ventilate.up"

    const-string v56, "command://ac.seat.ventilate.driver.set"

    const-string v57, "command://ac.seat.heat.drive.set"

    const-string v58, "command://ac.seat.heat.passenger.set"

    const-string v59, "command://ac.seat.heat.passenger.up"

    const-string v60, "command://ac.seat.heat.passenger.down"

    const-string v61, "command://ac.open.fast.fridge"

    const-string v62, "command://ac.open.fresh.air"

    const-string v63, "command://ac.exit.fast.fridge"

    const-string v64, "command://ac.exit.fresh.air"

    const-string v65, "command://ac.wind.direction.set"

    const-string v66, "command://ac.wind.unidirection"

    const-string v67, "command://ac.wind.evade"

    const-string v68, "command://ac.wind.front"

    const-string v69, "command://ac.wind.free"

    const-string v70, "command://ac.wind.auto.sweep.on"

    const-string v71, "command://ac.wind.auto.sweep.off"

    const-string v72, "command://ac.aqs.on"

    const-string v73, "command://ac.aqs.off"

    const-string v74, "command://ac.modes.eco.on"

    const-string v75, "command://ac.modes.eco.off"

    const-string v76, "command://ac.heating.on"

    const-string v77, "command://ac.heating.off"

    const-string v78, "command://ac.nature.on"

    const-string v79, "command://ac.nature.off"

    const-string v80, "command://ac.blow.window.on"

    const-string v81, "command://ac.temp.passenger.dual.syn"

    const-string v82, "command://ac.temp.passenger.dual.off"

    const-string v83, "command://card.ac.panel"

    const-string v84, "command://ac.intelligent.psn.on"

    const-string v85, "command://ac.intelligent.psn.off"

    const-string v86, "command://ac.wind.mirror.on"

    const-string v87, "command://ac.wind.mirror.off"

    const-string v88, "command://ac.wind.outlet.on"

    const-string v89, "command://ac.wind.outlet.off"

    const-string v90, "command://ac.left.rear.seat.heat.open"

    const-string v91, "command://ac.right.rear.seat.heat.open"

    const-string v92, "command://ac.left.rear.seat.heat.close"

    const-string v93, "command://ac.right.rear.seat.heat.close"

    const-string v94, "command://ac.left.rear.seat.heat.set"

    const-string v95, "command://ac.right.rear.seat.heat.set"

    const-string v96, "command://ac.left.rear.seat.heat.up"

    const-string v97, "command://ac.right.rear.seat.heat.up"

    const-string v98, "command://ac.left.rear.seat.heat.down"

    const-string v99, "command://ac.right.rear.seat.heat.down"

    const-string v100, "command://ac.blow.head.window.on"

    const-string v101, "command://ac.blow.head.window.foot.on"

    const-string v102, "command://ac.blow.head.window.off"

    .line 330
    filled-new-array/range {v0 .. v102}, [Ljava/lang/String;

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
    const-string v0, "command://ac.temp.passenger.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x66

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "command://ac.intelligent.psn.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x65

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "command://ac.blow.head.window.foot.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x64

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "command://ac.mirror.rear.heat.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x63

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "command://ac.auto.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x62

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "command://ac.seat.ventilate.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x61

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "command://ac.seat.ventilate.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x60

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "command://ac.seat.ventilate.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x5f

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "command://ac.temp.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x5e

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "command://ac.wind.mirror.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x5d

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "command://ac.seat.heating.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x5c

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "command://ac.blow.head.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x5b

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "command://ac.modes.eco.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x5a

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "command://ac.ac.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x59

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "command://ac.wind.direction.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x58

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "command://ac.hvac.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x57

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "command://ac.wind.outlet.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x56

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "command://ac.wind.auto.sweep.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x55

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "command://ac.right.rear.seat.heat.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x54

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "command://ac.right.rear.seat.heat.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x53

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "command://ac.auto.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x52

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "command://ac.right.rear.seat.heat.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x51

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "command://ac.aqs.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x50

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "command://ac.nature.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x4f

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "command://ac.right.rear.seat.heat.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x4e

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "command://ac.defrost.demist.rear.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x4d

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "command://ac.left.rear.seat.heat.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x4c

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "command://ac.temp.passenger.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x4b

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "command://ac.temp.passenger.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x4a

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "command://ac.temp.passenger.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x49

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "command://ac.blow.head.foot.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x48

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "command://ac.seat.heating.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0x47

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "command://ac.seat.heat.drive.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x46

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "command://ac.seat.heat.passenger.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x45

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "command://ac.inner.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x44

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "command://ac.heating.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0x43

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "command://ac.seat.ventilate.driver.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0x42

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "command://ac.blow.window.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0x41

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "command://ac.temp.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v1, 0x40

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "command://ac.seat.ventilate.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0x3f

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "command://ac.temp.passenger.dual.syn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v1, 0x3e

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "command://ac.temp.passenger.dual.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v1, 0x3d

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "command://ac.temp.driver.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0x3c

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "command://ac.seat.heating.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v1, 0x3b

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "command://ac.seat.heating.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v1, 0x3a

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "command://ac.exit.fresh.air"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v1, 0x39

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "command://ac.wind.front"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v1, 0x38

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "command://ac.wind.evade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v1, 0x37

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "command://ac.mirror.rear.heat.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v1, 0x36

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "command://ac.defrost.demist.front.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v1, 0x35

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "command://ac.left.rear.seat.heat.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v1, 0x34

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "command://ac.left.rear.seat.heat.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v1, 0x33

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "command://ac.blow.foot.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v1, 0x32

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "command://ac.seat.ventilate.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v1, 0x31

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "command://ac.seat.ventilate.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v1, 0x30

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "command://ac.seat.psn.heat.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v1, 0x2f

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "command://ac.purifier.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v1, 0x2e

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "command://ac.temp.driver.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "command://ac.temp.driver.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "command://ac.temp.driver.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "command://ac.defrost.demist.rear.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "command://ac.blow.head.window.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "command://ac.wind.mirror.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "command://ac.aqs.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "command://ac.ac.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "command://ac.heating.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "command://ac.wind.free"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "command://ac.wind.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "command://ac.open.fresh.air"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "command://ac.defrost.demist.front.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "command://ac.inner.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "command://ac.wind.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "command://ac.wind.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "command://ac.wind.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "command://ac.seat.psn.heat.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_4b
    const-string v0, "command://ac.nature.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "command://ac.purifier.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_4d
    const-string v0, "command://ac.wind.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_4e
    const-string v0, "command://ac.demist.foot.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "command://ac.temp.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "command://ac.temp.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "command://ac.temp.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "command://ac.hvac.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_53
    const-string v0, "command://ac.left.rear.seat.heat.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_54
    const-string v0, "command://ac.seat.heat.passenger.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_55
    const-string v0, "command://ac.wind.outlet.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_56
    const-string v0, "command://ac.seat.heat.passenger.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_57
    const-string v0, "command://ac.intelligent.psn.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_58
    const-string v0, "command://ac.exit.fast.fridge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_59
    const-string v0, "command://ac.wind.unidirection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_5a
    const-string v0, "command://ac.blow.head.window.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_5b
    const-string v0, "command://card.ac.panel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_5c
    const-string v0, "command://ac.wind.auto.sweep.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_5d
    const-string v0, "command://ac.seat.heating.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_5e
    const-string v0, "command://ac.seat.heating.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5f
    const-string v0, "command://ac.left.rear.seat.heat.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_0

    :cond_5f
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_60
    const-string v0, "command://ac.right.rear.seat.heat.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto :goto_0

    :cond_60
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_61
    const-string v0, "command://ac.open.fast.fridge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_0

    :cond_61
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_62
    const-string v0, "command://ac.temp.driver.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_0

    :cond_62
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_63
    const-string v0, "command://ac.temp.dual.syn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto :goto_0

    :cond_63
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_64
    const-string v0, "command://ac.temp.dual.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_0

    :cond_64
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_65
    const-string v0, "command://ac.modes.eco.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_0

    :cond_65
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_66
    const-string v0, "command://ac.temp.passenger.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_0

    :cond_66
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempPassengerDown(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 271
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->closeIntelligentPsn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 319
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onHeadWindowFootOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 73
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onRearHeatOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 31
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onAutoOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 169
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatVentilateOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 175
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatVentilateMin(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 172
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatVentilateMax(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 79
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempDown(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 277
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onMirrorOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 145
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatHeatingClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 40
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onBlowHeadOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 241
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onModesEcoOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 22
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onAcOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 211
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindUnidirectionSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onHvacOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 280
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindOutletOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 226
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindAutoSweepOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 289
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onRightRearSeatHeatingOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 313
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onRightRearSeatHeatDown(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 28
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onAutoOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 307
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onRightRearSeatHeatUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 235
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onAqsOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 253
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onNatureOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 301
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onRightRearSeatHeatSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 52
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onDemistRearOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 304
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onLeftRearSeatHeatUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 109
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempPassengerSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 136
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempPassengerMin(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 139
    :pswitch_1d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempPassengerMax(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 37
    :pswitch_1e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onHeadFootOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 160
    :pswitch_1f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatHeatingUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 187
    :pswitch_20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatHeatDriverSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 196
    :pswitch_21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatHeatPassengerDown(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 61
    :pswitch_22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onInnerOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 247
    :pswitch_23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onHeatingOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 184
    :pswitch_24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatVentilateDriverSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 256
    :pswitch_25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindowOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 82
    :pswitch_26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 178
    :pswitch_27
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatVentilateDown(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 259
    :pswitch_28
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onPsnTempSynOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 262
    :pswitch_29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onPsnTempSynOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 94
    :pswitch_2a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempDriverUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 157
    :pswitch_2b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatHeatingMin(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 154
    :pswitch_2c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatHeatingMax(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 208
    :pswitch_2d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onExitFreshAir(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 220
    :pswitch_2e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindFront(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 217
    :pswitch_2f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindEvad(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 76
    :pswitch_30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onRearHeatOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 43
    :pswitch_31
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onDemistFrontOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    :pswitch_32
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onLeftRearSeatHeatingOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 310
    :pswitch_33
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onLeftRearSeatHeatDown(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 34
    :pswitch_34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onBlowFootOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 181
    :pswitch_35
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatVentilateUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 166
    :pswitch_36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatVentilateOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 148
    :pswitch_37
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatPsnHeatingOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :pswitch_38
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onPurifierClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 100
    :pswitch_39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempDriverSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 130
    :pswitch_3a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempDriveMin(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 133
    :pswitch_3b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempDriveMax(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 49
    :pswitch_3c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onDemistRearOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 316
    :pswitch_3d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onHeadWindowOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 274
    :pswitch_3e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onMirrorOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 232
    :pswitch_3f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onAqsOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 25
    :pswitch_40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onAcOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 244
    :pswitch_41
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onHeatingOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 223
    :pswitch_42
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindFree(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 64
    :pswitch_43
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindDown(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 202
    :pswitch_44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onOpenFreshAir(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 46
    :pswitch_45
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onDemistFrontOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 58
    :pswitch_46
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onInnerOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 70
    :pswitch_47
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 121
    :pswitch_48
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindMin(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 118
    :pswitch_49
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindMax(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 151
    :pswitch_4a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatPsnHeatingClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 250
    :pswitch_4b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onNatureOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 88
    :pswitch_4c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onPurifierOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 67
    :pswitch_4d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 55
    :pswitch_4e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onDemistFootOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 85
    :pswitch_4f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    :pswitch_50
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempMin(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 127
    :pswitch_51
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempMax(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 19
    :pswitch_52
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onHvacOn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 292
    :pswitch_53
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onLeftRearSeatHeatingClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 190
    :pswitch_54
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatHeatPassengerSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 283
    :pswitch_55
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindOutletOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :pswitch_56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatHeatPassengerUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 268
    :pswitch_57
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->openIntelligentPsn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :pswitch_58
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onExitFastFridge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :pswitch_59
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindUnindirection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 322
    :pswitch_5a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onHeadWindowOff(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :pswitch_5b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onHvacPanelOn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 229
    :pswitch_5c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onWindAutoSweepOff(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :pswitch_5d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatHeatingOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :pswitch_5e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onSeatHeatingDown(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 298
    :pswitch_5f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onLeftRearSeatHeatSet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 295
    :pswitch_60
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onRightRearSeatHeatingClose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :pswitch_61
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onOpenFastFridge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :pswitch_62
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempDriverDown(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :pswitch_63
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempDualSyn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :pswitch_64
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempDualOff(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :pswitch_65
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onModesEcoOn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :pswitch_66
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/carac/CaracNode;->onTempPassengerUp(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a248394 -> :sswitch_66
        -0x790eac29 -> :sswitch_65
        -0x7712b486 -> :sswitch_64
        -0x7712a32d -> :sswitch_63
        -0x7629e8f5 -> :sswitch_62
        -0x6fe7b250 -> :sswitch_61
        -0x688c3878 -> :sswitch_60
        -0x62e54a73 -> :sswitch_5f
        -0x6007dd76 -> :sswitch_5e
        -0x6002dbce -> :sswitch_5d
        -0x5aa6c009 -> :sswitch_5c
        -0x592681b9 -> :sswitch_5b
        -0x57e52200 -> :sswitch_5a
        -0x539b9328 -> :sswitch_59
        -0x5235bd7c -> :sswitch_58
        -0x4651cc8a -> :sswitch_57
        -0x4425723f -> :sswitch_56
        -0x43191569 -> :sswitch_55
        -0x4088de04 -> :sswitch_54
        -0x3f9ac79d -> :sswitch_53
        -0x3f765d40 -> :sswitch_52
        -0x3edfcf39 -> :sswitch_51
        -0x3edfce4b -> :sswitch_50
        -0x3edfb83b -> :sswitch_4f
        -0x3d8f3ed4 -> :sswitch_4e
        -0x3b703ddc -> :sswitch_4d
        -0x39de5d11 -> :sswitch_4c
        -0x37abb057 -> :sswitch_4b
        -0x35c91617 -> :sswitch_4a
        -0x32979d05 -> :sswitch_49
        -0x32979c17 -> :sswitch_48
        -0x32978607 -> :sswitch_47
        -0x2f5d8f06 -> :sswitch_46
        -0x28eff874 -> :sswitch_45
        -0x28ca2f5d -> :sswitch_44
        -0x205fe615 -> :sswitch_43
        -0x205ef44b -> :sswitch_42
        -0x1fd1a968 -> :sswitch_41
        -0x1fa4daa0 -> :sswitch_40
        -0x1ec126d9 -> :sswitch_3f
        -0x15afcd3b -> :sswitch_3e
        -0x1359f8d2 -> :sswitch_3d
        -0x11dd3a13 -> :sswitch_3c
        -0xc11be25 -> :sswitch_3b
        -0xc11bd37 -> :sswitch_3a
        -0xc11a727 -> :sswitch_39
        -0x2980a0d -> :sswitch_38
        -0x1b6a7c7 -> :sswitch_37
        0x33a4ebf -> :sswitch_36
        0x33a4f7b -> :sswitch_35
        0x4007f20 -> :sswitch_34
        0x63550d7 -> :sswitch_33
        0x63a527f -> :sswitch_32
        0xaf0e962 -> :sswitch_31
        0x143fd185 -> :sswitch_30
        0x14741628 -> :sswitch_2f
        0x14809200 -> :sswitch_2e
        0x14c6ea77 -> :sswitch_2d
        0x15ad4a7c -> :sswitch_2c
        0x15ad4b6a -> :sswitch_2b
        0x18628744 -> :sswitch_2a
        0x19893e0e -> :sswitch_29
        0x19894f67 -> :sswitch_28
        0x1ddcad82 -> :sswitch_27
        0x1f010ad8 -> :sswitch_26
        0x22847c1e -> :sswitch_25
        0x24364a7c -> :sswitch_24
        0x259c7bd6 -> :sswitch_23
        0x27c32cf4 -> :sswitch_22
        0x2f667248 -> :sswitch_21
        0x30a615ec -> :sswitch_20
        0x323f6683 -> :sswitch_1f
        0x34298e30 -> :sswitch_1e
        0x3593f1b3 -> :sswitch_1d
        0x3593f2a1 -> :sswitch_1c
        0x359408b1 -> :sswitch_1b
        0x369dc410 -> :sswitch_1a
        0x393aeda1 -> :sswitch_19
        0x3c5cc9f2 -> :sswitch_18
        0x4235a4e5 -> :sswitch_17
        0x469c4b27 -> :sswitch_16
        0x4c450f0b -> :sswitch_15
        0x4d9a5e61 -> :sswitch_14
        0x4f35c912 -> :sswitch_13
        0x4f3acaba -> :sswitch_12
        0x4fa80a57 -> :sswitch_11
        0x506a8bb7 -> :sswitch_10
        0x50aab4ae -> :sswitch_f
        0x511cc24a -> :sswitch_e
        0x518f53ce -> :sswitch_d
        0x57392677 -> :sswitch_c
        0x5beff06e -> :sswitch_b
        0x5efc9d10 -> :sswitch_a
        0x5fb62549 -> :sswitch_9
        0x62e2059f -> :sswitch_8
        0x640f8084 -> :sswitch_7
        0x640f8172 -> :sswitch_6
        0x640f888f -> :sswitch_5
        0x65b16d2d -> :sswitch_4
        0x73ba5e89 -> :sswitch_3
        0x7773af70 -> :sswitch_2
        0x7c183ab8 -> :sswitch_1
        0x7ce66233 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
