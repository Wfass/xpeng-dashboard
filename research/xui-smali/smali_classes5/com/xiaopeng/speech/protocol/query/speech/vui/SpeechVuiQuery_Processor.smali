.class public Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;
.super Ljava/lang/Object;
.source "SpeechVuiQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 13

    .line 48
    const-string v0, "vui.switch.checked"

    const-string v1, "vui.xtablayout.selecttab"

    const-string v2, "vui.xslider.setvalue"

    const-string v3, "vui.statefulbutton.checked"

    const-string v4, "vui.statefulbutton.setvalue"

    const-string v5, "vui.element.enabled"

    const-string v6, "vui.element.scroll.state"

    const-string v7, "vui.switch_opened"

    const-string v8, "vui.element.checkbox.checked"

    const-string v9, "vui.element.radiobutton.checked"

    const-string v10, "vui.scrollview.childview.visible"

    const-string v11, "vui.rebuild.scene"

    const-string v12, "canExecuteVuiEvent"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "vui.scrollview.childview.visible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "vui.element.radiobutton.checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "vui.rebuild.scene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "vui.switch_opened"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "vui.statefulbutton.setvalue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "vui.element.scroll.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "vui.element.checkbox.checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v0, "canExecuteVuiEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_8
    const-string v0, "vui.statefulbutton.checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_9
    const-string v0, "vui.switch.checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_a
    const-string v0, "vui.xslider.setvalue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_b
    const-string v0, "vui.element.enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_c
    const-string v0, "vui.xtablayout.selecttab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->canExecuteVuiEvent(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->rebuildScene(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isViewVisibleByScrollView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isRadiobuttonChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 33
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isCheckBoxChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isVuiSwitchOpened()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isElementCanScrolled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isElementEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->getStatefulButtonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isStatefulButtonChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->getXSliderIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isTableLayoutSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isSwitchChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7fdb84aa -> :sswitch_c
        -0x7220ae15 -> :sswitch_b
        -0x64b2b6d8 -> :sswitch_a
        -0x5cee142f -> :sswitch_9
        -0x5af527e5 -> :sswitch_8
        -0x4c312c2b -> :sswitch_7
        -0x3f865eee -> :sswitch_6
        -0xe03a23a -> :sswitch_5
        -0x9afb7a5 -> :sswitch_4
        0x2178d670 -> :sswitch_3
        0x3d5d6f95 -> :sswitch_2
        0x5caecd50 -> :sswitch_1
        0x7271d72d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
