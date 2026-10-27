.class public Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;
.super Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;
.source "LampManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer$Implementation;


# instance fields
.field private mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

.field private mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;-><init>()V

    return-void
.end method

.method private convertDoubleFlashState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 247
    sget-object v0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$TurnLampState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public getBrakeLightOnOff()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getBrakeLightOnOff()Z

    move-result v0

    return v0
.end method

.method public getDaytimeRunningLightsOutputStatus()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDaytimeRunningLightsOutputStatus()I

    move-result v0

    return v0
.end method

.method public getDomeLightSw()Z
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDomeLightSw(I)Z

    move-result v0

    return v0
.end method

.method public getDoubleFlashBeamState()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getTurnLampState()Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->convertDoubleFlashState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)I

    move-result v0

    return v0
.end method

.method public getHeadLampMode()I
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Auto:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getHeadLampMode(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->convertHeadLampValue(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)I

    move-result v0

    return v0
.end method

.method public getIhbState()I
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->isXpuNedcActivated()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 219
    sget-object v0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getIhbState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 234
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIhbState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getInnerPositionBeamStatus()I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getInnerParkingLampStates()I

    move-result v0

    return v0
.end method

.method public getOuterPositionBeamStatus()I
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getOuterParkingLampStates()I

    move-result v0

    return v0
.end method

.method public getParkingLampStates()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkingLampStates()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRearLogLightStatus()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearLogoLightStatus()Z

    move-result v0

    return v0
.end method

.method public getSaberMode()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->isParkLampIncludeFmB()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected initInternal()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 35
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 36
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 37
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    .line 38
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getLampManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    return-void
.end method

.method public isHighBeamOn()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getHighBeamState()Z

    move-result v0

    return v0
.end method

.method public isLowBeamOn()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLowBeamState()Z

    move-result v0

    return v0
.end method

.method public isPositionBeamOn()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkLampState()Z

    move-result v0

    return v0
.end method

.method public isRearFogLampOn()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearFogLampState()Z

    move-result v0

    return v0
.end method

.method public isReverseLampOn()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->R:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$observeData$0$LampManagerImpl(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getTurnLampState()Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->convertDoubleFlashState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onDoubleFlashBeamChanged(I)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkLampState()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onPositionBeamChanged(Z)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onSaberModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$LampManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)V
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

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->convertDoubleFlashState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onDoubleFlashBeamChanged(I)V

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkLampState()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onPositionBeamChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$10$LampManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;)V
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

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->getIhbState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onIhbStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$11$LampManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lampMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->convertHeadLampValue(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onHeadLampModeChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$12$LampManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onDomeLightSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$13$LampManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onRearLogLightStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$14$LampManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onOuterPositionBeamStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$15$LampManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onInnerPositionBeamStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$16$LampManagerImpl([Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "states"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onParkingLampStatesChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$LampManagerImpl(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getTurnLampState()Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->convertDoubleFlashState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onDoubleFlashBeamChanged(I)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onPositionBeamChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$LampManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onLowBeamChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$LampManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onHighBeamChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$LampManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onRearFogLampChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$LampManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "level"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_1

    .line 91
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->R:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onReverseLampChanged(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$7$LampManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onBrakeLightChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$8$LampManagerImpl(Ljava/lang/Integer;)V
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

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onDaytimeRunningLightChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$9$LampManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
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

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->getIhbState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;->onIhbStateChanged(I)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkLightRelatedFMBLightState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$a3vybn-TeJ25F8qLJHWx05yref0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$a3vybn-TeJ25F8qLJHWx05yref0;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getTurnLampData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$5FUGnPhPk8q_Em5yDRA6ksFIrEY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$5FUGnPhPk8q_Em5yDRA6ksFIrEY;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkLampData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$8hHxhrWXz6KNsttXrAQL-5-m9nw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$8hHxhrWXz6KNsttXrAQL-5-m9nw;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLowBeamLampState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$aNzyqXRhxDVcccXjmN2FY9eYDDE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$aNzyqXRhxDVcccXjmN2FY9eYDDE;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getHighBeamLampData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$o1JzxdiDUr62lHqkTPf6fN68bnI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$o1JzxdiDUr62lHqkTPf6fN68bnI;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearFogLampData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$z9MzB4iglrzt2YZLCqwjmpnU0U0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$z9MzB4iglrzt2YZLCqwjmpnU0U0;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$W0KGQHrPwXCnucVy--rT6PCyMWc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$W0KGQHrPwXCnucVy--rT6PCyMWc;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportBrakeLight"

    .line 96
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getBrakeLightData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$IP1HXNIMjOe_U-yb9OA02QemInE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$IP1HXNIMjOe_U-yb9OA02QemInE;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportDaytimeRunningLight"

    .line 103
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDaytimeRunningLightData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$FoGvodvwRRXrZUePJploqt2bfeU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$FoGvodvwRRXrZUePJploqt2bfeU;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_1
    const-string v0, "isSupportIhb"

    .line 110
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getIhbData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$QFPHpFqHfLXVO_Os6G-UkQWyrZ0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$QFPHpFqHfLXVO_Os6G-UkQWyrZ0;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mXpuVm:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNedcStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$FxpoSDby_8dVQ4O0Og_57kAzFgg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$FxpoSDby_8dVQ4O0Og_57kAzFgg;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getHeadLampData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$_o2jcZ7iozk-U51AT1_CPWxP9vU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$_o2jcZ7iozk-U51AT1_CPWxP9vU;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDomeLightSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$5-CBt1ZM183GgnT4_efkiP7zkO0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$5-CBt1ZM183GgnT4_efkiP7zkO0;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportRearLogoLight"

    .line 135
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearLogoLightStData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$TKNEw1s-KQIo-dU0EcgK95c3zWc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$TKNEw1s-KQIo-dU0EcgK95c3zWc;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_3
    const-string v0, "isSupportParkingLightIndependent"

    .line 143
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getOuterParkingLampStatesData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$KrdUIJOmbPeWckd7Bbmra0OOaIc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$KrdUIJOmbPeWckd7Bbmra0OOaIc;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getInnerParkingLampStatesData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$N9GeWQ3IdJEKQAdlx26JMYchkfc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$N9GeWQ3IdJEKQAdlx26JMYchkfc;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getParkingLampStatesData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$KZRn5FLQDoU-9WqaRb0I39QDqzI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$KZRn5FLQDoU-9WqaRb0I39QDqzI;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :goto_0
    return-void
.end method

.method public setDomeLightSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setDomeLightSw(IZ)V

    return-void
.end method

.method public setHeadLampMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->convertHeadLampMode(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setHeadLampMode(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)V

    return-void
.end method

.method public setIhbSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setIhbEnable(ZZ)V

    return-void
.end method

.method public setRearFogLamp(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setRearFogLamp(Z)V

    return-void
.end method
