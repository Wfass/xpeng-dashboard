.class public Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;
.super Ljava/lang/Object;
.source "ContextNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/context/ContextNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 32

    .line 117
    const-string v0, "jarvis.context.input"

    const-string v1, "jarvis.context.output"

    const-string v2, "context.tips.text"

    const-string v3, "context.widget.custom"

    const-string v4, "context.widget.text"

    const-string v5, "context.widget.list"

    const-string v6, "context.list.item.focus"

    const-string v7, "context.widget.media"

    const-string v8, "context.widget.card"

    const-string v9, "context.widget.recommend"

    const-string v10, "context.widget.search"

    const-string v11, "context.expression"

    const-string v12, "context.say.welcome"

    const-string v13, "context.list.item.scroll"

    const-string v14, "context.list.item.select"

    const-string v15, "context.widget.cancel"

    const-string v16, "context.widget.next.page"

    const-string v17, "context.widget.prev.page"

    const-string v18, "context.widget.topping.page"

    const-string v19, "context.widget.low.page"

    const-string v20, "context.list.item.cancel.focus"

    const-string v21, "context.script.start"

    const-string v22, "context.script.status"

    const-string v23, "context.exit.recommend.card"

    const-string v24, "context.widget.list.fold"

    const-string v25, "context.widget.list.expend"

    const-string v26, "context.widget.list.stop.countdown"

    const-string v27, "context.tips.listening.show"

    const-string v28, "context.tips.listening.stop"

    const-string v29, "jarvis.tts.echo"

    const-string v30, "jarvis.xgpt.sceneinfo"

    const-string v31, "jarvis.xgpt.llminfo"

    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

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
    const-string v0, "context.widget.list.fold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "jarvis.context.output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "context.script.start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "context.script.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "context.list.item.cancel.focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "context.expression"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "context.tips.listening.stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "context.tips.listening.show"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "context.widget.list.stop.countdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "context.list.item.select"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "context.list.item.scroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "context.widget.text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "context.widget.list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "context.widget.card"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "context.widget.media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "context.exit.recommend.card"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "context.widget.low.page"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "context.widget.next.page"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "context.widget.recommend"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "context.widget.list.expend"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "jarvis.xgpt.llminfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "context.widget.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "context.list.item.focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_17
    const-string v0, "context.say.welcome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_18
    const-string v0, "context.widget.custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_19
    const-string v0, "context.widget.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_1a
    const-string v0, "jarvis.tts.echo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_1

    :sswitch_1b
    const-string v0, "jarvis.context.input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1c
    const-string v0, "context.tips.text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1d
    const-string v0, "jarvis.xgpt.sceneinfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_1

    :sswitch_1e
    const-string v0, "context.widget.prev.page"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_1f
    const-string v0, "context.widget.topping.page"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onLLMInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    goto/16 :goto_2

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onSmartSceneCreate(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    goto/16 :goto_2

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onTtsEcho(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    goto/16 :goto_2

    .line 100
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onTipsListeningStop(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    goto/16 :goto_2

    .line 97
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onTipsListeningShow(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    goto/16 :goto_2

    .line 94
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetListStopCountdown(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    goto/16 :goto_2

    .line 91
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetListExpend(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    goto/16 :goto_2

    .line 88
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetListFold(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    goto/16 :goto_2

    .line 85
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onExitRecommendCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    goto/16 :goto_2

    .line 82
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onScriptStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    goto/16 :goto_2

    .line 79
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onScript(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    goto/16 :goto_2

    .line 76
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetListCancelFocus(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    goto/16 :goto_2

    .line 73
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onPageSetLow(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    goto/16 :goto_2

    .line 70
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onPageTopping(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    goto/16 :goto_2

    .line 67
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onPagePrev(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    goto/16 :goto_2

    .line 64
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onPageNext(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    goto/16 :goto_2

    .line 61
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetCancel(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    goto :goto_2

    .line 58
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetListSelect(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    goto :goto_2

    .line 55
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetScroll(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    goto :goto_2

    .line 52
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onSayWelcome(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    goto :goto_2

    .line 49
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onExpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_2

    .line 46
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    goto :goto_2

    .line 43
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetRecommend(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_2

    .line 40
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 37
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetMedia(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    goto :goto_2

    .line 34
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetListFocus(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_2

    .line 31
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetList(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_2

    .line 28
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetText(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    goto :goto_2

    .line 25
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onWidgetCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_1d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onTipsText(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_1e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onOutputText(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_1f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/context/ContextNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/context/ContextNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/context/ContextNode;->onInputText(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 114
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a1e337f -> :sswitch_1f
        -0x69921361 -> :sswitch_1e
        -0x4b4366d8 -> :sswitch_1d
        -0x436b175c -> :sswitch_1c
        -0x3e53fb3e -> :sswitch_1b
        -0x2f7a4717 -> :sswitch_1a
        -0x2929889b -> :sswitch_19
        -0x280d2ba4 -> :sswitch_18
        -0x1914d560 -> :sswitch_17
        -0x17b2c8b2 -> :sswitch_16
        -0xda9516d -> :sswitch_15
        0x260ae89 -> :sswitch_14
        0x2fc26e3 -> :sswitch_13
        0x63f9bf1 -> :sswitch_12
        0x11227bdf -> :sswitch_11
        0x130da714 -> :sswitch_10
        0x17550513 -> :sswitch_f
        0x1800dd99 -> :sswitch_e
        0x324e02bb -> :sswitch_d
        0x32523849 -> :sswitch_c
        0x3255ccd8 -> :sswitch_b
        0x36e65317 -> :sswitch_a
        0x36ffa146 -> :sswitch_9
        0x39dd3b8a -> :sswitch_8
        0x5be66b07 -> :sswitch_7
        0x5be6980c -> :sswitch_6
        0x5ea96837 -> :sswitch_5
        0x6c34b92e -> :sswitch_4
        0x76f98c76 -> :sswitch_3
        0x7773675e -> :sswitch_2
        0x7e760b09 -> :sswitch_1
        0x7f9ad286 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
