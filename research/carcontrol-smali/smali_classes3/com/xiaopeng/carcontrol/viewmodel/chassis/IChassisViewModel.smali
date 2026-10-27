.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;
.super Ljava/lang/Object;
.source "IChassisViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final APB_SYSTEM_STATUS_CLOSED:I = 0x2

.field public static final APB_SYSTEM_STATUS_LOCKING:I = 0x4

.field public static final APB_SYSTEM_STATUS_RELEASED:I = 0x1

.field public static final APB_SYSTEM_STATUS_RELEASING:I = 0x3

.field public static final CDC_MODE_COMFORT:I = 0x2

.field public static final CDC_MODE_SPORT:I = 0x3

.field public static final CDC_MODE_STANDARD:I = 0x1

.field public static final TTM_OPERATING_TIME:I = 0x2710

.field public static final TTM_RESET_TIME:I = 0x2710


# virtual methods
.method public abstract calibrateTyrePressure()V
.end method

.method public abstract getASFaultWarning()I
.end method

.method public abstract getAirSuspensionHeightMode()I
.end method

.method public abstract getAirSuspensionRepairMode()Z
.end method

.method public abstract getAirSuspensionSoftMode()I
.end method

.method public abstract getApbSystemStatus()I
.end method

.method public abstract getAsAutoLevelingResult()I
.end method

.method public abstract getAsCampingMode()Z
.end method

.method public abstract getAsCustomerModeFlagSwitchStatus()Z
.end method

.method public abstract getAsFaultStatus()Z
.end method

.method public abstract getAsHeightChangingStatus()Z
.end method

.method public abstract getAsHeightFaultStatus()Z
.end method

.method public abstract getAsHoistModeSwitchStatus()Z
.end method

.method public abstract getAsLocationControlSw()Z
.end method

.method public abstract getAsLocationSw()Z
.end method

.method public abstract getAsLockModeStatus()Z
.end method

.method public abstract getAsRequestEspState()I
.end method

.method public abstract getAsSoftFaultStatus()Z
.end method

.method public abstract getAvhFault()Z
.end method

.method public abstract getAvhForUI()Z
.end method

.method public abstract getAvhSw()Z
.end method

.method public abstract getCdcMode()I
.end method

.method public abstract getCdcuTrailerModeStatus()Z
.end method

.method public abstract getDtcFaultStatus()Z
.end method

.method public abstract getEbw()Z
.end method

.method public abstract getEngineeringModeStatus()I
.end method

.method public abstract getEpsWarningState()Z
.end method

.method public abstract getEsp()I
.end method

.method public abstract getEspBpfMode()I
.end method

.method public abstract getEspCstSw()Z
.end method

.method public abstract getEspFault()Z
.end method

.method public abstract getEspForUI()Z
.end method

.method public abstract getEspSw()Z
.end method

.method public abstract getHdc()Z
.end method

.method public abstract getHdcFault()Z
.end method

.method public abstract getSteeringAngle()F
.end method

.method public abstract getSteeringEps()I
.end method

.method public abstract getTorsionBarTorque()F
.end method

.method public abstract getTpmsCalibrateState()I
.end method

.method public abstract getTpmsTemperature(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract getTrailerModeStatus()Z
.end method

.method public abstract getTsmFaultStatus()Z
.end method

.method public abstract getTtmDenormalizeStatus()Z
.end method

.method public abstract getTtmHookMotorStatus()I
.end method

.method public abstract getTtmLampConnectStatus()Z
.end method

.method public abstract getTtmSwitch()I
.end method

.method public abstract getTtmSwitchStatusForUI()I
.end method

.method public abstract getTtmSystemError()Z
.end method

.method public abstract getTyrePressure(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract getTyrePressureFloat(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract isAirSuspensionWelcomeEnable()Z
.end method

.method public abstract isAsFaultForAsRepair()Z
.end method

.method public abstract isDrvBeltBuckled()Z
.end method

.method public abstract isDrvDoorClosed()Z
.end method

.method public abstract isEasyLoadingEnable()Z
.end method

.method public abstract isTpmsPressureNormal()Z
.end method

.method public abstract isTpmsSensorWarningState()[Z
.end method

.method public abstract isTpmsTempWarning()[Z
.end method

.method public abstract resetTtmSwitchStatus()V
.end method

.method public abstract saveAsLocationInfo(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asHeight"
        }
    .end annotation
.end method

.method public abstract setAirSuspensionHeightMode(IZ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "height",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setAirSuspensionRepairMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAirSuspensionSoftMode(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soft"
        }
    .end annotation
.end method

.method public abstract setAirSuspensionSoftMode(IZ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "soft",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setAirSuspensionWelcome(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAsCampingMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAsCustomerModeFlagSwitchStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAsLocationControlSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setAsLocationSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setAsLocationSw(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "on",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setAvhSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCdcMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdc"
        }
    .end annotation
.end method

.method public abstract setEasyLoadingSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEbw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEngineeringModeStatus(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract setEpbSystemStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEsp(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEspBpfMode(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setEspCstSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEspSw()V
.end method

.method public abstract setHdc(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSteeringEps(IZ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eps",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setTrailerModeStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTtmSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTtmSwitchStatusForUI(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method
