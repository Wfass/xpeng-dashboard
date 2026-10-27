.class public Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;
.super Ljava/lang/Object;
.source "XpuViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "XpuViewModel"


# instance fields
.field private final mIsla:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mLccCrossBarriers:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mLccTrafficLight:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mLssSenData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mMapUserExperienceState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNedcStateData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;",
            ">;"
        }
    .end annotation
.end field

.field private final mNgpActivateModeState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mNgpAflState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mNgpCustomSpeedKph:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNgpCustomSpeedMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNgpCustomSpeedPercent:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNgpFreeNgp:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mNgpNewAflState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNgpOvertakeMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mNgpPreferLaneMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNra:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNraState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRaeb:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoundSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mTurnAssistant:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mVoiceSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mXpilotUserExperienceState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mXpuBrakeFunctionMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mXpuConnected:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mRaeb:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mLssSenData:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNra:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNraState:Landroidx/lifecycle/MutableLiveData;

    .line 45
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mTurnAssistant:Landroidx/lifecycle/MutableLiveData;

    .line 47
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mIsla:Landroidx/lifecycle/MutableLiveData;

    .line 49
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNedcStateData:Landroidx/lifecycle/MutableLiveData;

    .line 51
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpOvertakeMode:Landroidx/lifecycle/MutableLiveData;

    .line 52
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpPreferLaneMode:Landroidx/lifecycle/MutableLiveData;

    .line 53
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mSoundSwData:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mVoiceSwData:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mLccCrossBarriers:Landroidx/lifecycle/MutableLiveData;

    .line 57
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mLccTrafficLight:Landroidx/lifecycle/MutableLiveData;

    .line 59
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuConnected:Landroidx/lifecycle/MutableLiveData;

    .line 61
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpCustomSpeedMode:Landroidx/lifecycle/MutableLiveData;

    .line 62
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpCustomSpeedKph:Landroidx/lifecycle/MutableLiveData;

    .line 63
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpCustomSpeedPercent:Landroidx/lifecycle/MutableLiveData;

    .line 64
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpilotUserExperienceState:Landroidx/lifecycle/MutableLiveData;

    .line 65
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mMapUserExperienceState:Landroidx/lifecycle/MutableLiveData;

    .line 67
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpFreeNgp:Landroidx/lifecycle/MutableLiveData;

    .line 68
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpAflState:Landroidx/lifecycle/MutableLiveData;

    .line 69
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpNewAflState:Landroidx/lifecycle/MutableLiveData;

    .line 70
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpActivateModeState:Landroidx/lifecycle/MutableLiveData;

    .line 71
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuBrakeFunctionMode:Landroidx/lifecycle/MutableLiveData;

    .line 76
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_xpu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    .line 77
    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method

.method private converSpeedFromXpu2UI(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x5

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0xa

    return p1

    :cond_1
    return v1

    :cond_2
    const/4 p1, -0x5

    return p1

    :cond_3
    const/16 p1, -0xa

    return p1
.end method

.method private convertLssSensitivityFromUiCmd(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private convertLssSensitivityToUiCmd(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private convertSpeedFromUI2Xpu(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    const/16 v0, -0xa

    if-eq p1, v0, :cond_3

    const/4 v0, -0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x4

    return p1

    :cond_2
    const/4 p1, 0x2

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private handleIslaStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "islaMode"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mIsla:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAsLockScenario()I
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getAsLockScenario()I

    move-result v0

    return v0
.end method

.method public getAsTargetMaxHeightRequest()I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getAsTargetMaxHeightRequest()I

    move-result v0

    return v0
.end method

.method public getAsTargetMinHeightRequest()I
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getAsTargetMinHeightRequest()I

    move-result v0

    return v0
.end method

.method public getCngpSafeExamResult()Z
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getCngpSafeExamResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDomesticIslaData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;",
            ">;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mIsla:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLccCrossBarriersData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mLccCrossBarriers:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLccCrossBarriersSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getLccCrossBarriersSw()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLccTrafficLightData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mLccTrafficLight:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLccTrafficLightSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getLccTrafficLightSw()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLssSenData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;",
            ">;"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mLssSenData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLssSensitivity()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getLssSensitivity()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->convertLssSensitivityToUiCmd(I)I

    move-result v0

    return v0
.end method

.method public getMapUserExperienceData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mMapUserExperienceState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMapUserExperiencePlanState()Z
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getMapUserExperiencePlanState()Z

    move-result v0

    return v0
.end method

.method public getNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;
    .locals 5

    const-string v0, "XpuViewModel"

    const/4 v1, 0x0

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNedcSwitchStatus()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->fromXpuCmd(I)Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v2

    if-nez v2, :cond_0

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNedcState on Error Nedc State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 218
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    return-object v2

    :catch_0
    const-string v2, "getNedcState failed, return off"

    .line 223
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    return-object v0
.end method

.method public getNedcStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;",
            ">;"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNedcStateData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNgpActivateModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpActivateModeState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNgpActivateModeState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpActivateModeState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    return-object v0
.end method

.method public getNgpAflData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpAflState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNgpCustomSpeedKph()I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpCustomSpeedKph()I

    move-result v0

    .line 303
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->converSpeedFromXpu2UI(I)I

    move-result v0

    return v0
.end method

.method public getNgpCustomSpeedKphData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpCustomSpeedKph:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNgpCustomSpeedMode()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpCustomSpeedMode()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getNgpCustomSpeedModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpCustomSpeedMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNgpCustomSpeedPercent()I
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpCustomSpeedPercent()I

    move-result v0

    .line 315
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->converSpeedFromXpu2UI(I)I

    move-result v0

    return v0
.end method

.method public getNgpCustomSpeedPercentData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpCustomSpeedPercent:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNgpFreeNgpData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpFreeNgp:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNgpFreeNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpFreeNgpState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    return-object v0
.end method

.method public getNgpNewAflData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpNewAflState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNgpOvertakeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;",
            ">;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpOvertakeMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNgpOvertakeMode()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpOvertakeMode()I

    move-result v0

    return v0
.end method

.method public getNgpPreferLaneCfg()I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpPreferLaneCfg()I

    move-result v0

    return v0
.end method

.method public getNgpPreferLaneData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpPreferLaneMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNraCacheState()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNraCacheState()I

    move-result v0

    return v0
.end method

.method public getNraState()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNraState()I

    move-result v0

    return v0
.end method

.method public getNraStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNraState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNraSw()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNraSw()Z

    move-result v0

    return v0
.end method

.method public getRaebData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mRaeb:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRaebState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getRaebState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleSasMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getSimpleSasSw()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    move-result-object v0

    return-object v0
.end method

.method public getSoundSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getSoundSw()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    return-object v0
.end method

.method public getSoundSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mSoundSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTurnAssistantData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mTurnAssistant:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTurnAssistantSw()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getTurnAssistantSw()Z

    move-result v0

    return v0
.end method

.method public getVoiceSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getVoiceSw()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    return-object v0
.end method

.method public getVoiceSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mVoiceSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXngpSafeExamResult()Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getXngpSafeExamResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getXpilotUserExperienceData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpilotUserExperienceState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXpilotUserExperiencePlanState()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getXpilotUserExperiencePlanState()Z

    move-result v0

    return v0
.end method

.method public getXpilotUserExperienceTitle()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getXpilotUserExperienceTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXpuBrakeFunctionMode()I
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getXpuBrakeFunctionMode()I

    move-result v0

    return v0
.end method

.method public getXpuBrakeFunctionModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuBrakeFunctionMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXpuConnected()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getXpuConnected()Z

    move-result v0

    return v0
.end method

.method public handleLccBarriersChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mLccCrossBarriers:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleLccTrafficLightChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mLccTrafficLight:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public isCameraOverTemp()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->isCameraOverTemp()Z

    move-result v0

    return v0
.end method

.method public isNgpMode()Z
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getCngpModeStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isXpuNedcActivated()Z
    .locals 3

    const-string v0, "isSupportXpuNedc"

    .line 231
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNedcState()Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v0

    .line 233
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->Failure:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onLssSenChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensitivity"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mLssSenData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;->fromXpuState(I)Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onMapPrivacyCollectionAgreedStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mMapUserExperienceState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNedcStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 428
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->fromXpuCmd(I)Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNedcStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 431
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOnFailure:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    if-ne v0, p1, :cond_1

    .line 432
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_xpu_start_fail:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLong(IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "XpuViewModel"

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Error Nedc State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 438
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNgpActivateModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpActivateModeState:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpAflChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpAflState:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpCustomSpeedKphChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 545
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->converSpeedFromXpu2UI(I)I

    move-result p1

    .line 546
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpCustomSpeedKph:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpCustomSpeedModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpCustomSpeedMode:Landroidx/lifecycle/MutableLiveData;

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpCustomSpeedPercentChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 551
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->converSpeedFromXpu2UI(I)I

    move-result p1

    .line 552
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpCustomSpeedPercent:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpFreeNgpSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpFreeNgp:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpNewAlfStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpNewAflState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpOvertakeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpOvertakeMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;->fromXpuState(I)Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNgpPreferLaneChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNgpPreferLaneMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNraStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNraState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNraSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mNra:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onRaebSwChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mRaeb:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSimpleSasStChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 500
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->handleIslaStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;)V

    return-void
.end method

.method public onSoundSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mSoundSwData:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTurnAssistantSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mTurnAssistant:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onVoiceSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mVoiceSwData:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onXpilotPrivacyCollectionAgreedStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpilotUserExperienceState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onXpuBrakeFunctionModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuBrakeFunctionMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onXpuConnectedChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connected"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuConnected:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setLccCrossBarriersSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setLccCrossBarriersSw(Z)V

    return-void
.end method

.method public setLccTrafficLightSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setLccTrafficLightSw(Z)V

    return-void
.end method

.method public setLssSensitivity(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->convertLssSensitivityFromUiCmd(I)I

    move-result v0

    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLssSensitivity failed, invalid sensitivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "XpuViewModel"

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setLssSensitivity(I)V

    return-void
.end method

.method public setMapUserExperiencePlanState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setMapUserExperiencePlanState(Z)V

    return-void
.end method

.method public setNedcSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNedcSwitch(Z)V

    return-void
.end method

.method public setNgpActivateModeEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpActivateModeEnable(Z)V

    return-void
.end method

.method public setNgpCustomSpeedKph(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 308
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->convertSpeedFromUI2Xpu(I)I

    move-result p1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpCustomSpeedKph(I)V

    return-void
.end method

.method public setNgpCustomSpeedMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpCustomSpeedMode(I)V

    return-void
.end method

.method public setNgpCustomSpeedPercent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 320
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->convertSpeedFromUI2Xpu(I)I

    move-result p1

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpCustomSpeedPercent(I)V

    return-void
.end method

.method public setNgpFreeNgpEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpFreeNgpEnable(Z)V

    return-void
.end method

.method public setNgpOvertakeMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpOvertakeMode(I)V

    return-void
.end method

.method public setNgpPreferLaneCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpPreferLaneCfg(I)V

    return-void
.end method

.method public setNraState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNraState(I)V

    return-void
.end method

.method public setNraSwEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNraSwEnable(Z)V

    return-void
.end method

.method public setRaebEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getRaebState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 84
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 93
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->xpilot_open_fail:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setRaebState(Z)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setRaebState(Z)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setRaebState(Z)V

    :goto_0
    return-void
.end method

.method public setSimpleSasMode(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "islaMode"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuIslaMode:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setSimpleSasSw(I)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setSimpleSasSw(I)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setSimpleSasSw(I)V

    :goto_0
    return-void
.end method

.method public setSoundSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setSoundSw(Z)V

    return-void
.end method

.method public setTurnAssistantEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setTurnAssistantEnable(Z)V

    return-void
.end method

.method public setVoiceSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setVoiceSw(Z)V

    return-void
.end method

.method public setXpilotUserExperiencePlanState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setXpilotUserExperiencePlanState(Z)V

    return-void
.end method

.method public setXpuAdasOneShotActive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setXpuAdasOneShotActive(Z)V

    return-void
.end method
