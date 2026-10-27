.class public Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode_Processor;
.super Ljava/lang/Object;
.source "AiAssistantNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 7

    .line 42
    const-string v0, "native://ai.play.video"

    const-string v1, "command://ai.play.video.ttsend"

    const-string v2, "command://ai.message.open"

    const-string v3, "command://ai.message.close"

    const-string v4, "command://ai.open.video"

    const-string v5, "command://system.avatar.dance"

    const-string v6, "command://system.avatar.changeclothes"

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
    const-string v0, "command://system.avatar.changeclothes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "command://ai.play.video.ttsend"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "command://ai.open.video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "command://system.avatar.dance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "command://ai.message.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "native://ai.play.video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "command://ai.message.close"

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

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->onXiaoPChangeClothe(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_2

    .line 31
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->onXiaoPDance(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_2

    .line 28
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->onOpenVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    goto :goto_2

    .line 25
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->onMessageClose(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->onMessageOpen(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->onPlayVideoTtsend(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->onPlayVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 39
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6bd2bb86 -> :sswitch_6
        -0x3420347c -> :sswitch_5
        -0x1c3b1878 -> :sswitch_4
        0x40aaf6e -> :sswitch_3
        0x192ee54e -> :sswitch_2
        0x5036d1fe -> :sswitch_1
        0x663d0753 -> :sswitch_0
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
