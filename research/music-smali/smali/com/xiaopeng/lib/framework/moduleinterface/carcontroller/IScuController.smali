.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController;
.super Ljava/lang/Object;
.source "IScuController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IScuController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuAebAlarmSwitchStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuAutoRoadTipsAddEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuRoadAttributesEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuSteerWaringLvlEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$AssLineChangedEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$RearMirrorCtrl;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$KeyParkEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$AutoParkEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$AltimeterEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$TargetParkingPositionEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ParkingProcessPathEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuRearMinDistanceEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuFrontMinDistanceEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$SlotThetaEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuModeIndexEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuRoadVoiceTipsEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$AccLKAWarningEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuLKAWarningEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuRCTAWarningEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuBSDWarningEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuLDWWarningEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuAutoParkErrorCodeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuNearestEnableRadarEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuTailRadarFaultStEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuFrontRadarFaultStEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuTailRadarLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuFrontRadarLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuReversingDisplayActiveEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuLocation2UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuLocationUpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuAvmBox2UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuAvmBox1UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuSensorFeature2UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuSensorFeature1UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuSlot5UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuSlot4UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuSlot3UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuSlot2UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuSlot1UpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuSuperParkActiveResponeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$ScuOperationTipUpdateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FactoryScuTest3FEEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FactoryScuTest3FDEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FactoryScuTest322EventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$RadarWarningVoiceStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$BlindAreaDetectionWarningEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$LaneDepartureWarningEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$SideReversingWarningEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$LaneChangeAssistEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$IntelligentSpeedLimitEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController$FrontCollisionSecurityEventMsg;
    }
.end annotation


# static fields
.field public static final ASSLINE_CHANGED_DISABLE:I = 0x1

.field public static final ASSLINE_CHANGED_ENABLE:I = 0x2

.field public static final ASSLINE_CHANGED_INVALID:I = 0x0

.field public static final DMS_MODE_EXTENDED:I = 0x1

.field public static final DMS_MODE_NORMAL:I = 0x0

.field public static final DOOR_OPEN_WARNING_OFF:I = 0x1

.field public static final DOOR_OPEN_WARNING_ON:I = 0x2

.field public static final RESPONSE_SCU_ACTIVE:I = 0x3

.field public static final RESPONSE_SCU_NO_FAULT:I = 0x0

.field public static final RESPONSE_SCU_PERMANENT_ERROR:I = 0x2

.field public static final RESPONSE_SCU_TEMPORARY_ERROR:I = 0x1

.field public static final ROAD_ATTR_ROAD_FASTWAY_IN_CITY:I = 0x2

.field public static final ROAD_ATTR_ROAD_HIGHWAY:I = 0x1

.field public static final SCU_AUTO_PARK_CMD_RESET:I = 0x0

.field public static final SCU_AUTO_PARK_IN_CANCLE:I = 0x2

.field public static final SCU_AUTO_PARK_IN_CONTINUE:I = 0x4

.field public static final SCU_AUTO_PARK_IN_START:I = 0x1

.field public static final SCU_AUTO_PARK_OUT_CANCLE:I = 0x2

.field public static final SCU_AUTO_PARK_OUT_CONTINUE:I = 0x4

.field public static final SCU_AUTO_PARK_OUT_START:I = 0x3

.field public static final SCU_BLIND_AREA_DETECTION_WARNING_DISABLE:I = 0x0

.field public static final SCU_BLIND_AREA_DETECTION_WARNING_ENABLE:I = 0x1

.field public static final SCU_BUTTON_OFF:I = 0x0

.field public static final SCU_BUTTON_ON:I = 0x1

.field public static final SCU_FRONT_COLLISION_DISABLE:I = 0x0

.field public static final SCU_FRONT_COLLISION_ENABLE:I = 0x1

.field public static final SCU_INTELLIGENT_SPEED_LIMIT_DISABLE:I = 0x0

.field public static final SCU_INTELLIGENT_SPEED_LIMIT_ENABLE:I = 0x1

.field public static final SCU_LANE_CHANGE_ASSIST_DISABLE:I = 0x0

.field public static final SCU_LANE_CHANGE_ASSIST_ENABLE:I = 0x1

.field public static final SCU_LANE_DEPARTURE_WARNING_DISABLE:I = 0x0

.field public static final SCU_LANE_DEPARTURE_WARNING_ENABLE:I = 0x1

.field public static final SCU_LANE_MIDDLE_ASSIST_DISABLE:I = 0x0

.field public static final SCU_LANE_MIDDLE_ASSIST_ENABLE:I = 0x1

.field public static final SCU_OTA_TAG_0:I = 0x0

.field public static final SCU_OTA_TAG_1:I = 0x1

.field public static final SCU_OTA_TAG_2:I = 0x2

.field public static final SCU_OTA_TAG_3:I = 0x3

.field public static final SCU_PHONEPKBUTTON_APIN:I = 0x1

.field public static final SCU_PHONEPKBUTTON_APOUT:I = 0x2

.field public static final SCU_PHONEPKBUTTON_CANCEL:I = 0x5

.field public static final SCU_PHONEPKBUTTON_CONTINUE:I = 0x4

.field public static final SCU_PHONEPKBUTTON_INVALID:I = 0x0

.field public static final SCU_PHONEPKBUTTON_SUSPENG:I = 0x3

.field public static final SCU_PHONESMBUTTON_CALLBACKWORK:I = 0x3

.field public static final SCU_PHONESMBUTTON_CALLENTER:I = 0x1

.field public static final SCU_PHONESMBUTTON_CALLFORWARD:I = 0x2

.field public static final SCU_PHONESMBUTTON_EXITMODE:I = 0x4

.field public static final SCU_PHONESMBUTTON_INVALID:I = 0x0

.field public static final SCU_REVERSING_DISPLAY_ACTIVE_NO:I = 0x0

.field public static final SCU_REVERSING_DISPLAY_ACTIVE_YES:I = 0x1

.field public static final SCU_ROAD_ATTR_HOME_PARKING:I = 0x6

.field public static final SCU_ROAD_ATTR_NOT_DEFINED:I = 0x0

.field public static final SCU_ROAD_ATTR_PARKING_TOWER:I = 0x4

.field public static final SCU_ROAD_ATTR_PRIVATE_ROAD:I = 0x2

.field public static final SCU_ROAD_ATTR_PUBLIC_ROAD:I = 0x1

.field public static final SCU_ROAD_ATTR_ROAD_PARKING:I = 0x5

.field public static final SCU_ROAD_ATTR_UNDERGROUND_PARKING:I = 0x3

.field public static final SCU_SIDE_REVERSING_WARNING_DISABLE:I = 0x0

.field public static final SCU_SIDE_REVERSING_WARNING_ENABLE:I = 0x1

.field public static final SCU_STEER_WARNING_Lvl1:I = 0x1

.field public static final SCU_STEER_WARNING_Lvl2:I = 0x2

.field public static final SCU_STEER_WARNING_Lvl3:I = 0x3

.field public static final SCU_SUPER_PARK_ACTIVE_NO:I = 0x0

.field public static final SCU_SUPER_PARK_ACTIVE_YES:I = 0x1

.field public static final SEATBELTREQ_FASTEN:I = 0x1

.field public static final SEATBELTREQ_NONE:I


# virtual methods
.method public abstract getAccExitReason()I
.end method

.method public abstract getAccLkaWarning()I
.end method

.method public abstract getAebAlarmSwitchState()I
.end method

.method public abstract getAltimeter()[B
.end method

.method public abstract getAssLineChanged()Z
.end method

.method public abstract getAutoParkErrorCode()I
.end method

.method public abstract getAutoParkSwitch()I
.end method

.method public abstract getAutoRoadTips()I
.end method

.method public abstract getBlindAreaDetectionWarning()I
.end method

.method public abstract getFrontCameraFault()[I
.end method

.method public abstract getFrontCollisionSecurity()I
.end method

.method public abstract getFrontMmRadarFault()I
.end method

.method public abstract getFrontRadarData()[F
.end method

.method public abstract getFrontRadarFaultSt()[I
.end method

.method public abstract getFrontRadarLevel()[I
.end method

.method public abstract getIcmAlarmFaultState()I
.end method

.method public abstract getIntelligentSpeedLimit()I
.end method

.method public abstract getKeyPark()Z
.end method

.method public abstract getLaneChangeAssist()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLaneDepartureWarning()I
.end method

.method public abstract getLccExitReason()I
.end method

.method public abstract getMileageExtraParams()[F
.end method

.method public abstract getModeIndex()I
.end method

.method public abstract getNearestEnableRadar()I
.end method

.method public abstract getParkStatus()I
.end method

.method public abstract getParkingOperationTips()I
.end method

.method public abstract getParkingProcessPath()[F
.end method

.method public abstract getRadarWarningVoiceStatus()Z
.end method

.method public abstract getRearMmRadarFault()[I
.end method

.method public abstract getRoadVoiceTips()I
.end method

.method public abstract getScu322LogData()[I
.end method

.method public abstract getScu3FDExtendLogData()[I
.end method

.method public abstract getScuFrontMinDistance()I
.end method

.method public abstract getScuModeIndex()I
.end method

.method public abstract getScuRearMinDistance()I
.end method

.method public abstract getScuSteerWaringLvl()I
.end method

.method public abstract getSideReversingWarning()I
.end method

.method public abstract getSlotTheta()[B
.end method

.method public abstract getTailRadarData()[F
.end method

.method public abstract getTailRadarFaultSt()[I
.end method

.method public abstract getTailRadarLevel()[I
.end method

.method public abstract getTargetParkingPosition()[B
.end method

.method public abstract setAssLineChanged(I)V
.end method

.method public abstract setAutoParkInState(I)V
.end method

.method public abstract setAutoParkOutState(I)V
.end method

.method public abstract setAutoParkSwitch(I)V
.end method

.method public abstract setAutoPilotLocationInfo(FFFFFFJ)V
.end method

.method public abstract setBlindAreaDetectionWarning(I)V
.end method

.method public abstract setComonHomeSlotId(I)V
.end method

.method public abstract setDetailRoadClass(I)V
.end method

.method public abstract setDoorOpenWarningSwitch(I)V
.end method

.method public abstract setFactoryScuTest(I)V
.end method

.method public abstract setFreeParking1Data(FFFIIFF)V
.end method

.method public abstract setFreeParking2Data(FFFIIFF)V
.end method

.method public abstract setFrontCollisionSecurity(I)V
.end method

.method public abstract setIntelligentSpeedLimit(I)V
.end method

.method public abstract setKeyPark(Z)V
.end method

.method public abstract setLaneChangeAssist(I)V
.end method

.method public abstract setLaneDepartureWarning(I)V
.end method

.method public abstract setLaneMiddleAssist(I)V
.end method

.method public abstract setLocalWeather(IIII)V
.end method

.method public abstract setLocationInfo(FFFFFJ)V
.end method

.method public abstract setParkLotChoseIndex2Scu(I)V
.end method

.method public abstract setParkLotRecvIndex2Scu(I)V
.end method

.method public abstract setPhoneAPButton(I)V
.end method

.method public abstract setPhoneSMButton(I)V
.end method

.method public abstract setRadarWarningVoiceStatus(Z)V
.end method

.method public abstract setRoadAttributes(II)V
.end method

.method public abstract setScuDmsMode(I)V
.end method

.method public abstract setScuOtaTagStatus(I)V
.end method

.method public abstract setScuRoadAttr(I)V
.end method

.method public abstract setSeatBeltReq(I)V
.end method

.method public abstract setSideReversingWarning(I)V
.end method

.method public abstract setSuperParkMode(Z)V
.end method
