.class public Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;
.super Ljava/lang/Object;
.source "SystemNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/system/SystemNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "command://system.wifi.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "command://system.theme.mode.night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "command://system.volume.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "command://control.volume.notification.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "command://system.icm.brightness.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "command://system.icm.brightness.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "command://system.icm.brightness.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "command://system.icm.brightness.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "command://system.volume.mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "command://system.volume.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "command://system.screen.brightness.stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "command://system.screen.brightness.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "command://system.icm.brightness.down.percent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "command://system.music.sound.effect.model.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "command://system.screen.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "command://system.screen.brightness.auto.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "command://system.screen.mode.clean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "command://system.screen.brightness.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "command://system.screen.brightness.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "command://system.screen.brightness.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "command://system.theme.mode.day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "command://system.headrest.model.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "command://system.music.sound.effect.style.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "command://system.sound.scene.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "command://bluetooth.setting.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "command://system.bluetooth.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "command://system.screen.brightness.down.percent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "command://system.music.sound.direction.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "command://system.theme.mode.auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "command://system.screen.brightness.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "command://system.volume.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "command://system.volume.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "command://system.volume.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "command://control.volume.notification.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "command://control.volume.notification.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "command://system.screen.brightness.set.percent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "command://system.volume.unmute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "command://system.wifi.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "command://system.screen.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "command://system.volume.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "command://system.screen.brightness.up.percent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_29
    const-string v0, "command://system.wifi.setting.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_1

    :sswitch_2a
    const-string v0, "command://system.icm.brightness.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_2b
    const-string v0, "command://control.volume.notification.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_1

    :sswitch_2c
    const-string v0, "command://system.bluetooth.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_2d
    const-string v0, "command://system.icm.brightness.set.percent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :sswitch_2e
    const-string v0, "command://system.screen.brightness.auto.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto :goto_1

    :sswitch_2f
    const-string v0, "command://system.icm.brightness.up.percent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_1

    :sswitch_30
    const-string v0, "command://control.volume.notification.medium"

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

    goto/16 :goto_2

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->X(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 154
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 151
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->U(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 148
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->T(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 145
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->S(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 142
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->R(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 139
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->Q(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 136
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->P(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 133
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->O(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 130
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->N(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 127
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->M(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 124
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->L(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 121
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->K(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 118
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->J(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 115
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 112
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->H(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 109
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->G(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 106
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 103
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 100
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 97
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->C(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 94
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->B(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 91
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->A(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 88
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 85
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->y(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 82
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 79
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 76
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 73
    :pswitch_1d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 70
    :pswitch_1e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 67
    :pswitch_1f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 64
    :pswitch_20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 61
    :pswitch_21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :pswitch_22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 55
    :pswitch_23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :pswitch_24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 49
    :pswitch_25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :pswitch_26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :pswitch_27
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :pswitch_28
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :pswitch_29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :pswitch_2a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :pswitch_2b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :pswitch_2c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :pswitch_2d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :pswitch_2e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :pswitch_2f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :pswitch_30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/system/SystemNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72673f1c -> :sswitch_30
        -0x5f30b1fc -> :sswitch_2f
        -0x5024e7ed -> :sswitch_2e
        -0x3ca62519 -> :sswitch_2d
        -0x3c18d461 -> :sswitch_2c
        -0x378b1a2f -> :sswitch_2b
        -0x23dacfcc -> :sswitch_2a
        -0x2004352f -> :sswitch_29
        -0x1b0d79c3 -> :sswitch_28
        -0x8cef10f -> :sswitch_27
        -0x5b2dbef -> :sswitch_26
        -0x4311b38 -> :sswitch_25
        -0x3344d0a -> :sswitch_24
        0x39da9ce -> :sswitch_23
        0x6778255 -> :sswitch_22
        0x6778343 -> :sswitch_21
        0xbad7520 -> :sswitch_20
        0xbad760e -> :sswitch_1f
        0xbad8c1e -> :sswitch_1e
        0x1abf57e6 -> :sswitch_1d
        0x1cce8aa5 -> :sswitch_1c
        0x208f72fb -> :sswitch_1b
        0x24103e84 -> :sswitch_1a
        0x275a09af -> :sswitch_19
        0x2778a197 -> :sswitch_18
        0x2d3f2b51 -> :sswitch_17
        0x39bea400 -> :sswitch_16
        0x3a5b6cf3 -> :sswitch_15
        0x3abc5fe6 -> :sswitch_14
        0x3d2b8579 -> :sswitch_13
        0x3d2b8667 -> :sswitch_12
        0x3d2b9c77 -> :sswitch_11
        0x48159a70 -> :sswitch_10
        0x4b87e9bb -> :sswitch_f
        0x4f575d7d -> :sswitch_e
        0x564c0578 -> :sswitch_d
        0x5bda308b -> :sswitch_c
        0x6841472d -> :sswitch_b
        0x68482a8d -> :sswitch_a
        0x69fd4c66 -> :sswitch_9
        0x6a0179dd -> :sswitch_8
        0x6a32df92 -> :sswitch_7
        0x6a32e080 -> :sswitch_6
        0x6a32f690 -> :sswitch_5
        0x6ec7d6ad -> :sswitch_4
        0x73d24f8a -> :sswitch_3
        0x73fd575f -> :sswitch_2
        0x7db455e2 -> :sswitch_1
        0x7e0db3a6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public a()[Ljava/lang/String;
    .locals 49

    const-string v0, "command://system.screen.brightness.up"

    const-string v1, "command://system.screen.brightness.max"

    const-string v2, "command://system.screen.brightness.down"

    const-string v3, "command://system.screen.brightness.min"

    const-string v4, "command://system.theme.mode.auto"

    const-string v5, "command://system.theme.mode.day"

    const-string v6, "command://system.theme.mode.night"

    const-string v7, "command://system.screen.mode.clean"

    const-string v8, "command://system.wifi.off"

    const-string v9, "command://system.wifi.on"

    const-string v10, "command://system.bluetooth.off"

    const-string v11, "command://system.bluetooth.on"

    const-string v12, "command://system.volume.up"

    const-string v13, "command://system.volume.set"

    const-string v14, "command://system.volume.down"

    const-string v15, "command://system.volume.max"

    const-string v16, "command://system.volume.min"

    const-string v17, "command://system.volume.mute"

    const-string v18, "command://system.volume.unmute"

    const-string v19, "command://system.volume.resume"

    const-string v20, "command://system.screen.brightness.up.percent"

    const-string v21, "command://system.screen.brightness.set.percent"

    const-string v22, "command://system.screen.brightness.set"

    const-string v23, "command://system.icm.brightness.set"

    const-string v24, "command://system.icm.brightness.up"

    const-string v25, "command://system.icm.brightness.max"

    const-string v26, "command://system.icm.brightness.down"

    const-string v27, "command://system.icm.brightness.min"

    const-string v28, "command://bluetooth.setting.open"

    const-string v29, "command://system.wifi.setting.open"

    const-string v30, "command://system.screen.brightness.down.percent"

    const-string v31, "command://system.icm.brightness.up.percent"

    const-string v32, "command://system.icm.brightness.set.percent"

    const-string v33, "command://system.icm.brightness.down.percent"

    const-string v34, "command://system.screen.off"

    const-string v35, "command://system.screen.on"

    const-string v36, "command://system.screen.brightness.stop"

    const-string v37, "command://system.screen.brightness.auto.on"

    const-string v38, "command://system.screen.brightness.auto.off"

    const-string v39, "command://control.volume.notification.max"

    const-string v40, "command://control.volume.notification.min"

    const-string v41, "command://control.volume.notification.medium"

    const-string v42, "command://control.volume.notification.up"

    const-string v43, "command://control.volume.notification.down"

    const-string v44, "command://system.music.sound.direction.set"

    const-string v45, "command://system.music.sound.effect.model.set"

    const-string v46, "command://system.sound.scene.set"

    const-string v47, "command://system.music.sound.effect.style.set"

    const-string v48, "command://system.headrest.model.set"

    .line 168
    filled-new-array/range {v0 .. v48}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
