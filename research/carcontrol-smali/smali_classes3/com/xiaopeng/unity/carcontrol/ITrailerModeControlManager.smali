.class public interface abstract Lcom/xiaopeng/unity/carcontrol/ITrailerModeControlManager;
.super Ljava/lang/Object;
.source "ITrailerModeControlManager.java"


# virtual methods
.method public abstract exitRescueMode()V
.end method

.method public abstract getAirSuspensionRepairMode()Z
.end method

.method public abstract getTrailerModeStatus()Z
.end method

.method public abstract getTtmEnable()Z
.end method

.method public abstract isBreakPedalPressed()Z
.end method

.method public abstract isChargeGunLinked()Z
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
