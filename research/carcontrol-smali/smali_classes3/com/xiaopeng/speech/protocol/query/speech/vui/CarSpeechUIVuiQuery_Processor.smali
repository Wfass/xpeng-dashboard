.class public Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;
.super Ljava/lang/Object;
.source "CarSpeechUIVuiQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 9

    const-string/jumbo v0, "vui.switch.checked.com.xiaopeng.carspeechservice"

    const-string/jumbo v1, "vui.xtablayout.selecttab.com.xiaopeng.carspeechservice"

    const-string/jumbo v2, "vui.xslider.setvalue.com.xiaopeng.carspeechservice"

    const-string/jumbo v3, "vui.statefulbutton.checked.com.xiaopeng.carspeechservice"

    const-string/jumbo v4, "vui.statefulbutton.setvalue.com.xiaopeng.carspeechservice"

    const-string/jumbo v5, "vui.element.enabled.com.xiaopeng.carspeechservice"

    const-string/jumbo v6, "vui.element.scroll.state.com.xiaopeng.carspeechservice"

    const-string/jumbo v7, "vui.element.checkbox.checked.com.xiaopeng.carspeechservice"

    const-string/jumbo v8, "vui.element.radiobutton.checked.com.xiaopeng.carspeechservice"

    .line 40
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

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
    const-string/jumbo v0, "vui.element.enabled.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "vui.element.scroll.state.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "vui.statefulbutton.setvalue.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "vui.xtablayout.selecttab.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "vui.switch.checked.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "vui.element.radiobutton.checked.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "vui.statefulbutton.checked.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "vui.element.checkbox.checked.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "vui.xslider.setvalue.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isElementEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isElementCanScrolled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->getStatefulButtonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isTableLayoutSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isSwitchChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isRadioButtonChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isStatefulButtonChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isCheckBoxChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->getXSliderIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x674af633 -> :sswitch_8
        -0x5e49d3c9 -> :sswitch_7
        -0x4e43d280 -> :sswitch_6
        -0x3a09280b -> :sswitch_5
        -0x3221a14a -> :sswitch_4
        -0x1bc34885 -> :sswitch_3
        0x4e0fadc0 -> :sswitch_2
        0x6a74b5eb -> :sswitch_1
        0x73599b50 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
