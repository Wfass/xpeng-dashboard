.class public Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;
.super Ljava/lang/Object;
.source "MediaNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/media/MediaNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 14

    .line 63
    const-string v0, "command://media.control.play"

    const-string v1, "command://media.control.loop.single"

    const-string v2, "command://media.control.loop.all"

    const-string v3, "command://media.control.random"

    const-string v4, "command://media.control.pause"

    const-string v5, "command://media.control.resume"

    const-string v6, "command://media.control.prev"

    const-string v7, "command://media.control.next"

    const-string v8, "command://media.control.stop"

    const-string v9, "command://media.control.collect"

    const-string v10, "command://media.control.collect.cancel"

    const-string v11, "command://media.forward"

    const-string v12, "command://media.backward"

    const-string v13, "command://media.settime"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

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
    const-string v0, "command://media.backward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "command://media.settime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "command://media.control.loop.single"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "command://media.control.collect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "command://media.control.collect.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_5
    const-string v0, "command://media.control.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "command://media.control.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "command://media.control.random"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "command://media.control.stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v0, "command://media.control.prev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_a
    const-string v0, "command://media.control.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_b
    const-string v0, "command://media.control.next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_c
    const-string v0, "command://media.control.loop.all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_d
    const-string v0, "command://media.forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onSettime(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    goto :goto_2

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onBackward(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    goto :goto_2

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_2

    .line 46
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onCancelCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    goto :goto_2

    .line 43
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onControlCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_2

    .line 40
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onStop(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 37
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onNext(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    goto :goto_2

    .line 34
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onPrev(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_2

    .line 31
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onResume(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_2

    .line 28
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onPause(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    goto :goto_2

    .line 25
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onPlayLoopRandom(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onPlayLoopAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onPlayLoopSingle(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/media/MediaNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->onPlay(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 60
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62ca5d54 -> :sswitch_d
        -0x5d2a9f3f -> :sswitch_c
        -0x5ae306a3 -> :sswitch_b
        -0x5ae20662 -> :sswitch_a
        -0x5ae1ef63 -> :sswitch_9
        -0x5ae08994 -> :sswitch_8
        -0x27a59f53 -> :sswitch_7
        -0x276abbe9 -> :sswitch_6
        -0x1637b34 -> :sswitch_5
        0xd7da1a8 -> :sswitch_4
        0x313f6280 -> :sswitch_3
        0x3b95c928 -> :sswitch_2
        0x3bf11e16 -> :sswitch_1
        0x6b2ab8dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
