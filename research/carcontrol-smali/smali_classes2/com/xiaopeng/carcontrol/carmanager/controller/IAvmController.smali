.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;
.super Ljava/lang/Object;
.source "IAvmController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAVMWorkSt()I
.end method

.method public abstract getDrivingGuardSw()Z
.end method

.method public abstract getNarPerspectiveSelection()I
.end method

.method public abstract getPerspectiveSelection()I
.end method

.method public abstract getSteeringImageFullSelection()I
.end method

.method public abstract getSteeringImageFullState()Z
.end method

.method public abstract getTransCarbodySw()Z
.end method

.method public abstract getTransChasisSw()Z
.end method

.method public abstract getTurnSignalActivateRearVideoSw()Z
.end method

.method public abstract setDrivingGuardSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation
.end method

.method public abstract setNarPerspectiveSelection(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract setPerspectiveSelection(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract setSteeringImageFullSelection(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract setSteeringImageFullState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setTransCarbodySw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation
.end method

.method public abstract setTransChasisSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation
.end method

.method public abstract setTurnSignalActivateRearSideVideoEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation
.end method
