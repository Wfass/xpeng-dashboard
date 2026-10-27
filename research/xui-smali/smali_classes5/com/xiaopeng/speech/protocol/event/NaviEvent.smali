.class public Lcom/xiaopeng/speech/protocol/event/NaviEvent;
.super Ljava/lang/Object;
.source "NaviEvent.java"


# static fields
.field public static final ADDRESS_GET:Ljava/lang/String; = "native://navi.address.get"

.field public static final ADDRESS_PENDING_ROUTE:Ljava/lang/String; = "command://navi.address.pending.route"

.field public static final ADDRESS_SET:Ljava/lang/String; = "command://navi.address.set"

.field public static final ALERTS_PREFERENCE_SET:Ljava/lang/String; = "command://navi.alerts.preference.set"

.field public static final AUTO_REROUTE_ASK_FIRST:Ljava/lang/String; = "command://navi.auto.reroute.ask.first"

.field public static final AUTO_REROUTE_BETTER_ROUTE:Ljava/lang/String; = "command://navi.auto.reroute.better.route"

.field public static final AUTO_REROUTE_NEVER:Ljava/lang/String; = "command://navi.auto.reroute.never"

.field public static final AVOID_ROUTE_SET:Ljava/lang/String; = "command://navi.avoid.route.set"

.field public static final CONFIRM_CANCEL:Ljava/lang/String; = "command://navi.confirm.cancel"

.field public static final CONFIRM_OK:Ljava/lang/String; = "command://navi.confirm.ok"

.field public static final CONTROL_BRIDGE_3D_MAP:Ljava/lang/String; = "command://navi.bridge.area.3d.map"

.field public static final CONTROL_BRIDGE_3D_MAP_OFF:Ljava/lang/String; = "command://navi.bridge.area.3d.map.off"

.field public static final CONTROL_CHARGE_CLOSE:Ljava/lang/String; = "native://navi.control.charge.close"

.field public static final CONTROL_CHARGE_OPEN:Ljava/lang/String; = "native://navi.control.charge.open"

.field public static final CONTROL_CHARGE_SERVICE_OPEN:Ljava/lang/String; = "command://navi.charge.service.open"

.field public static final CONTROL_CLOSE:Ljava/lang/String; = "command://navi.control.close"

.field public static final CONTROL_CLOSE_RIBBON_MAP:Ljava/lang/String; = "command://navi.ribbon.map.close"

.field public static final CONTROL_CLOSE_SMALL_MAP:Ljava/lang/String; = "command://navi.small.map.close"

.field public static final CONTROL_COMMUTER_ROUTE_SHOW:Ljava/lang/String; = "navi.commuter.route.show"

.field public static final CONTROL_COMMUTER_ROUTE_SHOW_OFF:Ljava/lang/String; = "command://navi.commuter.route.show.off"

.field public static final CONTROL_DISPLAY_2D_HEAD_UP:Ljava/lang/String; = "command://navi.control.display.2d.headup"

.field public static final CONTROL_DISPLAY_3D:Ljava/lang/String; = "command://navi.control.display.3d"

.field public static final CONTROL_DISPLAY_3D_HEAD_UP:Ljava/lang/String; = "command://navi.control.display.3d.headup"

.field public static final CONTROL_DISPLAY_CAR:Ljava/lang/String; = "command://navi.control.display.car"

.field public static final CONTROL_DISPLAY_DASHBOARD_2D_HEAD_UP:Ljava/lang/String; = "command://navi.control.dashboard.display.2d.headup"

.field public static final CONTROL_DISPLAY_DASHBOARD_3D_HEAD_UP:Ljava/lang/String; = "command://navi.control.dashboard.display.3d.headup"

.field public static final CONTROL_DISPLAY_NORTH:Ljava/lang/String; = "command://navi.control.display.north"

.field public static final CONTROL_DRIVE_CHARGE_LESS:Ljava/lang/String; = "command://navi.drive.charge.less"

.field public static final CONTROL_DRIVE_CHARGE_LESS_OFF:Ljava/lang/String; = "command://navi.drive.charge.less.off"

.field public static final CONTROL_DRIVE_HIGHROAD_FIRST:Ljava/lang/String; = "command://navi.drive.highroad.first"

.field public static final CONTROL_DRIVE_HIGHROAD_FIRST_OFF:Ljava/lang/String; = "command://navi.drive.highroad.first.off"

.field public static final CONTROL_DRIVE_TIME_FIRST:Ljava/lang/String; = "command://navi.drive.time.priority"

.field public static final CONTROL_DRIVE_TIME_FIRST_OFF:Ljava/lang/String; = "command://navi.drive.time.priority.off"

.field public static final CONTROL_FAVORITE_CLOSE:Ljava/lang/String; = "command://navi.control.favorite.close"

.field public static final CONTROL_FAVORITE_OPEN:Ljava/lang/String; = "command://navi.control.favorite.open"

.field public static final CONTROL_GAODE_ACCOUNT_BING_PAGE_OPEN:Ljava/lang/String; = "command://navi.gaode.account.page.open"

.field public static final CONTROL_HISTORY:Ljava/lang/String; = "command://navi.control.history"

.field public static final CONTROL_HISTORY_CLOSE:Ljava/lang/String; = "command://navi.control.history.close"

.field public static final CONTROL_NAVI_LIST_CANCEL:Ljava/lang/String; = "command://navi.list.cancel"

.field public static final CONTROL_NAVI_PERFORM_IMMEDIATE:Ljava/lang/String; = "command://navi.perform.immediate"

.field public static final CONTROL_NAVI_SEARCH:Ljava/lang/String; = "command://navi.search"

.field public static final CONTROL_NAVI_SEARCH_CHARGING:Ljava/lang/String; = "command://navi.charging.search"

.field public static final CONTROL_NAVI_SEARCH_FILTER:Ljava/lang/String; = "command://navi.search.filter"

.field public static final CONTROL_NAVI_SEARCH_MULTI:Ljava/lang/String; = "command://navi.multi.poi.search"

.field public static final CONTROL_NAVI_SEARCH_ON_WAY:Ljava/lang/String; = "command://navi.search.onway"

.field public static final CONTROL_OPEN_RIBBON_MAP:Ljava/lang/String; = "command://navi.ribbon.map.open"

.field public static final CONTROL_OPEN_SMALL_MAP:Ljava/lang/String; = "command://navi.small.map.open"

.field public static final CONTROL_OVERVIEW_CLOSE:Ljava/lang/String; = "command://navi.control.overview.close"

.field public static final CONTROL_OVERVIEW_OPEN:Ljava/lang/String; = "command://navi.control.overview.open"

.field public static final CONTROL_PARK_RECOMMEND_OFF:Ljava/lang/String; = "command://navi.park.recommend.off"

.field public static final CONTROL_PARK_RECOMMEND_ON:Ljava/lang/String; = "command://navi.park.recommend.on"

.field public static final CONTROL_POI_DETAILS_FAVORITE_ADD:Ljava/lang/String; = "command://navi.poi.details.favorite.add"

.field public static final CONTROL_POI_DETAILS_FAVORITE_DEL:Ljava/lang/String; = "command://navi.poi.details.favorite.del"

.field public static final CONTROL_REALTIME_TRAFFIC:Ljava/lang/String; = "navi.realtime.traffic"

.field public static final CONTROL_REALTIME_TRAFFIC_OFF:Ljava/lang/String; = "command://navi.realtime.traffic.off"

.field public static final CONTROL_ROAD_AHEAD:Ljava/lang/String; = "command://navi.control.road.ahead"

.field public static final CONTROL_ROAD_AHEAD_OFF:Ljava/lang/String; = "command://navi.control.road.ahead.off"

.field public static final CONTROL_SECURITY_REMIND:Ljava/lang/String; = "command://navi.control.security.remind"

.field public static final CONTROL_SECURITY_REMIND_OFF:Ljava/lang/String; = "command://navi.control.security.remind.off"

.field public static final CONTROL_SETTINGS_CLOSE:Ljava/lang/String; = "command://navi.control.settings.close"

.field public static final CONTROL_SETTINGS_OPEN:Ljava/lang/String; = "native://navi.control.settings.open"

.field public static final CONTROL_SMART_CHARGING_ROUTE:Ljava/lang/String; = "command://navi.smart.charging.route"

.field public static final CONTROL_SMART_CHARGING_ROUTE_OFF:Ljava/lang/String; = "command://navi.smart.charging.route.off"

.field public static final CONTROL_SMART_RECOMMEND:Ljava/lang/String; = "command://navi.smart.recommend"

.field public static final CONTROL_SMART_RECOMMEND_OFF:Ljava/lang/String; = "command://navi.smart.recommend.off"

.field public static final CONTROL_SMART_SCALE:Ljava/lang/String; = "command://navi.control.smart.scale"

.field public static final CONTROL_SMART_SCALE_OFF:Ljava/lang/String; = "command://navi.control.smart.scale.off"

.field public static final CONTROL_SPEECH_CRUISE:Ljava/lang/String; = "command://navi.control.speech.cruise"

.field public static final CONTROL_SPEECH_CRUISE_OFF:Ljava/lang/String; = "command://navi.control.speech.cruise.off"

.field public static final CONTROL_SPEECH_DETAIL:Ljava/lang/String; = "command://navi.control.speech.detail"

.field public static final CONTROL_SPEECH_EYE:Ljava/lang/String; = "command://navi.control.speech.eye"

.field public static final CONTROL_SPEECH_EYE_OFF:Ljava/lang/String; = "command://navi.control.speech.eye.off"

.field public static final CONTROL_SPEECH_GENERAL:Ljava/lang/String; = "command://navi.control.speech.general"

.field public static final CONTROL_SPEECH_MUTE:Ljava/lang/String; = "command://navi.control.speech.mute"

.field public static final CONTROL_SPEECH_SIMPLE:Ljava/lang/String; = "command://navi.control.speech.simple"

.field public static final CONTROL_SPEECH_STANDARD:Ljava/lang/String; = "command://navi.control.speech.standard"

.field public static final CONTROL_SPEECH_SUPER_SIMPLE:Ljava/lang/String; = "command://navi.control.speech.super.simple"

.field public static final CONTROL_START:Ljava/lang/String; = "command://navi.control.start"

.field public static final CONTROL_TRAFFIC_INCIDENT:Ljava/lang/String; = "navi.traffic.incident"

.field public static final CONTROL_TRAFFIC_INCIDENT_OFF:Ljava/lang/String; = "command://navi.traffic.incident.off"

.field public static final CONTROL_VOL_OFF:Ljava/lang/String; = "command://navi.control.vol.off"

.field public static final CONTROL_VOL_ON:Ljava/lang/String; = "command://navi.control.vol.on"

.field public static final CONTROL_WAYPOINT_START:Ljava/lang/String; = "command://navi.control.waypoint.start"

.field public static final DRIVE_AVOID_CHARGE:Ljava/lang/String; = "command://navi.drive.avoid.charge"

.field public static final DRIVE_AVOID_CHARGE_OFF:Ljava/lang/String; = "command://navi.drive.avoid.charge.off"

.field public static final DRIVE_AVOID_CONGESTION:Ljava/lang/String; = "command://navi.drive.avoid.congestion"

.field public static final DRIVE_AVOID_CONGESTION_OFF:Ljava/lang/String; = "command://navi.drive.avoid.congestion.off"

.field public static final DRIVE_AVOID_CONTROLS:Ljava/lang/String; = "command://navi.drive.avoid.controls"

.field public static final DRIVE_AVOID_CONTROLS_OFF:Ljava/lang/String; = "command://navi.drive.avoid.controls.off"

.field public static final DRIVE_HIGHWAY_FIRST:Ljava/lang/String; = "command://navi.drive.highway.first"

.field public static final DRIVE_HIGHWAY_FIRST_OFF:Ljava/lang/String; = "command://navi.drive.highway.first.off"

.field public static final DRIVE_HIGHWAY_NO:Ljava/lang/String; = "command://navi.drive.highway.no"

.field public static final DRIVE_HIGHWAY_NO_OFF:Ljava/lang/String; = "command://navi.drive.highway.no.off"

.field public static final DRIVE_RADAR_ROUTE:Ljava/lang/String; = "command://navi.drive.radar.route"

.field public static final DRIVE_RADAR_ROUTE_OFF:Ljava/lang/String; = "command://navi.drive.radar.route.off"

.field public static final LIST_ITEM_SELECTED:Ljava/lang/String; = "command://navi.list.item.selected"

.field public static final MAIN_ROAD:Ljava/lang/String; = "command://navi.main.road"

.field public static final MAP_ENTER_FIND_PATH:Ljava/lang/String; = "command://navi.enter.find.path"

.field public static final MAP_EXIT_FIND_PATH:Ljava/lang/String; = "command://navi.exit.find.path"

.field public static final MAP_OVERVIEW:Ljava/lang/String; = "command://navi.map.overview"

.field public static final MAP_SHOW_SET:Ljava/lang/String; = "command://navi.map.show.set"

.field public static final MAP_ZOOMIN:Ljava/lang/String; = "command://navi.map.zoomin"

.field public static final MAP_ZOOMIN_MAX:Ljava/lang/String; = "command://navi.map.zoomin.max"

.field public static final MAP_ZOOMOUT:Ljava/lang/String; = "command://navi.map.zoomout"

.field public static final MAP_ZOOMOUT_MIN:Ljava/lang/String; = "command://navi.map.zoomout.min"

.field public static final MOVE_NAV_METRE_SET:Ljava/lang/String; = "command://navi.oritention.metre.set"

.field public static final NAVIGATING_GET:Ljava/lang/String; = "native://navi.navigating.get"

.field public static final NEARBY_SEARCH:Ljava/lang/String; = "native://navi.nearby.search"

.field public static final PARKING_SELECT:Ljava/lang/String; = "command://navi.parking.select"

.field public static final POI_SEARCH:Ljava/lang/String; = "native://navi.poi.search"

.field public static final ROAD_INFO_CLOSE:Ljava/lang/String; = "command://navi.road.info.close"

.field public static final ROAD_INFO_OPEN:Ljava/lang/String; = "command://navi.road.info.open"

.field public static final ROUTE_NEARBY_SEARCH:Ljava/lang/String; = "native://navi.route.nearby.search"

.field public static final ROUTE_REFRESH:Ljava/lang/String; = "command://navi.route.refresh"

.field public static final ROUTE_SELECT:Ljava/lang/String; = "command://navi.route.select"

.field public static final ROUTE_TRAFFIC_INFO:Ljava/lang/String; = "command://navi.traffic.info"

.field public static final SCALE_LEVEL_SET:Ljava/lang/String; = "command://navi.scale.level.set"

.field public static final SEARCH_CLOSE:Ljava/lang/String; = "command://navi.search.close"

.field public static final SELECT_PARKING_COUNT:Ljava/lang/String; = "native://navi.select.parking.count"

.field public static final SELECT_ROUTE_COUNT:Ljava/lang/String; = "native://navi.select.route.count"

.field public static final SETTINGS_INFO_GET:Ljava/lang/String; = "native://navi.settings.info"

.field public static final SIDE_ROAD:Ljava/lang/String; = "command://navi.side.road"

.field public static final WAYPOINT_SEARCH:Ljava/lang/String; = "native://navi.waypoint.search"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
