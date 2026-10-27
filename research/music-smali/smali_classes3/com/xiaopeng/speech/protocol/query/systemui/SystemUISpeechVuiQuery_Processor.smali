.class public Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery_Processor;
.super Ljava/lang/Object;
.source "SystemUISpeechVuiQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "element.get.com.xiaopeng.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_1
    const-string v0, "vui.xtablayout.selecttab.com.xiaopeng.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "vui.statefulbutton.setvalue.com.xiaopeng.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "vui.switch.checked.com.xiaopeng.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "vui.element.checkbox.checked.com.xiaopeng.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "vui.statefulbutton.checked.com.xiaopeng.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "vui.element.scroll.state.com.xiaopeng.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "vui.element.radiobutton.checked.com.xiaopeng.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v0, "vui.xslider.setvalue.com.xiaopeng.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v0, "vui.element.enabled.com.xiaopeng.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUISpeechVuiQuery;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x782e46ec -> :sswitch_9
        -0x61d20b6f -> :sswitch_8
        -0x246b9547 -> :sswitch_7
        -0x1dcd6151 -> :sswitch_6
        -0x3be84bc -> :sswitch_5
        0x6c520fb -> :sswitch_4
        0x18ab427a -> :sswitch_3
        0x1b393b84 -> :sswitch_2
        0x3c9d303f -> :sswitch_1
        0x60a64fcd -> :sswitch_0
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

.method public a()[Ljava/lang/String;
    .locals 10

    const-string v0, "vui.switch.checked.com.xiaopeng.systemui"

    const-string v1, "vui.xtablayout.selecttab.com.xiaopeng.systemui"

    const-string v2, "vui.xslider.setvalue.com.xiaopeng.systemui"

    const-string v3, "vui.statefulbutton.checked.com.xiaopeng.systemui"

    const-string v4, "vui.statefulbutton.setvalue.com.xiaopeng.systemui"

    const-string v5, "vui.element.enabled.com.xiaopeng.systemui"

    const-string v6, "vui.element.scroll.state.com.xiaopeng.systemui"

    const-string v7, "vui.element.checkbox.checked.com.xiaopeng.systemui"

    const-string v8, "vui.element.radiobutton.checked.com.xiaopeng.systemui"

    const-string v9, "element.get.com.xiaopeng.systemui"

    .line 42
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
