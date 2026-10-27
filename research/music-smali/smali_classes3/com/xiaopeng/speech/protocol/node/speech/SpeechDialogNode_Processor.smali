.class public Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;
.super Ljava/lang/Object;
.source "SpeechDialogNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

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
    const-string v0, "command://speech.continue.dialogue.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "ai.show.speech.window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "command://script.quit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "command://dialog.turn.multiple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "command://global.speech.exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "command://show.childwatch.location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "command://inject.trigger.words"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "command://speech.continue.dialogue.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "command://default.wakeup.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "command://sound.area.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "command://fast.speech.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "command://fulltime.speech.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "command://fulltime.speech.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "command://system.listentime.accompany.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "command://sound.area.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "ai.dismiss.speech.window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "ai.dismiss.scene.guide.window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "ai.show.scene.guide.window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "command://script.widget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "command://tts.mode.seat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "command://multi.speech.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "command://multi.speech.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_16
    const-string v0, "command://tts.mode.screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_1

    :sswitch_17
    const-string v0, "command://system.listentime.accompany.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_18
    const-string v0, "command://dialog.turn.single"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_1

    :sswitch_19
    const-string v0, "command://speech.continuous.disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1a
    const-string v0, "command://speech.continuous.enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1b
    const-string v0, "command://refresh.carspeechservice.ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1c
    const-string v0, "command://fast.speech.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_1d
    const-string v0, "command://default.wakeup.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_1e
    const-string v0, "command://set.screen.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 100
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 97
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->C(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 94
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->B(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 91
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->A(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 88
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 85
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->y(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 82
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 79
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 76
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 73
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 70
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 67
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 64
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 61
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 55
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 49
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :pswitch_1d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :pswitch_1e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x72edbbfa -> :sswitch_1e
        -0x71b6b944 -> :sswitch_1d
        -0x6f41711a -> :sswitch_1c
        -0x6c55bebf -> :sswitch_1b
        -0x63eab55b -> :sswitch_1a
        -0x55dd5dfa -> :sswitch_19
        -0x4bd14a1e -> :sswitch_18
        -0x466977e5 -> :sswitch_17
        -0x3ec2c0b3 -> :sswitch_16
        -0x3169ab59 -> :sswitch_15
        -0x2ae26059 -> :sswitch_14
        -0x288e6eda -> :sswitch_13
        -0x24428748 -> :sswitch_12
        -0x189563f1 -> :sswitch_11
        -0xfd2ab52 -> :sswitch_10
        -0xa7faf2e -> :sswitch_f
        -0x2b661fb -> :sswitch_e
        0xe442bc7 -> :sswitch_d
        0x111ccf88 -> :sswitch_c
        0x127d20e6 -> :sswitch_b
        0x2df5a188 -> :sswitch_a
        0x4a41b09d -> :sswitch_9
        0x4ee996f2 -> :sswitch_8
        0x56547223 -> :sswitch_7
        0x632fb045 -> :sswitch_6
        0x693cb50e -> :sswitch_5
        0x6aa19f8e -> :sswitch_4
        0x6c28d92a -> :sswitch_3
        0x73084dc3 -> :sswitch_2
        0x75ba30d1 -> :sswitch_1
        0x7ea7e2ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 31

    const-string v0, "ai.dismiss.speech.window"

    const-string v1, "ai.show.speech.window"

    const-string v2, "ai.show.scene.guide.window"

    const-string v3, "ai.dismiss.scene.guide.window"

    const-string v4, "command://speech.continuous.enable"

    const-string v5, "command://speech.continuous.disable"

    const-string v6, "command://system.listentime.accompany.open"

    const-string v7, "command://system.listentime.accompany.close"

    const-string v8, "command://refresh.carspeechservice.ui"

    const-string v9, "command://global.speech.exit"

    const-string v10, "command://set.screen.on"

    const-string v11, "command://script.widget"

    const-string v12, "command://script.quit"

    const-string v13, "command://show.childwatch.location"

    const-string v14, "command://sound.area.open"

    const-string v15, "command://sound.area.close"

    const-string v16, "command://fast.speech.on"

    const-string v17, "command://fast.speech.off"

    const-string v18, "command://multi.speech.on"

    const-string v19, "command://multi.speech.off"

    const-string v20, "command://fulltime.speech.on"

    const-string v21, "command://fulltime.speech.off"

    const-string v22, "command://inject.trigger.words"

    const-string v23, "command://speech.continue.dialogue.on"

    const-string v24, "command://speech.continue.dialogue.off"

    const-string v25, "command://default.wakeup.on"

    const-string v26, "command://default.wakeup.off"

    const-string v27, "command://dialog.turn.single"

    const-string v28, "command://dialog.turn.multiple"

    const-string v29, "command://tts.mode.screen"

    const-string v30, "command://tts.mode.seat"

    .line 114
    filled-new-array/range {v0 .. v30}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
