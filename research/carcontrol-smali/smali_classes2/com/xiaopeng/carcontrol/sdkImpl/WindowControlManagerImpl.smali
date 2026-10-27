.class public Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;
.super Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;
.source "WindowControlManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer$Implementation;


# instance fields
.field private mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;

.field private mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;-><init>()V

    return-void
.end method

.method private convertWindowState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$WindowState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public controlWindow(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->win_lock_is_active:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowVent()V

    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowClose()V

    goto :goto_0

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowOpen()V

    :goto_0
    return-void
.end method

.method public getWindowPos(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRRWinPos()F

    move-result p1

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRLWinPos()F

    move-result p1

    goto :goto_0

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getFRWinPos()F

    move-result p1

    goto :goto_0

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getFLWinPos()F

    move-result p1

    :goto_0
    return p1
.end method

.method protected initInternal()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 27
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getWindowControlManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;

    return-void
.end method

.method public isWindowLockActive()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$0$WindowControlManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;

    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->convertWindowState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;->onWindowStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$WindowControlManagerImpl(Ljava/lang/Float;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;->onWindowPosChanged(IF)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$WindowControlManagerImpl(Ljava/lang/Float;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 45
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;->onWindowPosChanged(IF)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$WindowControlManagerImpl(Ljava/lang/Float;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 50
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;->onWindowPosChanged(IF)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$WindowControlManagerImpl(Ljava/lang/Float;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 55
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;->onWindowPosChanged(IF)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$WindowControlManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;->onWindowLockStateChanged(Z)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWindowStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$HEhQomqzh7QzRjH1bqqttqmY-pE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$HEhQomqzh7QzRjH1bqqttqmY-pE;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getDrvWinPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$5fkltexml9urc9gC5dFpy0eSXko;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$5fkltexml9urc9gC5dFpy0eSXko;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getFrWinPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$7xjBh8g8cL2vmL_KlQE3_yIu90s;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$7xjBh8g8cL2vmL_KlQE3_yIu90s;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRlWinPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$IZHUy7rJrfJOsh5-SuJ3f-BWU5A;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$IZHUy7rJrfJOsh5-SuJ3f-BWU5A;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRrWinPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$_Ij_5t0OYyofAlfXRaWdAKXgS6w;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$_Ij_5t0OYyofAlfXRaWdAKXgS6w;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWindowLockStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$V9XyudxQAWi-WnPeQIj72QUgYHQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$V9XyudxQAWi-WnPeQIj72QUgYHQ;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setWindowLockActive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setWindowLockActive(Z)V

    return-void
.end method

.method public setWindowPos(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "pos"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->win_lock_is_active:I

    invoke-virtual {p1, p2, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    return-void

    :cond_0
    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRRWinPos(F)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRLWinPos(F)V

    goto :goto_0

    .line 119
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFRWinPos(F)V

    goto :goto_0

    .line 116
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFLWinPos(F)V

    :goto_0
    return-void
.end method
