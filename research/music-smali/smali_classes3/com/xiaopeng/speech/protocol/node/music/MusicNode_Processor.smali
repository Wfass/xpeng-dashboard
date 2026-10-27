.class public Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;
.super Ljava/lang/Object;
.source "MusicNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/music/MusicNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

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
    const-string v0, "command://music.control.play.usb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "command://music.control.loop.single"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "command://music.soundeffect.live"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "command://music.control.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "command://music.control.collect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "command://music.audiobook.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "command://music.audiobook.subscribe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "command://music.soundeffect.superbass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "command://music.control.random.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "native://music.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "command://music.1212.novel.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "command://music.control.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "command://music.control.random"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "command://music.forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "command://music.news.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "command://music.soundeffect.vocal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "command://music.control.collect.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "command://music.control.bluetooth.play.random"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "command://music.soundeffect.stereo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "command://music.dailyrec.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "command://music.control.playlist.history.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "command://music.control.spotify.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "command://music.control.collect.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "command://music.control.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "command://music.control.sim.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "command://music.speed.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "command://music.backward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "command://music.control.stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "command://music.control.prev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "command://music.control.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1e
    const-string v0, "command://music.control.next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1f
    const-string v0, "command://music.list.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_20
    const-string v0, "command://music.settime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_21
    const-string v0, "command://music.control.loop.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto :goto_1

    :sswitch_22
    const-string v0, "native://music.playmode.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_23
    const-string v0, "command://music.speed.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_1

    :sswitch_24
    const-string v0, "command://music.speed.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_1

    :sswitch_25
    const-string v0, "command://music.control.loop.all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->M(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->L(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->K(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 118
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->J(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 115
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 112
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->H(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 109
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->G(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 106
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 103
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 100
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 97
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->C(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 94
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->B(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 91
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->A(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 88
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 85
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->y(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 82
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 79
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 76
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 73
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 70
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 67
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 64
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 61
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 55
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 49
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :pswitch_1d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :pswitch_1e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :pswitch_1f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :pswitch_20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :pswitch_21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :pswitch_22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :pswitch_23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :pswitch_24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :pswitch_25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x77fbf360 -> :sswitch_25
        -0x7756c29d -> :sswitch_24
        -0x73883c3f -> :sswitch_23
        -0x6d0ecfbc -> :sswitch_22
        -0x68b052c9 -> :sswitch_21
        -0x670534a9 -> :sswitch_20
        -0x61092654 -> :sswitch_1f
        -0x54fd9344 -> :sswitch_1e
        -0x54fc9303 -> :sswitch_1d
        -0x54fc7c04 -> :sswitch_1c
        -0x54fb1635 -> :sswitch_1b
        -0x50a94c45 -> :sswitch_1a
        -0x4e2c1686 -> :sswitch_19
        -0x4d111186 -> :sswitch_18
        -0x4a9a82b3 -> :sswitch_17
        -0x49b255b9 -> :sswitch_16
        -0x3fe2f54f -> :sswitch_15
        -0x2e9febbf -> :sswitch_14
        -0x288525ed -> :sswitch_13
        -0x1d9d8fe2 -> :sswitch_12
        -0x1aac952c -> :sswitch_11
        -0x15a169bf -> :sswitch_10
        -0x90eaa71 -> :sswitch_f
        -0x620e769 -> :sswitch_e
        -0x5c0b013 -> :sswitch_d
        -0x54f87b4 -> :sswitch_c
        -0x514a44a -> :sswitch_b
        -0x1ad95c6 -> :sswitch_a
        0x2110c134 -> :sswitch_9
        0x2af4d9d6 -> :sswitch_8
        0x359eaef4 -> :sswitch_7
        0x4b250b03 -> :sswitch_6
        0x4e45eddb -> :sswitch_5
        0x59ac3ec1 -> :sswitch_4
        0x605afdee -> :sswitch_3
        0x62c95a92 -> :sswitch_2
        0x6dc89ce9 -> :sswitch_1
        0x71715513 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 38

    const-string v0, "command://music.control.play"

    const-string v1, "command://music.control.loop.single"

    const-string v2, "command://music.control.loop.all"

    const-string v3, "command://music.control.random"

    const-string v4, "native://music.search"

    const-string v5, "command://music.control.pause"

    const-string v6, "command://music.control.resume"

    const-string v7, "command://music.control.prev"

    const-string v8, "command://music.control.next"

    const-string v9, "command://music.control.stop"

    const-string v10, "command://music.control.bluetooth.play.random"

    const-string v11, "native://music.playmode.support"

    const-string v12, "command://music.audiobook.play"

    const-string v13, "command://music.list.play"

    const-string v14, "command://music.1212.novel.play"

    const-string v15, "command://music.control.collect"

    const-string v16, "command://music.audiobook.subscribe"

    const-string v17, "command://music.soundeffect.stereo"

    const-string v18, "command://music.soundeffect.live"

    const-string v19, "command://music.soundeffect.vocal"

    const-string v20, "command://music.soundeffect.superbass"

    const-string v21, "command://music.control.collect.cancel"

    const-string v22, "command://music.control.collect.play"

    const-string v23, "command://music.control.sim"

    const-string v24, "command://music.control.sim.cancel"

    const-string v25, "command://music.control.playlist.history.play"

    const-string v26, "command://music.forward"

    const-string v27, "command://music.backward"

    const-string v28, "command://music.settime"

    const-string v29, "command://music.speed.up"

    const-string v30, "command://music.speed.down"

    const-string v31, "command://music.speed.set"

    const-string v32, "command://music.news.play"

    const-string v33, "command://music.dailyrec.play"

    const-string v34, "command://music.control.play.usb"

    const-string v35, "command://music.control.spotify.play"

    const-string v36, "command://music.control.loop.close"

    const-string v37, "command://music.control.random.close"

    .line 135
    filled-new-array/range {v0 .. v37}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
