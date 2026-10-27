.class public abstract Lcom/xiaopeng/speech/protocol/node/navi/AbsNaviListener;
.super Ljava/lang/Object;
.source "AbsNaviListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressGet(Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;)V
    .locals 0
    .param p1, "addressBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;

    .line 160
    return-void
.end method

.method public onAddressSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V
    .locals 0
    .param p1, "addressBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;
    .param p2, "poiBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    .line 165
    return-void
.end method

.method public onAlertsPreferenceSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V
    .locals 0
    .param p1, "pref"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    .line 425
    return-void
.end method

.method public onAutoRerouteAskFirst()V
    .locals 0

    .line 444
    return-void
.end method

.method public onAutoRerouteBetterRoute()V
    .locals 0

    .line 439
    return-void
.end method

.method public onAutoRerouteNever()V
    .locals 0

    .line 449
    return-void
.end method

.method public onAvoidRouteSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V
    .locals 0
    .param p1, "pref"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    .line 430
    return-void
.end method

.method public onCloseTraffic()V
    .locals 0

    .line 45
    return-void
.end method

.method public onConfirmCancel()V
    .locals 0

    .line 280
    return-void
.end method

.method public onConfirmOk()V
    .locals 0

    .line 275
    return-void
.end method

.method public onControlChargeClose()V
    .locals 0

    .line 80
    return-void
.end method

.method public onControlChargeOpen()V
    .locals 0

    .line 75
    return-void
.end method

.method public onControlChargeServiceOpen(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateId"    # Ljava/lang/String;

    .line 484
    return-void
.end method

.method public onControlClose()V
    .locals 0

    .line 25
    return-void
.end method

.method public onControlCloseRibbonMap()V
    .locals 0

    .line 395
    return-void
.end method

.method public onControlCloseSmallMap()V
    .locals 0

    .line 385
    return-void
.end method

.method public onControlCommuterRouteShow()V
    .locals 0

    .line 559
    return-void
.end method

.method public onControlCommuterRouteShowOff()V
    .locals 0

    .line 564
    return-void
.end method

.method public onControlDashboardDisplay2DHeadUp()V
    .locals 0

    .line 579
    return-void
.end method

.method public onControlDashboardDisplay3DHeadUp()V
    .locals 0

    .line 584
    return-void
.end method

.method public onControlDisPlayCar()V
    .locals 0

    .line 245
    return-void
.end method

.method public onControlDisPlayNorth()V
    .locals 0

    .line 240
    return-void
.end method

.method public onControlDisplay2DHeadUp()V
    .locals 0

    .line 569
    return-void
.end method

.method public onControlDisplay3D()V
    .locals 0

    .line 250
    return-void
.end method

.method public onControlDisplay3DHeadUp()V
    .locals 0

    .line 574
    return-void
.end method

.method public onControlDriveChargeLess()V
    .locals 0

    .line 529
    return-void
.end method

.method public onControlDriveChargeLessOff()V
    .locals 0

    .line 534
    return-void
.end method

.method public onControlFavoriteClose()V
    .locals 0

    .line 365
    return-void
.end method

.method public onControlFavoriteOpen()V
    .locals 0

    .line 65
    return-void
.end method

.method public onControlGaodeAccountPageOpen(I)V
    .locals 0
    .param p1, "pageId"    # I

    .line 489
    return-void
.end method

.method public onControlHighroadFirst()V
    .locals 0

    .line 539
    return-void
.end method

.method public onControlHighroadFirstOff()V
    .locals 0

    .line 544
    return-void
.end method

.method public onControlHistory()V
    .locals 0

    .line 400
    return-void
.end method

.method public onControlHistoryClose()V
    .locals 0

    .line 469
    return-void
.end method

.method public onControlOpenRibbonMap()V
    .locals 0

    .line 390
    return-void
.end method

.method public onControlOpenSmallMap()V
    .locals 0

    .line 380
    return-void
.end method

.method public onControlOverviewClose()V
    .locals 0

    .line 55
    return-void
.end method

.method public onControlOverviewOpen()V
    .locals 0

    .line 50
    return-void
.end method

.method public onControlParkRecommendOff()V
    .locals 0

    .line 410
    return-void
.end method

.method public onControlParkRecommendOn()V
    .locals 0

    .line 415
    return-void
.end method

.method public onControlRealtimeTraffic()V
    .locals 0

    .line 589
    return-void
.end method

.method public onControlRealtimeTrafficOff()V
    .locals 0

    .line 594
    return-void
.end method

.method public onControlRoadAhead()V
    .locals 0

    .line 230
    return-void
.end method

.method public onControlRoadAheadOff()V
    .locals 0

    .line 235
    return-void
.end method

.method public onControlSecurityRemind()V
    .locals 0

    .line 220
    return-void
.end method

.method public onControlSecurityRemindOff()V
    .locals 0

    .line 225
    return-void
.end method

.method public onControlSettingsClose()V
    .locals 0

    .line 464
    return-void
.end method

.method public onControlSettingsOpen()V
    .locals 0

    .line 70
    return-void
.end method

.method public onControlSmartChargingRoute()V
    .locals 0

    .line 509
    return-void
.end method

.method public onControlSmartChargingRouteOff()V
    .locals 0

    .line 514
    return-void
.end method

.method public onControlSmartRecommend()V
    .locals 0

    .line 519
    return-void
.end method

.method public onControlSmartRecommendOff()V
    .locals 0

    .line 524
    return-void
.end method

.method public onControlSmartScale()V
    .locals 0

    .line 210
    return-void
.end method

.method public onControlSmartScaleOff()V
    .locals 0

    .line 215
    return-void
.end method

.method public onControlSpeechCruise()V
    .locals 0

    .line 499
    return-void
.end method

.method public onControlSpeechCruiseOff()V
    .locals 0

    .line 504
    return-void
.end method

.method public onControlSpeechDetail()V
    .locals 0

    .line 195
    return-void
.end method

.method public onControlSpeechEye()V
    .locals 0

    .line 200
    return-void
.end method

.method public onControlSpeechEyeOff()V
    .locals 0

    .line 205
    return-void
.end method

.method public onControlSpeechGeneral()V
    .locals 0

    .line 190
    return-void
.end method

.method public onControlSpeechMute()V
    .locals 0

    .line 175
    return-void
.end method

.method public onControlSpeechSimple()V
    .locals 0

    .line 185
    return-void
.end method

.method public onControlSpeechStandard()V
    .locals 0

    .line 494
    return-void
.end method

.method public onControlSpeechSuperSimple()V
    .locals 0

    .line 180
    return-void
.end method

.method public onControlStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V
    .locals 0
    .param p1, "startNaviBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;

    .line 170
    return-void
.end method

.method public onControlTimeFirst()V
    .locals 0

    .line 549
    return-void
.end method

.method public onControlTimeFirstOff()V
    .locals 0

    .line 554
    return-void
.end method

.method public onControlTrafficIncident()V
    .locals 0

    .line 599
    return-void
.end method

.method public onControlTrafficIncidentOff()V
    .locals 0

    .line 604
    return-void
.end method

.method public onControlVolOff(ZI)V
    .locals 0
    .param p1, "pullUpNavi"    # Z
    .param p2, "mode"    # I

    .line 260
    return-void
.end method

.method public onControlVolOn(ZI)V
    .locals 0
    .param p1, "pullUpNavi"    # Z
    .param p2, "mode"    # I

    .line 255
    return-void
.end method

.method public onControlWaypointStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;)V
    .locals 0
    .param p1, "pathBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;

    .line 335
    return-void
.end method

.method public onDataControlDisplay3dTts()V
    .locals 0

    .line 310
    return-void
.end method

.method public onDataControlDisplayCarTts()V
    .locals 0

    .line 315
    return-void
.end method

.method public onDataControlDisplayNorthTts()V
    .locals 0

    .line 320
    return-void
.end method

.method public onDriveAdvoidTrafficControl()V
    .locals 0

    .line 325
    return-void
.end method

.method public onDriveAvoidCharge()V
    .locals 0

    .line 95
    return-void
.end method

.method public onDriveAvoidChargeOff()V
    .locals 0

    .line 100
    return-void
.end method

.method public onDriveAvoidCongestion()V
    .locals 0

    .line 85
    return-void
.end method

.method public onDriveAvoidCongestionOff()V
    .locals 0

    .line 90
    return-void
.end method

.method public onDriveAvoidControls()V
    .locals 0

    .line 125
    return-void
.end method

.method public onDriveAvoidControlsOff()V
    .locals 0

    .line 130
    return-void
.end method

.method public onDriveHighwayFirst()V
    .locals 0

    .line 115
    return-void
.end method

.method public onDriveHighwayFirstOff()V
    .locals 0

    .line 120
    return-void
.end method

.method public onDriveHighwayNo()V
    .locals 0

    .line 105
    return-void
.end method

.method public onDriveHighwayNoOff()V
    .locals 0

    .line 110
    return-void
.end method

.method public onDriveRadarRoute()V
    .locals 0

    .line 135
    return-void
.end method

.method public onDriveRadarRouteOff()V
    .locals 0

    .line 140
    return-void
.end method

.method public onGetSettingsInfo()V
    .locals 0

    .line 405
    return-void
.end method

.method public onListItemSelected(I)V
    .locals 0
    .param p1, "index"    # I

    .line 479
    return-void
.end method

.method public onMainRoad()V
    .locals 0

    .line 355
    return-void
.end method

.method public onMapEnterFindPath()V
    .locals 0

    .line 340
    return-void
.end method

.method public onMapExitFindPath()V
    .locals 0

    .line 345
    return-void
.end method

.method public onMapOverview()V
    .locals 0

    .line 60
    return-void
.end method

.method public onMapShowSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V
    .locals 0
    .param p1, "pref"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    .line 434
    return-void
.end method

.method public onMapZoomIn()V
    .locals 0

    .line 30
    return-void
.end method

.method public onMapZoomOut()V
    .locals 0

    .line 35
    return-void
.end method

.method public onMapZoominMax()V
    .locals 0

    .line 370
    return-void
.end method

.method public onMapZoomoutMin()V
    .locals 0

    .line 375
    return-void
.end method

.method public onNaviChargingSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "searchInfo"    # Ljava/lang/String;
    .param p2, "speechInfo"    # Ljava/lang/String;

    .line 629
    return-void
.end method

.method public onNaviListCancel(Ljava/lang/String;)V
    .locals 0
    .param p1, "listType"    # Ljava/lang/String;

    .line 639
    return-void
.end method

.method public onNaviMultiPoiSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "searchInfo"    # Ljava/lang/String;
    .param p2, "speechInfo"    # Ljava/lang/String;

    .line 634
    return-void
.end method

.method public onNaviPerformImmediate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "searchInfo"    # Ljava/lang/String;
    .param p2, "speechInfo"    # Ljava/lang/String;

    .line 614
    return-void
.end method

.method public onNaviSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "searchInfo"    # Ljava/lang/String;
    .param p2, "speechInfo"    # Ljava/lang/String;

    .line 609
    return-void
.end method

.method public onNaviSearchFilter([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "speechInfo"    # Ljava/lang/String;

    .line 619
    return-void
.end method

.method public onNaviSearchOnWay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "searchInfo"    # Ljava/lang/String;
    .param p2, "speechInfo"    # Ljava/lang/String;

    .line 624
    return-void
.end method

.method public onNavigatingGet()Z
    .locals 1

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public onNearbySearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;)V
    .locals 0
    .param p1, "searchBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;

    .line 155
    return-void
.end method

.method public onOpenTraffic()V
    .locals 0

    .line 40
    return-void
.end method

.method public onParkingSelect(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;)V
    .locals 0
    .param p1, "selectParkingBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;

    .line 270
    return-void
.end method

.method public onPoiDetailsFavoriteAdd()V
    .locals 0

    .line 454
    return-void
.end method

.method public onPoiDetailsFavoriteDel()V
    .locals 0

    .line 459
    return-void
.end method

.method public onPoiSearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;)V
    .locals 0
    .param p1, "poiSearchBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;

    .line 150
    return-void
.end method

.method public onRouteNearbySearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;)V
    .locals 0
    .param p1, "searchBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;

    .line 265
    return-void
.end method

.method public onRouteRefresh(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 300
    return-void
.end method

.method public onRouteSelect(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;)V
    .locals 0
    .param p1, "selectRouteBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;

    .line 285
    return-void
.end method

.method public onRouteTrafficInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 305
    return-void
.end method

.method public onSearchClose()V
    .locals 0

    .line 350
    return-void
.end method

.method public onSelectParkingCount(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;)V
    .locals 0
    .param p1, "selectParkingBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;

    .line 290
    return-void
.end method

.method public onSelectRouteCount(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;)V
    .locals 0
    .param p1, "selectRouteBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;

    .line 295
    return-void
.end method

.method public onSetOritentionMetre(DI)V
    .locals 0
    .param p1, "metre"    # D
    .param p3, "oritention"    # I

    .line 474
    return-void
.end method

.method public onSetScaleLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 420
    return-void
.end method

.method public onSideRoad()V
    .locals 0

    .line 360
    return-void
.end method

.method public onWaypointSearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;)V
    .locals 0
    .param p1, "bean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;

    .line 330
    return-void
.end method
