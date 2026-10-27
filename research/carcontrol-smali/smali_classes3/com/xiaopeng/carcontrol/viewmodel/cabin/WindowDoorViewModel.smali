.class public Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;
.super Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;
.source "WindowDoorViewModel.java"


# static fields
.field private static final SUN_SHADE_LOADING_TIME:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "WindowDoorViewModel"


# instance fields
.field private final mAutoWindowLockSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mBonnetState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCentralLockState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayUpdateSunShadeLoading:Ljava/lang/Runnable;

.field private final mDoorHandle:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrvWinPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mElcTrunkPosData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlDoorState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrDoorState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrWinPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mHighSpdCloseWinData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyCtrlMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftSdcDoorPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftSdcState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftSdcSycRunningState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftSlideDoorLockState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftSlideDoorMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftSlideDoorPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftSlideDoorState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMixedDoorState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRearTrunkState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;",
            ">;"
        }
    .end annotation
.end field

.field private final mRearTrunkWorkStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightSdcDoorPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightSdcState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightSdcSycRunningState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightSlideDoorLockState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightSlideDoorMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightSlideDoorPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightSlideDoorState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRlDoorState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRlWinPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mRrDoorState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRrWinPos:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSdcBrakeCloseDoorCfgData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSdcKeyCfg:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSdcMaxDoorOpeningAngleData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSdcWinAutoDown:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSunShadeLoadingData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSunShadePosData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrunkFullOpenPosData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrunkSensorData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mWinLoadingTimeoutTask:Ljava/lang/Runnable;

.field private final mWinMoveState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowHandler:Landroid/os/Handler;

.field private final mWindowLockStateData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWindowState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;-><init>()V

    .line 29
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mFlDoorState:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mFrDoorState:Landroidx/lifecycle/MutableLiveData;

    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRlDoorState:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRrDoorState:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mMixedDoorState:Landroidx/lifecycle/MutableLiveData;

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mCentralLockState:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mAutoWindowLockSwData:Landroidx/lifecycle/MutableLiveData;

    .line 36
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowLockStateData:Landroidx/lifecycle/MutableLiveData;

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mHighSpdCloseWinData:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowState:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mBonnetState:Landroidx/lifecycle/MutableLiveData;

    .line 47
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRearTrunkState:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mDoorHandle:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mDrvWinPos:Landroidx/lifecycle/MutableLiveData;

    .line 57
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mFrWinPos:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRlWinPos:Landroidx/lifecycle/MutableLiveData;

    .line 59
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRrWinPos:Landroidx/lifecycle/MutableLiveData;

    .line 60
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWinMoveState:Landroidx/lifecycle/MutableLiveData;

    .line 61
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x0

    .line 62
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$WindowDoorViewModel$dsJ9w2RAdJPNJbGjwAIwDw5w8JQ;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$WindowDoorViewModel$dsJ9w2RAdJPNJbGjwAIwDw5w8JQ;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mKeyCtrlMode:Landroidx/lifecycle/MutableLiveData;

    .line 71
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSdcState:Landroidx/lifecycle/MutableLiveData;

    .line 72
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSdcState:Landroidx/lifecycle/MutableLiveData;

    .line 74
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSdcDoorPos:Landroidx/lifecycle/MutableLiveData;

    .line 75
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSdcDoorPos:Landroidx/lifecycle/MutableLiveData;

    .line 77
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSdcSycRunningState:Landroidx/lifecycle/MutableLiveData;

    .line 78
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSdcSycRunningState:Landroidx/lifecycle/MutableLiveData;

    .line 79
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSdcKeyCfg:Landroidx/lifecycle/MutableLiveData;

    .line 80
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSdcWinAutoDown:Landroidx/lifecycle/MutableLiveData;

    .line 81
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSdcMaxDoorOpeningAngleData:Landroidx/lifecycle/MutableLiveData;

    .line 82
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSdcBrakeCloseDoorCfgData:Landroidx/lifecycle/MutableLiveData;

    .line 84
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSlideDoorMode:Landroidx/lifecycle/MutableLiveData;

    .line 85
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSlideDoorMode:Landroidx/lifecycle/MutableLiveData;

    .line 86
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSlideDoorState:Landroidx/lifecycle/MutableLiveData;

    .line 87
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSlideDoorState:Landroidx/lifecycle/MutableLiveData;

    .line 88
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSlideDoorLockState:Landroidx/lifecycle/MutableLiveData;

    .line 89
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSlideDoorLockState:Landroidx/lifecycle/MutableLiveData;

    .line 90
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSlideDoorPos:Landroidx/lifecycle/MutableLiveData;

    .line 91
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSlideDoorPos:Landroidx/lifecycle/MutableLiveData;

    .line 93
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSunShadePosData:Landroidx/lifecycle/MutableLiveData;

    .line 94
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSunShadeLoadingData:Landroidx/lifecycle/MutableLiveData;

    .line 96
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$WindowDoorViewModel$udNiO6V6x8Op6kWgJfmLwpudxB0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$WindowDoorViewModel$udNiO6V6x8Op6kWgJfmLwpudxB0;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mDelayUpdateSunShadeLoading:Ljava/lang/Runnable;

    .line 97
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mTrunkSensorData:Landroidx/lifecycle/MutableLiveData;

    .line 98
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mTrunkFullOpenPosData:Landroidx/lifecycle/MutableLiveData;

    .line 99
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mElcTrunkPosData:Landroidx/lifecycle/MutableLiveData;

    .line 100
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRearTrunkWorkStatus:Landroidx/lifecycle/MutableLiveData;

    .line 427
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$P_juaaQTWV7B8E2yA7lfu--VbIc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$P_juaaQTWV7B8E2yA7lfu--VbIc;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWinLoadingTimeoutTask:Ljava/lang/Runnable;

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->initTrunkState()V

    .line 106
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->initCentralLockState()V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 108
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$FCP40y9p3OYqPWrs-j6dyMAGw20;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$FCP40y9p3OYqPWrs-j6dyMAGw20;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;)V

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private initCentralLockState()V
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isCentralLocked()Z

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mCentralLockState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public closeSunShade()V
    .locals 4

    .line 634
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isSunShadeInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_initializing:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isSunShadeBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_block:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 642
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "closeSunShade"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 643
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mDelayUpdateSunShadeLoading:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSunShadeLoadingData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 645
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mDelayUpdateSunShadeLoading:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 646
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->closeSunShade()V

    return-void
.end method

.method public controlRearTrunk(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;->toBcmTrunkType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlRearTrunk(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public controlWindowClose()V
    .locals 4

    const/4 v0, 0x4

    .line 472
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowInitFailed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 476
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->win_lock_is_active:I

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 479
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowAuto(Z)V

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 482
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWinLoadingTimeoutTask:Ljava/lang/Runnable;

    const-string v2, "getWindowVentingTime"

    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public controlWindowOpen()V
    .locals 4

    const/4 v0, 0x4

    .line 489
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowInitFailed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 493
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->win_lock_is_active:I

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    return-void

    .line 496
    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowAuto(Z)V

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 499
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWinLoadingTimeoutTask:Ljava/lang/Runnable;

    const-string v2, "getWindowLoadingTime"

    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public controlWindowVent()V
    .locals 4

    const/4 v0, 0x4

    .line 504
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowInitFailed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 508
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->win_lock_is_active:I

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    return-void

    .line 511
    :cond_1
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->controlWindowVent()V

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->Ventting:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 514
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWinLoadingTimeoutTask:Ljava/lang/Runnable;

    const-string v2, "getWindowVentingTime"

    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public getAutoWindowLockSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mAutoWindowLockSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getBonnetData()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mBonnetState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCentralLockStateData()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mCentralLockState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDoorHandle()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mDoorHandle:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDoorStateData(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorIdx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 337
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRrDoorState:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 334
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRlDoorState:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 331
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mFrDoorState:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 328
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mFlDoorState:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    return-object p1
.end method

.method public getDrvWinPosData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mDrvWinPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getElcTrunkPosData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mElcTrunkPosData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getFrWinPosData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mFrWinPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getHighSpdCloseWinSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mHighSpdCloseWinData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getKeyControlData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mKeyCtrlMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLeftSdcDoorPosData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSdcDoorPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLeftSdcStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSdcState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLeftSdcSysRunningStateData()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSdcSycRunningState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLeftSlideDoorModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSlideDoorMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLeftSlideDoorPosData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSlideDoorPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLeftSlideDoorStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSlideDoorState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMixedDoorData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mMixedDoorState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRearTrunkData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRearTrunkState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRearTrunkStateValue()Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRearTrunkState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    return-object v0
.end method

.method public getRearTrunkWorkStatusData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRearTrunkWorkStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRightSdcDoorPosData()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSdcDoorPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRightSdcStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSdcState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRightSdcSysRunningStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSdcSycRunningState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRightSlideDoorModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSlideDoorMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRightSlideDoorPosData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSlideDoorPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRightSlideDoorStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSlideDoorState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRlWinPosData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRlWinPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRrWinPosData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRrWinPos:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSdcBrakeCloseDoorCfgData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSdcBrakeCloseDoorCfgData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSdcKeyCfgData()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSdcKeyCfg:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSdcMaxAutoDoorOpeningAngleData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSdcMaxDoorOpeningAngleData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSdcWinAutoDownData()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSdcWinAutoDown:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSunShadeLoadingData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSunShadeLoadingData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSunShadePosData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSunShadePosData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrunkFullOpenPosData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 735
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mTrunkFullOpenPosData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrunkSensorData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mTrunkSensorData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getWinMoveStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWinMoveState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getWindowLockStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowLockStateData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getWindowStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getWindowStateValue()Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    return-object v0
.end method

.method protected handleAutoDoorHandleChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mDoorHandle:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleAutoWindowLockSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mAutoWindowLockSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleBonnetStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isClosed"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mBonnetState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCentralLockStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLocked"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mCentralLockState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleDoorStateChanged(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mixedDoorState"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mMixedDoorState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleDoorStateChanged([Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorState"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mFlDoorState:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mFrDoorState:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    aget-boolean v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRlDoorState:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x2

    aget-boolean v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRrDoorState:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x3

    aget-boolean p1, p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleElcTrunkPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mElcTrunkPosData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleHighSpdCloseWinChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mHighSpdCloseWinData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleKeyCtrlModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 206
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mKeyCtrlMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error KeyCtrl Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected handleLeftSdcDoorPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSdcDoorPos:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLeftSdcStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSdcState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLeftSdcSysRunningStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSdcSycRunningState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLeftSlideDoorLockStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSlideDoorLockState:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLeftSlideDoorModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSlideDoorMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLeftSlideDoorPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSlideDoorPos:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLeftSlideDoorStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mLeftSlideDoorState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRightSdcDoorPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSdcDoorPos:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRightSdcStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSdcState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRightSdcSysRunningStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSdcSycRunningState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRightSlideDoorLockStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSlideDoorLockState:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRightSlideDoorModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSlideDoorMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRightSlideDoorPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSlideDoorPos:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRightSlideDoorStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRightSlideDoorState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSdcAutoWinDownChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSdcWinAutoDown:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSdcBrakeCloseDoorCfgChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSdcBrakeCloseDoorCfgData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSdcKeyCfgChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSdcKeyCfg:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSdcMaxDoorOpeningAngleChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSdcMaxDoorOpeningAngleData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSunShadePosChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSunShadePosData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleTrunkStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRearTrunkState:Landroidx/lifecycle/MutableLiveData;

    if-nez p1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Closed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Opened:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleTrunkWorkStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRearTrunkWorkStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleWinPosChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWindowsPos()[F

    move-result-object p1

    if-eqz p1, :cond_3

    .line 152
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mDrvWinPos:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mFrWinPos:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRlWinPos:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRrWinPos:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x3

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWinMoveState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWinMoveState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq v1, p1, :cond_2

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWinMoveState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 164
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 153
    :cond_3
    :goto_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->TAG:Ljava/lang/String;

    const-string v0, "handleWinPosChanged: windowPos array is error"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected handleWindowLockStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowLockStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleWindowStateChange()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 436
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWindowsPos()[F

    move-result-object v0

    if-eqz v0, :cond_3

    .line 437
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 442
    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWindowStateChange: lastWinState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowsAlmostClose([F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->Closed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowsAlmostOpen([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->Opened:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->HalfOpened:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 438
    :cond_3
    :goto_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->TAG:Ljava/lang/String;

    const-string v1, "handleWindowStateChange: windowPos array is error"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWindowState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;->Closed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public initTrunkState()V
    .locals 0

    return-void
.end method

.method public isSdcRunning()Z
    .locals 5

    const-string v0, "isSupportSdc"

    .line 695
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 696
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSdcSysRunningState()I

    move-result v0

    .line 697
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSdcSysRunningState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    if-eq v2, v3, :cond_0

    if-ne v2, v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isWindowsAllClosed()Z
    .locals 3

    .line 531
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWindowsPos()[F

    move-result-object v0

    if-eqz v0, :cond_1

    .line 532
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowsAlmostClose([F)Z

    move-result v0

    goto :goto_1

    .line 533
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->TAG:Ljava/lang/String;

    const-string v1, "handleWindowStateChange: windowPos array is error"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isWindowsAllOpened()Z
    .locals 3

    .line 519
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWindowsPos()[F

    move-result-object v0

    if-eqz v0, :cond_1

    .line 520
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowsAlmostOpen([F)Z

    move-result v0

    goto :goto_1

    .line 521
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->TAG:Ljava/lang/String;

    const-string v1, "handleWindowStateChange: windowPos array is error"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected isWindowsAlmostClose([F)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowsState"
        }
    .end annotation

    const/4 v0, 0x0

    .line 454
    aget v1, p1, v0

    const/high16 v2, 0x42be0000    # 95.0f

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    aget v1, p1, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x2

    aget v1, p1, v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x3

    aget p1, p1, v1

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method protected isWindowsAlmostOpen([F)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowsState"
        }
    .end annotation

    const/4 v0, 0x0

    .line 461
    aget v1, p1, v0

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    aget v1, p1, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x2

    aget v1, p1, v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x3

    aget p1, p1, v1

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method public synthetic lambda$new$0$WindowDoorViewModel(Landroid/os/Message;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "msg"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 63
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v0, :cond_0

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mWinMoveState:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public synthetic lambda$new$1$WindowDoorViewModel()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSunShadeLoadingData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onElcTrunkStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 310
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->convertTrunkState(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mRearTrunkState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTrunkFullOpenPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mTrunkFullOpenPosData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->convertTrunkFullOpenPosLevel2Pos(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrunkSensorEnableChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mTrunkSensorData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public openSunShade()V
    .locals 4

    .line 618
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isSunShadeInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_initializing:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isSunShadeHotProtect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_hot_protect:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mDelayUpdateSunShadeLoading:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 627
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mSunShadeLoadingData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 628
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mDelayUpdateSunShadeLoading:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 629
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->openSunShade()V

    return-void
.end method

.method public resetSunShade()V
    .locals 2

    const-string v0, "isSupportShadeInitCloseConstraint"

    .line 660
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSunShadePos()I

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_not_closed:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isSunShadeMotorStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 665
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_not_stopped:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 668
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_reseting:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 669
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->resetSunShade()V

    return-void
.end method

.method public setCentralLock(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "checkLimit"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 708
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorsState()[I

    move-result-object p2

    if-eqz p2, :cond_1

    .line 709
    array-length v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 710
    aget v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    aget v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aget p2, p2, v0

    if-eqz p2, :cond_1

    .line 714
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->central_lock_unable_with_door_open:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 719
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setCentralLock(Z)V

    return-void
.end method

.method public setSunShadePos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 674
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSunShadePos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 675
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isSunShadeInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_initializing:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isSunShadeHotProtect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_hot_protect:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 683
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isSunShadeBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_block:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 687
    :cond_2
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->setSunShadePos(I)V

    return-void
.end method

.method public stopSunShade()V
    .locals 2

    .line 651
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isSunShadeInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_initializing:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 655
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->stopSunShade()V

    return-void
.end method
