.class public interface abstract Lcom/xiaopeng/speech/protocol/query/navi/IMapQueryCaller;
.super Ljava/lang/Object;
.source "IMapQueryCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public canNaviMultiPoiSearch()I
    .locals 1

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getCommonAddress(Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;)Ljava/lang/String;
.end method

.method public getCurrentScaleLevel()I
    .locals 1

    .line 118
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getFavoriteOpenStatus()I
.end method

.method public getListBottom()I
    .locals 1

    .line 151
    const/4 v0, -0x1

    return v0
.end method

.method public getListInfo()Ljava/lang/String;
    .locals 1

    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListPageInfo()I
    .locals 1

    .line 158
    const/4 v0, -0x1

    return v0
.end method

.method public getListTop()I
    .locals 1

    .line 144
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getNavigationInfo()Ljava/lang/String;
.end method

.method public abstract getOpenControlStatus()I
.end method

.method public getPoiDetailsFavoriteStatus()I
    .locals 1

    .line 129
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getRouteChangeResult(Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;)Ljava/lang/String;
.end method

.method public abstract getSwitchMainRoadStatus()I
.end method

.method public abstract getSwitchSideRoadStatus()I
.end method

.method public abstract isCalculatePath()Z
.end method

.method public abstract isCruise()Z
.end method

.method public abstract isExplorePath()Z
.end method

.method public isGaodeLogin()Z
    .locals 1

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public isNaviSearching()Z
    .locals 1

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public isNaviSpeechCruiseOpened()Z
    .locals 1

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isNavigation()Z
.end method

.method public isSRMap()Z
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isZoominMax()Z
.end method

.method public abstract isZoomoutMin()Z
.end method
