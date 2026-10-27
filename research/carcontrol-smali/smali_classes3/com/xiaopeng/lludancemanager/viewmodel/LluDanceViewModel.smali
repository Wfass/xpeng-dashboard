.class public Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;
.super Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceBaseViewModel;
.source "LluDanceViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;
    }
.end annotation


# static fields
.field private static final DEFAULT_POSITION:I = 0x0

.field private static final INVALID_POSITION:I = -0x1

.field public static final LLU_DANCE_VOLUME_VALUE:I = 0x19

.field private static final TAG:Ljava/lang/String; = "LluDanceViewModel"


# instance fields
.field private mAutoWindowExecuted:Z

.field private final mDefaultSelectedOption:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGearLevelChangedObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final mIgOffEvent:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentRscId:Ljava/lang/String;

.field private final mLampVM:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

.field private final mLiveDataList:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLluDanceBreak:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

.field private final mLoadingState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrderedPlayItemIdData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRepository:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

.field private mTurnLampChangedObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;",
            ">;"
        }
    .end annotation
.end field

.field private final mVcuVM:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private final mWakeupBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 81
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceBaseViewModel;-><init>()V

    .line 62
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mOrderedPlayItemIdData:Landroidx/lifecycle/MutableLiveData;

    .line 63
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mDefaultSelectedOption:Landroidx/lifecycle/MutableLiveData;

    .line 65
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    .line 67
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLoadingState:Landroidx/lifecycle/MutableLiveData;

    .line 68
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLluDanceBreak:Landroidx/lifecycle/MediatorLiveData;

    .line 69
    new-instance v1, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mIgOffEvent:Landroidx/lifecycle/MediatorLiveData;

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mPositionMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mIntentRscId:Ljava/lang/String;

    .line 78
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mWakeupBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    .line 79
    iput-boolean v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mAutoWindowExecuted:Z

    .line 82
    new-instance v1, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-direct {v1}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    .line 83
    new-instance v2, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$1;-><init>(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->setOperationListener(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;)V

    .line 213
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    .line 214
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mVcuVM:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 215
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    iput-object v2, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLampVM:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 216
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->initMcuCallback()V

    .line 217
    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mTurnLampChangedObserver:Landroidx/lifecycle/Observer;

    if-nez v3, :cond_0

    .line 218
    new-instance v3, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$KNTvuVKWB8qmY0_AHD0PbTYow3U;

    invoke-direct {v3, p0}, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$KNTvuVKWB8qmY0_AHD0PbTYow3U;-><init>(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;)V

    iput-object v3, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mTurnLampChangedObserver:Landroidx/lifecycle/Observer;

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mGearLevelChangedObserver:Landroidx/lifecycle/Observer;

    if-nez v3, :cond_1

    .line 227
    new-instance v3, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$76tCQID4QDYL2gKR15nXC6IyHEo;

    invoke-direct {v3, p0}, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$76tCQID4QDYL2gKR15nXC6IyHEo;-><init>(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;)V

    iput-object v3, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mGearLevelChangedObserver:Landroidx/lifecycle/Observer;

    .line 235
    :cond_1
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getTurnLampData()Landroidx/lifecycle/LiveData;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mTurnLampChangedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 236
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mGearLevelChangedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->updateInstallComplete(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->updateFail(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->updateDownloading(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->updatePause(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V

    return-void
.end method

.method private getPositionFromMap(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rscId"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 487
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private initMcuCallback()V
    .locals 3

    .line 265
    new-instance v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;-><init>(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;)V

    .line 266
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    const-string/jumbo v2, "xp_mcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    .line 267
    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method

.method private isLegalRscId(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rscId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "-1"

    .line 432
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 436
    :cond_1
    sget-object v1, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLegalRscId, rscId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private updateDownloading(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resource",
            "progress"
        }
    .end annotation

    .line 467
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->isLegalRscId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getPositionFromMap(Ljava/lang/String;)I

    move-result v0

    .line 470
    sget-object v1, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDownloading ---> rscId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "  progress: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " current position: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-eq v0, p1, :cond_1

    .line 472
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x3

    .line 474
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    float-to-double v0, p2

    .line 475
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setDownloadedPercentage(D)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x6

    .line 477
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    .line 479
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private updateFail(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource"
        }
    .end annotation

    .line 379
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->isLegalRscId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getPositionFromMap(Ljava/lang/String;)I

    move-result p1

    .line 382
    sget-object v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    const/4 v0, 0x7

    .line 385
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    .line 386
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateInstallComplete(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource"
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInstallComplete  id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 397
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 399
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 401
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 402
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "zxg"

    .line 396
    invoke-static {v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-direct {p0, v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->isLegalRscId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    invoke-direct {p0, v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getPositionFromMap(Ljava/lang/String;)I

    move-result v0

    .line 406
    sget-object v4, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateComplete position :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v4, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 408
    iget-object v4, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 409
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->refresh(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    const/16 p1, 0x8

    .line 410
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    .line 411
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateComplete data  id: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 414
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " title: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 415
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " duration: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 416
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getDuration()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 417
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 418
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " videoPath: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 419
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " effectName: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 420
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getEffectName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updatePause(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "progress"
        }
    .end annotation

    .line 447
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object p1

    .line 448
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->isLegalRscId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getPositionFromMap(Ljava/lang/String;)I

    move-result p1

    .line 450
    sget-object v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePause position :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    const/4 v0, 0x5

    .line 454
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    float-to-double v0, p2

    .line 455
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setDownloadedPercentage(D)V

    .line 456
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public chooseSelectPositionNew(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 315
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 318
    sget-object v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIntentRscId =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mIntentRscId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mIntentRscId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v0, v2

    .line 320
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 321
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 322
    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mIntentRscId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    sget-object p1, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chooseSelectPosition open from dropdown menu, position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mIntentRscId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setLLuDanceCurrentSelectRscId(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 326
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mIntentRscId:Ljava/lang/String;

    :goto_1
    move v2, v0

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getLLuDanceCurrentSelectRscId()Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chooseSelectPosition getLLuDanceCurrentSelectRscId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    .line 335
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 336
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 337
    invoke-virtual {v3}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    sget-object p1, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chooseSelectPosition from last select , position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string p1, "chooseSelectPosition from selected item = null, position = 0"

    .line 344
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mDefaultSelectedOption:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public disableWakeup()V
    .locals 7

    .line 551
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mWakeupBinder:Landroid/os/IBinder;

    const/4 v3, 0x1

    const-string/jumbo v4, "\u706f\u821e"

    const-string/jumbo v5, "\u5f53\u524d\u573a\u666f\u4e0d\u652f\u6301\u8bed\u97f3"

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 553
    sget-object v1, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableWakeup exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public enableWakeup()V
    .locals 5

    .line 543
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mWakeupBinder:Landroid/os/IBinder;

    const/4 v2, 0x1

    const-string/jumbo v3, "\u706f\u821e"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 545
    sget-object v1, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableWakeup exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAllData()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->requestResources()V

    return-void
.end method

.method public getDefaultSelectedOption()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mDefaultSelectedOption:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getIgEvent()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mIgOffEvent:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public getLightDanceAvailable()I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLightDanceAvailable()I

    move-result v0

    return v0
.end method

.method public getLiveDataList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;",
            ">;>;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public getLluDanceBreak()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLluDanceBreak:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public getLluDanceStartPlayData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluDanceStartPlayData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getOrderedPlayItemIdData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mOrderedPlayItemIdData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public isAutoWindowExecuted()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mAutoWindowExecuted:Z

    return v0
.end method

.method public synthetic lambda$new$0$LluDanceViewModel(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "turnLampState"
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turn lamp changed , turnLampState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    if-eq p1, v0, :cond_0

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLluDanceBreak:Landroidx/lifecycle/MediatorLiveData;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$LluDanceViewModel(Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "gearLevel"
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gearLevel changed , gearLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq v0, p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLluDanceBreak:Landroidx/lifecycle/MediatorLiveData;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public pauseDownLoad(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluDanceViewData"
        }
    .end annotation

    .line 532
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getOperationResource()Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    const/4 v1, 0x5

    .line 533
    invoke-virtual {p1, v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    .line 534
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->pauseDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 535
    sget-object v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6682\u505c\u4e0b\u8f7d--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public preliminaryWork()V
    .locals 6

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getLluAutoVolume()Z

    move-result v0

    .line 499
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getLluAutoWindow()Z

    move-result v1

    .line 500
    sget-object v2, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preliminaryWork  auto volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   auto window = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v0, "preliminaryWork  auto volume = 25"

    .line 502
    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/16 v4, 0x19

    const/4 v5, 0x0

    .line 505
    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    if-eqz v1, :cond_3

    const-string v0, "preliminaryWork  auto window open"

    .line 508
    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 512
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "preliminaryWork windowLockActive = false"

    .line 514
    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 515
    iput-boolean v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mAutoWindowExecuted:Z

    .line 516
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowOpen()V

    goto :goto_0

    .line 518
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_dance_double_confirm_dialog_auto_window_lock_active:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 522
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_effect_sw_disable:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public resetAutoWindowFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mAutoWindowExecuted:Z

    return-void
.end method

.method public resumeDownload(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionData"
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getOperationResource()Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    const/4 v1, 0x3

    .line 371
    invoke-virtual {p1, v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    .line 372
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->resumeDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method

.method public setDefaultSelectedOption(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userSelectedPosition"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mDefaultSelectedOption:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 245
    sget-object v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultSelectedOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIntentRscId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentRscId"
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mIntentRscId:Ljava/lang/String;

    return-void
.end method

.method public startDownload(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionData"
        }
    .end annotation

    .line 364
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getOperationResource()Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    const/4 v1, 0x3

    .line 365
    invoke-virtual {p1, v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->setState(I)V

    .line 366
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    const-string v1, "com.xiaopeng.carcontrol/com.xiaopeng.lludancemanager.view.LluDanceActivityNew"

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->startDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)V

    return-void
.end method

.method public startPlay(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluDanceViewData"
        }
    .end annotation

    .line 359
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setLLuDanceLastPlayRscId(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getEffectName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluDancePreview(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stopPlayLlu()V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->stopLluEffectPreview()V

    return-void
.end method

.method public updateAllData(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 297
    sget-object v2, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAllData"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mPositionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 299
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 300
    iget-object v4, v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mPositionMap:Ljava/util/HashMap;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v5}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    :cond_0
    sget-object v3, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mPositionMap =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mPositionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    .line 305
    new-instance v3, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v4

    sget v5, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_dance_activity_dance_item_more_title:I

    invoke-virtual {v4, v5}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v4

    sget v5, Lcom/xiaopeng/carcontrolmodule/R$string;->llu_dance_activity_dance_item_more_author:I

    invoke-virtual {v4, v5}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v11, -0x1

    const-wide/16 v12, -0x1

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    const-string v8, ""

    const-string v9, "-1000"

    const-string v10, ""

    const-string v16, ""

    const-string v17, ""

    move-object v5, v3

    invoke-direct/range {v5 .. v17}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJDLjava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_1
    iget-object v3, v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLiveDataList:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v3, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 310
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->chooseSelectPositionNew(Ljava/util/List;)V

    .line 311
    invoke-virtual {v0, v2}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->updateLoadingState(Z)V

    return-void
.end method

.method public updateLoadingState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLoading"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->mLoadingState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
