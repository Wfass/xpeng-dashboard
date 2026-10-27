.class public Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;
.super Ljava/lang/Object;
.source "VideoNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/video/VideoNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 25

    const-string v0, "video.play.prev"

    const-string v1, "video.play.next"

    const-string v2, "video.play.set"

    const-string v3, "video.play.forward"

    const-string v4, "video.play.backward"

    const-string v5, "video.play.settime"

    const-string v6, "video.play.pause"

    const-string v7, "video.play.resume"

    const-string v8, "video.play.speed.up"

    const-string v9, "video.play.speed.down"

    const-string v10, "video.play.speed.set"

    const-string v11, "video.play.end"

    const-string v12, "video.play.clarity.up"

    const-string v13, "video.play.clarity.down"

    const-string v14, "video.play.clarity.set"

    const-string v15, "video.play.collect"

    const-string v16, "video.play.collect.cancel"

    const-string v17, "video.skip.begin"

    const-string v18, "video.skip.end"

    const-string v19, "video.skip.all"

    const-string v20, "video.play.audio.mode"

    const-string v21, "gui.video.app.demand"

    const-string v22, "gui.video.search"

    const-string v23, "video.barrage.open"

    const-string v24, "video.barrage.close"

    .line 96
    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

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
    const-string v0, "video.play.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "video.play.collect.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "video.play.clarity.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "video.play.forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "video.play.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "video.play.prev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "video.play.next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "video.play.clarity.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "gui.video.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "video.play.speed.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "video.play.backward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "video.play.clarity.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "video.skip.begin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "video.play.settime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "video.barrage.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "video.play.speed.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "video.play.audio.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "video.play.collect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_12
    const-string v0, "video.skip.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_13
    const-string v0, "video.skip.all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_14
    const-string v0, "video.play.speed.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_15
    const-string v0, "video.play.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_16
    const-string v0, "video.play.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_17
    const-string v0, "gui.video.app.demand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_18
    const-string v0, "video.barrage.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoResume(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoCollectCancel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoClaritySet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 25
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoForward(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 34
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoPause(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoPrev(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 19
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoNext(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 52
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoClarityUP(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 82
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoSearch(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 40
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoSpeedUp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoBackward(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoClarityDown(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoSkipBegin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoSettime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onBarrageClose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoSpeedSet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoAudioMode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoCollect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoSkipEnd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoSkipAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoSpeedDown(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoSet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoEnd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onVideoDemand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;->onBarrageOpen(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73f403d5 -> :sswitch_18
        -0x5eecd1a2 -> :sswitch_17
        -0x505a04cc -> :sswitch_16
        -0x5059d145 -> :sswitch_15
        -0x49e9a690 -> :sswitch_14
        -0x4074d73b -> :sswitch_13
        -0x4074c801 -> :sswitch_12
        -0x3e6700fd -> :sswitch_11
        -0x133c4bbe -> :sswitch_10
        -0x12e64a2c -> :sswitch_f
        -0xb373bc9 -> :sswitch_e
        -0x9f53f8 -> :sswitch_d
        0x96eeecd -> :sswitch_c
        0x101fcc03 -> :sswitch_b
        0x15ace92a -> :sswitch_a
        0x182a1ee9 -> :sswitch_9
        0x31d5b84e -> :sswitch_8
        0x3d051a3c -> :sswitch_7
        0x451d63ba -> :sswitch_6
        0x451e7afa -> :sswitch_5
        0x5ea9660f -> :sswitch_4
        0x60a5309e -> :sswitch_3
        0x639e24e1 -> :sswitch_2
        0x76967bc5 -> :sswitch_1
        0x7a248b34 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
