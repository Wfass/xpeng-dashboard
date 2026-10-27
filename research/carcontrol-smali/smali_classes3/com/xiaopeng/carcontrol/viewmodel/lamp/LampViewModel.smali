.class public Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;
.super Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;
.source "LampViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LampViewModel"


# instance fields
.field private final mAutoLampHeight:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarpetLightWelcomeSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDaytimeRunningLightData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDomeLightBright:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDomeLightState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/DomeLightState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDomeLightSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeadLamp:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeightLevel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final mHighBeamLampState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerParkLightStates:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLedDrl:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftRightTurnLampState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLightMeHome:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLightMeHomeTime:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowBeamLampState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLowBeamOffDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xui/app/XDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final mOuterParkLightStates:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mParkLampMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mParkLampState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mParkLightRelatedFMBLightState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mParkLightStates:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPollingLightWelcomeSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRearFogLamp:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRearLogoLightStData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRearLogoLightSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 455
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;-><init>()V

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mHeadLamp:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mHeightLevel:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mAutoLampHeight:Landroidx/lifecycle/MutableLiveData;

    .line 44
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLightMeHome:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLightMeHomeTime:Landroidx/lifecycle/MutableLiveData;

    .line 48
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mRearFogLamp:Landroidx/lifecycle/MutableLiveData;

    .line 50
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLedDrl:Landroidx/lifecycle/MutableLiveData;

    .line 52
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mDomeLightState:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mDomeLightSw:Landroidx/lifecycle/MutableLiveData;

    .line 55
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mDomeLightBright:Landroidx/lifecycle/MutableLiveData;

    .line 57
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLowBeamLampState:Landroidx/lifecycle/MutableLiveData;

    .line 59
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mParkLampState:Landroidx/lifecycle/MutableLiveData;

    .line 61
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mHighBeamLampState:Landroidx/lifecycle/MutableLiveData;

    .line 63
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mParkLampMode:Landroidx/lifecycle/MutableLiveData;

    .line 65
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLeftRightTurnLampState:Landroidx/lifecycle/MutableLiveData;

    .line 67
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mParkLightRelatedFMBLightState:Landroidx/lifecycle/MutableLiveData;

    .line 69
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mParkLightStates:Landroidx/lifecycle/MutableLiveData;

    .line 71
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mOuterParkLightStates:Landroidx/lifecycle/MutableLiveData;

    .line 73
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mInnerParkLightStates:Landroidx/lifecycle/MutableLiveData;

    .line 414
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mDaytimeRunningLightData:Landroidx/lifecycle/MutableLiveData;

    .line 416
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mRearLogoLightSwData:Landroidx/lifecycle/MutableLiveData;

    .line 418
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mRearLogoLightStData:Landroidx/lifecycle/MutableLiveData;

    .line 421
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mCarpetLightWelcomeSwData:Landroidx/lifecycle/MutableLiveData;

    .line 423
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mPollingLightWelcomeSwData:Landroidx/lifecycle/MutableLiveData;

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLampCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 457
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->initLampState()V

    return-void
.end method

.method private initLampState()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getHeadLampState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mHeadLamp:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRearFogLamp()Z

    move-result v0

    .line 466
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mRearFogLamp:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$handleParkingLampStatesChanged$0(I)[Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "x$0"
        }
    .end annotation

    .line 182
    new-array p0, p0, [Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public getAutoLampHeightData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mAutoLampHeight:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCarpetLightWelcomeSwData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mCarpetLightWelcomeSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDaytimeRunningLightData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mDaytimeRunningLightData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDomeLightBrightData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mDomeLightBright:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDomeLightData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/DomeLightState;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mDomeLightState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDomeLightState(Lcom/xiaopeng/carcontrol/viewmodel/lamp/DomeLightState;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/DomeLightState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultState"
        }
    .end annotation

    .line 327
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDomeLightState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/DomeLightState;->fromBcmDomeStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/DomeLightState;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public getDomeLightSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mDomeLightSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getHeadLampData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mHeadLamp:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getHeadLampMode(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultMode"
        }
    .end annotation

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getHeadLampGroup()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public getHighBeamLampData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mHighBeamLampState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getInnerParkingLampStatesData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mInnerParkLightStates:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLampHeightLevelData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mHeightLevel:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLampHeightLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLampHeightLevel()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    move-result-object v0

    return-object v0
.end method

.method public getLedDayLightData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLedDrl:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLightMeHomeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLightMeHome:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLightMeHomeTimeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLightMeHomeTime:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLightMeTime()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLightMeHomeTime:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLightMeHomeTime:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    return-object v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLightMeHomeTime()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    move-result-object v0

    return-object v0
.end method

.method public getLowBeamLampState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLowBeamLampState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getOuterParkingLampStatesData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mOuterParkLightStates:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getParkLampData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mParkLampState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getParkLampModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mParkLampMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getParkLightRelatedFMBLightState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mParkLightRelatedFMBLightState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getParkingLampStatesData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mParkLightStates:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPollingLightWelcomeSwData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mPollingLightWelcomeSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRearFogLampData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mRearFogLamp:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRearLogoLightStData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mRearLogoLightStData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRearLogoLightSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mRearLogoLightSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTurnLampData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLeftRightTurnLampState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method handleAutoLampHeightChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mAutoLampHeight:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCarpetLightWelcomeStateChange(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mCarpetLightWelcomeSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleDaytimeRunningLightChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mDaytimeRunningLightData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleDomeLightBrightness(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mDomeLightBright:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleDomeLightState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 162
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/DomeLightState;->fromBcmDomeStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/DomeLightState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mDomeLightState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Error Dome Light State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method handleDomeLightState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightOnOff"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mDomeLightSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleHeadLampModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 82
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mHeadLamp:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Error Head Lamp Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method handleHighBeamLampChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mHighBeamLampState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleInnerParkingLampStatesChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mInnerParkLightStates:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLampHeightLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 92
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mHeightLevel:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Error Lamp Height Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method handleLightMeHomeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLightMeHome:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleLightMeHomeTime(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeCfg"
        }
    .end annotation

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLightMeHomeTime:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method handleLowBeamLampChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 131
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->handleLowBeamLampChanged(Z)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLowBeamLampState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleLowBeamOffConfirmStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isActivated"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->showLowBeamOffConfirmDialog(Z)V

    return-void
.end method

.method handleOuterParkingLampStatesChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mOuterParkLightStates:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleParkLightRelatedFMBLightState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mParkLightRelatedFMBLightState:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 175
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method handleParkingLampStatesChanged([I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mParkLightStates:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$1WilvpjiTjANPGqHFCbWgAW8TEo;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$1WilvpjiTjANPGqHFCbWgAW8TEo;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 184
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected handlePollingWelcomeStateChange(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mPollingLightWelcomeSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handlePositionLampChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mParkLampState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleRearFogLampChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mRearFogLamp:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRearLogoLightStatusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mRearLogoLightStData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRearLogoLightSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mRearLogoLightSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleTurnLampChanged(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLeftRightTurnLampState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$null$4$LampViewModel(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    .line 505
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    const-string p2, "Low beam off confirm: true"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 506
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setLowBeamOffConfirmSt(Z)V

    const/4 p1, 0x0

    .line 507
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLowBeamOffDialogRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic lambda$null$5$LampViewModel(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    .line 510
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    const-string p2, "Low beam off confirm: false"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 511
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setLowBeamOffConfirmSt(Z)V

    const/4 p1, 0x0

    .line 512
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLowBeamOffDialogRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic lambda$null$6$LampViewModel(Landroid/content/DialogInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dialog1"
        }
    .end annotation

    .line 515
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    const-string v0, "Low beam off confirm dialog dismiss"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 516
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLowBeamOffDialogRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic lambda$setLightMeHomeTime$1$LampViewModel()V
    .locals 1

    const/4 v0, 0x1

    .line 270
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setLightMeHome(Z)V

    return-void
.end method

.method public synthetic lambda$showLowBeamOffConfirmDialog$7$LampViewModel(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "isActivated"
        }
    .end annotation

    .line 492
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLowBeamOffConfirmStateChanged isActivated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLowBeamOffDialogRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLowBeamOffDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 497
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLowBeamOffDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    return-void

    .line 500
    :cond_1
    new-instance p1, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$style;->XDialogView:I

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 501
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setCloseVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->low_beam_off_confirm_title:I

    .line 502
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->low_beam_off_confirm_content:I

    .line 503
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_confirm:I

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$UsJ6TKB8fYqvrHAMnQFBHUxD2w0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$UsJ6TKB8fYqvrHAMnQFBHUxD2w0;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;)V

    .line 504
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$PlrOSRS-BD-Ptz-Ae2sWO3HgoAM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$PlrOSRS-BD-Ptz-Ae2sWO3HgoAM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;)V

    .line 509
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$s5lPg-f4ahYvv90H5pxMf_7OP88;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$s5lPg-f4ahYvv90H5pxMf_7OP88;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;)V

    .line 514
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 518
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->mLowBeamOffDialogRef:Ljava/lang/ref/WeakReference;

    const/16 v0, 0x7d8

    .line 519
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 520
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    return-void
.end method

.method public synthetic lambda$showRearLogoLightConfirmDialog$2$LampViewModel(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    .line 475
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    const-string p2, "showRearLogoLightConfirmPanel: setRearLogoLightSw true"

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 476
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setRearLogoLightSw(Z)V

    return-void
.end method

.method public synthetic lambda$showRearLogoLightConfirmDialog$3$LampViewModel(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    .line 479
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    const-string p2, "showRearLogoLightConfirmPanel: setRearLogoLightSw false"

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 480
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setRearLogoLightSw(Z)V

    return-void
.end method

.method public setDomeLight(Lcom/xiaopeng/carcontrol/viewmodel/lamp/DomeLightState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/DomeLightState;->toBcmDomeCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setDomeLight(I)V

    :cond_0
    return-void
.end method

.method public setHeadLampMode(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->toBcmLampCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setHeadLampGroup(I)V

    :cond_0
    return-void
.end method

.method public setLightMeHomeTime(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->toBcmCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setLightMeHomeTime(I)V

    const-string p1, "isSupportLightMeHomeNew"

    .line 268
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->isLightMeHomeEnable()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 269
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$6lpXdzQAFWmPz8TiG-wZlgPyNkM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$6lpXdzQAFWmPz8TiG-wZlgPyNkM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;)V

    const-wide/16 v1, 0x64

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_0

    .line 273
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "setLightMeHomeTime: param is null"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showLowBeamOffConfirmDialog(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isActivated"
        }
    .end annotation

    .line 490
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$uOmaAaPBJRGHmAasa0O0Vm_sPXM;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$uOmaAaPBJRGHmAasa0O0Vm_sPXM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;Z)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showRearLogoLightConfirmDialog()V
    .locals 4

    .line 471
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$style;->XDialogView_Large:I

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 472
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setCloseVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->title_rear_logo_light:I

    .line 473
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->rear_logo_light_confirm:I

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$Ld3ACH9szaSzjZZ0HqeIjAA9f8Q;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$Ld3ACH9szaSzjZZ0HqeIjAA9f8Q;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;)V

    .line 474
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->rear_logo_light_cancel:I

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$AUHbCmWp1wXBq-GcA3vxL-cqdzw;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$AUHbCmWp1wXBq-GcA3vxL-cqdzw;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;)V

    .line 478
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 482
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$layout;->layout_rear_logo_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 483
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/app/XDialog;

    const/16 v1, 0x7d8

    .line 484
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 485
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 486
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    const-string v3, "RearLogoLightConfirmDialog"

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
