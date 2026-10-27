.class public Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;
.super Ljava/lang/Object;
.source "DialogNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 15

    .line 66
    const-string v0, "jarvis.dm.start"

    const-string v1, "jarvis.dm.active"

    const-string v2, "jarvis.dm.prepare"

    const-string v3, "sys.dialog.error"

    const-string v4, "jarvis.dm.exit"

    const-string v5, "jarvis.dm.end"

    const-string v6, "jarvis.dm.wait"

    const-string v7, "sys.dialog.continue"

    const-string v8, "sys.wakeup.result"

    const-string v9, "sys.vad.begin"

    const-string v10, "sys.vad.end"

    const-string v11, "sys.dialog.status.changed"

    const-string v12, "jarvis.sound.area.status"

    const-string v13, "jarvis.dialog.sound.area.status"

    const-string v14, "jarvis.speech.switch.status"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "jarvis.dm.start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "sys.vad.begin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "jarvis.dm.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "jarvis.dm.active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "jarvis.dm.prepare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "jarvis.dialog.sound.area.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_6
    const-string v0, "sys.dialog.error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "jarvis.sound.area.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_8
    const-string v0, "jarvis.dm.wait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v0, "jarvis.dm.exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_a
    const-string v0, "sys.dialog.continue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_b
    const-string v0, "sys.wakeup.result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_c
    const-string v0, "sys.vad.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_d
    const-string v0, "sys.dialog.status.changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_e
    const-string v0, "jarvis.speech.switch.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onDialogSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    goto :goto_2

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onDialogState(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    goto :goto_2

    .line 52
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onSoundAreaStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    goto :goto_2

    .line 49
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onDialogStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_2

    .line 46
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onVadEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    goto :goto_2

    .line 43
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onVadBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_2

    .line 40
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onWakeupResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 37
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onDialogContinue(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    goto :goto_2

    .line 34
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onDialogWait(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_2

    .line 31
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onDialogEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_2

    .line 28
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onDialogExit(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    goto :goto_2

    .line 25
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onDialogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onDialogPrepare(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onDialogActive(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->onDialogStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 63
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e1c91f7 -> :sswitch_e
        -0x55806e43 -> :sswitch_d
        -0x541c499b -> :sswitch_c
        -0x4d159fb5 -> :sswitch_b
        -0x37860a94 -> :sswitch_a
        -0x2e045d66 -> :sswitch_9
        -0x2dfc850f -> :sswitch_8
        -0xc494b75 -> :sswitch_7
        -0x92ab89d -> :sswitch_6
        0x2178c097 -> :sswitch_5
        0x2d7de20b -> :sswitch_4
        0x39a6f982 -> :sswitch_3
        0x40947fdf -> :sswitch_2
        0x41a16bb3 -> :sswitch_1
        0x6e3c0a66 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
