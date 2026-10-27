.class public Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode_Processor;
.super Ljava/lang/Object;
.source "SkillDialogNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 6

    const-string v0, "ai.dismiss.skill.window"

    const-string v1, "ai.show.skill.window"

    const-string v2, "ai.forward.screen.event"

    const-string v3, "speech.skill.refresh.data"

    const-string v4, "speech.skill.double.guide"

    const-string v5, "speech.skill.key.guide"

    .line 39
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

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
    const-string v0, "speech.skill.double.guide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "speech.skill.refresh.data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "ai.forward.screen.event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "ai.dismiss.skill.window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "ai.show.skill.window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "speech.skill.key.guide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->onShowDoubleGuide(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->onRefreshSkillData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->onForwardScreenEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->onCloseWindow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->onOpenWindow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->onShowKeyGuide(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f07adbc -> :sswitch_5
        -0x4a718ec8 -> :sswitch_4
        -0x2d8c32e9 -> :sswitch_3
        -0x57226d9 -> :sswitch_2
        0x79c75be6 -> :sswitch_1
        0x7dc8f7a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
