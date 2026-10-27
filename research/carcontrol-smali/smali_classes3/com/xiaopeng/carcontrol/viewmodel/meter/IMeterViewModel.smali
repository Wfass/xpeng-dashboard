.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;
.super Ljava/lang/Object;
.source "IMeterViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final SETTINGS_KEY_ECALL_AVAILABLE:Ljava/lang/String; = "xp_ecall_enable"

.field public static final SETTINGS_KEY_ECALL_SHOW:Ljava/lang/String; = "xp_statusbar_ecall_show"


# virtual methods
.method public abstract getBrightSw()Z
.end method

.method public abstract getDoorBossKeySw()Z
.end method

.method public abstract getDoorKeyForCustomer()I
.end method

.method public abstract getMediaSw()Z
.end method

.method public abstract getMileageA()Ljava/lang/String;
.end method

.method public abstract getMileageAFloat()F
.end method

.method public abstract getMileageB()Ljava/lang/String;
.end method

.method public abstract getMileageBFloat()F
.end method

.method public abstract getMileageSinceLastCharge()Ljava/lang/String;
.end method

.method public abstract getMileageSinceLastChargeFloat()F
.end method

.method public abstract getMileageSinceStartUp()Ljava/lang/String;
.end method

.method public abstract getMileageSinceStartUpFloat()F
.end method

.method public abstract getMileageTotal()Ljava/lang/String;
.end method

.method public abstract getSpeedWarningSw()Z
.end method

.method public abstract getSpeedWarningValue()I
.end method

.method public abstract getTempSw()Z
.end method

.method public abstract getTouchRotationDirection()I
.end method

.method public abstract getWindModeSw()Z
.end method

.method public abstract getWindPowerSw()Z
.end method

.method public abstract getXKeyForCustomer()I
.end method

.method public abstract isEcallAvailable()Z
.end method

.method public abstract isWheelKeyProtectEnabled()Z
.end method

.method public abstract requestMaintainData()V
.end method

.method public abstract resetMeterMileageA()V
.end method

.method public abstract resetMeterMileageB()V
.end method

.method public abstract setBrightSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDoorBossKeySw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDoorKeyForCustomer(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFunc"
        }
    .end annotation
.end method

.method public abstract setMediaSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
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

.method public abstract setSpeedWarningSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSpeedWarningValue(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation
.end method

.method public abstract setTempSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTouchRotationDirection(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation
.end method

.method public abstract setUserScenarioInfo([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract setWheelKeyProtectSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setWindModeSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setWindPowerSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setXKeyForCustomer(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFunc"
        }
    .end annotation
.end method

.method public abstract shouldShowEcallOnStatus()Z
.end method
