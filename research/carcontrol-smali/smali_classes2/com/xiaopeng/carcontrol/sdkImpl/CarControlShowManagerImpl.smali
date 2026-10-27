.class public Lcom/xiaopeng/carcontrol/sdkImpl/CarControlShowManagerImpl;
.super Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;
.source "CarControlShowManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer$Implementation;


# instance fields
.field private mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected initInternal()V
    .locals 1

    .line 17
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getCarControlShowManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarControlShowManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarControlShowManagerServer;

    return-void
.end method

.method protected observeData()V
    .locals 0

    return-void
.end method

.method public showCarControlPage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarControlShowManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showCarControlPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    .line 29
    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;->onShowSmartControlPanel(Ljava/lang/String;)V

    return-void
.end method

.method public showCarControlPageElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "s1",
            "s2"
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    .line 52
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;->onShowSmartControlPanel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showCarControlPageWithSubPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "s1"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CarControlShowManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showCarControlPageWithSubPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    .line 36
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;->onShowSmartControlPanel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showVehicleFaultDetailPage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    return-void
.end method

.method public showVehicleFaultListPage()V
    .locals 0

    return-void
.end method
