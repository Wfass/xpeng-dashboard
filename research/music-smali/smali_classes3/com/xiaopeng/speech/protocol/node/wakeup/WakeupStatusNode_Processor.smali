.class public Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode_Processor;
.super Ljava/lang/Object;
.source "WakeupStatusNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x122d5c88

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "jarvis.wakeup.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.wakeup.status"

    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
