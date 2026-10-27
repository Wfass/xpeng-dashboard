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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getBCMBackDefrostMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getBCMBackMirrorHeatMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBCMIgStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getBCMSeatBlowLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getBCMSeatHeatLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getBcmFrontWiperOutputStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getCduDiagMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChairDirection()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChairLocationValue()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChairWelcomeMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChargeGunLockSt()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChargePortStatus()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDoorLockState()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDoorsState()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDriveAutoLock()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDriveSeatState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDriverBeltWarning()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getElectricSeatBelt()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getEmergencyBrakeWarning()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getFarLampState()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getFrontBonnetStatus()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHeadLampGroup()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getInternalLight()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getLightMeHome()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getLocationLampState()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getMsmErrorInfo()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getNearLampState()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getOled()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getParkingAutoUnlock()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getPollingOpenCfg()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRearFogLamp()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRearSeatBeltWarning()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRearViewAutoDownCfg()Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getSeatErrorState()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getSeatFrHeatLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getTrunk()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getUnlockResponse()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getWelcomeModeBackStatus()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getWinLockStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getWindowsState()[F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getWiperIntermittentMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isAirbagFault()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isHighBeamFail()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isLeftTurnLampFail()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isLowBeamFail()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isRightTurnLampFail()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isSystemError()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isWasherFluidWarning()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setAllWindowManualOrAuto(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setBCMBackDefrostMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setBCMBackDefrostMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setBCMBackMirrorHeatMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setBCMBackMirrorHeatMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setBCMSeatBlowLevel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setBCMSeatBlowLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setBCMSeatHeatLevel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setBCMSeatHeatLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setBackWindows(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation
.end method

.method public abstract setChairPositionEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setChairPositionStart(III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "height",
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setChairSlowlyAhead(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setChairSlowlyBack(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setChairSlowlyEnd(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setChairWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setChargeGunLock()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setChargingPortUnlock()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setCopilotWindowAuto(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setDoorLock()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setDoorUnlocked()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setDriveAutoLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setDriverWindowAuto(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setElectricSeatBelt(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setEmergencyBrakeWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setFactoryOledData([B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setFactoryOledDisplayMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setFrontWindows(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation
.end method

.method public abstract setHazardLight(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHeadLampGroup(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setInternalLight(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setLeftBackWindow(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setLightMeHome(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setOled(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setParkingAutoUnlock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setPollingOpenCfg(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setRearFogLamp(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setRearSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setRearViewAutoDownCfg(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setRearViewMirror(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setRightBackWindow(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setSeatFrHeatLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setTrunk(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setUnlockResponse(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setVentilate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setWheelDefinedButton(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setWiperInterval(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
