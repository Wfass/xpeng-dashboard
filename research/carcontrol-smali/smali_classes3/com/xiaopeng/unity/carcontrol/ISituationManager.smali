.class public interface abstract Lcom/xiaopeng/unity/carcontrol/ISituationManager;
.super Ljava/lang/Object;
.source "ISituationManager.java"


# virtual methods
.method public abstract calibrateTyrePressure()V
.end method

.method public abstract canOpenRearWiperRepairMode()I
.end method

.method public abstract canOpenWiperRepairMode()I
.end method

.method public abstract getAirSuspensionRepairMode()Z
.end method

.method public abstract getAllFaultList()V
.end method

.method public abstract getFaultDetail(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "code"
        }
    .end annotation
.end method

.method public abstract getLastReserveTime()J
.end method

.method public abstract getMileageA()Ljava/lang/String;
.end method

.method public abstract getMileageB()Ljava/lang/String;
.end method

.method public abstract getMileageSinceLastCharge()Ljava/lang/String;
.end method

.method public abstract getMileageSinceStartUp()Ljava/lang/String;
.end method

.method public abstract getMileageTotal()Ljava/lang/String;
.end method

.method public abstract getMobilePhone()V
.end method

.method public abstract getRearWiperRepairMode()Z
.end method

.method public abstract getTpmsCalibrateState()I
.end method

.method public abstract getTpmsWarningState(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract getTpmsWarningStates(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
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

.method public abstract getTyreTemp(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract getWiperRepairMode()Z
.end method

.method public abstract isAutoSelfCheck()Z
.end method

.method public abstract isEcallAvailable()Z
.end method

.method public abstract isTpmsSensorWarningState(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract isTpmsTempWarning(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract reserveRemoteDiagnose(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phone"
        }
    .end annotation
.end method

.method public abstract resetMeterMileageA()V
.end method

.method public abstract resetMeterMileageB()V
.end method

.method public abstract setAirSuspensionRepairMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setAutoSelfCheck(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCarCheckState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRearWiperRepairMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setReserveTime(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation
.end method

.method public abstract setShowEcallOnStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation
.end method

.method public abstract setTboxDigitalKeyExistQuery()V
.end method

.method public abstract setWiperRepairMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract shouldShowEcallOnStatus()Z
.end method

.method public abstract showMileageInfoPanel()V
.end method

.method public abstract startEcall()V
.end method

.method public abstract startSMSVerification()V
.end method
