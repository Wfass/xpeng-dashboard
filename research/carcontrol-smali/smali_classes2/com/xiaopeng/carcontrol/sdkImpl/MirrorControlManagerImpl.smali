.class public Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;
.super Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;
.source "MirrorControlManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer$Implementation;


# instance fields
.field private mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer;

.field private mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public foldMirror(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFold"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->controlMirror(Z)V

    return-void
.end method

.method public getMirrorFoldState()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->toValue(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)I

    move-result v0

    return v0
.end method

.method protected initInternal()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    .line 16
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getMirrorControlManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer;

    return-void
.end method

.method public synthetic lambda$observeData$0$MirrorControlManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer;

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->toValue(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer;->onFoldMirrorStateChanged(I)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$MirrorControlManagerImpl$peBX5pOU3sYEw4rYNXb3FQkQT1w;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$MirrorControlManagerImpl$peBX5pOU3sYEw4rYNXb3FQkQT1w;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/MirrorControlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method
