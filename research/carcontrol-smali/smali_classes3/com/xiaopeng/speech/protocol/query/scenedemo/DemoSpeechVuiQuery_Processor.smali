.class public Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;
.super Ljava/lang/Object;
.source "DemoSpeechVuiQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 10

    const-string/jumbo v0, "vui.switch.checked.com.xiaopeng.speech.scenedemo"

    const-string/jumbo v1, "vui.xtablayout.selecttab.com.xiaopeng.speech.scenedemo"

    const-string/jumbo v2, "vui.xslider.setvalue.com.xiaopeng.speech.scenedemo"

    const-string/jumbo v3, "vui.statefulbutton.checked.com.xiaopeng.speech.scenedemo"

    const-string/jumbo v4, "vui.statefulbutton.setvalue.com.xiaopeng.speech.scenedemo"

    const-string/jumbo v5, "vui.element.enabled.com.xiaopeng.speech.scenedemo"

    const-string/jumbo v6, "vui.element.scroll.state.com.xiaopeng.speech.scenedemo"

    const-string/jumbo v7, "vui.element.checkbox.checked.com.xiaopeng.speech.scenedemo"

    const-string/jumbo v8, "vui.element.radiobutton.checked.com.xiaopeng.speech.scenedemo"

    const-string v9, "element.get.com.xiaopeng.speech.scenedemo"

    .line 42
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

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
    const-string/jumbo v0, "vui.statefulbutton.setvalue.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "vui.xtablayout.selecttab.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "vui.switch.checked.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "vui.element.radiobutton.checked.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "vui.statefulbutton.checked.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "vui.element.checkbox.checked.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "vui.xslider.setvalue.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "element.get.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "vui.element.enabled.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "vui.element.scroll.state.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->getStatefulButtonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isTableLayoutSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isSwitchChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isRadiobuttonChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isStatefulButtonChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isCheckBoxChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->getXSliderIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->getElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isElementEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isElementCanScrolled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x763863f1 -> :sswitch_9
        -0x6d537e8c -> :sswitch_8
        -0x6a00b0d3 -> :sswitch_7
        -0x47f8100f -> :sswitch_6
        -0x3ef6eda5 -> :sswitch_5
        -0x2ef0ec5c -> :sswitch_4
        -0x1ab641e7 -> :sswitch_3
        -0x12cebb26 -> :sswitch_2
        0x38f9d9f -> :sswitch_1
        0x6d6293e4 -> :sswitch_0
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
