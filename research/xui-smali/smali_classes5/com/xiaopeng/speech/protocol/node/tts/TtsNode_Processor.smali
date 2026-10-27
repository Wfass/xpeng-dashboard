.class public Lcom/xiaopeng/speech/protocol/node/tts/TtsNode_Processor;
.super Ljava/lang/Object;
.source "TtsNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 4

    .line 33
    const-string v0, "speech.tts.start"

    const-string v1, "speech.tts.end"

    const-string v2, "tts.timbre.setting"

    const-string v3, "speech.tts.echo"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

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

    const v1, -0x6ff9e565

    if-eq v0, v1, :cond_3

    const v1, -0x66bc1734

    if-eq v0, v1, :cond_2

    const v1, -0x4560e6ac

    if-eq v0, v1, :cond_1

    const v1, -0xc0306c6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "tts.timbre.setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "speech.tts.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "speech.tts.echo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const-string v0, "speech.tts.start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->onTtsEcho(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->onTtsTimbreSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->onTtsEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/tts/TtsNode;->onTtsStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 30
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
