.class public Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode_Processor;
.super Ljava/lang/Object;
.source "OOBENode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 10

    .line 51
    const-string v0, "command://oobe.record.result"

    const-string v1, "command://oobe.record.input"

    const-string v2, "command://oobe.address.set"

    const-string v3, "command://oobe.skip"

    const-string v4, "command://oobe.search.error"

    const-string v5, "command://error.asr.result"

    const-string v6, "command://oobe.asr.error"

    const-string v7, "command://oobe.other.error"

    const-string v8, "command://oobe.volume"

    const-string v9, "command://oobe.network.error"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

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
    const-string v0, "command://oobe.other.error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "command://oobe.record.result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "command://oobe.network.error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_3
    const-string v0, "command://error.asr.result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "command://oobe.volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_5
    const-string v0, "command://oobe.record.input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "command://oobe.asr.error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "command://oobe.address.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "command://oobe.search.error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_9
    const-string v0, "command://oobe.skip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->onNetWorkError(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_2

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->onVolumeChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 37
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    goto :goto_2

    .line 34
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->onASRError(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_2

    .line 31
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->onNetError(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_2

    .line 28
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->onSearchError(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    goto :goto_2

    .line 25
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->onSkip(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->onAddressSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->onRecordInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/oobe/OOBENode;->onRecordResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 48
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x628cd125 -> :sswitch_9
        -0x5c4e8c62 -> :sswitch_8
        -0x534e2174 -> :sswitch_7
        0xa85893e -> :sswitch_6
        0xa949d49 -> :sswitch_5
        0x12bb4976 -> :sswitch_4
        0x2e815560 -> :sswitch_3
        0x3aa1bc6c -> :sswitch_2
        0x56dd327e -> :sswitch_1
        0x59b968ce -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
