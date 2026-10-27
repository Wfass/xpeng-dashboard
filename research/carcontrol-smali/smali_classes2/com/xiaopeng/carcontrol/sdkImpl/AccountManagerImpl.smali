.class public Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;
.super Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;
.source "AccountManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer$Implementation;


# instance fields
.field private mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field private mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public checkLogin()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkLogin()Z

    move-result v0

    return v0
.end method

.method protected initInternal()V
    .locals 2

    .line 17
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    .line 18
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getAccountManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer;

    return-void
.end method

.method public synthetic lambda$observeData$0$AccountManagerImpl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "user"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer;->onAccountUserInfoChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$AccountManagerImpl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "habit"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer;->onAccountHabitListChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getUserInfoData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AccountManagerImpl$e20woMstAHGEkg3_BGJZlOOwMEU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AccountManagerImpl$e20woMstAHGEkg3_BGJZlOOwMEU;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getHabitListData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AccountManagerImpl$deW6Yp-9XMNgAH-T-DKTUd0F8Rw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$AccountManagerImpl$deW6Yp-9XMNgAH-T-DKTUd0F8Rw;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/AccountManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method
