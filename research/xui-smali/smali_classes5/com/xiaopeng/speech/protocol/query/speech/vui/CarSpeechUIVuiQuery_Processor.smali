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
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 9

    .line 40
    const-string v0, "vui.switch.checked.com.xiaopeng.carspeechservice"

    const-string v1, "vui.xtablayout.selecttab.com.xiaopeng.carspeechservice"

    const-string v2, "vui.xslider.setvalue.com.xiaopeng.carspeechservice"

    const-string v3, "vui.statefulbutton.checked.com.xiaopeng.carspeechservice"

    const-string v4, "vui.statefulbutton.setvalue.com.xiaopeng.carspeechservice"

    const-string v5, "vui.element.enabled.com.xiaopeng.carspeechservice"

    const-string v6, "vui.element.scroll.state.com.xiaopeng.carspeechservice"

    const-string v7, "vui.element.checkbox.checked.com.xiaopeng.carspeechservice"

    const-string v8, "vui.element.radiobutton.checked.com.xiaopeng.carspeechservice"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

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

    goto :goto_0

    :sswitch_0
    const-string v0, "vui.element.enabled.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "vui.element.scroll.state.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "vui.statefulbutton.setvalue.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "vui.xtablayout.selecttab.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "vui.switch.checked.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "vui.element.radiobutton.checked.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_6
    const-string v0, "vui.statefulbutton.checked.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "vui.element.checkbox.checked.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "vui.xslider.setvalue.com.xiaopeng.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isRadioButtonChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isCheckBoxChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isElementCanScrolled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isElementEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->getStatefulButtonValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isStatefulButtonChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->getXSliderIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isTableLayoutSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/vui/CarSpeechUIVuiQuery;->isSwitchChecked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

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
