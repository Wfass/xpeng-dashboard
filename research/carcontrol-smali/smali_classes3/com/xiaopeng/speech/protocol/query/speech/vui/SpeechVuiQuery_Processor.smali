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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 13

    const-string/jumbo v0, "vui.switch.checked"

    const-string/jumbo v1, "vui.xtablayout.selecttab"

    const-string/jumbo v2, "vui.xslider.setvalue"

    const-string/jumbo v3, "vui.statefulbutton.checked"

    const-string/jumbo v4, "vui.statefulbutton.setvalue"

    const-string/jumbo v5, "vui.element.enabled"

    const-string/jumbo v6, "vui.element.scroll.state"

    const-string/jumbo v7, "vui.switch_opened"

    const-string v8, "vui.element.checkbox.checked"

    const-string/jumbo v9, "vui.element.radiobutton.checked"

    const-string/jumbo v10, "vui.scrollview.childview.visible"

    const-string/jumbo v11, "vui.rebuild.scene"

    const-string v12, "canExecuteVuiEvent"

    .line 48
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "vui.scrollview.childview.visible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "vui.element.radiobutton.checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "vui.rebuild.scene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "vui.switch_opened"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "vui.statefulbutton.setvalue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v0, "vui.element.scroll.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "vui.element.checkbox.checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "canExecuteVuiEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "vui.statefulbutton.checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "vui.switch.checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string/jumbo v0, "vui.xslider.setvalue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "vui.element.enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_c
    const-string/jumbo v0, "vui.xtablayout.selecttab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isViewVisibleByScrollView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isRadiobuttonChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->rebuildScene(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isVuiSwitchOpened()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->getStatefulButtonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isElementCanScrolled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isCheckBoxChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->canExecuteVuiEvent(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isStatefulButtonChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isSwitchChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->getXSliderIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isElementEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/SpeechVuiQuery;->isTableLayoutSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

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
