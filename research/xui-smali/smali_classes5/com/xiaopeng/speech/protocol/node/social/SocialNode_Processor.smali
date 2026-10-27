.class public Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;
.super Ljava/lang/Object;
.source "SocialNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/social/SocialNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 11

    .line 54
    const-string v0, "command://social.motorcade.open"

    const-string v1, "command://social.motorcade.close"

    const-string v2, "command://social.grab.mic"

    const-string v3, "command://social.grab.mic.cancel"

    const-string v4, "command://social.create.topic"

    const-string v5, "command://social.reply.topic"

    const-string v6, "command://social.quit.chat"

    const-string v7, "command://social.confirm"

    const-string v8, "command://social.cancel"

    const-string v9, "jarvis.voice.click"

    const-string v10, "jarvis.back.click"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

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

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "command://social.grab.mic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "command://social.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_2
    const-string v0, "jarvis.back.click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_3
    const-string v0, "command://social.confirm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "command://social.motorcade.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "command://social.grab.mic.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "command://social.create.topic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "command://social.quit.chat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "command://social.reply.topic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_9
    const-string v0, "jarvis.voice.click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v0, "command://social.motorcade.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->onBackButtonClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    goto :goto_2

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->onVoiceButtonClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_2

    .line 40
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->onSocialCancel(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 37
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->onSocialConfirm(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    goto :goto_2

    .line 34
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->onSocialQuitChat(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_2

    .line 31
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->onSocialReplyTopic(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_2

    .line 28
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->onSocialCreateTopic(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    goto :goto_2

    .line 25
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->onSocialGrabMicCancel(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->onSocialGrabMic(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->onSocialMotorcadeClose(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/social/SocialNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->onSocialMotorcadeOpen(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 51
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58c4cfca -> :sswitch_a
        -0x4601be7d -> :sswitch_9
        -0x3ba55d27 -> :sswitch_8
        -0x39ac7b3b -> :sswitch_7
        -0x1c06ca31 -> :sswitch_6
        -0x188a0c6f -> :sswitch_5
        0x3f80118c -> :sswitch_4
        0x4d091b6e -> :sswitch_3
        0x56ad7f2a -> :sswitch_2
        0x6d11ac0c -> :sswitch_1
        0x7bcf74b7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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
