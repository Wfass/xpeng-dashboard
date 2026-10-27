.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;
.super Ljava/lang/Object;
.source "IVcuViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


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

.method public abstract enterXSportDriveModeByType(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "showTips"
        }
    .end annotation
.end method

.method public abstract enterXSportGeekSettings()V
.end method

.method public abstract getAsDriveModeStatus()I
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

.method public abstract getChargeStatus()I
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
            "driveMode"
        }
    .end annotation
.end method

.method public abstract getElectricityPercent()I
.end method

.method public abstract getEnergyDisableString()I
.end method

.method public abstract getEnergyRecycleGrade()I
.end method

.method public abstract getEnergyRecycleGradeByUser()I
.end method

.method public abstract getGearLevel()I
.end method

.method public abstract getMileageMode()I
.end method

.method public abstract getNGearWarningSwitchStatus()Z
.end method

.method public abstract getNewDriveArchXPedalMode()Z
.end method

.method public abstract getParkDropdownMenuEnable()Z
.end method

.method public abstract getPowerResponseMode()I
.end method

.method public abstract getSnowMode()Z
.end method

.method public abstract getSsaSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
.end method

.method public abstract getTrailerModeStatus()Z
.end method

.method public abstract getVMCRwsSwitchState()Z
.end method

.method public abstract getVMCSystemState()Z
.end method

.method public abstract getVMCZWalkModeState()Z
.end method

.method public abstract isAbsFault()Z
.end method

.method public abstract isAutoDriveModeEnabled()Z
.end method

.method public abstract isAutoEasyLoadingMode()Z
.end method

.method public abstract isBreakPedalPressed()Z
.end method

.method public abstract isCruiseActive()Z
.end method

.method public abstract isEVSysReady()Z
.end method

.method public abstract isEnergyEnable(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showToast"
        }
    .end annotation
.end method

.method public abstract isEvHighVolOn()Z
.end method

.method public abstract isExhibitionMode()Z
.end method

.method public abstract isExhibitionModeOn()Z
.end method

.method public abstract isParkingMode()Z
.end method

.method public abstract isQuickControlVisible()Z
.end method

.method public abstract isTestDriveModeOn()Z
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
            "audioEffect"
        }
    .end annotation
.end method

.method public abstract setDriveMode(IZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "audioEffect",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation
.end method

.method public abstract setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V
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

.method public abstract setDriveModeSubItemByUser(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vcuCode"
        }
    .end annotation
.end method

.method public abstract setDriveModeSubItemByUser(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vcuCode",
            "customFlag"
        }
    .end annotation
.end method

.method public abstract setDriveModeSubItemByUser(IZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vcuCode",
            "customFlag",
            "igOn"
        }
    .end annotation
.end method

.method public abstract setDriveModeSubItemByUser(IZZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vcuCode",
            "customFlag",
            "igOn",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setEnergyRecycleGrade(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grade"
        }
    .end annotation
.end method

.method public abstract setEnergyRecycleGrade(IZ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "grade",
            "withPreconditions"
        }
    .end annotation
.end method

.method public abstract setEnergyRecycleGradeWithPreconditions(IZZZ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "grade",
            "storeEnable",
            "skipPreconditions",
            "isGuiLaunch"
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

.method public abstract setNewDriveArchXPedalMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
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

.method public abstract setParkDropdownMenuEnable(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "fromNapa"
        }
    .end annotation
.end method

.method public abstract setPowerResponseMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setQuickControlVisible(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
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

.method public abstract setSsaSwEnable(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "toast"
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
            "enable"
        }
    .end annotation
.end method

.method public abstract setVMCZWalkModeSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "isGuiLaunch"
        }
    .end annotation
.end method
