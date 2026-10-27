.class public Lcom/xiaopeng/carcontrol/sdkImpl/CameraAuthManagerImpl;
.super Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;
.source "CameraAuthManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer$Implementation;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraAuthManagerImpl"


# instance fields
.field private mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer;

.field private mCameraAuthViewModel:Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraAuthState()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CameraAuthManagerImpl;->mCameraAuthViewModel:Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->getCameraAuthState()I

    move-result v0

    return v0
.end method

.method protected initInternal()V
    .locals 2

    .line 25
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/camera/ICameraAuthViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CameraAuthManagerImpl;->mCameraAuthViewModel:Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

    .line 26
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getCameraAuthManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CameraAuthManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer;

    return-void
.end method

.method public synthetic lambda$observeData$0$CameraAuthManagerImpl(Ljava/lang/Integer;)V
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CameraAuthManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CameraAuthManagerServer;->onCameraAuthStateChanged(I)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CameraAuthManagerImpl;->mCameraAuthViewModel:Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->mCameraAuthState:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CameraAuthManagerImpl$MgubkopwpRdKvjNGV0wi7wKPkM8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CameraAuthManagerImpl$MgubkopwpRdKvjNGV0wi7wKPkM8;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/CameraAuthManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/CameraAuthManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setCameraAuthState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/CameraAuthManagerImpl;->mCameraAuthViewModel:Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

    const-string/jumbo v1, "xp_carcontrol_oobe_request"

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->setCameraAuthState(ILjava/lang/String;)V

    return-void
.end method
