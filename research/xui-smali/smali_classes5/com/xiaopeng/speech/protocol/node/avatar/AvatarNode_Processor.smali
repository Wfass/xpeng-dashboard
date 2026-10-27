.class public Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;
.super Ljava/lang/Object;
.source "AvatarNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 16

    .line 69
    const-string v0, "jarvis.dm.recognized"

    const-string v1, "jarvis.dm.listening"

    const-string v2, "jarvis.dm.speaking"

    const-string v3, "jarvis.dm.understanding"

    const-string v4, "jarvis.dm.personal.run"

    const-string v5, "jarvis.dm.personal.exit"

    const-string v6, "jarvis.avatar.expression"

    const-string v7, "context.widget.custom"

    const-string v8, "context.widget.text"

    const-string v9, "context.widget.list"

    const-string v10, "context.widget.media"

    const-string v11, "context.widget.card"

    const-string v12, "context.widget.search"

    const-string v13, "jarvis.avatar.wakeup.enable"

    const-string v14, "jarvis.avatar.wakeup.disable"

    const-string v15, "jarvis.speech.avatar.status"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

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
    const-string v0, "jarvis.dm.understanding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "jarvis.dm.recognized"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "jarvis.dm.speaking"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "jarvis.dm.personal.exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "context.widget.text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "context.widget.list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "context.widget.card"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_7
    const-string v0, "context.widget.media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_8
    const-string v0, "jarvis.speech.avatar.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_9
    const-string v0, "jarvis.avatar.wakeup.enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_a
    const-string v0, "jarvis.avatar.expression"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_b
    const-string v0, "context.widget.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_c
    const-string v0, "jarvis.dm.personal.run"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_d
    const-string v0, "context.widget.custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_e
    const-string v0, "jarvis.dm.listening"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_f
    const-string v0, "jarvis.avatar.wakeup.disable"

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

    goto/16 :goto_2

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onAvatarStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    goto :goto_2

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onAvatarWakerupDisable(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    goto :goto_2

    .line 55
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onAvatarWakerupEnable(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    goto :goto_2

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onWidgetSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    goto :goto_2

    .line 49
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onWidgetCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_2

    .line 46
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onWidgetMedia(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    goto :goto_2

    .line 43
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onWidgetList(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_2

    .line 40
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onWidgetText(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 37
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onWidgetCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    goto :goto_2

    .line 34
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onAvatarExpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_2

    .line 31
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onPersonalExit(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_2

    .line 28
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onPersonalRunning(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    goto :goto_2

    .line 25
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onUnderstanding(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onSpeaking(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onListening(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onSilence(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 66
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5bf9789b -> :sswitch_f
        -0x46cd7b41 -> :sswitch_e
        -0x280d2ba4 -> :sswitch_d
        -0x1e83a8a7 -> :sswitch_c
        -0xda9516d -> :sswitch_b
        -0xc4f3b3c -> :sswitch_a
        0xf7fbd66 -> :sswitch_9
        0x1418a044 -> :sswitch_8
        0x1800dd99 -> :sswitch_7
        0x324e02bb -> :sswitch_6
        0x32523849 -> :sswitch_5
        0x3255ccd8 -> :sswitch_4
        0x4e08b610 -> :sswitch_3
        0x4f467a4c -> :sswitch_2
        0x529ce612 -> :sswitch_1
        0x5d5a2928 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
