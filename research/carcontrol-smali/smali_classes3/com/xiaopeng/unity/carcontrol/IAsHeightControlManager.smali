.class public interface abstract Lcom/xiaopeng/unity/carcontrol/IAsHeightControlManager;
.super Ljava/lang/Object;
.source "IAsHeightControlManager.java"


# virtual methods
.method public abstract getAsCampingMode()I
.end method

.method public abstract getAsHeight()I
.end method

.method public abstract getAsHeightChangingStatus()Z
.end method

.method public abstract getAsHoistModeSwitchStatus()Z
.end method

.method public abstract getAsLocationControlSw()Z
.end method

.method public abstract getAsLocationSw()Z
.end method

.method public abstract getAsLockModeStatus()Z
.end method

.method public abstract getAsLockScenario()I
.end method

.method public abstract getAsTargetMaxHeightRequest()I
.end method

.method public abstract getAsTargetMinHeightRequest()I
.end method

.method public abstract getEngineeringModeStatus()I
.end method

.method public abstract isAsInvalid()Z
.end method

.method public abstract isAsRepairModeEnable()Z
.end method

.method public abstract isTtmOpen()Z
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

.method public abstract setAsHeight(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
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

.method public abstract setEngineeringModeStatus(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method
