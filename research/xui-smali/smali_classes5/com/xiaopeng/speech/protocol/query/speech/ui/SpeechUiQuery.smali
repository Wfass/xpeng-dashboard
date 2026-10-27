.class public Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SpeechUiQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected guiPageClose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.page.close.carspeechservice"
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;->guiPageClose(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected guiPageOpen(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.page.open.carspeechservice"
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;->guiPageOpen(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected guiPageState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.page.open.state.carspeechservice"
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;->guiPageState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected isSuperDialogueOpened(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "is.superdialogue.opened"
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;->isSuperDialogueOpened()Z

    move-result v0

    return v0
.end method

.method protected isSuperDialogueWhitelist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "is.superdialogue.whitelist"
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;->isSuperDialogueWhitelist()Z

    move-result v0

    return v0
.end method
