.class public interface abstract Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;
.super Ljava/lang/Object;
.source "NaviListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onAddressGet(Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;)V
.end method

.method public abstract onAddressSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V
.end method

.method public onAlertsPreferenceSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V
    .locals 0

    return-void
.end method

.method public onAutoRerouteAskFirst()V
    .locals 0

    return-void
.end method

.method public onAutoRerouteBetterRoute()V
    .locals 0

    return-void
.end method

.method public onAutoRerouteNever()V
    .locals 0

    return-void
.end method

.method public onAvoidRouteSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V
    .locals 0

    return-void
.end method

.method public abstract onCloseTraffic()V
.end method

.method public abstract onConfirmCancel()V
.end method

.method public abstract onConfirmOk()V
.end method

.method public onControlBridge3DMap()V
    .locals 0

    return-void
.end method

.method public onControlBridge3DMapOff()V
    .locals 0

    return-void
.end method

.method public abstract onControlChargeClose()V
.end method

.method public abstract onControlChargeOpen()V
.end method

.method public onControlChargeServiceOpen(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract onControlClose()V
.end method

.method public abstract onControlCloseRibbonMap()V
.end method

.method public abstract onControlCloseSmallMap()V
.end method

.method public onControlCommuterRouteShow()V
    .locals 0

    return-void
.end method

.method public onControlCommuterRouteShowOff()V
    .locals 0

    return-void
.end method

.method public onControlDashboardDisplay2DHeadUp()V
    .locals 0

    return-void
.end method

.method public onControlDashboardDisplay3DHeadUp()V
    .locals 0

    return-void
.end method

.method public abstract onControlDisPlayCar()V
.end method

.method public abstract onControlDisPlayNorth()V
.end method

.method public onControlDisplay2DHeadUp()V
    .locals 0

    return-void
.end method

.method public abstract onControlDisplay3D()V
.end method

.method public onControlDisplay3DHeadUp()V
    .locals 0

    return-void
.end method

.method public onControlDriveChargeLess()V
    .locals 0

    return-void
.end method

.method public onControlDriveChargeLessOff()V
    .locals 0

    return-void
.end method

.method public abstract onControlFavoriteClose()V
.end method

.method public abstract onControlFavoriteOpen()V
.end method

.method public onControlGaodeAccountPageOpen(I)V
    .locals 0

    return-void
.end method

.method public onControlHighroadFirst()V
    .locals 0

    return-void
.end method

.method public onControlHighroadFirstOff()V
    .locals 0

    return-void
.end method

.method public abstract onControlHistory()V
.end method

.method public onControlHistoryClose()V
    .locals 0

    return-void
.end method

.method public abstract onControlOpenRibbonMap()V
.end method

.method public abstract onControlOpenSmallMap()V
.end method

.method public abstract onControlOverviewClose()V
.end method

.method public abstract onControlOverviewOpen()V
.end method

.method public onControlParkRecommendOff()V
    .locals 0

    return-void
.end method

.method public onControlParkRecommendOn()V
    .locals 0

    return-void
.end method

.method public onControlRealtimeTraffic()V
    .locals 0

    return-void
.end method

.method public onControlRealtimeTrafficOff()V
    .locals 0

    return-void
.end method

.method public abstract onControlRoadAhead()V
.end method

.method public abstract onControlRoadAheadOff()V
.end method

.method public abstract onControlSecurityRemind()V
.end method

.method public abstract onControlSecurityRemindOff()V
.end method

.method public onControlSettingsClose()V
    .locals 0

    return-void
.end method

.method public abstract onControlSettingsOpen()V
.end method

.method public onControlSmartChargingRoute()V
    .locals 0

    return-void
.end method

.method public onControlSmartChargingRouteOff()V
    .locals 0

    return-void
.end method

.method public onControlSmartRecommend()V
    .locals 0

    return-void
.end method

.method public onControlSmartRecommendOff()V
    .locals 0

    return-void
.end method

.method public abstract onControlSmartScale()V
.end method

.method public abstract onControlSmartScaleOff()V
.end method

.method public onControlSpeechCruise()V
    .locals 0

    return-void
.end method

.method public onControlSpeechCruiseOff()V
    .locals 0

    return-void
.end method

.method public abstract onControlSpeechDetail()V
.end method

.method public abstract onControlSpeechEye()V
.end method

.method public abstract onControlSpeechEyeOff()V
.end method

.method public abstract onControlSpeechGeneral()V
.end method

.method public abstract onControlSpeechMute()V
.end method

.method public abstract onControlSpeechSimple()V
.end method

.method public onControlSpeechStandard()V
    .locals 0

    return-void
.end method

.method public abstract onControlSpeechSuperSimple()V
.end method

.method public abstract onControlStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V
.end method

.method public onControlTimeFirst()V
    .locals 0

    return-void
.end method

.method public onControlTimeFirstOff()V
    .locals 0

    return-void
.end method

.method public onControlTrafficIncident()V
    .locals 0

    return-void
.end method

.method public onControlTrafficIncidentOff()V
    .locals 0

    return-void
.end method

.method public abstract onControlVolOff(ZI)V
.end method

.method public abstract onControlVolOn(ZI)V
.end method

.method public abstract onControlWaypointStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;)V
.end method

.method public abstract onDataControlDisplay3dTts()V
.end method

.method public abstract onDataControlDisplayCarTts()V
.end method

.method public abstract onDataControlDisplayNorthTts()V
.end method

.method public abstract onDriveAdvoidTrafficControl()V
.end method

.method public abstract onDriveAvoidCharge()V
.end method

.method public abstract onDriveAvoidChargeOff()V
.end method

.method public abstract onDriveAvoidCongestion()V
.end method

.method public abstract onDriveAvoidCongestionOff()V
.end method

.method public abstract onDriveAvoidControls()V
.end method

.method public abstract onDriveAvoidControlsOff()V
.end method

.method public abstract onDriveHighwayFirst()V
.end method

.method public abstract onDriveHighwayFirstOff()V
.end method

.method public abstract onDriveHighwayNo()V
.end method

.method public abstract onDriveHighwayNoOff()V
.end method

.method public abstract onDriveRadarRoute()V
.end method

.method public abstract onDriveRadarRouteOff()V
.end method

.method public abstract onGetSettingsInfo()V
.end method

.method public onListItemSelected(I)V
    .locals 0

    return-void
.end method

.method public abstract onMainRoad()V
.end method

.method public abstract onMapEnterFindPath()V
.end method

.method public abstract onMapExitFindPath()V
.end method

.method public abstract onMapOverview()V
.end method

.method public onMapShowSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V
    .locals 0

    return-void
.end method

.method public abstract onMapZoomIn()V
.end method

.method public abstract onMapZoomOut()V
.end method

.method public abstract onMapZoominMax()V
.end method

.method public abstract onMapZoomoutMin()V
.end method

.method public onNaviChargingSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNaviListCancel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNaviMultiPoiSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNaviPerformImmediate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNaviSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNaviSearchFilter([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNaviSearchOnWay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract onNavigatingGet()Z
.end method

.method public abstract onNearbySearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;)V
.end method

.method public abstract onOpenTraffic()V
.end method

.method public abstract onParkingSelect(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;)V
.end method

.method public onPoiDetailsFavoriteAdd()V
    .locals 0

    return-void
.end method

.method public onPoiDetailsFavoriteDel()V
    .locals 0

    return-void
.end method

.method public abstract onPoiSearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;)V
.end method

.method public abstract onRouteNearbySearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;)V
.end method

.method public abstract onRouteRefresh(Ljava/lang/String;)V
.end method

.method public abstract onRouteSelect(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;)V
.end method

.method public abstract onRouteTrafficInfo(Ljava/lang/String;)V
.end method

.method public abstract onSearchClose()V
.end method

.method public abstract onSelectParkingCount(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;)V
.end method

.method public abstract onSelectRouteCount(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;)V
.end method

.method public onSetOritentionMetre(DI)V
    .locals 0

    return-void
.end method

.method public onSetScaleLevel(I)V
    .locals 0

    return-void
.end method

.method public abstract onSideRoad()V
.end method

.method public abstract onWaypointSearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;)V
.end method
