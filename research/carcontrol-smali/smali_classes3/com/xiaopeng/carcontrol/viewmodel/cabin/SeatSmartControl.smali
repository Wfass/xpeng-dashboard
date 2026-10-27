.class public final Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;
.super Ljava/lang/Object;
.source "SeatSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatSmartControl"


# instance fields
.field private final mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public controlPsnSeatMoveForwardEnd()V
    .locals 3

    const-string v0, "SeatSmartControl"

    const-string v1, "controlPsnSeatMoveForwardEnd"

    const/4 v2, 0x0

    .line 43
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->controlPsnSeatEnd(I)V

    return-void
.end method

.method public controlPsnSeatMoveForwardStart()V
    .locals 3

    const-string v0, "SeatSmartControl"

    const-string v1, "controlPsnSeatMoveForwardStart"

    const/4 v2, 0x0

    .line 37
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->controlPsnSeatStart(III)Z

    return-void
.end method

.method public handleEmergencyIgOff()V
    .locals 3

    const-string v0, "SeatSmartControl"

    const-string v1, "Emergency ig off, stop pending seat control task"

    const/4 v2, 0x0

    .line 32
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->stopSeatControl()V

    return-void
.end method

.method public isDrvSeatEqualMemory()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->isDrvSeatEqualMemory()Z

    move-result v0

    return v0
.end method

.method public isPsnSeatEqualMemory()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->isPsnSeatEqualMemory()Z

    move-result v0

    return v0
.end method

.method public onFollowedVehicleLostConfigChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceUpdate"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->onFollowedVehicleLostConfigChanged(Z)V

    return-void
.end method

.method public removeSeatDropdownMenu()V
    .locals 3

    const-string v0, "SeatSmartControl"

    const-string v1, "Remove and dismiss seat dropdown menu, and not allow to show any more"

    const/4 v2, 0x0

    .line 60
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->removeDropDownRun()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setSeatUiCtrlResume(Z)V

    return-void
.end method

.method public restorePsnSeat()V
    .locals 3

    const-string v0, "SeatSmartControl"

    const-string v1, "restore Psn Seat"

    const/4 v2, 0x0

    .line 79
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->restorePsnSeatPos()Z

    return-void
.end method

.method public restoreSeat()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->restoreDrvSeatPos(ZZ)Z

    return-void
.end method

.method public resumeSeatDropdownMenu()V
    .locals 3

    const-string v0, "SeatSmartControl"

    const-string v1, "Resume show seat dropdown menu"

    const/4 v2, 0x0

    .line 66
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setSeatUiCtrlResume(Z)V

    return-void
.end method

.method public setFollowedVehicleLostConfig(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setFollowedVehicleLostConfig(Ljava/lang/String;)V

    return-void
.end method
