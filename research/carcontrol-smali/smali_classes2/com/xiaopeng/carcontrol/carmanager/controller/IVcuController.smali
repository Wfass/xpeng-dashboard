.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;
.super Ljava/lang/Object;
.source "IVcuController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALLOW_AUTO_SELF_CHECK_OFF:I = 0x0

.field public static final ALLOW_AUTO_SELF_CHECK_ON:I = 0x1

.field public static final AS_DRVIVING_MODE_COMFORT_STATUS:I = 0x1

.field public static final AS_DRVIVING_MODE_CUSTOMER_MODE_STATUS:I = 0x4

.field public static final AS_DRVIVING_MODE_ECO_STATUS:I = 0x0

.field public static final AS_DRVIVING_MODE_NORMAL_STATUS:I = 0x2

.field public static final AS_DRVIVING_MODE_NOT_VALID_STATUS:I = 0x6

.field public static final AS_DRVIVING_MODE_OFF_ROAD_STATUS:I = 0x5

.field public static final AS_DRVIVING_MODE_SPORT_STATUS:I = 0x3

.field public static final AUTO_SHOW_MODEL_EXHIBITION:I = 0x2

.field public static final AUTO_SHOW_MODEL_EXIT:I = 0x0

.field public static final AUTO_SHOW_MODEL_SETTING_CONFIG_KEY:Ljava/lang/String; = "model_setting_disable"

.field public static final AUTO_SHOW_MODEL_TEST:I = 0x1

.field public static final AUTO_SHOW_MODEL_TRANSPORT:I = 0x3

.field public static final AWDSETTING_MODE_FIVE_FIVE:I = 0x2

.field public static final AWDSETTING_MODE_SEVEN_THREE:I = 0x1

.field public static final AWDSETTING_MODE_TEN_ZERO:I = 0x0

.field public static final AWDSETTING_MODE_THREE_SEVEN:I = 0x3

.field public static final AWDSETTING_MODE_ZERO_TEN:I = 0x4

.field public static final BREAK_PEDAL_NOT_PRESSED:I = 0x0

.field public static final BREAK_PEDAL_PRESSED:I = 0x1

.field public static final CHARGE_GUN_AC_AND_DC_LINK:I = 0x3

.field public static final CHARGE_GUN_AC_LINK:I = 0x1

.field public static final CHARGE_GUN_DC_LINK:I = 0x2

.field public static final CHARGE_GUN_INVALID:I = 0x7

.field public static final CHARGE_GUN_NO_LINK:I = 0x0

.field public static final CHARGE_GUN_V2L_LINK:I = 0x4

.field public static final CHARGE_GUN_V2L_LINK_LOW_POWER_OBC:I = 0x5

.field public static final CHARGE_STATUS_APPOINTMENT:I = 0x1

.field public static final CHARGE_STATUS_CHARGE_DONE:I = 0x4

.field public static final CHARGE_STATUS_CHARGE_ERROR:I = 0x3

.field public static final CHARGE_STATUS_CHARGING:I = 0x2

.field public static final CHARGE_STATUS_DISCHARGE_DONE:I = 0x6

.field public static final CHARGE_STATUS_DISCHARGE_ERROR:I = 0x7

.field public static final CHARGE_STATUS_DISCHARGING:I = 0x5

.field public static final CHARGE_STATUS_ERROR_D21:I = 0x14

.field public static final CHARGE_STATUS_FULLY_CHARGED_D21:I = 0x10

.field public static final CHARGE_STATUS_PREPARE:I = 0x0

.field public static final CHARGE_STATUS_REMOVE_CHARGER_D21:I = 0x11

.field public static final CHARGE_STATUS_STOPPING_D21:I = 0x13

.field public static final CHARGE_STATUS_WRONG_OP_D21:I = 0x12

.field public static final CLTC_MODE:I = 0x2

.field public static final CONSUMPTION_CLTC:F = 11.4f

.field public static final CONSUMPTION_NEDC:F = 11.8f

.field public static final CONSUMPTION_WLTP:F = 13.7f

.field public static final DRIVE_MODE_ADAPTIVE:I = 0xe

.field public static final DRIVE_MODE_ANTI_SICKNESS_OFF:I = 0x8

.field public static final DRIVE_MODE_ANTI_SICKNESS_ON:I = 0x7

.field public static final DRIVE_MODE_COMFORT:I = 0x0

.field public static final DRIVE_MODE_ECO:I = 0x1

.field public static final DRIVE_MODE_ECO_PLUS_OFF:I = 0x6

.field public static final DRIVE_MODE_ECO_PLUS_ON:I = 0x5

.field public static final DRIVE_MODE_GEEK:I = 0xf

.field public static final DRIVE_MODE_GEEK_OTA_SYNC:I = 0x3e9

.field public static final DRIVE_MODE_INDIVIDUAL:I = 0x12

.field public static final DRIVE_MODE_INVALID:I = -0x1

.field public static final DRIVE_MODE_NORMAL:I = 0xa

.field public static final DRIVE_MODE_NO_COMMAND:I = 0xc

.field public static final DRIVE_MODE_OFFROAD:I = 0x10

.field public static final DRIVE_MODE_RACE:I = 0xd

.field public static final DRIVE_MODE_SHOW_MODE:I = 0x3

.field public static final DRIVE_MODE_SPORT:I = 0x2

.field public static final DRIVE_MODE_USER_DEFINE:I = 0xb

.field public static final DRIVE_MODE_XPOWER:I = 0x11

.field public static final DRIVING_MODE_STATUS_COMFORT_V2:I = 0x7

.field public static final DYNAMIC_MODE:I = 0x3

.field public static final GEAR_LEVEL_D:I = 0x1

.field public static final GEAR_LEVEL_INVALID:I = 0x0

.field public static final GEAR_LEVEL_N:I = 0x2

.field public static final GEAR_LEVEL_P:I = 0x4

.field public static final GEAR_LEVEL_R:I = 0x3

.field public static final KEY_ALLOW_AUTO_SELF_CHECK:Ljava/lang/String; = "XP_Allow_Self_Check"

.field public static final MOTOR_POWER_NORMAL_MODE:I = 0x1

.field public static final MOTOR_POWER_XPOWER_MODE:I = 0x2

.field public static final NEDC_MODE:I = 0x0

.field public static final POWER_RESPONCE_FAST_MODE:I = 0x3

.field public static final POWER_RESPONCE_INTELLIGENT_MODE:I = 0x6

.field public static final POWER_RESPONCE_NO_COMMAND:I = 0x1

.field public static final POWER_RESPONCE_SLOW_MODE:I = 0x2

.field public static final POWER_RESPONCE_STANDARD_MODE:I = 0x1

.field public static final POWER_RESPONCE_SUPERFAST_MODE:I = 0x5

.field public static final POWER_RESPONCE_SUPERSLOW_MODE:I = 0x4

.field public static final SPECIAL_DRIVING_GEEK_MODE:I = 0x5

.field public static final SPECIAL_DRIVING_MUD_MODE:I = 0x1

.field public static final SPECIAL_DRIVING_NO_COMMAND:I = 0x0

.field public static final SPECIAL_DRIVING_XPOWER_MODE:I = 0x2

.field public static final TRAILER_MODE_STATUS_OFF:I = 0x0

.field public static final TRAILER_MODE_STATUS_ON:I = 0x1

.field public static final VCU_ENERGY_RECOVERY_AUTO:I = 0x5

.field public static final VCU_ENERGY_RECOVERY_HIGH:I = 0x3

.field public static final VCU_ENERGY_RECOVERY_INVALID:I = -0x1

.field public static final VCU_ENERGY_RECOVERY_LOW:I = 0x1

.field public static final VCU_ENERGY_RECOVERY_MIDDLE:I = 0x2

.field public static final VCU_ENERGY_RECOVERY_XPEDAL:I = 0x4

.field public static final VCU_EV_HIGH_VOL_ON:I = 0x1

.field public static final VCU_EV_NOT_READY:I = 0x0

.field public static final VCU_EV_READY:I = 0x2

.field public static final VCU_SNOWMODE_OFF:I = 0x0

.field public static final VCU_SNOWMODE_ON:I = 0x1

.field public static final WLTP_MODE:I = 0x1

.field public static final XPEDAL_MODE_STATUS_OFF:I = 0x0

.field public static final XPEDAL_MODE_STATUS_ON:I = 0x1

.field public static final XSPORT_MODE_ENTER_STATUS_FULL:I = 0x0

.field public static final XSPORT_MODE_ENTER_STATUS_N0_TIPS:I = 0x1

.field public static final XSPORT_MODE_STATUS_AI:I = 0x2

.field public static final XSPORT_MODE_STATUS_BOOST:I = 0x3

.field public static final XSPORT_MODE_STATUS_NO_COMMAND:I = 0x0

.field public static final XSPORT_MODE_STATUS_RACER:I = 0x4

.field public static final XSPORT_MODE_STATUS_TUNNING:I = 0x1


# virtual methods
.method public abstract controlExhibitionMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enter"
        }
    .end annotation
.end method

.method public abstract enterXSportDriveModeByType(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "type"
        }
    .end annotation
.end method

.method public abstract getAccPedalStatus()I
.end method

.method public abstract getAsDriveModeStatus()I
.end method

.method public abstract getAutoEasyLoadMode()Z
.end method

.method public abstract getAvailableMileage()I
.end method

.method public abstract getAvailableMileage(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byMileageMode"
        }
    .end annotation
.end method

.method public abstract getAwdSetting()I
.end method

.method public abstract getBrakeLightOnOff()Z
.end method

.method public abstract getBreakPedalStatus()Z
.end method

.method public abstract getCarSpeed()F
.end method

.method public abstract getCarStationaryStatus()Z
.end method

.method public abstract getChargeGunStatus()I
.end method

.method public abstract getChargeStatus()I
.end method

.method public abstract getConsumptionPer100Km()F
.end method

.method public abstract getCurrentUserDefineDriveModeInfo()Ljava/lang/String;
.end method

.method public abstract getDefaultGeekConfig()Ljava/lang/String;
.end method

.method public abstract getDriveMode()I
.end method

.method public abstract getDriveModeByUser()I
.end method

.method public abstract getDriveModeSubItemInfo(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMoode"
        }
    .end annotation
.end method

.method public abstract getElecPercent()I
.end method

.method public abstract getEnergyRecycleGrade()I
.end method

.method public abstract getEnergyRecycleGradeByUser()I
.end method

.method public abstract getFirstEnterXpowerFlag()Z
.end method

.method public abstract getGearLevel()I
.end method

.method public abstract getLastDriveMode()I
.end method

.method public abstract getMileageMode()I
.end method

.method public abstract getMotorPowerMode()I
.end method

.method public abstract getNGearWarningSwitchStatus()Z
.end method

.method public abstract getNewDriveArchXPedalMode()Z
.end method

.method public abstract getNewDriveArchXPedalModeSp()Z
.end method

.method public abstract getParkDropdownMenuEnable()Z
.end method

.method public abstract getPowerResponseMode()I
.end method

.method public abstract getPureDriveModeStatus()I
.end method

.method public abstract getSnowMode()Z
.end method

.method public abstract getSsaSw()Z
.end method

.method public abstract getTrailerModeStatus()Z
.end method

.method public abstract getVMCRwsSwitchState()Z
.end method

.method public abstract getVMCSystemState()Z
.end method

.method public abstract getVMCZWalkModeState()Z
.end method

.method public abstract isAutoDriveModeEnabled()Z
.end method

.method public abstract isAutoSelfCheck()Z
.end method

.method public abstract isCruiseActive()Z
.end method

.method public abstract isEvHighVolReady()Z
.end method

.method public abstract isEvSysReady()Z
.end method

.method public abstract isExhibitionMode()Z
.end method

.method public abstract isExhibitionModeOn()Z
.end method

.method public abstract isTestDriveModeOn()Z
.end method

.method public abstract notifyActiveGeekConfig(Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract onModesDrivingXSport(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract saveCurrentUserDefineDriveModeInfo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract saveDriveSubItemByRestoreDefault()V
.end method

.method public abstract saveGeekConfig(Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract setAutoDriveMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAutoEasyLoadMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAutoEasyLoadMode(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAwdSetting(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setAwdSetting(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setDriveMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation
.end method

.method public abstract setDriveMode(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setDriveModeSp(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation
.end method

.method public abstract setDriveModeSp(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "needhandlecallback"
        }
    .end annotation
.end method

.method public abstract setEnergyRecycleGrade(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grade"
        }
    .end annotation
.end method

.method public abstract setEnergyRecycleGrade(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "grade",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setIgOnAutoCheckSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract setIgOnAutoCheckSw(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setMotorPowerMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setNGearWarningSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setNGearWarningSwitch(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setNewDriveArchXPedalMode(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setParkDropdownMenuEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setPowerResponseMode(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setSnowMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSsaSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTrailerMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setVMCRwsSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setVMCZWalkModeSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method
