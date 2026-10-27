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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 7

    const-string v0, "command://fm.local.on"

    const-string v1, "command://fm.local.off"

    const-string v2, "command://fm.network.on"

    const-string v3, "command://fm.network.off"

    const-string v4, "command://fm.play.channel"

    const-string v5, "native://fm.play.channelname"

    const-string v6, "command://fm.play.collection"

    .line 42
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

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

    goto :goto_0

    :sswitch_0
    const-string v0, "native://fm.play.channelname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "command://fm.play.collection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "command://fm.play.channel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "command://fm.local.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "command://fm.network.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "command://fm.network.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "command://fm.local.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onFmPlayChannelName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onPlayCollectFM(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onFmPlayChannel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onFmLocalOn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onFmNetworkOn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onFmNetworkOff(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/FMNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/fm/FMNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/fm/FMNode;->onFmLocalOff(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
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
