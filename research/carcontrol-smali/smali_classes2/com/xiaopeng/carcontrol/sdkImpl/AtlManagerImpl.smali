.class public Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;
.super Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;
.source "AtlManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer$Implementation;


# instance fields
.field private mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

.field private mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;-><init>()V

    return-void
.end method

.method private checkAtlBrightness(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private convertAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlEffect"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 157
    sget-object v3, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->ordinal()I

    move-result p1

    aget p1, v3, p1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public getAtlBrightness()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlBrightnessValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->checkAtlBrightness(I)I

    move-result v0

    return v0
.end method

.method public getAtlColorMode()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlThemeColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getAtlEffect()I
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->None:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->convertAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)I

    move-result v0

    return v0
.end method

.method public getDoubleColor()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getDoubleColor()I

    move-result v0

    return v0
.end method

.method public getSingleColor()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlSingleColor()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected initInternal()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    .line 20
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getAtlManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;

    return-void
.end method

.method public isAtlSwEnable()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->isAtlEnabled()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$0$AtlManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "atlEffect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAtlEffectChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->convertAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;->onAtlEffectChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$AtlManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "color"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;->onSingleColorChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$AtlManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "color"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->getDoubleColor()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;->onDoubleColorChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$AtlManagerImpl(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;->onAtlBrightnessChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$AtlManagerImpl(Ljava/lang/Boolean;)V
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

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;->onAtlSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$AtlManagerImpl(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AtlManagerServer;->onAtlColorModeChanged(I)V

    :cond_1
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlEffectTypeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AtlManagerImpl$-Fdwqw8fTGVFIyuz_5-dTuj-l_8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AtlManagerImpl$-Fdwqw8fTGVFIyuz_5-dTuj-l_8;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlFirstColorData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AtlManagerImpl$qODG1d7rkwJZGS80wKUFcx5YOnY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AtlManagerImpl$qODG1d7rkwJZGS80wKUFcx5YOnY;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlSecondColorData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AtlManagerImpl$bkjCyhYX73SESELfYr6Gx8Y-rT8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AtlManagerImpl$bkjCyhYX73SESELfYr6Gx8Y-rT8;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlBrightnessData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AtlManagerImpl$4rgp2FnWEsdsVrFcoGkQcuK4ciY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AtlManagerImpl$4rgp2FnWEsdsVrFcoGkQcuK4ciY;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlSwitchData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AtlManagerImpl$qSWCwqtw3aYR8Y5QEemb2Q9r4z8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AtlManagerImpl$qSWCwqtw3aYR8Y5QEemb2Q9r4z8;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlDualColorData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AtlManagerImpl$Om__y0WQdwrEyNj94ttpry3Uh_0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AtlManagerImpl$Om__y0WQdwrEyNj94ttpry3Uh_0;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setAtlBrightness(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->checkAtlBrightness(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlBrightnessValue(I)V

    return-void
.end method

.method public setAtlColorMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlThemeColorMode(Z)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlThemeColorMode(Z)V

    :goto_0
    return-void
.end method

.method public setAtlEffect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
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

    const/4 p1, 0x0

    goto :goto_0

    .line 89
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Music:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    goto :goto_0

    .line 86
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Speed:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    goto :goto_0

    .line 83
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Breathing:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    goto :goto_0

    .line 80
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->None:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    :goto_0
    if-eqz p1, :cond_4

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)V

    :cond_4
    return-void
.end method

.method public setAtlSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSwitch(Z)V

    return-void
.end method

.method public setDoubleColor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->convertDoubleColor(I)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->fromAtlStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->fromAtlStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlDualColor(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;)V

    :cond_0
    return-void
.end method

.method public setSingleColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AtlManagerImpl;->mAtlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSingleColor(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;)V

    return-void
.end method
