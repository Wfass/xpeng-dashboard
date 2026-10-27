.class public Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;
.super Ljava/lang/Object;
.source "SpeechDialogNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
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
    const-string v0, "command://speech.continue.dialogue.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "ai.show.speech.window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "command://script.quit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "command://dialog.turn.multiple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "command://global.speech.exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "command://show.childwatch.location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "command://inject.trigger.words"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "command://speech.continue.dialogue.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "command://default.wakeup.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "command://sound.area.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "command://fast.speech.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "command://fulltime.speech.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "command://fulltime.speech.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "command://system.listentime.accompany.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "command://sound.area.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "ai.dismiss.speech.window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "ai.dismiss.scene.guide.window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "ai.show.scene.guide.window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "command://script.widget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "command://tts.mode.seat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "command://multi.speech.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "command://multi.speech.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "command://tts.mode.screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "command://system.listentime.accompany.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_18
    const-string v0, "command://dialog.turn.single"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_19
    const-string v0, "command://speech.continuous.disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1a
    const-string v0, "command://speech.continuous.enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1b
    const-string v0, "command://refresh.carspeechservice.ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1c
    const-string v0, "command://fast.speech.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1d
    const-string v0, "command://default.wakeup.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1e
    const-string v0, "command://set.screen.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onContinueDialogueOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 19
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onOpenWindow(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 52
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onScriptQuit(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 100
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->dialogTurnMultiple(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 43
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onGlobalSpeechExit(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 55
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->showChildwatchLocation(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 82
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->injectTriggerWords(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 88
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onContinueDialogueClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->openDefaultWakeup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 58
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onSoundAreaOpen(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 64
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->openFastSpeech(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 79
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->closeFullTimeSpeech(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 76
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->openFullTimeSpeech(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 34
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onOpenSuperDialogue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 61
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onSoundAreaClose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onCloseWindow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onCloseSceneGuideWindow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onOpenSceneGuideWindow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onScriptWidget(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->ttsPositionSeat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->openMultiSpeech(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->closeMultiSpeech(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->ttsPositionScreen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onCloseSuperDialogue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->dialogTurnSingle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onCloseSpeechSceneSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onOpenSpeechSceneSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->onRefreshUi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->closeFastSpeech(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :pswitch_1d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->closeDefaultWakeup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :pswitch_1e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/speech/SpeechDialogNode;->setScreenOn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
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
