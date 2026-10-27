.class public Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;
.super Ljava/lang/Object;
.source "SpeechUiQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
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

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "gui.page.close.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "gui.page.open.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "gui.page.open.state.carspeechservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "is.superdialogue.opened"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "is.superdialogue.whitelist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->guiPageClose(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->guiPageOpen(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->guiPageState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->isSuperDialogueOpened(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->isSuperDialogueWhitelist(Ljava/lang/String;Ljava/lang/String;)Z

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
