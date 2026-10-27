.class public Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "MapQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;",
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
.method protected canNaviMultiPoiSearch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->canNaviMultiPoiSearch()I

    move-result p1

    return p1
.end method

.method protected getAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getCommonAddress(Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCurrentScaleLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getCurrentScaleLevel()I

    move-result p1

    return p1
.end method

.method protected getFavoriteOpenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getFavoriteOpenStatus()I

    move-result p1

    return p1
.end method

.method protected getListBottom(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getListBottom()I

    move-result p1

    return p1
.end method

.method protected getListInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getListInfo()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getListPageInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getListPageInfo()I

    move-result p1

    return p1
.end method

.method protected getListTop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getListTop()I

    move-result p1

    return p1
.end method

.method protected getNavigationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getNavigationInfo()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getOpenControlStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getOpenControlStatus()I

    move-result p1

    return p1
.end method

.method protected getPoiDetailsFavoriteStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getPoiDetailsFavoriteStatus()I

    move-result p1

    return p1
.end method

.method protected getRouteChangeResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getRouteChangeResult(Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSwitchMainRoadStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getSwitchMainRoadStatus()I

    move-result p1

    return p1
.end method

.method protected getSwitchSideRoadStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getSwitchSideRoadStatus()I

    move-result p1

    return p1
.end method

.method protected isAccountLogin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isGaodeLogin()Z

    move-result p1

    return p1
.end method

.method protected isCalculatePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isCalculatePath()Z

    move-result p1

    return p1
.end method

.method protected isCruise(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isCruise()Z

    move-result p1

    return p1
.end method

.method protected isExplorePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isExplorePath()Z

    move-result p1

    return p1
.end method

.method protected isNaviSearching(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isNaviSearching()Z

    move-result p1

    return p1
.end method

.method protected isNaviSpeechCruiseOpened(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isNaviSpeechCruiseOpened()Z

    move-result p1

    return p1
.end method

.method protected isNavigation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isNavigation()Z

    move-result p1

    return p1
.end method

.method protected isSRMap(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isSRMap()Z

    move-result p1

    return p1
.end method

.method protected isZoominMax(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isZoominMax()Z

    move-result p1

    return p1
.end method

.method protected isZoomoutMax(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isZoomoutMin()Z

    move-result p1

    return p1
.end method
