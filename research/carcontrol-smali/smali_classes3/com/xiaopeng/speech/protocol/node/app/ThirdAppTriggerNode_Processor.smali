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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 2

    const-string v0, "command://third.app.message.submit"

    const-string v1, "command://third.app.message.cancel"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "command://third.app.message.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "command://third.app.message.submit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->onSubmit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->onCancel(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
