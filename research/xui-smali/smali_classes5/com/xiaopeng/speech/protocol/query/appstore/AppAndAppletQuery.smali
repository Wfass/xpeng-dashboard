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

    .line 16
    return-void
.end method


# virtual methods
.method protected getAppCloseStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.third.app.close"
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getAppCloseStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getAppDownStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.third.app.download"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getAppDownStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getAppOpenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.third.app.open"
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getAppOpenStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getAppStatusV2(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.third.app.status"
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getAppStatusV2(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getAppletCloseStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.applet.close"
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getAppletCloseStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getAppletOpenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.applet.open"
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getAppletOpenStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getCurrentBackStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.current.back"
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getCurrentBackStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getCurrentCloseStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.current.close"
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->getCurrentCloseStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected hasDialogCloseByHand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "has.dialog.close.byhand"
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->hasDialogCloseByHand()Z

    move-result v0

    return v0
.end method

.method protected onCloseAppStoreMainPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.app.page.close"
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->onCloseAppStoreMainPage()I

    move-result v0

    return v0
.end method

.method protected onCloseAppletMainPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.applet.page.close"
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->onCloseAppletMainPage()I

    move-result v0

    return v0
.end method

.method protected onCloseAppshopPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.appshop.page.close"
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->onCloseAppshopPage()I

    move-result v0

    return v0
.end method

.method protected onOpenAppStoreMainPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.app.page.open"
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->onOpenAppStoreMainPage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onOpenAppletMainPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.applet.page.open"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->onOpenAppletMainPage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onOpenAppshopPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.appshop.page.open"
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->onOpenAppshopPage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected screenChangeSet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.screen.change.set"
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->screenChangeSet(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected screenFullSet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.screen.full.set"
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->screenFullSet(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected screenSplitSet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.screen.split.set"
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppAndAppletQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;->screenSplitSet(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
