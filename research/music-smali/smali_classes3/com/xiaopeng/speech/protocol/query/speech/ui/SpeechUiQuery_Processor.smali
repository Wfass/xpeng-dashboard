.class public Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;
.super Ljava/lang/Object;
.source "SpeechUiQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "gui.page.close.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "gui.page.open.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "gui.page.open.state.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "is.superdialogue.opened"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v0, "is.superdialogue.whitelist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5e6dfe58 -> :sswitch_4
        -0x54809558 -> :sswitch_3
        -0x20b0446c -> :sswitch_2
        0x59bf99d7 -> :sswitch_1
        0x5b02ad81 -> :sswitch_0
    .end sparse-switch
.end method

.method public a()[Ljava/lang/String;
    .locals 5

    const-string v0, "is.superdialogue.whitelist"

    const-string v1, "is.superdialogue.opened"

    const-string v2, "gui.page.open.state.carspeechservice"

    const-string v3, "gui.page.open.carspeechservice"

    const-string v4, "gui.page.close.carspeechservice"

    .line 32
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
