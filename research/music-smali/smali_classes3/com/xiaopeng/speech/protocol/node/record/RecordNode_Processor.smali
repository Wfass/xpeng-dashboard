.class public Lcom/xiaopeng/speech/protocol/node/record/RecordNode_Processor;
.super Ljava/lang/Object;
.source "RecordNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/record/RecordNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/record/RecordNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/record/RecordNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "jarvis.record.maxlength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "jarvis.record.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "jarvis.speech.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "jarvis.speech.begin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "jarvis.asr.cloundresult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "jarvis.record.error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "jarvis.record.begin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "jarvis.speech.volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/record/RecordNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/record/RecordNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/record/RecordNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/record/RecordNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/record/RecordNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/record/RecordNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/record/RecordNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/record/RecordNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/record/RecordNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/record/RecordNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d291463 -> :sswitch_7
        -0x1c6ed40b -> :sswitch_6
        -0x1c3e7aac -> :sswitch_5
        0xd4bf9b9 -> :sswitch_4
        0x2c6457c6 -> :sswitch_3
        0x2c888b38 -> :sswitch_2
        0x33ea9f27 -> :sswitch_1
        0x66097296 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 8

    const-string v0, "jarvis.asr.cloundresult"

    const-string v1, "jarvis.record.begin"

    const-string v2, "jarvis.record.end"

    const-string v3, "jarvis.record.error"

    const-string v4, "jarvis.speech.begin"

    const-string v5, "jarvis.speech.end"

    const-string v6, "jarvis.speech.volume"

    const-string v7, "jarvis.record.maxlength"

    .line 45
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
