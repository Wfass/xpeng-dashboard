.class public Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode_Processor;
.super Ljava/lang/Object;
.source "WakeupTestNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "wakeup.test.vad.begin"

    const-string/jumbo v1, "wakeup.test.vad.end"

    const-string/jumbo v2, "wakeup.test.wakeup.succ"

    const-string/jumbo v3, "wakeup.test.wakeup.failed"

    .line 33
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

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
    const-string/jumbo v0, "wakeup.test.wakeup.failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "wakeup.test.vad.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "wakeup.test.wakeup.succ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "wakeup.test.vad.begin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->onWakeupFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->onVADEndSpeech(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->onWakeupSucced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/custom/WakeupTestNode;->onVADBeginSpeech(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x343cb639 -> :sswitch_3
        -0x270680fc -> :sswitch_2
        0x674e0979 -> :sswitch_1
        0x694fe07f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
