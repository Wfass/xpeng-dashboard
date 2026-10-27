.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController;
.super Ljava/lang/Object;
.source "IBcmController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IBcmController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$BcmFrontWiperOutputSTEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$WinLockStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$WiperIntermittentModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$BCMSeatFrHeatLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$BcmFrontWiperOutputStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$ChargeGunLockStEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$RearViewAutoDownCfgEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$DriverBeltWarningEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$PollingOpenCfgEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$FrontBonnetStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$WelcomeModeBackStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$PowerModeStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$DriveSeatStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$ChargePortEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$LocationLampStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$NearLampStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$BCMDriveDoorEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$BCMSeatBlowLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$BCMSeatHeatLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$BCMBackMirrorHeatModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$BCMBackDefrostModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$ChairDirectionEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$ChairLocationEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$DoorsStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$WindowsStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$UnlockResponseEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$RearSeatBeltWarningEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$ElectricSeatBeltEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$ChairWelcomeModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$TrunkStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$DoorLockStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$ParkingAutoUnlockEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$DriveAutoLockEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$OledEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$AtwsStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$EmergencyBrakeWarningEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$InternalLightEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$FarLampEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$HeadLampGroupEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$RearFogLampEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController$LightMeHomeEventMsg;
    }
.end annotation


# static fields
.field public static final ATWS_STATUS_DEFENCE:I = 0x0

.field public static final ATWS_STATUS_PRE_DEFENCE:I = 0x1

.field public static final ATWS_STATUS_UNDEFENCE:I = 0x2

.field public static final BCM_DOOR_CLOSE:I = 0x0

.field public static final BCM_DOOR_OPEN:I = 0x1

.field public static final BCM_LAMP_LOCATION:I = 0x1

.field public static final BCM_LAMP_STATE_AUTO:I = 0x3

.field public static final BCM_LAMP_STATE_CLOSE:I = 0x0

.field public static final BCM_LAMP_STATE_NEAR:I = 0x2

.field public static final BCM_LIGHT_ALL:I = 0x0

.field public static final BCM_LIGHT_ME_HOME_LOW_BEAM:I = 0x1

.field public static final BCM_LIGHT_ME_HOME_LOW_BEAM_PARKING:I = 0x2

.field public static final BCM_LIGHT_ME_HOME_NOT_ACTIVE:I = 0x0

.field public static final BCM_LIGHT_OUTSIDE:I = 0x1

.field public static final BCM_REAR_TRUNK_CLOSE:I = 0x0

.field public static final BCM_REAR_TRUNK_OPEN:I = 0x2

.field public static final BCM_REAR_TRUNK_STOP:I = 0x1

.field public static final BCM_REAR_VIEW_MIRROR_TYPE_CLOSE:I = 0x0

.field public static final BCM_REAR_VIEW_MIRROR_TYPE_OPEN:I = 0x1

.field public static final BCM_SEAT_TYPE_ANGLE:I = 0x3

.field public static final BCM_SEAT_TYPE_HEIGHT:I = 0x2

.field public static final BCM_SEAT_TYPE_LEVEL_LOCATION:I = 0x1

.field public static final BCM_UNLOCK_LIGHT_AND_HORN:I = 0x0

.field public static final BCM_UNLOCK_RESPONSE_LIGHT:I = 0x1

.field public static final BCM_WHEEL_DEFINED_BUTTON_HIGH:I = 0x3

.field public static final BCM_WHEEL_DEFINED_BUTTON_LOW:I = 0x1

.field public static final BCM_WHEEL_DEFINED_BUTTON_MIDDLE:I = 0x2

.field public static final BCM_WINDOW_TYPE_DOWN_AUTO:I = 0x4

.field public static final BCM_WINDOW_TYPE_DOWN_MANUALLY:I = 0x3

.field public static final BCM_WINDOW_TYPE_INVALID:I = 0x0

.field public static final BCM_WINDOW_TYPE_UP_AUTO:I = 0x2

.field public static final BCM_WINDOW_TYPE_UP_MANUALLY:I = 0x1

.field public static final BCM_WIPER_INTERNAL_GEAR_1:I = 0x3

.field public static final BCM_WIPER_INTERNAL_GEAR_2:I = 0x2

.field public static final BCM_WIPER_INTERNAL_GEAR_3:I = 0x1

.field public static final BCM_WIPER_INTERNAL_GEAR_4:I = 0x0

.field public static final HEADLAMPS_STATUS_LAMP_AUTO:I = 0x3

.field public static final HEADLAMPS_STATUS_LAMP_FAR:I = 0x4

.field public static final HEADLAMPS_STATUS_LAMP_LOCATION:I = 0x1

.field public static final HEADLAMPS_STATUS_LAMP_NEAR:I = 0x2

.field public static final HEADLAMPS_STATUS_LAMP_OFF:I = 0x0

.field public static final OLED_STATUS_LIGHT_ALL:I = 0x0

.field public static final OLED_STATUS_LIGHT_OUTSIDE:I = 0x1

.field public static final REARVIEW_AUTODOWN_CFG_CLOSE:I = 0x1

.field public static final REARVIEW_AUTODOWN_CFG_OPEN:I = 0x2

.field public static final REAR_TRUNK_STATUS_CLOSED:I = 0x0

.field public static final REAR_TRUNK_STATUS_OPENED:I = 0x2

.field public static final REAR_TRUNK_STATUS_OPENING:I = 0x1

.field public static final SEAT_MOVE_DIRECTION_BACKWARD:I = 0x2

.field public static final SEAT_MOVE_DIRECTION_FORWARD:I = 0x1

.field public static final SEAT_MOVE_DIRECTION_NOT_MOVE:I = 0x0

.field public static final UNLOCK_STATUS_LIGHT:I = 0x1

.field public static final UNLOCK_STATUS_LIGHT_AND_HORN:I = 0x0

.field public static final WIN_LOCK_STATUS_ACTIVE:I = 0x1

.field public static final WIN_LOCK_STATUS_INACTIVE:I = 0x0

.field public static final WIPER_INTERMITTENT_ACTIVE:I = 0x1

.field public static final WIPER_INTERMITTENT_NOT_ACTIVE:I


# virtual methods
.method public abstract getATWSState()I
.end method

.method public abstract getBCMBackDefrostMode()Z
.end method

.method public abstract getBCMBackMirrorHeatMode()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBCMIgStatus()I
.end method

.method public abstract getBCMSeatBlowLevel()I
.end method

.method public abstract getBCMSeatHeatLevel()I
.end method

.method public abstract getBcmFrontWiperOutputStatus()I
.end method

.method public abstract getCduDiagMode()I
.end method

.method public abstract getChairDirection()[I
.end method

.method public abstract getChairLocationValue()[I
.end method

.method public abstract getChairWelcomeMode()Z
.end method

.method public abstract getChargeGunLockSt()Z
.end method

.method public abstract getChargePortStatus()Z
.end method

.method public abstract getDoorLockState()Z
.end method

.method public abstract getDoorsState()[I
.end method

.method public abstract getDriveAutoLock()Z
.end method

.method public abstract getDriveSeatState()I
.end method

.method public abstract getDriverBeltWarning()Z
.end method

.method public abstract getElectricSeatBelt()Z
.end method

.method public abstract getEmergencyBrakeWarning()Z
.end method

.method public abstract getFarLampState()Z
.end method

.method public abstract getFrontBonnetStatus()Z
.end method

.method public abstract getHeadLampGroup()I
.end method

.method public abstract getInternalLight()Z
.end method

.method public abstract getLightMeHome()I
.end method

.method public abstract getLocationLampState()Z
.end method

.method public abstract getMsmErrorInfo()[I
.end method

.method public abstract getNearLampState()Z
.end method

.method public abstract getOled()I
.end method

.method public abstract getParkingAutoUnlock()Z
.end method

.method public abstract getPollingOpenCfg()Z
.end method

.method public abstract getRearFogLamp()Z
.end method

.method public abstract getRearSeatBeltWarning()Z
.end method

.method public abstract getRearViewAutoDownCfg()Ljava/lang/Integer;
.end method

.method public abstract getSeatErrorState()Z
.end method

.method public abstract getSeatFrHeatLevel()I
.end method

.method public abstract getTrunk()I
.end method

.method public abstract getUnlockResponse()I
.end method

.method public abstract getWelcomeModeBackStatus()Z
.end method

.method public abstract getWinLockStatus()I
.end method

.method public abstract getWindowsState()[F
.end method

.method public abstract getWiperIntermittentMode()I
.end method

.method public abstract isAirbagFault()Z
.end method

.method public abstract isHighBeamFail()Z
.end method

.method public abstract isLeftTurnLampFail()Z
.end method

.method public abstract isLowBeamFail()Z
.end method

.method public abstract isRightTurnLampFail()Z
.end method

.method public abstract isSystemError()Z
.end method

.method public abstract isWasherFluidWarning()Z
.end method

.method public abstract setAllWindowManualOrAuto(I)V
.end method

.method public abstract setBCMBackDefrostMode()V
.end method

.method public abstract setBCMBackDefrostMode(Z)V
.end method

.method public abstract setBCMBackMirrorHeatMode()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setBCMBackMirrorHeatMode(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setBCMSeatBlowLevel()V
.end method

.method public abstract setBCMSeatBlowLevel(I)V
.end method

.method public abstract setBCMSeatHeatLevel()V
.end method

.method public abstract setBCMSeatHeatLevel(I)V
.end method

.method public abstract setBackWindows(Z)V
.end method

.method public abstract setChairPositionEnd()V
.end method

.method public abstract setChairPositionStart(III)V
.end method

.method public abstract setChairSlowlyAhead(I)V
.end method

.method public abstract setChairSlowlyBack(I)V
.end method

.method public abstract setChairSlowlyEnd(I)V
.end method

.method public abstract setChairWelcomeMode(Z)V
.end method

.method public abstract setChargeGunLock()V
.end method

.method public abstract setChargingPortUnlock()V
.end method

.method public abstract setCopilotWindowAuto(Z)V
.end method

.method public abstract setDoorLock()V
.end method

.method public abstract setDoorUnlocked()V
.end method

.method public abstract setDriveAutoLock(Z)V
.end method

.method public abstract setDriverWindowAuto(Z)V
.end method

.method public abstract setElectricSeatBelt(Z)V
.end method

.method public abstract setEmergencyBrakeWarning(Z)V
.end method

.method public abstract setFactoryOledData([B)V
.end method

.method public abstract setFactoryOledDisplayMode(I)V
.end method

.method public abstract setFrontWindows(Z)V
.end method

.method public abstract setHazardLight(Z)V
.end method

.method public abstract setHeadLampGroup(I)V
.end method

.method public abstract setInternalLight(Z)V
.end method

.method public abstract setLeftBackWindow(Z)V
.end method

.method public abstract setLightMeHome(Z)V
.end method

.method public abstract setOled(I)V
.end method

.method public abstract setParkingAutoUnlock(Z)V
.end method

.method public abstract setPollingOpenCfg(Z)V
.end method

.method public abstract setRearFogLamp(Z)V
.end method

.method public abstract setRearSeatBeltWarning(Z)V
.end method

.method public abstract setRearViewAutoDownCfg(I)V
.end method

.method public abstract setRearViewMirror(I)V
.end method

.method public abstract setRightBackWindow(Z)V
.end method

.method public abstract setSeatFrHeatLevel(I)V
.end method

.method public abstract setTrunk(I)V
.end method

.method public abstract setUnlockResponse(I)V
.end method

.method public abstract setVentilate()V
.end method

.method public abstract setWheelDefinedButton(I)V
.end method

.method public abstract setWiperInterval(I)V
.end method
