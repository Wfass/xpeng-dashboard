.class public Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;
.super Ljava/lang/Object;
.source "ComboNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 22

    const-string v0, "command://combo.mode.bio"

    const-string v1, "command://combo.mode.ventilate"

    const-string v2, "command://combo.mode.invisible"

    const-string v3, "command://combo.mode.invisible.off"

    const-string v4, "command://combo.mode.fridge"

    const-string v5, "data://combo.mode.invisible.tts"

    const-string v6, "data://combo.mode.meditation.tts"

    const-string v7, "command://combo.mode.invisible.fast.close"

    const-string v8, "data://combo.mode.bio.tts"

    const-string v9, "data://combo.mode.ventilate.tts"

    const-string v10, "data://combo.mode.fridge.tts"

    const-string v11, "command://combo.mode.bio.off"

    const-string v12, "command://combo.mode.ventilate.off"

    const-string v13, "command://combo.mode.fridge.off"

    const-string v14, "data://combo.mode.wait.tts"

    const-string v15, "command://combo.mode.wait"

    const-string v16, "command://combo.mode.wait.off"

    const-string v17, "command://combo.enter.user.scenario"

    const-string v18, "command://combo.exit.user.scenario"

    const-string v19, "command://combo.message.submit"

    const-string v20, "command://combo.message.cancel"

    const-string v21, "command://combo.message.extra"

    .line 87
    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

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
    const-string v0, "data://combo.mode.bio.tts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "command://combo.mode.wait.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "command://combo.enter.user.scenario"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "command://combo.message.submit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "data://combo.mode.meditation.tts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "data://combo.mode.fridge.tts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "command://combo.mode.ventilate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "command://combo.mode.fridge.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "command://combo.message.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "data://combo.mode.invisible.tts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "data://combo.mode.ventilate.tts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "command://combo.mode.invisible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "command://combo.mode.invisible.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "command://combo.mode.bio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "command://combo.mode.ventilate.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_f
    const-string v0, "command://combo.mode.wait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_10
    const-string v0, "command://combo.mode.bio.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_11
    const-string v0, "command://combo.mode.fridge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_12
    const-string v0, "command://combo.message.extra"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_13
    const-string v0, "data://combo.mode.wait.tts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_14
    const-string v0, "command://combo.mode.invisible.fast.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_15
    const-string v0, "command://combo.exit.user.scenario"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onDataModeBioTts(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onModeWaitOff(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 67
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->enterUserMode(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 73
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onSubmit(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 34
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onDataModeMeditationTts(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 46
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onDataModeFridgeTts(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 19
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onModeVentilate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onModeFridgeOff(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onCancel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onDataModeInvisibleTts(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onDataModeVentilateTts(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onModeInvisible(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onModeInvisibleOff(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onModeBio(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onModeVentilateOff(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onModeWait(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onModeBioOff(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onModeFridge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onDataModeWaitTts(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->onFastCloseModeInvisible(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->exitUserModel(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c9e06ae -> :sswitch_15
        -0x7a38d47d -> :sswitch_14
        -0x6eefe02b -> :sswitch_13
        -0x597209c6 -> :sswitch_12
        -0x55c6c43f -> :sswitch_11
        -0x45ca2eb3 -> :sswitch_10
        -0x308af9cf -> :sswitch_f
        -0x2e7fa4c1 -> :sswitch_e
        -0x2adb7f34 -> :sswitch_d
        -0x23a2298e -> :sswitch_c
        -0xf811f8f -> :sswitch_b
        0xa5f1c04 -> :sswitch_a
        0x153c9737 -> :sswitch_9
        0x26801190 -> :sswitch_8
        0x2fda09c2 -> :sswitch_7
        0x3c15d3be -> :sswitch_6
        0x3f1fc1a5 -> :sswitch_5
        0x42738efe -> :sswitch_4
        0x42e2232e -> :sswitch_3
        0x607aabce -> :sswitch_2
        0x644b1c32 -> :sswitch_1
        0x799716d2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
