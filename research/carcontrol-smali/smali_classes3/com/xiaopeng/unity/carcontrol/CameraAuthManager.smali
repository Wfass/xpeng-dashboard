.class public Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "CameraAuthManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ICameraAuthManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/CameraAuthListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/ICameraAuthManager;"
    }
.end annotation


# instance fields
.field private mCameraAuthViewModel:Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

.field private mParam:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;
    .locals 1

    .line 61
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$Holder;->access$200()Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCameraAuthState()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->mCameraAuthViewModel:Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->getCameraAuthState()I

    move-result v0

    return v0
.end method

.method protected initInternal()V
    .locals 2

    .line 22
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/camera/ICameraAuthViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->mCameraAuthViewModel:Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

    .line 23
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public synthetic lambda$observeData$0$CameraAuthManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/CameraAuthListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->mParam:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->mParam:Ljava/lang/String;

    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/unity/carcontrol/CameraAuthListener;->onCameraAuthStateChanged(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->mCameraAuthViewModel:Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->mCameraAuthState:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CameraAuthManager$7ScG9nm-vXQ_OFukcf7RiRDeKPg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CameraAuthManager$7ScG9nm-vXQ_OFukcf7RiRDeKPg;-><init>(Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "param"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRealCall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "setCameraAuthState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getCameraAuthState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_0
    iput-object p2, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->mParam:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->getCameraAuthState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 51
    :cond_1
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->setCameraAuthState(I)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method public setCameraAuthState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->mCameraAuthViewModel:Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;->setCameraAuthState(ILjava/lang/String;)V

    return-void
.end method
