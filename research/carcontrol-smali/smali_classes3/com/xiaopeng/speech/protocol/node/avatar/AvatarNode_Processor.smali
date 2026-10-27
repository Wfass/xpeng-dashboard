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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 16

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

    .line 69
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

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
    const-string v0, "jarvis.dm.understanding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "jarvis.dm.recognized"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "jarvis.dm.speaking"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "jarvis.dm.personal.exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "context.widget.text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "context.widget.list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "context.widget.card"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "context.widget.media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "jarvis.speech.avatar.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_9
    const-string v0, "jarvis.avatar.wakeup.enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_a
    const-string v0, "jarvis.avatar.expression"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_b
    const-string v0, "context.widget.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_c
    const-string v0, "jarvis.dm.personal.run"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_d
    const-string v0, "context.widget.custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_e
    const-string v0, "jarvis.dm.listening"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_f
    const-string v0, "jarvis.avatar.wakeup.disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onUnderstanding(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onSilence(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onSpeaking(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onPersonalExit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onWidgetText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onWidgetList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onWidgetCard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onWidgetMedia(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onAvatarStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onAvatarWakerupEnable(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onAvatarExpression(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onWidgetSearch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onPersonalRunning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onWidgetCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onListening(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->onAvatarWakerupDisable(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

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
