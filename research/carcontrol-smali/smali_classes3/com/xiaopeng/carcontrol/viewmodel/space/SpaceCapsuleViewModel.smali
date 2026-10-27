.class public Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;
.super Ljava/lang/Object;
.source "SpaceCapsuleViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/space/ISpaceCapsuleViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;,
        Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;,
        Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;
    }
.end annotation


# static fields
.field public static final CONNECTED_BLE_DEVICE:Ljava/lang/String; = "connected_ble_device"

.field private static final DAY_NIGHT_DELAY:I = 0x7d0

.field private static final MEDITATION_COMPONENT:Ljava/lang/String; = "com.xiaopeng.meditation.media.MeditationMediaService"

.field public static final MEDITATION_PACKAGE:Ljava/lang/String; = "com.xiaopeng.homespace.meditation"

.field private static final MUSIC_COUNT_DOWN_TIME_INTERVAL:I = 0x7530

.field public static final SLEEP_CAPSULE_PACKAGE:Ljava/lang/String; = "com.xiaopeng.homespace.capsule"

.field private static final SLEEP_OVER_TIME_REMIND_DELAY:I = 0x1b77400

.field public static final SPEECH_END:I = 0x2

.field public static final SPEECH_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpaceCapsuleViewModel"


# instance fields
.field private final MAX_RETRY_DAYNIGHT:I

.field private from:Ljava/lang/String;

.field private final mA2dpConnectLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

.field private final mBtDeviceNameData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBtDeviceNameObserver:Landroid/database/ContentObserver;

.field mBtStatusListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;

.field private final mCapsuleSleepOverTimeRemindRunnable:Ljava/lang/Runnable;

.field private final mConnection:Landroid/content/ServiceConnection;

.field mCountdownTimeListener:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;

.field private mCurrentSubMode:I

.field private mDatetimeModelMutableLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDayNightChange2NightRunnable:Ljava/lang/Runnable;

.field private final mDayNightChangeRestoreRunnable:Ljava/lang/Runnable;

.field private mDayNightObserver:Landroid/database/ContentObserver;

.field private mDayNightRestoreRetry:I

.field private mDayNightRetryCount:I

.field private mDayNightSwitch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mIgOffStatusLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAlreadyRegister:Z

.field private mIsChangedDayNight:Z

.field private mIsOpenSfs:Z

.field private mIsRestoreAutoPowerConfig:Z

.field private mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

.field private mMcuCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;

.field private mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

.field private mMoveFlat:Z

.field private mMusicService:Lcom/xiaopeng/carcontrol/CapsuleMusicService;

.field private final mRLSeatStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mRRSeatStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mRearSeatStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnected:Z

.field private final mServiceLock:Ljava/lang/Object;

.field private mSleepMode:I

.field private mSleepMsgHandler:Landroid/os/Handler;

.field private final mSleepSecSeatStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpaceCapsuleControl:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;

.field private final mSpeechStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartMoveStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSunShadeSavedPos:I

.field mTboxCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController$Callback;

.field private final mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

.field private mTime:Ljava/lang/String;

.field private mTimeIntentFilter:Landroid/content/IntentFilter;

.field mTimeReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeUpdateRunnable:Ljava/lang/Runnable;

.field private mTimer:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;

.field private mTimerHandler:Landroid/os/Handler;

.field private final mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

.field private final mVipCapsuleSeatStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mVipCapsuleSingleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

.field private final mVipCapsuleSingleSeatStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mVipDrvSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

.field private final mVipDrvSeatStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mVipPsnSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

.field private final mVipPsnSeatStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mVipRLSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

.field private final mVipRRSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;

.field private final mVipRearSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

.field private final mVipSleepSecSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDatetimeModelMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTime:Ljava/lang/String;

    .line 70
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimeIntentFilter:Landroid/content/IntentFilter;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsAlreadyRegister:Z

    .line 84
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsRestoreAutoPowerConfig:Z

    .line 85
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightSwitch:Z

    const/4 v2, -0x1

    .line 86
    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCurrentSubMode:I

    .line 87
    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSunShadeSavedPos:I

    .line 88
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsOpenSfs:Z

    .line 89
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsChangedDayNight:Z

    .line 90
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mMoveFlat:Z

    .line 91
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mServiceConnected:Z

    .line 92
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mServiceLock:Ljava/lang/Object;

    .line 93
    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSleepMode:I

    const/16 v2, 0xa

    .line 99
    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->MAX_RETRY_DAYNIGHT:I

    .line 100
    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRetryCount:I

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRestoreRetry:I

    .line 101
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$5nECYbvaIdAvDt6Ru4F4KRYUBfg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$5nECYbvaIdAvDt6Ru4F4KRYUBfg;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightChange2NightRunnable:Ljava/lang/Runnable;

    .line 102
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$ewfBj_RzSIV3LlOuyPWffeGvWd0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$ewfBj_RzSIV3LlOuyPWffeGvWd0;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightChangeRestoreRunnable:Ljava/lang/Runnable;

    .line 103
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$SpaceCapsuleViewModel$Z_n-KT_hDTKmYgezbc7dPqT5fGQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$SpaceCapsuleViewModel$Z_n-KT_hDTKmYgezbc7dPqT5fGQ;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCapsuleSleepOverTimeRemindRunnable:Ljava/lang/Runnable;

    .line 107
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIgOffStatusLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 111
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpeechStatus:Landroidx/lifecycle/MutableLiveData;

    .line 112
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mA2dpConnectLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 113
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatStatus:Landroidx/lifecycle/MutableLiveData;

    .line 114
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatStatus:Landroidx/lifecycle/MutableLiveData;

    .line 115
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatStatus:Landroidx/lifecycle/MutableLiveData;

    .line 116
    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v4}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSingleSeatStatus:Landroidx/lifecycle/MutableLiveData;

    .line 117
    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v4}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mRLSeatStatus:Landroidx/lifecycle/MutableLiveData;

    .line 118
    new-instance v5, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v5}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mRRSeatStatus:Landroidx/lifecycle/MutableLiveData;

    .line 119
    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v6}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mRearSeatStatus:Landroidx/lifecycle/MutableLiveData;

    .line 120
    new-instance v7, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v7}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSleepSecSeatStatus:Landroidx/lifecycle/MutableLiveData;

    .line 121
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mStartMoveStatus:Landroidx/lifecycle/MutableLiveData;

    .line 122
    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBtDeviceNameData:Landroidx/lifecycle/MutableLiveData;

    .line 123
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$1;

    invoke-direct {v8, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    iput-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mMcuCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;

    .line 134
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->from:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mConnection:Landroid/content/ServiceConnection;

    .line 361
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$5;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 947
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$6;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTboxCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController$Callback;

    .line 1021
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$7;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBtStatusListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;

    .line 1203
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$SpaceCapsuleViewModel$SEpI13X0sX99ixcHc0jl0ME7e6M;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$SpaceCapsuleViewModel$SEpI13X0sX99ixcHc0jl0ME7e6M;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1292
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;

    const/4 v8, 0x0

    invoke-direct {v0, p0, v8}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$TimeUpdateRunnable;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimeUpdateRunnable:Ljava/lang/Runnable;

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimeIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimeIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimeIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    .line 164
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;

    invoke-direct {v8, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->setOnStatusChangedListener(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;)V

    .line 165
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    .line 166
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;

    invoke-direct {v8, v2}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->setOnStatusChangedListener(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;)V

    .line 167
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    .line 168
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$3;

    invoke-direct {v8, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$3;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->setOnStatusChangedListener(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;)V

    .line 208
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSingleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    .line 209
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;

    invoke-direct {v8, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->setOnStatusChangedListener(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;)V

    .line 249
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRLSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

    .line 250
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;

    invoke-direct {v8, v4}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->setOnStatusChangedListener(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;)V

    .line 251
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRRSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;

    .line 252
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;

    invoke-direct {v8, v5}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;->setOnStatusChangedListener(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;)V

    .line 254
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRearSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    .line 255
    new-instance v8, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;

    invoke-direct {v8, v6}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->setOnStatusChangedListener(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;)V

    .line 257
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipSleepSecSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    .line 258
    new-instance v6, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;

    invoke-direct {v6, v7}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v0, v6}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->setOnStatusChangedListener(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;)V

    .line 260
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 261
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 262
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v3, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 263
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v4, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 264
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v5, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 266
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpaceCapsuleControl:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;

    .line 268
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_tbox"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    .line 269
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTboxCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 270
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_mcu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    .line 271
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mMcuCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 272
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 273
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIgOffStatusLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->from:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setDateAndTime()V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mA2dpConnectLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsChangedDayNight:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBtDeviceNameData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroid/os/Handler;
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getTimeHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimer:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Lcom/xiaopeng/carcontrol/CapsuleMusicService;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mMusicService:Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Lcom/xiaopeng/carcontrol/CapsuleMusicService;)Lcom/xiaopeng/carcontrol/CapsuleMusicService;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mMusicService:Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mMoveFlat:Z

    return p0
.end method

.method static synthetic access$502(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mMoveFlat:Z

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mStartMoveStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->executeSpaceCapsuleSettings()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCurrentSubMode:I

    return p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSingleSeatStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private changeDay2Night()V
    .locals 5

    const/4 v0, 0x0

    .line 1071
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRetryCount:I

    .line 1073
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/Utils;->getDayNightMode(Landroid/content/Context;)I

    move-result v1

    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDay2Night mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpaceCapsuleViewModel"

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v3, 0x1

    const-string v4, "space.capsule.day.night"

    if-ne v1, v3, :cond_0

    const-string v1, "1"

    .line 1077
    invoke-static {v4, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "0"

    .line 1079
    invoke-static {v4, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1081
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/Utils;->setDayNightMode(Landroid/content/Context;I)V

    .line 1082
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$SpaceCapsuleViewModel$eSQNDOnRNsgfVjG-rtOhQtSMdPQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$SpaceCapsuleViewModel$eSQNDOnRNsgfVjG-rtOhQtSMdPQ;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V

    const-wide/16 v3, 0x3e8

    invoke-static {v2, v1, v3, v4}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 1083
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsChangedDayNight:Z

    :cond_2
    return-void
.end method

.method private checkFileExists(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, "SpaceCapsuleViewModel"

    if-nez p1, :cond_0

    const-string p1, "checkFileExists: path is null"

    .line 767
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 770
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "checkFileExists: "

    if-eqz v1, :cond_1

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " exists"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not exists"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doCapsuleSleepOverTimeRemind()V
    .locals 13

    .line 1237
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->space_capsule_sleep_msg_title:I

    .line 1239
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->space_capsule_sleep_msg_tts:I

    .line 1241
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->space_capsule_sleep_msg_btn_title:I

    .line 1244
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0x410

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1238
    invoke-virtual/range {v0 .. v12}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->sendMessageToMessageCenter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZLcom/xiaopeng/carcontrol/IpcRouterService$ICallback;)V

    return-void
.end method

.method private enterSpaceSunShadeMode()V
    .locals 3

    .line 315
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSunShadeSavedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSunShadePos()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSunShadeSavedPos:I

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isSunShadeInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_initializing:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isSunShadeAntiPinch()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isSunShadeIceBreak()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlSunShade(I)V

    goto :goto_1

    .line 322
    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_block:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 327
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterSpaceSunShadeMode, mSunShadeSavedPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSunShadeSavedPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SpaceCapsuleViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private executeSpaceCapsuleSettings()V
    .locals 0

    .line 307
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->enterSpaceSunShadeMode()V

    return-void
.end method

.method private exitSpaceSunShadeMode()V
    .locals 3

    .line 331
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSunShadeSavedPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 332
    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSunShadeSavedPos:I

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isSunShadeInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_initializing:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isSunShadeHotProtect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_hot_protect:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isSunShadeAntiPinch()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isSunShadeIceBreak()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 345
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitSpaceSunShadeMode, setSunShadePos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSunShadeSavedPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SpaceCapsuleViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSunShadeSavedPos:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSunShadePos(I)V

    goto :goto_1

    .line 342
    :cond_3
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->sun_shade_block:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private getBatteryLevel(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elecPercent"
        }
    .end annotation

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0xb

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    if-ge p1, v0, :cond_1

    return v1

    :cond_1
    const/16 v1, 0x15

    if-lt p1, v0, :cond_2

    if-ge p1, v1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/16 v0, 0x28

    if-lt p1, v1, :cond_3

    if-ge p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const/16 v1, 0x32

    if-lt p1, v0, :cond_4

    if-ge p1, v1, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    const/16 v0, 0x3c

    if-lt p1, v1, :cond_5

    if-ge p1, v0, :cond_5

    const/4 p1, 0x5

    return p1

    :cond_5
    const/16 v1, 0x46

    if-lt p1, v0, :cond_6

    if-ge p1, v1, :cond_6

    const/4 p1, 0x6

    return p1

    :cond_6
    const/16 v0, 0x50

    if-lt p1, v1, :cond_7

    if-ge p1, v0, :cond_7

    const/4 p1, 0x7

    return p1

    :cond_7
    const/16 v1, 0x5a

    if-lt p1, v0, :cond_8

    if-ge p1, v1, :cond_8

    const/16 p1, 0x8

    return p1

    :cond_8
    if-lt p1, v1, :cond_9

    const/16 v0, 0x62

    if-ge p1, v0, :cond_9

    const/16 p1, 0x9

    return p1

    :cond_9
    const/16 p1, 0xa

    return p1
.end method

.method private getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "from"
        }
    .end annotation

    const-string v0, "isMeditationIndependent"

    .line 875
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaopeng.homespace.capsule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 876
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.xiaopeng.homespace.meditation"

    const-string v0, "com.xiaopeng.meditation.media.MeditationMediaService"

    .line 877
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 879
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private getTimeHandler()Landroid/os/Handler;
    .locals 2

    .line 1297
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1298
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimerHandler:Landroid/os/Handler;

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic lambda$Z_n-KT_hDTKmYgezbc7dPqT5fGQ(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->doCapsuleSleepOverTimeRemind()V

    return-void
.end method

.method static synthetic lambda$new$1(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "focusChange"
        }
    .end annotation

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAudioFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SpaceCapsuleViewModel"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private registerTimeReceiver()V
    .locals 4

    .line 300
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsAlreadyRegister:Z

    if-nez v0, :cond_0

    .line 301
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimeIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsAlreadyRegister:Z

    :cond_0
    return-void
.end method

.method private restoreDayNight()V
    .locals 8

    const/4 v0, 0x0

    .line 1109
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRestoreRetry:I

    .line 1110
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->unRegisterDayNightSwitch()V

    .line 1111
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsChangedDayNight:Z

    const-string v2, ""

    const-string v3, "SpaceCapsuleViewModel"

    const-string v4, "space.capsule.day.night"

    if-eqz v1, :cond_0

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreDayNight mIsChangedDayNight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsChangedDayNight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-static {v4, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 1116
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/Utils;->getDayNightMode(Landroid/content/Context;)I

    move-result v1

    .line 1117
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreDayNight currentMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " save mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 1119
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    .line 1120
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1121
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/Utils;->setDayNightMode(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const-string v1, "0"

    .line 1122
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1123
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/Utils;->setDayNightMode(Landroid/content/Context;I)V

    .line 1126
    :cond_2
    :goto_0
    invoke-static {v4, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private setDateAndTime()V
    .locals 2

    .line 294
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 295
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTime:Ljava/lang/String;

    .line 296
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDatetimeModelMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterTimeReceiver()V
    .locals 2

    .line 355
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsAlreadyRegister:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsAlreadyRegister:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 3

    const-string v0, "SpaceCapsuleViewModel"

    const-string v1, "abandonAudioFocus "

    const/4 v2, 0x0

    .line 1216
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1217
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public bindService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "from"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SpaceCapsuleViewModel"

    const-string v2, "bind music Service"

    .line 739
    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 741
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 742
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->from:Ljava/lang/String;

    .line 743
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mServiceConnected:Z

    .line 744
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelAlarm(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 901
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0xa0a00

    .line 902
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/AlarmHelper;->cancelServiceIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method public cancelCapsuleSleepOverTimeRemind()V
    .locals 2

    .line 1231
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSleepMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCapsuleSleepOverTimeRemindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public changeAlarmVolume(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bEnter"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpaceCapsuleControl:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->changeAlarmVolume(Z)V

    return-void
.end method

.method public changeDay2NightTry()V
    .locals 4

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeDay2NightTry delay working:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->isThemeWorking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDayNightRetryCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpaceCapsuleViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1052
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mHandler:Landroid/os/Handler;

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightChangeRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1055
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRestoreRetry:I

    .line 1056
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->isThemeWorking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRetryCount:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    const-string v0, "changeDay2NightTry retry end"

    .line 1058
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->changeDay2Night()V

    return-void

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightChange2NightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1063
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightChange2NightRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1064
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRetryCount:I

    goto :goto_0

    .line 1066
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->changeDay2Night()V

    :goto_0
    return-void
.end method

.method public changeMediaVolume(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bEnter"
        }
    .end annotation

    .line 911
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpaceCapsuleControl:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->changeMediaVolume(Z)V

    return-void
.end method

.method public changeSoundEffectStyleCinema(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnter"
        }
    .end annotation

    .line 960
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpaceCapsuleControl:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->changeSoundEffectStyleCinema(Z)V

    return-void
.end method

.method public getA2dpConnectLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 975
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mA2dpConnectLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getBtDeviceNameData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBtDeviceNameData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCapsuleSingleVipSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSingleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    return-object v0
.end method

.method public getCapsuleVipSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    return-object v0
.end method

.method public getConnectedBtDeviceName()Ljava/lang/String;
    .locals 4

    .line 1260
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "connected_ble_device"

    .line 1261
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xpsettings settingprovider getConnectedBleDevice name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpaceCapsuleViewModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getCurrentSubMode()I
    .locals 1

    .line 654
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCurrentSubMode:I

    return v0
.end method

.method public getDatetimeModelMutableLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDatetimeModelMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrvVipSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    return-object v0
.end method

.method public getElecPercent(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getElecPercent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpaceCapsuleViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getBatteryLevel(I)I

    move-result p1

    return p1
.end method

.method public getIgOffStatusLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIgOffStatusLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPsnVipSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    return-object v0
.end method

.method public getRearSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRearSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    return-object v0
.end method

.method public getRlSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRLSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    return-object v0
.end method

.method public getRrSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRRSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    return-object v0
.end method

.method public getSleepMode()I
    .locals 1

    .line 1320
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSleepMode:I

    return v0
.end method

.method public getSleepSecSeatStatus()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipSleepSecSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    return-object v0
.end method

.method public getSpaceCapsuleSleepMusic()Ljava/lang/String;
    .locals 1

    .line 674
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getSpaceCapsuleSleepMusic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeechStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpeechStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getStartMoveStatusData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mStartMoveStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getVipCapsuleSeatStatusData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getVipCapsuleSingleSeatStatusData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSingleSeatStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getVipDrvSeatStatusData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getVipPsnSeatStatusData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getVipRearSeatData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mRearSeatStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getVipRlSeatData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mRLSeatStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getVipRrSeatData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mRRSeatStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getVipSleepSecSeatStatusData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;",
            ">;"
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSleepSecSeatStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public isA2dpConnected()Z
    .locals 2

    .line 987
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getCurrentBtStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBtSource()Z
    .locals 2

    .line 983
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getCurrentBtStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCanSwitchBtSource()Z
    .locals 2

    .line 979
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getCurrentBtStatus()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFirstEnterSpaceCapsule()Z
    .locals 1

    .line 659
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->isFirstStartSpaceCapsuleMode()Z

    move-result v0

    return v0
.end method

.method public isOpenSfs()Z
    .locals 1

    .line 1034
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsOpenSfs:Z

    return v0
.end method

.method public isProjectorConnected()Z
    .locals 3

    .line 1250
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getConnectedBtDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 1251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 1254
    :cond_0
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->space_capsule_cinema_projector_name:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->space_capsule_cinema_projector_name_new:I

    .line 1255
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->space_capsule_cinema_projector_name_common:I

    .line 1256
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public isSourceInBt(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSpaceCapsuleSleepBgmOpen()Z
    .locals 1

    .line 684
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->isSpaceCapsuleSleepBgmOpen()Z

    move-result v0

    return v0
.end method

.method public isThemeWorking()Z
    .locals 1

    .line 1046
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeController;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/libtheme/ThemeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/libtheme/ThemeController;->isThemeWorking()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$changeDay2Night$0$SpaceCapsuleViewModel()V
    .locals 0

    .line 1082
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->registerDayNightSwitch()V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->registerTimeReceiver()V

    .line 290
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setDateAndTime()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 351
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->unregisterTimeReceiver()V

    return-void
.end method

.method public onModeStart(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isVipMode",
            "mIsVoiceSource"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 966
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->onModeStart(Z)V

    .line 967
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->onModeStart(Z)V

    goto :goto_0

    .line 969
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->onModeStart(Z)V

    .line 970
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSingleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->onModeStart(Z)V

    :goto_0
    return-void
.end method

.method public pauseMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "musicSource",
            "from"
        }
    .end annotation

    .line 852
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_media_source"

    .line 853
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_media_type"

    const/4 v1, 0x0

    .line 854
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_media_command"

    const/4 v1, 0x1

    .line 855
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "isMeditationIndependent"

    .line 856
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.xiaopeng.homespace.capsule"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 857
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 859
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "musicSource",
            "from"
        }
    .end annotation

    .line 792
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->checkFileExists(Ljava/lang/String;)V

    .line 793
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_media_source"

    .line 794
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_media_type"

    const/4 v1, 0x0

    .line 795
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_media_command"

    .line 796
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "isMeditationIndependent"

    .line 797
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.xiaopeng.homespace.capsule"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 798
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 800
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "musicSource",
            "from",
            "loopMode"
        }
    .end annotation

    .line 808
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->checkFileExists(Ljava/lang/String;)V

    .line 809
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_media_source"

    .line 810
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_media_type"

    const/4 v1, 0x0

    .line 811
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_media_command"

    .line 812
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_loop_mode"

    .line 813
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "isMeditationIndependent"

    .line 814
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.xiaopeng.homespace.capsule"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 815
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 817
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public playMusicSingle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "musicSource",
            "from"
        }
    .end annotation

    .line 779
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->checkFileExists(Ljava/lang/String;)V

    .line 780
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_media_source"

    .line 781
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_media_type"

    const/4 v1, 0x2

    .line 782
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_media_command"

    const/4 v1, 0x0

    .line 783
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "isMeditationIndependent"

    .line 784
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.xiaopeng.homespace.capsule"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 785
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public registerBtDeviceNameObserver()V
    .locals 4

    .line 1267
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBtDeviceNameObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 1268
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$9;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$9;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBtDeviceNameObserver:Landroid/database/ContentObserver;

    .line 1280
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "connected_ble_device"

    .line 1281
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBtDeviceNameObserver:Landroid/database/ContentObserver;

    .line 1280
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public registerBtStatusListener()V
    .locals 2

    .line 995
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBtStatusListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1000
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerDayNightSwitch()V
    .locals 4

    .line 1130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 1131
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightObserver:Landroid/database/ContentObserver;

    .line 1143
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ui_night_mode"

    .line 1145
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightObserver:Landroid/database/ContentObserver;

    .line 1144
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public reqSfsForSleep(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enter"
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpaceCapsuleControl:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->reqSfsForSleep(Z)V

    return-void
.end method

.method public reqSfsOpen()V
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpaceCapsuleControl:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->reqSfsOpen()V

    return-void
.end method

.method public requestAudioFocus()V
    .locals 4

    .line 1195
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public requestMediaButton(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestMediaButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpaceCapsuleViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1018
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->requestMediaButton(Z)V

    return-void
.end method

.method public restoreAutoPowerOffConfig()V
    .locals 2

    .line 939
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsRestoreAutoPowerConfig:Z

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->setAutoPowerOffConfig(Z)V

    const/4 v0, 0x0

    .line 941
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsRestoreAutoPowerConfig:Z

    const-string v0, "SpaceCapsuleViewModel"

    const-string v1, "set auto power restore "

    .line 942
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public restoreCapsuleBrightness()V
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpaceCapsuleControl:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->restoreCapsuleBrightness()V

    return-void
.end method

.method public restoreDayNightTry()V
    .locals 4

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreDayNightTry delay working:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->isThemeWorking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDayNightRestoreRetry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRestoreRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpaceCapsuleViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1090
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mHandler:Landroid/os/Handler;

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightChange2NightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1093
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRetryCount:I

    .line 1094
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->isThemeWorking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1095
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRestoreRetry:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    const-string v0, "restoreDayNightTry retry end!"

    .line 1096
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->restoreDayNight()V

    return-void

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightChangeRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightChangeRestoreRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1102
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRestoreRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightRestoreRetry:I

    goto :goto_0

    .line 1104
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->restoreDayNight()V

    :goto_0
    return-void
.end method

.method public restoreSpaceCapsuleSettings()V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->exitSpaceSunShadeMode()V

    return-void
.end method

.method public resumeMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "musicSource",
            "from"
        }
    .end annotation

    .line 822
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->checkFileExists(Ljava/lang/String;)V

    .line 823
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_media_source"

    .line 824
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_media_type"

    const/4 v1, 0x0

    .line 825
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_media_command"

    const/4 v1, 0x2

    .line 826
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "isMeditationIndependent"

    .line 827
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.xiaopeng.homespace.capsule"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 828
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 830
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public resumeMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "musicSource",
            "from",
            "loopMode"
        }
    .end annotation

    .line 838
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->checkFileExists(Ljava/lang/String;)V

    .line 839
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_media_source"

    .line 840
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_media_type"

    const/4 v1, 0x0

    .line 841
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_media_command"

    const/4 v1, 0x2

    .line 842
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_loop_mode"

    .line 843
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "isMeditationIndependent"

    .line 844
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.xiaopeng.homespace.capsule"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 845
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public sendCapsuleSleepOverTimeRemind()V
    .locals 4

    .line 1223
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSleepMsgHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1224
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSleepMsgHandler:Landroid/os/Handler;

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSleepMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCapsuleSleepOverTimeRemindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1227
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSleepMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCapsuleSleepOverTimeRemindRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b77400

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAlarmTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "alarmSource",
            "triggerTime"
        }
    .end annotation

    .line 885
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_media_source"

    .line 886
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_media_type"

    const/4 v1, 0x1

    .line 887
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_media_command"

    const/4 v1, 0x0

    .line 888
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const p2, 0xa0a00

    .line 889
    invoke-static {p1, p3, p4, v0, p2}, Lcom/xiaopeng/carcontrol/helper/AlarmHelper;->createOrUpdateServiceIntent(Landroid/content/Context;JLandroid/content/Intent;I)V

    return-void
.end method

.method public setAutoPowerOffConfigOff()V
    .locals 3

    .line 930
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->getAutoPowerOffConfig()Z

    move-result v0

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get auto power off "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpaceCapsuleViewModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->setAutoPowerOffConfig(Z)V

    const/4 v0, 0x1

    .line 934
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsRestoreAutoPowerConfig:Z

    :cond_0
    return-void
.end method

.method public setBtVolume(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 1200
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->setBtVolume(I)V

    return-void
.end method

.method public setCapsuleBrightnessLow()V
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpaceCapsuleControl:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->setCapsuleBrightnessLow()V

    return-void
.end method

.method public setCapsuleSingleVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    if-eqz v0, :cond_0

    .line 450
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$10;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$space$VipSeatAct:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 467
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSingleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->setFlatStatus()V

    goto :goto_0

    .line 464
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSingleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->stopSeatMove()V

    goto :goto_0

    .line 461
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSingleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->pauseRestoreMove()V

    goto :goto_0

    .line 458
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSingleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->restoreSeat()V

    goto :goto_0

    .line 455
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSingleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->pauseFlatMove()V

    goto :goto_0

    .line 452
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSingleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;->laySeatFlat()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCapsuleVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$10;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$space$VipSeatAct:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 441
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->setFlatStatus()V

    goto :goto_0

    .line 438
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->stopSeatMove()V

    goto :goto_0

    .line 435
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->pauseRestoreMove()V

    goto :goto_0

    .line 432
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->restoreSeat()V

    goto :goto_0

    .line 429
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->pauseFlatMove()V

    goto :goto_0

    .line 426
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;->laySeatFlat()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentSubMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 650
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCurrentSubMode:I

    return-void
.end method

.method public setDrvVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$10;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$space$VipSeatAct:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 389
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->setFlatStatus()V

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->stopSeatMove()V

    goto :goto_0

    .line 383
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->pauseRestoreMove()V

    goto :goto_0

    .line 380
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->restoreSeat()V

    goto :goto_0

    .line 377
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->pauseFlatMove()V

    goto :goto_0

    .line 374
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->laySeatFlat()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMusicListener(Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mListener:Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    return-void
.end method

.method public setNotFirstEnterSpaceCapsule()V
    .locals 1

    const/4 v0, 0x0

    .line 664
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setFirstStartSpaceCapsuleMode(Z)V

    return-void
.end method

.method public setOpenSfs(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .line 1030
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mIsOpenSfs:Z

    return-void
.end method

.method public setPsnVipSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    if-eqz v0, :cond_0

    .line 398
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$10;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$space$VipSeatAct:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 415
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->setFlatStatus()V

    goto :goto_0

    .line 412
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->stopSeatMove()V

    goto :goto_0

    .line 409
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->pauseRestoreMove()V

    goto :goto_0

    .line 406
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->restoreSeat()V

    goto :goto_0

    .line 403
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->pauseFlatMove()V

    goto :goto_0

    .line 400
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->laySeatFlat()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRearSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRearSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    if-eqz v0, :cond_0

    .line 528
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$10;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$space$VipSeatAct:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 545
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRearSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->setFlatStatus()V

    goto :goto_0

    .line 542
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRearSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->stopSeatMove()V

    goto :goto_0

    .line 539
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRearSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->pauseRestoreMove()V

    goto :goto_0

    .line 536
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRearSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->restoreSeat()V

    goto :goto_0

    .line 533
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRearSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->pauseFlatMove()V

    goto :goto_0

    .line 530
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRearSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->laySeatFlat()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRlSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRLSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$10;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$space$VipSeatAct:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 493
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRLSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->setFlatStatus()V

    goto :goto_0

    .line 490
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRLSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->stopSeatMove()V

    goto :goto_0

    .line 487
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRLSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->pauseRestoreMove()V

    goto :goto_0

    .line 484
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRLSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->restoreSeat()V

    goto :goto_0

    .line 481
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRLSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->pauseFlatMove()V

    goto :goto_0

    .line 478
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRLSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->laySeatFlat()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRrSeatAct(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRRSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$10;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$space$VipSeatAct:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 519
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRRSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;->setFlatStatus()V

    goto :goto_0

    .line 516
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRRSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;->stopSeatMove()V

    goto :goto_0

    .line 513
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRRSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;->pauseRestoreMove()V

    goto :goto_0

    .line 510
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRRSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;->restoreSeat()V

    goto :goto_0

    .line 507
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRRSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;->pauseFlatMove()V

    goto :goto_0

    .line 504
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRRSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;->laySeatFlat()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSleepMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1316
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSleepMode:I

    return-void
.end method

.method public setSoundFieldToMiddle(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnter"
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpaceCapsuleControl:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->setSoundFieldToMiddle(Z)V

    return-void
.end method

.method public setSpaceCapsuleSleepBgmOpen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOpen"
        }
    .end annotation

    .line 679
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setSpaceCapsuleSleepBgmOpen(Z)V

    return-void
.end method

.method public setSpaceCapsuleSleepMusic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 669
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setSpaceCapsuleSleepMusic(Ljava/lang/String;)V

    return-void
.end method

.method public setSpeechStart()V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpeechStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpeechStop()V
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mSpeechStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setVipSleepSecSeatControl(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipSeatAct"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipCapsuleSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    if-eqz v0, :cond_0

    .line 555
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$10;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$space$VipSeatAct:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatAct;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 572
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipSleepSecSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->setFlatStatus()V

    goto :goto_0

    .line 569
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipSleepSecSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->stopSeatMove()V

    goto :goto_0

    .line 566
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipSleepSecSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->pauseRestoreMove()V

    goto :goto_0

    .line 563
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipSleepSecSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->restoreSeat()V

    goto :goto_0

    .line 560
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipSleepSecSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->pauseFlatMove()V

    goto :goto_0

    .line 557
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipSleepSecSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->laySeatFlat()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startMusicTimer(JLcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "listener"
        }
    .end annotation

    .line 1303
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;J)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimer:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;

    .line 1304
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getTimeHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1305
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCountdownTimeListener:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;

    return-void
.end method

.method public stopAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "alarmSource"
        }
    .end annotation

    .line 893
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_media_source"

    .line 894
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_media_type"

    const/4 v1, 0x1

    .line 895
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_media_command"

    .line 896
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 897
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public stopCapsuleSeatMove()V
    .locals 0

    .line 630
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->stopDrvSeatMove()V

    .line 631
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->stopPsnSeatMove()V

    return-void
.end method

.method public stopDrvSeatMove()V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipDrvSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;->stopSeat()V

    return-void
.end method

.method public stopMusicTimer()V
    .locals 2

    .line 1309
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getTimeHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1310
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimer:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$Timer;

    .line 1311
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mCountdownTimeListener:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$ICountdownTimeListener;

    .line 1312
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method public stopPsnSeatMove()V
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipPsnSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipPsnSeatControl;->stopSeat()V

    return-void
.end method

.method public stopRearSeatMove()V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRearSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;->stopSeat()V

    return-void
.end method

.method public stopRlSeatMove()V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRLSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRLSeatControl;->stopSeat()V

    return-void
.end method

.method public stopRrSeatMove()V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mVipRRSeatControl:Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipRRSeatControl;->stopSeat()V

    return-void
.end method

.method public switchBluetoothSource()V
    .locals 1

    .line 1160
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->playBtMedia()V

    return-void
.end method

.method public switchMediaScreenID(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "screenID",
            "from"
        }
    .end annotation

    const-string v0, "isMeditationIndependent"

    .line 865
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaopeng.homespace.capsule"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 866
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.xiaopeng.homespace.meditation"

    const-string v1, "com.xiaopeng.meditation.media.MeditationMediaService"

    .line 867
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_media_screen_id"

    .line 868
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 869
    invoke-virtual {p1, p3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public unBindService(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mServiceConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 751
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "SpaceCapsuleViewModel"

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unBindService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 755
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mServiceConnected:Z

    .line 756
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mMusicService:Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    if-eqz p1, :cond_1

    .line 757
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->stopSelf()V

    goto :goto_1

    :cond_0
    const-string p1, "SpaceCapsuleViewModel"

    const-string v1, "unBindService: not bind"

    .line 760
    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public unRegisterBtDeviceNameObserver()V
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBtDeviceNameObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 1286
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBtDeviceNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 1287
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBtDeviceNameObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method public unRegisterDayNightSwitch()V
    .locals 2

    .line 1151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 1152
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 1154
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mDayNightObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method public unregisterBtStatusListener()V
    .locals 2

    .line 1006
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1009
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->mBtStatusListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unRegisterBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1011
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
