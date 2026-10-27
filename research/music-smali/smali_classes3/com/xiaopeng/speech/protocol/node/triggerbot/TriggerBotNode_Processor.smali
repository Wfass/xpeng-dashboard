.class public Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode_Processor;
.super Ljava/lang/Object;
.source "TriggerBotNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x23298136    # -4.830004E17f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x1659d2c9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "command://trigger.bot.result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "command://trigger.bot.exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 2

    const-string v0, "command://trigger.bot.result"

    const-string v1, "command://trigger.bot.exit"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
