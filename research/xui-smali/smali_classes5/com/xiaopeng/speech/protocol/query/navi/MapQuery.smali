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

    .line 16
    return-void
.end method


# virtual methods
.method protected canNaviMultiPoiSearch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.can.multi.poi.search"
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->canNaviMultiPoiSearch()I

    move-result v0

    return v0
.end method

.method protected getAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.common.addr.get"
    .end annotation

    .line 35
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;

    move-result-object v0

    .line 36
    .local v0, "addressBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getCommonAddress(Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getCurrentScaleLevel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.scale.current.level"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getCurrentScaleLevel()I

    move-result v0

    return v0
.end method

.method protected getFavoriteOpenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.favorite.open.status"
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getFavoriteOpenStatus()I

    move-result v0

    return v0
.end method

.method protected getListBottom(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "context.info.navi.list.bottom"
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getListBottom()I

    move-result v0

    return v0
.end method

.method protected getListInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.query.list.info"
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getListInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getListPageInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "context.info.navi.list.onepage"
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getListPageInfo()I

    move-result v0

    return v0
.end method

.method protected getListTop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "context.info.navi.list.top"
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getListTop()I

    move-result v0

    return v0
.end method

.method protected getNavigationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.get.navigation.info"
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getNavigationInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOpenControlStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.open.controls.status"
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getOpenControlStatus()I

    move-result v0

    return v0
.end method

.method protected getPoiDetailsFavoriteStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.poi.details.favorite.status"
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getPoiDetailsFavoriteStatus()I

    move-result v0

    return v0
.end method

.method protected getRouteChangeResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.route.change"
    .end annotation

    .line 41
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;

    move-result-object v0

    .line 42
    .local v0, "routeChangeResultBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getRouteChangeResult(Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getSwitchMainRoadStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.main.road.status"
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getSwitchMainRoadStatus()I

    move-result v0

    return v0
.end method

.method protected getSwitchSideRoadStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.side.road.status"
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->getSwitchSideRoadStatus()I

    move-result v0

    return v0
.end method

.method protected isAccountLogin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "is.GaodeAccount.Login"
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isGaodeLogin()Z

    move-result v0

    return v0
.end method

.method protected isCalculatePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.is.calculate.path"
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isCalculatePath()Z

    move-result v0

    return v0
.end method

.method protected isCruise(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.is.cruise"
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isCruise()Z

    move-result v0

    return v0
.end method

.method protected isExplorePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.is.explore.path"
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isExplorePath()Z

    move-result v0

    return v0
.end method

.method protected isNaviSearching(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.is.searching"
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isNaviSearching()Z

    move-result v0

    return v0
.end method

.method protected isNaviSpeechCruiseOpened(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.speech.cruise.opened"
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isNaviSpeechCruiseOpened()Z

    move-result v0

    return v0
.end method

.method protected isNavigation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.is.navigation"
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isNavigation()Z

    move-result v0

    return v0
.end method

.method protected isSRMap(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.is.sr"
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isSRMap()Z

    move-result v0

    return v0
.end method

.method protected isZoominMax(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.is.zoomin.max"
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isZoominMax()Z

    move-result v0

    return v0
.end method

.method protected isZoomoutMax(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "navi.is.zoomout.min"
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/MapQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;->isZoomoutMin()Z

    move-result v0

    return v0
.end method
