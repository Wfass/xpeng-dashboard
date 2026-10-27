.class public Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery_Processor;
.super Ljava/lang/Object;
.source "ChargeSpeechVuiQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "vui.statefulbutton.checked.com.xiaopeng.chargecontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "vui.element.checkbox.checked.com.xiaopeng.chargecontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "vui.statefulbutton.setvalue.com.xiaopeng.chargecontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "vui.xslider.setvalue.com.xiaopeng.chargecontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "vui.element.enabled.com.xiaopeng.chargecontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "vui.element.scroll.state.com.xiaopeng.chargecontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "vui.xtablayout.selecttab.com.xiaopeng.chargecontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "vui.element.radiobutton.checked.com.xiaopeng.chargecontrol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v0, "vui.switch.checked.com.xiaopeng.chargecontrol"

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

    const/4 p1, 0x0

    return-object p1

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeSpeechVuiQuery;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7f95aeee -> :sswitch_8
        -0x2b8487cd -> :sswitch_7
        -0x1830c993 -> :sswitch_6
        -0x1472b203 -> :sswitch_5
        -0x4581548 -> :sswitch_4
        0x206555b -> :sswitch_3
        0x5c06e48 -> :sswitch_2
        0x29ec5b31 -> :sswitch_1
        0x52aa0688 -> :sswitch_0
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

.method public a()[Ljava/lang/String;
    .locals 9

    const-string v0, "vui.switch.checked.com.xiaopeng.chargecontrol"

    const-string v1, "vui.xtablayout.selecttab.com.xiaopeng.chargecontrol"

    const-string v2, "vui.xslider.setvalue.com.xiaopeng.chargecontrol"

    const-string v3, "vui.statefulbutton.checked.com.xiaopeng.chargecontrol"

    const-string v4, "vui.statefulbutton.setvalue.com.xiaopeng.chargecontrol"

    const-string v5, "vui.element.enabled.com.xiaopeng.chargecontrol"

    const-string v6, "vui.element.scroll.state.com.xiaopeng.chargecontrol"

    const-string v7, "vui.element.checkbox.checked.com.xiaopeng.chargecontrol"

    const-string v8, "vui.element.radiobutton.checked.com.xiaopeng.chargecontrol"

    .line 40
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
