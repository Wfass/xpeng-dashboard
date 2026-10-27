.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;
.super Ljava/lang/Object;
.source "IServiceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# virtual methods
.method public abstract getCarSpeed()F
.end method

.method public abstract getDriveMode()I
.end method

.method public abstract handleEmergencyIgOff()V
.end method

.method public abstract isCentralLocked()Z
.end method

.method public abstract isDrvSeatOccupied()Z
.end method

.method public abstract isMirrorHeatEnabled()Z
.end method

.method public abstract isPsnSeatOccupied()Z
.end method

.method public abstract onIgLocalOn()V
.end method

.method public abstract onIgOff()V
.end method

.method public abstract onIgRemoteOn()V
.end method

.method public abstract onShowDialog(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogScene"
        }
    .end annotation
.end method

.method public abstract onShowSmartControlPanel(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation
.end method

.method public abstract onShowSmartControlPanel(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mainPage",
            "subPage"
        }
    .end annotation
.end method

.method public abstract onShowSmartControlPanel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mainPage",
            "subPage",
            "element"
        }
    .end annotation
.end method

.method public abstract requestCarLicensePlate()V
.end method

.method public abstract resumeSaveSettings()V
.end method

.method public abstract setCentralLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
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

.method public abstract setMirrorHeatEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSsDoorStateCallback(Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
