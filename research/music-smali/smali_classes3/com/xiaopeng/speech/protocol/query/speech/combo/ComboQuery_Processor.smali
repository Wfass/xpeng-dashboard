.class public Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery_Processor;
.super Ljava/lang/Object;
.source "ComboQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "combo.check.user.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_1
    const-string v0, "combo.screen.get.current.user.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "combo.exit.user.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_3
    const-string v0, "combo.get.current.user.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "combo.gui.page.checkforbidden"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string v0, "combo.enter.user.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7c87f210 -> :sswitch_5
        -0x68a9fc63 -> :sswitch_4
        -0x3fb44147 -> :sswitch_3
        -0x38963a8a -> :sswitch_2
        0x64c36377 -> :sswitch_1
        0x693cf020 -> :sswitch_0
    .end sparse-switch
.end method

.method public a()[Ljava/lang/String;
    .locals 6

    const-string v0, "combo.enter.user.mode"

    const-string v1, "combo.exit.user.mode"

    const-string v2, "combo.check.user.mode"

    const-string v3, "combo.get.current.user.mode"

    const-string v4, "combo.screen.get.current.user.mode"

    const-string v5, "combo.gui.page.checkforbidden"

    .line 34
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
