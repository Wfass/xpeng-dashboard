.class public Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;
.super Ljava/lang/Object;
.source "FMNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/fm/FMNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 7

    .line 42
    const-string v0, "command://fm.local.on"

    const-string v1, "command://fm.local.off"

    const-string v2, "command://fm.network.on"

    const-string v3, "command://fm.network.off"

    const-string v4, "command://fm.play.channel"

    const-string v5, "native://fm.play.channelname"

    const-string v6, "command://fm.play.collection"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

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

    goto :goto_0

    :sswitch_0
    const-string v0, "native://fm.play.channelname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "command://fm.play.collection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "command://fm.play.channel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "command://fm.local.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "command://fm.network.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "command://fm.network.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "command://fm.local.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onPlayCollectFM(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_2

    .line 31
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onFmPlayChannelName(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_2

    .line 28
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onFmPlayChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    goto :goto_2

    .line 25
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onFmNetworkOff(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onFmNetworkOn(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onFmLocalOff(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onFmLocalOn(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 39
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x60545a0c -> :sswitch_6
        -0x256b3ac9 -> :sswitch_5
        -0x11b922e9 -> :sswitch_4
        -0xb5d8f46 -> :sswitch_3
        0x24c379c1 -> :sswitch_2
        0x43029120 -> :sswitch_1
        0x7d60bb98 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
