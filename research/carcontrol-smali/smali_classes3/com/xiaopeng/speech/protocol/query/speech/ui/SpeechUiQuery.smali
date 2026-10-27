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

    return-void
.end method


# virtual methods
.method protected guiPageClose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;->guiPageClose(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected guiPageOpen(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;->guiPageOpen(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected guiPageState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;->guiPageState(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected isSuperDialogueOpened(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;->isSuperDialogueOpened()Z

    move-result p1

    return p1
.end method

.method protected isSuperDialogueWhitelist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ui/SpeechUiQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ui/ISpeechUiCaller;->isSuperDialogueWhitelist()Z

    move-result p1

    return p1
.end method
