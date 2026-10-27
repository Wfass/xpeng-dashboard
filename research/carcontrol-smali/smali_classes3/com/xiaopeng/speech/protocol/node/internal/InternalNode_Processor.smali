.class public Lcom/xiaopeng/speech/protocol/node/internal/InternalNode_Processor;
.super Ljava/lang/Object;
.source "InternalNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 5

    const-string v0, "dm.output"

    const-string v1, "input.dm.data"

    const-string v2, "local_wakeup.result"

    const-string v3, "sys.resource.updateFinish"

    const-string v4, "sys.reboot.complete"

    .line 36
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

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
    const-string v0, "dm.output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "sys.resource.updateFinish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "local_wakeup.result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "input.dm.data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "sys.reboot.complete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;->onDmOutput(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;->onResourceUpdateFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;->onLocalWakeupResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;->onInputDmData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/internal/InternalNode;->onRebootComplete(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6996a7bf -> :sswitch_4
        0x2bd087cb -> :sswitch_3
        0x4835abd8 -> :sswitch_2
        0x5626a43b -> :sswitch_1
        0x6b0b3606 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
