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
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 10

    .line 42
    const-string v0, "vui.switch.checked.com.xiaopeng.speech.scenedemo"

    const-string v1, "vui.xtablayout.selecttab.com.xiaopeng.speech.scenedemo"

    const-string v2, "vui.xslider.setvalue.com.xiaopeng.speech.scenedemo"

    const-string v3, "vui.statefulbutton.checked.com.xiaopeng.speech.scenedemo"

    const-string v4, "vui.statefulbutton.setvalue.com.xiaopeng.speech.scenedemo"

    const-string v5, "vui.element.enabled.com.xiaopeng.speech.scenedemo"

    const-string v6, "vui.element.scroll.state.com.xiaopeng.speech.scenedemo"

    const-string v7, "vui.element.checkbox.checked.com.xiaopeng.speech.scenedemo"

    const-string v8, "vui.element.radiobutton.checked.com.xiaopeng.speech.scenedemo"

    const-string v9, "element.get.com.xiaopeng.speech.scenedemo"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

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
    const-string v0, "vui.statefulbutton.setvalue.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "vui.xtablayout.selecttab.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "vui.switch.checked.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "vui.element.radiobutton.checked.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v0, "vui.statefulbutton.checked.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "vui.element.checkbox.checked.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "vui.xslider.setvalue.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "element.get.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_8
    const-string v0, "vui.element.enabled.com.xiaopeng.speech.scenedemo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_9
    const-string v0, "vui.element.scroll.state.com.xiaopeng.speech.scenedemo"

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

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->getElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isRadiobuttonChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isCheckBoxChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isElementCanScrolled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isElementEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->getStatefulButtonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isStatefulButtonChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->getXSliderIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isTableLayoutSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/scenedemo/DemoSpeechVuiQuery;->isSwitchChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

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
