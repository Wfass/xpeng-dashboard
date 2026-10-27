.class public Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "AppAndAppletQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAppCloseStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getAppCloseStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getAppDownStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getAppDownStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getAppOpenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getAppOpenStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getAppStatusV2(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getAppStatusV2(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getAppletCloseStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getAppletCloseStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getAppletOpenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getAppletOpenStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getCurrentBackStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getCurrentBackStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getCurrentCloseStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getCurrentCloseStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected hasDialogCloseByHand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->hasDialogCloseByHand()Z

    move-result p1

    return p1
.end method

.method protected onCloseAppStoreMainPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->onCloseAppStoreMainPage()I

    move-result p1

    return p1
.end method

.method protected onCloseAppletMainPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->onCloseAppletMainPage()I

    move-result p1

    return p1
.end method

.method protected onCloseAppshopPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->onCloseAppshopPage()I

    move-result p1

    return p1
.end method

.method protected onOpenAppStoreMainPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->onOpenAppStoreMainPage(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected onOpenAppletMainPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->onOpenAppletMainPage(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected onOpenAppshopPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 21
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->onOpenAppshopPage(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected screenChangeSet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->screenChangeSet(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected screenFullSet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->screenFullSet(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected screenSplitSet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->screenSplitSet(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
