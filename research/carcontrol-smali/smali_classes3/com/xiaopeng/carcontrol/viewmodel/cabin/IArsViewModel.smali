.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;
.super Ljava/lang/Object;
.source "IArsViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final ERROR_STATUS_ARS_FAULT:I = 0x6

.field public static final ERROR_STATUS_ARS_FOLD_DIALOG_CONFIRMING:I = 0xa

.field public static final ERROR_STATUS_ARS_INITIALIZE_DIALOG_CONFIRMING:I = 0x4

.field public static final ERROR_STATUS_ARS_INITIALIZING:I = 0x3

.field public static final ERROR_STATUS_ARS_MOVING:I = 0x5

.field public static final ERROR_STATUS_ARS_RESETTING:I = 0x7

.field public static final ERROR_STATUS_ARS_RESET_DIALOG_CONFIRMING:I = 0x8

.field public static final ERROR_STATUS_ARS_UNFOLD_DIALOG_CONFIRMING:I = 0x9

.field public static final ERROR_STATUS_ARS_UNITIALIZED:I = 0x2

.field public static final ERROR_STATUS_NONE:I = 0x0

.field public static final ERROR_STATUS_TRUNK_OPENED:I = 0x1


# virtual methods
.method public abstract checkError()I
.end method

.method public abstract fold()V
.end method

.method public abstract fold(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation
.end method

.method public abstract getArsAutoFoldStLiveData()Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArsFaultState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;
.end method

.method public abstract getArsFaultStateLiveData()Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArsFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;
.end method

.method public abstract getArsFoldStateLiveData()Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArsInitState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;
.end method

.method public abstract getArsInitStateLiveData()Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArsPosition()I
.end method

.method public abstract getArsPositionLiveData()Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArsVehLockAutoFoldSwitchStatus()Z
.end method

.method public abstract getArsWorkMode()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;
.end method

.method public abstract getArsWorkModeLiveData()Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArsWorkState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;
.end method

.method public abstract getArsWorkStateLiveData()Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleArsFaultStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract handleArsInitStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract handleArsPositionChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract handleArsWorkModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workMode"
        }
    .end annotation
.end method

.method public abstract handleArsWorkStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract setArsVehLockAutoFoldSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setArsWorkMode(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract startInitialize(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "withWarning"
        }
    .end annotation
.end method

.method public abstract startReset(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "withWarning"
        }
    .end annotation
.end method

.method public abstract unfold()V
.end method

.method public abstract unfold(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warning"
        }
    .end annotation
.end method
