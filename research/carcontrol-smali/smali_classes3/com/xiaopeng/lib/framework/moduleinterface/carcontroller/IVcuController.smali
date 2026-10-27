.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController;
.super Ljava/lang/Object;
.source "IVcuController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$MainRelayCloseRequestEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$IsLowBatteryVoltagelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$IpuStateGearLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$MainPowerRelayStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$DriveTravelValidateFlagEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$DtcPageAndEdvBhvilopEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$RealGearLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$BrkPedalStVDEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$BmsCurrentBatterySocDispEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$DriverOverrideEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$BatteryOverheatingEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$PowerSystemErrorLampOnEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$PureDriveModeFeedbackEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ChargeSpeedSlowEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$RawCarSpeedEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$BatteryCoolStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$onEvReadyStatusChange;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$BreakTravelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$DriveTravelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$EbsBatterySocEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$SystemReadyEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ErhDebugInfoEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$SupDebugInfoEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$BatteryMinTemperatureEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ChargeLimitEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$AverageVehConusme100kmEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$AverageVehConusmeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$AcInputStatusEvnetMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$DcChargeVoltEvengMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$DcChargeCurrentEvengMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$AcChargeVoltEvengMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$AcChargeCurrentEvengMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ChargeCompleteTimeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$BatteryWarmmingEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$HvacConsumeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ColdWarningTipsEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ElectriPercentEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ChargeStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ChargeGunEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$ChargeErrorEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$SohEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$CarGearLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$CarSpeedEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$EnergyRecycleLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$AvailableDrivingDistanceEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController$DrivingModeEventMsg;
    }
.end annotation


# static fields
.field public static final BATTERY_NORMAL:I = 0x0

.field public static final BATTERY_TOO_COLD:I = 0x1

.field public static final BATTERY_WARMING_START:I = 0x1

.field public static final BATTERY_WARMING_STOP:I = 0x0

.field public static final CHARGE_ERROR_GAIN:I = 0x1

.field public static final CHARGE_ERROR_NONE:I = 0x0

.field public static final CHARGE_GUN_AC_LINK:I = 0x1

.field public static final CHARGE_GUN_DC_LINK:I = 0x2

.field public static final CHARGE_GUN_NO_LINK:I = 0x0

.field public static final CHARGE_SPEED_SLOW:I = 0x1

.field public static final CHARGE_SPEED_SLOW_INVALID:I = 0x0

.field public static final CHARGE_STATUS_APPOINTMENT:I = 0x1

.field public static final CHARGE_STATUS_CHARGING:I = 0x2

.field public static final CHARGE_STATUS_DONE:I = 0x8

.field public static final CHARGE_STATUS_ERROR:I = 0x6

.field public static final CHARGE_STATUS_FULLY_CHARGE:I = 0x3

.field public static final CHARGE_STATUS_PREPARE:I = 0x0

.field public static final CHARGE_STATUS_REMOVE_CHAGRE_CONNECTOR:I = 0x4

.field public static final CHARGE_STATUS_STOPPING:I = 0x7

.field public static final CHARGE_STATUS_WRONG_OPERATION:I = 0x5

.field public static final DRIVE_MODE_FB_AUTO:I = 0x1

.field public static final DRIVE_MODE_FB_MANUAL:I = 0x0

.field public static final DRIVE_MODE_FB_NOT_MANUAL:I = 0x3

.field public static final DRIVE_MODE_FB_REMOTE_CONTROL:I = 0x2

.field public static final DRIVING_STATUS_MODE_ANTISICKNESS:I = 0x4

.field public static final DRIVING_STATUS_MODE_COMFORT:I = 0x0

.field public static final DRIVING_STATUS_MODE_ECO:I = 0x1

.field public static final DRIVING_STATUS_MODE_SPORT:I = 0x2

.field public static final ENERGY_STATUS_RECOVERY_HIGH:I = 0x2

.field public static final ENERGY_STATUS_RECOVERY_LOW:I = 0x0

.field public static final ENERGY_STATUS_RECOVERY_MIDDLE:I = 0x1

.field public static final GEAR_LEVEL_D:I = 0x1

.field public static final GEAR_LEVEL_INVALID:I = 0x0

.field public static final GEAR_LEVEL_N:I = 0x2

.field public static final GEAR_LEVEL_P:I = 0x4

.field public static final GEAR_LEVEL_R:I = 0x3

.field public static final VCU_ENERGY_RECOVERY_HIGH:I = 0x2

.field public static final VCU_ENERGY_RECOVERY_LOW:I = 0x0

.field public static final VCU_ENERGY_RECOVERY_MIDDLE:I = 0x1


# virtual methods
.method public abstract getACChargingCurrent()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getACChargingVolt()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getACInputStatus()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getAverageVehConsume()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getAverageVehConsume100km()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getBatteryCoolStatus()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getBatteryMinTemperature()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getBatteryPtcErrorInfo()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getBatteryWarmingStatus()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getBmsCurrentBatterySocDisp()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getBreakTravel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getBreakTravelValidateFlag()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getCarSpeed()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getCcsWorkError()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChargeSpeedLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChargeStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChargingCompleteTime()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChargingError()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChargingGunStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChargingMaxSoc()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getColdWarningTips()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDCChargingCurrent()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDCChargingVolt()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDriveMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDriveTravel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDriveTravelValidateFlag()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDriverOverride()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDtcPageAndEdvBhvilop()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getEbsBatterySoc()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getElectricityPercent()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getEnergyRecycle()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getGearLever()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getGearWarningInfo()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHvacConsume()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getIpuStateGearLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getMainPowerRelayState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getMainRelayCloseRequest()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getMaxMileage(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getMileageNumber()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getPureDriveModeFeedback()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRawCarSpeed()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRealGearLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getSOH()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getStallState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSystemReady()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getTcmFailReason()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getVcuErhDebubInfo()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getVcuSupDebugInfo()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isAgsError()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isBatteryOverheadtingWarning()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isBatteryOverheating()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isBmsError()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isBmsScoLow()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isDcdcError()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isEbsError()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isElectricMotorSystemOverheating()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isElectricVacuumPumpError()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isHvCutoff()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isHvRelayAdhesion()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isLowBatteryVoltage()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isPowerSystemErrorLampOn()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setBestCharging()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setChargingLimit(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setEnergyRecycle(I)V
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

.method public abstract setFullyCharging()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startCharge(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chargeSoc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract stopACCharge(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chargeSoc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract stopDCCharging()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
