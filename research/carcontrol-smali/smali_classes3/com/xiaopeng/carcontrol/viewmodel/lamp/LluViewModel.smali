.class public Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;
.super Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;
.source "LluViewModel.java"


# static fields
.field private static final EFFECT_TYPE:Ljava/lang/String; = "carcontrol"

.field private static final TAG:Ljava/lang/String; = "LluViewModel"


# instance fields
.field private final mIdleTask:Ljava/lang/Runnable;

.field private final mLluAwakeMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluUnlockEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mLluAwakeSwitch:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLluChargeSwitch:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLluDanceStartPlayData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLluLinkToShowEleSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLluPhotoSwitch:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLluPreviewStartedSuccess:Z

.field private final mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLluSayHiSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLluShowOffSwitch:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLluSleepMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluLockEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mLluSleepSwitch:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLluSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewInactiveTime:I

.field private final mPreviewTask:Ljava/lang/Runnable;

.field private final mXuiAcChargeModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mXuiAwakeWaitModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mXuiDcChargeModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mXuiFindCarModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mXuiLockingModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mXuiShowoffModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mXuiSleepModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mXuiTakePhotoModeData:Landroidx/lifecycle/MutableLiveData;
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
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;-><init>()V

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluSw:Landroidx/lifecycle/MutableLiveData;

    .line 29
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluAwakeSwitch:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluSleepSwitch:Landroidx/lifecycle/MutableLiveData;

    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluShowOffSwitch:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluChargeSwitch:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPhotoSwitch:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluAwakeMode:Landroidx/lifecycle/MutableLiveData;

    .line 36
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluSleepMode:Landroidx/lifecycle/MutableLiveData;

    .line 37
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluLinkToShowEleSw:Landroidx/lifecycle/MutableLiveData;

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluDanceStartPlayData:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluSayHiSwData:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LluViewModel$3DioJWsQQXSzJg5FmLsKy5JXYtc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LluViewModel$3DioJWsQQXSzJg5FmLsKy5JXYtc;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStartedSuccess:Z

    const-string v0, "getSayHiPreviewInactiveTime"

    .line 46
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewInactiveTime:I

    .line 48
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LluViewModel$kvdIS1p6HK95V6FQ0wVu0lRZvtU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LluViewModel$kvdIS1p6HK95V6FQ0wVu0lRZvtU;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewTask:Ljava/lang/Runnable;

    .line 376
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiFindCarModeData:Landroidx/lifecycle/MutableLiveData;

    .line 377
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiAwakeWaitModeData:Landroidx/lifecycle/MutableLiveData;

    .line 378
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiAcChargeModeData:Landroidx/lifecycle/MutableLiveData;

    .line 379
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiDcChargeModeData:Landroidx/lifecycle/MutableLiveData;

    .line 380
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiSleepModeData:Landroidx/lifecycle/MutableLiveData;

    .line 381
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiShowoffModeData:Landroidx/lifecycle/MutableLiveData;

    .line 382
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiTakePhotoModeData:Landroidx/lifecycle/MutableLiveData;

    .line 384
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiLockingModeData:Landroidx/lifecycle/MutableLiveData;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getRunningLluEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v0

    if-nez v0, :cond_1

    .line 58
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Idle:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Previewing:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    .line 60
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LluViewModel$j6RNT6WiIwGyAIyVmKblH6cyens;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LluViewModel$j6RNT6WiIwGyAIyVmKblH6cyens;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;)V

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStartedSuccess:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;)Ljava/lang/Runnable;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->stopUnexpectedLluPreview()V

    return-void
.end method

.method private handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "effect"
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluPreviewState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->setEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 240
    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->setEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    .line 250
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private stopUnexpectedLluPreview()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Idle:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Stopping:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    if-eq v0, v1, :cond_0

    const-string v0, "LluViewModel"

    const-string v1, "hasUnexpectedLluPreview"

    .line 220
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Stopping:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewInactiveTime:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLluAwakeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluAwakeSwitch:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLluAwakeModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluUnlockEffect;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluAwakeMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLluAwakeModeValue()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluUnlockEffect;
    .locals 3

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluAwakeMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluUnlockEffect;->fromLluValue(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluUnlockEffect;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LluViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 331
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluUnlockEffect;->EffectA:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluUnlockEffect;

    return-object v0
.end method

.method public getLluChargeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluChargeSwitch:Landroidx/lifecycle/MutableLiveData;

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

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluDanceStartPlayData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 371
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->toXuiCmd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluEffect(I)I

    move-result v0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " current effect mode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LluViewModel"

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getLluLinkToShowEleData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluLinkToShowEleSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLluPhotoData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPhotoSwitch:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLluPreviewStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLluShowOffData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluShowOffSwitch:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLluSleepData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluSleepSwitch:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLluSleepModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluLockEffect;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluSleepMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLluSleepModeValue()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluLockEffect;
    .locals 3

    .line 355
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluSleepMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluLockEffect;->fromLluValue(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluLockEffect;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LluViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 358
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluLockEffect;->EffectA:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluLockEffect;

    return-object v0
.end method

.method public getLluSwData()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLluSyaHiSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluSayHiSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXuiAcChargeModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiAcChargeModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXuiAwakeWaitModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiAwakeWaitModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXuiDcChargeModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiDcChargeModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXuiFindCarModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiFindCarModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXuiLockingModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiLockingModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXuiShowoffModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiShowoffModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXuiSleepModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiSleepModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXuiTakePhotoModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiTakePhotoModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$new$0$LluViewModel()V
    .locals 2

    .line 42
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Idle:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    return-void
.end method

.method public synthetic lambda$new$1$LluViewModel()V
    .locals 2

    .line 48
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Previewing:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->getEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    return-void
.end method

.method public synthetic lambda$new$2$LluViewModel()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getRunningLluEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Idle:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Previewing:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    return-void
.end method

.method public onLluAwakeModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluAwakeMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluUnlockEffect;->fromLluValue(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluUnlockEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LluViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onLluChargingChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluChargeSwitch:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onLluEnableChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onLluLinkToShowEleChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluLinkToShowEleSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onLluPhotoChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPhotoSwitch:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onLluPreviewShowError(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "errCode"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLluPreviewShowError, effectName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LluViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, -0x1000

    if-ne p2, v1, :cond_0

    .line 129
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluDanceStartPlayData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->fromLluCmd(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 134
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    .line 135
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Starting:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const/4 v2, 0x0

    if-eq p2, v1, :cond_3

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Switching:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 145
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Stopping:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    iget p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewInactiveTime:I

    int-to-long v1, p2

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_1

    .line 137
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->getEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->toLluCmd()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 139
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Stopping:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    iget p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewInactiveTime:I

    int-to-long v1, p2

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onLluPreviewShowFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectType"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLluPreviewShowFinish, effectName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "    effectType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LluViewModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dance"

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "lightanddance"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluDanceStartPlayData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    const-string p1, "carcontrol"

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 169
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Stopping:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    iget p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewInactiveTime:I

    int-to-long v1, p2

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public onLluPreviewShowStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectType"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLluPreviewShowStart, effectName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    effectType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LluViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dance"

    .line 195
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "lightanddance"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluDanceStartPlayData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    const-string v0, "carcontrol"

    .line 198
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 202
    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStartedSuccess:Z

    .line 203
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->fromLluCmd(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 204
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Starting:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    if-eq p2, v0, :cond_3

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Switching:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    if-eq p2, v0, :cond_3

    .line 205
    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Previewing:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 210
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Switching:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    if-ne p1, p2, :cond_4

    .line 211
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Starting:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->getEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    :cond_4
    return-void
.end method

.method public onLluPreviewShowStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectType"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLluPreviewShowStop, effectName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    effectType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LluViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dance"

    .line 177
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "lightanddance"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluDanceStartPlayData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    const-string v0, "carcontrol"

    .line 180
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 183
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    .line 184
    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->getEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->getEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->toLluCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Switching:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    if-eq p2, p1, :cond_4

    .line 185
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Stopping:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    iget p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewInactiveTime:I

    int-to-long v2, p2

    invoke-static {v1, p1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    :cond_4
    return-void
.end method

.method public onLluSayHiSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluSayHiSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onLluShowOffChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluShowOffSwitch:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onLluSleepChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluSleepSwitch:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onLluSleepModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluSleepMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluLockEffect;->fromLluValue(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluLockEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LluViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onLluWakeWaitChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluAwakeSwitch:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onXuiLluEffectSetFinish(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectMode"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 414
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown effect :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "LluViewModel"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiLockingModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 405
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiShowoffModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiTakePhotoModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 399
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiDcChargeModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 396
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiAcChargeModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 402
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiSleepModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 393
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiAwakeWaitModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 390
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mXuiFindCarModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setLluAwakeMode(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluUnlockEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluUnlockEffect;->toLluCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluAwakeMode(I)V

    :cond_0
    return-void
.end method

.method public setLluDancePreview(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLluDancePreview filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LluViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->setLluDancePreview(Ljava/lang/String;)I

    move-result p1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLluDancePreview result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public setLluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effect",
            "effectMode"
        }
    .end annotation

    .line 364
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->toXuiCmd()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 366
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "LluViewModel"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setLluEffectPreview(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getRunningLluEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluPreviewStartedSuccess:Z

    .line 271
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getRunningLluEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Starting:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Switching:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    .line 272
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->toLluCmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffectPreview(Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 274
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;)V

    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewInactiveTime:I

    int-to-long v2, v0

    invoke-static {v1, p1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public setLluSleepMode(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluLockEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluLockEffect;->toLluCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluSleepMode(I)V

    :cond_0
    return-void
.end method

.method public stopLluEffectPreview()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mLluDanceStartPlayData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 298
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluBaseViewModel;->stopLluEffectPreview()V

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getRunningLluEffect()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "LluViewModel"

    const-string v1, "RunningEffect is null change state to idle"

    .line 301
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mPreviewTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->mIdleTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 304
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;->Idle:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->handleLluPreviewStateUpdate(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluPreviewState;Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V

    :cond_1
    return-void
.end method
