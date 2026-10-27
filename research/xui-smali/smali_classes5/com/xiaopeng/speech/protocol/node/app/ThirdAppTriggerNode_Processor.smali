.class public Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode_Processor;
.super Ljava/lang/Object;
.source "ThirdAppTriggerNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 2

    .line 27
    const-string v0, "command://third.app.message.submit"

    const-string v1, "command://third.app.message.cancel"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x14c6b2fc

    if-eq v0, v1, :cond_1

    const v1, 0x79b5ea2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "command://third.app.message.submit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "command://third.app.message.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->onCancel(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->onSubmit(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 24
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
