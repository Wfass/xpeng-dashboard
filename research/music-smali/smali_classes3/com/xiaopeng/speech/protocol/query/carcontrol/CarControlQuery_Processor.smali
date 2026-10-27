.class public Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;
.super Ljava/lang/Object;
.source "CarControlQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "carcontrol.trunk.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "control.lamp.signal.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "control.scissor.door.left.open.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "control.is.tairpressure.normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "control.scissor.door.right.close.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "carcontrol.get.psn.support.seat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "carcontrol.get.close.trunk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "charge.alternating.port.on.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "carcontrol.support.energy.recycle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "control.support.light.atmosphere"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "control.electric.curtain.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "control.low.speed.analog.sound.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "control.scissor.door.right.open.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "charge.direct.port.off.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "control.control.steering.mode.adjustable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "control.mirror.rear.set.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "charge.alternating.port.off.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "charge.alternating.port.off.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "carcontrol.mirror.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "carcontrol.get.window.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "carcontrol.support.driving.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "control.get.windows.state.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "charge.direct.port.on.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v0, "xpu.ngp.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "control.xpedal.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "charge.alternating.port.on.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "control.vip.chair.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "charge.direct.port.off.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "control.trunk.unlock.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "carcontrol.support.close.mirror"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "control.light.atmosphere.brightness.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "carcontrol.get.open.trunk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "control.scissor.door.left.close.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "charge.direct.port.on.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "carcontrol.set.speech.wakeup.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "control.capsule.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "carcontrol.support.energy.recycle.reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "carcontrol.get.support.seat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_26
    const-string v0, "control.wiper.current.level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_27
    const-string v0, "control.scissor.door.right.running.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto :goto_1

    :sswitch_28
    const-string v0, "carcontrol.extra.trunk.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_1

    :sswitch_29
    const-string v0, "control.leg.height.get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_2a
    const-string v0, "control.light.atmosphere.color.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_2b
    const-string v0, "control.scissor.door.left.running.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto :goto_1

    :sswitch_2c
    const-string v0, "gui.page.open.carcontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_2d
    const-string v0, "control.comfortable.driving.mode.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->U(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->T(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->S(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 101
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->R(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 99
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 97
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->P(Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object p1

    return-object p1

    .line 95
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->O(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 93
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->N(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 91
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->M(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 89
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->L(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 87
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->K(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 85
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->J(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->I(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 81
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->H(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 79
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->G(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 77
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->F(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 75
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->E(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 73
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->D(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 71
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->C(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 69
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->B(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->A(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->z(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->y(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->x(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->u(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->t(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->s(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_1d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->r(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_1e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_1f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->n(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_27
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->h(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_28
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_2a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_2b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_2c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlQuery;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e6ec07c -> :sswitch_2d
        -0x7a79595f -> :sswitch_2c
        -0x79409aea -> :sswitch_2b
        -0x7119cf80 -> :sswitch_2a
        -0x640aed60 -> :sswitch_29
        -0x62be9e71 -> :sswitch_28
        -0x5c6533ef -> :sswitch_27
        -0x5ab47ae5 -> :sswitch_26
        -0x585daf5f -> :sswitch_25
        -0x554daedf -> :sswitch_24
        -0x5454664b -> :sswitch_23
        -0x542e513a -> :sswitch_22
        -0x53012961 -> :sswitch_21
        -0x4b9ff631 -> :sswitch_20
        -0x471f7bd3 -> :sswitch_1f
        -0x443c2594 -> :sswitch_1e
        -0x43f30207 -> :sswitch_1d
        -0x41b33570 -> :sswitch_1c
        -0x38c562ad -> :sswitch_1b
        -0x385a1a23 -> :sswitch_1a
        -0x379486bb -> :sswitch_19
        -0x3552a56c -> :sswitch_18
        -0x23a69606 -> :sswitch_17
        -0xa9db13e -> :sswitch_16
        0x606d5e -> :sswitch_15
        0xfc42cee -> :sswitch_14
        0x13620773 -> :sswitch_13
        0x15360adc -> :sswitch_12
        0x156defb4 -> :sswitch_11
        0x19624f6d -> :sswitch_10
        0x1ce41db7 -> :sswitch_f
        0x20ab88f9 -> :sswitch_e
        0x229f5e8e -> :sswitch_d
        0x259dd45a -> :sswitch_c
        0x284d8e44 -> :sswitch_b
        0x29207113 -> :sswitch_a
        0x29c4bcaa -> :sswitch_9
        0x39014db1 -> :sswitch_8
        0x478a00dc -> :sswitch_7
        0x4f827ec1 -> :sswitch_6
        0x4fceb464 -> :sswitch_5
        0x514ef38a -> :sswitch_4
        0x53453e87 -> :sswitch_3
        0x629e6175 -> :sswitch_2
        0x652b0b4e -> :sswitch_1
        0x74e29831 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public a()[Ljava/lang/String;
    .locals 46

    const-string v0, "carcontrol.support.close.mirror"

    const-string v1, "carcontrol.mirror.status"

    const-string v2, "carcontrol.get.open.trunk"

    const-string v3, "carcontrol.get.close.trunk"

    const-string v4, "carcontrol.get.window.status"

    const-string v5, "carcontrol.support.energy.recycle"

    const-string v6, "carcontrol.get.support.seat"

    const-string v7, "carcontrol.support.driving.mode"

    const-string v8, "control.support.light.atmosphere"

    const-string v9, "control.is.tairpressure.normal"

    const-string v10, "control.trunk.unlock.support"

    const-string v11, "charge.alternating.port.on.support"

    const-string v12, "charge.direct.port.off.support"

    const-string v13, "charge.alternating.port.off.support"

    const-string v14, "charge.direct.port.on.support"

    const-string v15, "control.mirror.rear.set.support"

    const-string v16, "control.leg.height.get"

    const-string v17, "charge.alternating.port.off.status"

    const-string v18, "charge.direct.port.off.status"

    const-string v19, "charge.alternating.port.on.status"

    const-string v20, "charge.direct.port.on.status"

    const-string v21, "control.light.atmosphere.brightness.status"

    const-string v22, "control.light.atmosphere.color.status"

    const-string v23, "control.control.steering.mode.adjustable"

    const-string v24, "gui.page.open.carcontrol"

    const-string v25, "control.wiper.current.level"

    const-string v26, "carcontrol.get.psn.support.seat"

    const-string v27, "carcontrol.extra.trunk.status"

    const-string v28, "carcontrol.trunk.status"

    const-string v29, "carcontrol.set.speech.wakeup.status"

    const-string v30, "control.low.speed.analog.sound.support"

    const-string v31, "control.xpedal.support"

    const-string v32, "carcontrol.support.energy.recycle.reason"

    const-string v33, "control.scissor.door.left.open.support"

    const-string v34, "control.scissor.door.right.open.support"

    const-string v35, "control.scissor.door.left.close.support"

    const-string v36, "control.scissor.door.right.close.support"

    const-string v37, "control.scissor.door.left.running.support"

    const-string v38, "control.scissor.door.right.running.support"

    const-string v39, "control.electric.curtain.support"

    const-string v40, "control.get.windows.state.support"

    const-string v41, "control.comfortable.driving.mode.support"

    const-string v42, "control.lamp.signal.support"

    const-string/jumbo v43, "xpu.ngp.status"

    const-string v44, "control.vip.chair.status"

    const-string v45, "control.capsule.mode"

    .line 114
    filled-new-array/range {v0 .. v45}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
