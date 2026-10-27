.class public Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;
.super Ljava/lang/Object;
.source "CameraAuthViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/camera/ICameraAuthViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController$Callback;


# instance fields
.field private mCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController$Callback;

.field private final mCameraAuthController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;

.field public final mCameraAuthState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->mCameraAuthState:Landroidx/lifecycle/MutableLiveData;

    .line 17
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->mCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController$Callback;

    .line 25
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_CameraAuthService"

    .line 26
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->mCameraAuthController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;

    .line 27
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->mCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method


# virtual methods
.method public getCameraAuthState()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->mCameraAuthController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;->getCameraAuthState()I

    move-result v0

    return v0
.end method

.method public setCameraAuthState(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "param"
        }
    .end annotation

    const-string v0, "isSupportCameraAuthorize"

    .line 35
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "xp_carcontrol_oobe_request"

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->mCameraAuthController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;->setCameraAuthState(ILjava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->mCameraAuthController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;

    invoke-interface {p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;->setCameraAuthState(I)V

    .line 41
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->mCameraAuthState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
