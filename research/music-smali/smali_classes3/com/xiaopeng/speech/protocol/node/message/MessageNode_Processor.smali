.class public Lcom/xiaopeng/speech/protocol/node/message/MessageNode_Processor;
.super Ljava/lang/Object;
.source "MessageNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/message/MessageNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/message/MessageNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/message/MessageNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "command://ai.message.disable.seven.days"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1
    const-string v0, "command://ai.message.disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "command://message.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "jarvis.message.engine.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_4
    const-string v0, "command://common.message.ai.to.speech"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "command://message.ai.to.speech"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "command://common.message.submit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "command://common.message.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "command://message.parking.select"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_9
    const-string v0, "command://message.path.change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/message/MessageNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/message/MessageNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/message/MessageNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/message/MessageNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/message/MessageNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/message/MessageNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/message/MessageNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/message/MessageNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/message/MessageNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/message/MessageNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/message/MessageNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/message/MessageNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x607b8e9d -> :sswitch_9
        -0x589ea418 -> :sswitch_8
        -0x51aa446b -> :sswitch_7
        -0x354832cd -> :sswitch_6
        0x2bfd96e5 -> :sswitch_5
        0x396fca4a -> :sswitch_4
        0x585bd26e -> :sswitch_3
        0x5ff3d870 -> :sswitch_2
        0x6de5f0ea -> :sswitch_1
        0x7087411c -> :sswitch_0
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

.method public a()[Ljava/lang/String;
    .locals 10

    const-string v0, "command://message.cancel"

    const-string v1, "command://message.parking.select"

    const-string v2, "command://message.path.change"

    const-string v3, "command://message.ai.to.speech"

    const-string v4, "command://common.message.ai.to.speech"

    const-string v5, "command://common.message.submit"

    const-string v6, "command://common.message.cancel"

    const-string v7, "command://ai.message.disable"

    const-string v8, "command://ai.message.disable.seven.days"

    const-string v9, "jarvis.message.engine.status"

    .line 51
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
