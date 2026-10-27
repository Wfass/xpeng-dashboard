.class public Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;
.super Ljava/lang/Object;
.source "ServiceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;
.implements Lcom/xiaopeng/carcontrol/model/DataSyncModel$DataSyncChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$RemindCallbackImpl;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvmCallbackImpl;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$XpuCallbackImpl;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$ScuCallbackImpl;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DiagnosticCallbackImpl;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$TboxCallbackImpl;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$McuCallbackImpl;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvasCallbackImpl;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;,
        Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;
    }
.end annotation


# static fields
.field private static final BCM_READY_DISABLE_TIMEOUT:J = 0x7530L

.field private static final CHECK_BONNET_TIME:J = 0x7530L

.field private static final CHECK_BRK_PEDAL_TIME_BT_NFC:J = 0x3e8L

.field private static final CHECK_BRK_PEDAL_TIME_KEY:J = 0x1388L

.field private static final GEAR_CHANGED_WAIT_TIME:J = 0x1f4L

.field private static final HIGH_SPEED_WAIT_TIME:J = 0x2710L

.field private static final SEAT_MAX_ERROR:I = 0x2

.field private static final SEAT_SAVE_INTERVAL:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "ServiceViewModel"

.field private static final UNLOCK_CAR_FAILED_WITH_BLE:I = 0x2

.field private static final UNLOCK_CAR_FAILED_WITH_NFC:I = 0x1

.field private static final UNLOCK_CAR_FAILED_WITH_OTHER:I = 0x3

.field private static final UNLOCK_CAR_FAILED_WITH_WATCH:I = 0x4

.field private static final UNLOCK_CAR_SUCCESS:I = 0x0

.field static final WELCOME_MODE_SPD_THRESHOLD:F = 3.0f


# instance fields
.field private BleKeyInfo:Ljava/lang/String;

.field private volatile accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field private firstShowNotReadyNotification:Z

.field private isSunShadeInitialized:Z

.field private mAccountInfo:Landroid/accounts/Account;

.field mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

.field private final mAutoDismissDialogTask:Ljava/lang/Runnable;

.field private final mAvasCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvasCallbackImpl;

.field mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

.field private mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

.field private final mBcmCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;

.field mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

.field private mBgHandler:Landroid/os/Handler;

.field private final mBossKeyListener:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;

.field private final mBossKeyUpTask:Ljava/lang/Runnable;

.field private final mCarInfoController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;

.field mCdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;

.field mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

.field private final mCheckBonnetTask:Ljava/lang/Runnable;

.field private volatile mCheckBrkPedalStartTime:J

.field private final mCheckReadyDisableTask:Ljava/lang/Runnable;

.field private final mCheckTelescopeTask:Ljava/lang/Runnable;

.field private volatile mCurrUnlockReqRes:I

.field private mCurrentBonnetClosed:Z

.field mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

.field private final mDelayShowPGearMenuTask:Ljava/lang/Runnable;

.field private mDeodorantNotToast:Z

.field private final mDiagnosticCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DiagnosticCallbackImpl;

.field private final mDiagnosticController:Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

.field private final mEpbRunnable:Ljava/lang/Runnable;

.field mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

.field private final mEspCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;

.field mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

.field private final mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

.field private final mGearChangedRunnable:Ljava/lang/Runnable;

.field private volatile mHasCheckReadyDisableTask:Z

.field mHasPendingUpdate:Z

.field private final mHighSpdRunnable:Ljava/lang/Runnable;

.field mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

.field private volatile mIsBcmReadyEnabled:Z

.field private volatile mIsBossKeyPressed:Z

.field mIsDataSyncEmpty:Z

.field protected mIsDrvDoorOpened:Z

.field protected mIsDrvSrsUnbelted:Z

.field private mIsEpbDialogShow:Z

.field private mIsFindingKey:Z

.field private mIsFindingKeyForPsn:Z

.field private mIsFindingKeyForRL:Z

.field private mIsFindingKeyForRR:Z

.field private mIsHighSpdRunnablePending:Z

.field mIsInitComplete:Z

.field protected volatile mIsLocalIgOn:Z

.field private mIsPhoneBleConnected:Z

.field private volatile mIsPhoneLocationOutside:Z

.field protected mIsPsnDoorOpened:Z

.field protected mIsPsnSrsUnbelted:Z

.field private mLastMirrorCtrl:I

.field private mLastSpd:F

.field private mLluCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;

.field protected final mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

.field private final mMcuCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$McuCallbackImpl;

.field protected mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

.field private final mMsmCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;

.field mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

.field private mNeedUpdateDrvSeat:Z

.field private final mPGearDropDownShowData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPreAutoShowMode:I

.field private volatile mPreBrkPedalStatus:I

.field private mPreIgState:I

.field private volatile mPreVcuBrkPedalStatus:I

.field private mPreviousAsMode:I

.field private mPreviousDriveMode:I

.field private mPreviousGear:I

.field private mPreviousXPedalMode:Z

.field private mReadyDisableScene:Ljava/lang/String;

.field private final mRemindCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$RemindCallbackImpl;

.field private final mRemindController:Lcom/xiaopeng/carcontrol/carmanager/controller/IRemindController;

.field private final mRestoreDrvSeatTask:Ljava/lang/Runnable;

.field private mResumeSaveSettingLock:Ljava/util/concurrent/CountDownLatch;

.field private final mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

.field private final mScuCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$ScuCallbackImpl;

.field mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

.field private final mScuMirrorTask:Ljava/lang/Runnable;

.field private final mShowSmartControlElementData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowSmartControlPanelData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowSmartControlSceneData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsDoorStateCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

.field private final mTboxCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$TboxCallbackImpl;

.field private final mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

.field private final mUnityDismissDialogData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnityShowDialogData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVcuCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;

.field mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

.field private mVcuSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

.field private final mXpuCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$XpuCallbackImpl;

.field private final mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

.field private showTrdSeatRemindNotification:Z


# direct methods
.method constructor <init>()V
    .locals 6

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;

    .line 175
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;

    .line 177
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;

    .line 180
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$ScuCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$ScuCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$ScuCallbackImpl;

    .line 183
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;

    .line 186
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvasCallbackImpl;

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvasCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvasCallbackImpl;

    .line 188
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;

    .line 192
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$McuCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$McuCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$McuCallbackImpl;

    .line 197
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$TboxCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$TboxCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mTboxCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$TboxCallbackImpl;

    .line 200
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DiagnosticCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DiagnosticCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDiagnosticCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DiagnosticCallbackImpl;

    .line 205
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$RemindCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$RemindCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mRemindCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$RemindCallbackImpl;

    .line 206
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$XpuCallbackImpl;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$XpuCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$XpuCallbackImpl;

    const/4 v0, -0x1

    .line 216
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreIgState:I

    .line 218
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mResumeSaveSettingLock:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    .line 221
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHasPendingUpdate:Z

    .line 229
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsHighSpdRunnablePending:Z

    .line 230
    new-instance v4, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$0BVvgtwyMRZ4-Zyw8HJYeU7UF2c;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$0BVvgtwyMRZ4-Zyw8HJYeU7UF2c;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHighSpdRunnable:Ljava/lang/Runnable;

    .line 237
    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreviousGear:I

    .line 238
    new-instance v4, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$QFBlo7FzXHKdlMjRbADFy-oJdd8;

    invoke-direct {v4, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$QFBlo7FzXHKdlMjRbADFy-oJdd8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mGearChangedRunnable:Ljava/lang/Runnable;

    .line 240
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreviousXPedalMode:Z

    .line 242
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreviousAsMode:I

    .line 251
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsFindingKey:Z

    .line 252
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsFindingKeyForPsn:Z

    .line 253
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsFindingKeyForRL:Z

    .line 254
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsFindingKeyForRR:Z

    .line 257
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDeodorantNotToast:Z

    .line 259
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->showTrdSeatRemindNotification:Z

    .line 260
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->firstShowNotReadyNotification:Z

    .line 261
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEpbRunnable:Ljava/lang/Runnable;

    .line 282
    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLastMirrorCtrl:I

    .line 284
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuMirrorTask:Ljava/lang/Runnable;

    .line 298
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$pdEAyaVnp5WjYpyiGSZAcRvvqFY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$pdEAyaVnp5WjYpyiGSZAcRvvqFY;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBonnetTask:Ljava/lang/Runnable;

    .line 308
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsLocalIgOn:Z

    .line 310
    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreBrkPedalStatus:I

    .line 311
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHasCheckReadyDisableTask:Z

    const-wide/16 v4, 0x0

    .line 312
    iput-wide v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBrkPedalStartTime:J

    .line 317
    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreVcuBrkPedalStatus:I

    .line 318
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsBcmReadyEnabled:Z

    .line 319
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$rIQ5Ei9ajDFxBnJU0FT6Hb9qMV8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$rIQ5Ei9ajDFxBnJU0FT6Hb9qMV8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckReadyDisableTask:Ljava/lang/Runnable;

    .line 324
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$ve_mhVK7iinZsTrR-Nil9kJ8aPo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$ve_mhVK7iinZsTrR-Nil9kJ8aPo;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAutoDismissDialogTask:Ljava/lang/Runnable;

    const/16 v0, 0xa

    .line 325
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreviousDriveMode:I

    .line 326
    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreAutoShowMode:I

    .line 328
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBossKeyListener:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;

    .line 329
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsBossKeyPressed:Z

    .line 330
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$TIXUS99U0DvPDl_W8PjiAu5dNx8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$TIXUS99U0DvPDl_W8PjiAu5dNx8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBossKeyUpTask:Ljava/lang/Runnable;

    .line 336
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$s1txJmJmoKZUNQKuJnaOXiNYWOM;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$s1txJmJmoKZUNQKuJnaOXiNYWOM;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mRestoreDrvSeatTask:Ljava/lang/Runnable;

    .line 340
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isSunShadeInitialized:Z

    .line 342
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mUnityShowDialogData:Landroidx/lifecycle/MutableLiveData;

    .line 343
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mUnityDismissDialogData:Landroidx/lifecycle/MutableLiveData;

    .line 344
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPGearDropDownShowData:Landroidx/lifecycle/MutableLiveData;

    .line 346
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mShowSmartControlPanelData:Landroidx/lifecycle/MutableLiveData;

    .line 347
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mShowSmartControlSceneData:Landroidx/lifecycle/MutableLiveData;

    .line 348
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mShowSmartControlElementData:Landroidx/lifecycle/MutableLiveData;

    .line 5188
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$ssH5KNyikJd4cvGTUb7ctiNWLZE;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$ssH5KNyikJd4cvGTUb7ctiNWLZE;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDelayShowPGearMenuTask:Ljava/lang/Runnable;

    .line 5199
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$SJB5QK7n-kA9SVJWBWN6ve1XhqA;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$SJB5QK7n-kA9SVJWBWN6ve1XhqA;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckTelescopeTask:Ljava/lang/Runnable;

    .line 378
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsInitComplete:Z

    .line 380
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v4, "xp_bcm"

    .line 383
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const-string/jumbo v4, "xp_vcu"

    .line 386
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    const-string/jumbo v4, "xp_esp"

    .line 389
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    const-string/jumbo v4, "xp_eps"

    .line 391
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    const-string/jumbo v4, "xp_msm"

    .line 394
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const-string/jumbo v4, "xp_scu"

    .line 397
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const-string/jumbo v4, "xp_avas"

    .line 399
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    const-string/jumbo v4, "xp_llu"

    .line 401
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    const-string/jumbo v4, "xp_atl"

    .line 403
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    const-string/jumbo v4, "xp_icm"

    .line 405
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    const-string/jumbo v4, "xp_mcu"

    .line 407
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    const-string/jumbo v4, "xp_tbox"

    .line 409
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    const-string/jumbo v4, "xp_diagnostic"

    .line 411
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDiagnosticController:Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

    const-string/jumbo v4, "xp_CarInfoService"

    .line 413
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCarInfoController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;

    const-string/jumbo v4, "xp_xpu"

    .line 416
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    const-string/jumbo v4, "xp_remind"

    .line 417
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IRemindController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mRemindController:Lcom/xiaopeng/carcontrol/carmanager/controller/IRemindController;

    const-string v4, "isSupportSdc"

    .line 418
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "isSupportAvm"

    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "xp_avm"

    .line 419
    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    .line 420
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvmCallbackImpl;

    invoke-direct {v5, p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvmCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    :cond_1
    const-string/jumbo v1, "xp_UserScenarioService"

    .line 422
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    const-string v1, "isSupportCdcControl"

    .line 426
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "xp_cdc"

    .line 427
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;

    .line 430
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isDrvDoorOpened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvDoorOpened:Z

    .line 431
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isPsnDoorOpened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnDoorOpened:Z

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvBeltStatus()I

    move-result v0

    if-ne v0, v3, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvSrsUnbelted:Z

    const-string v0, "isSupportPsnWelcomeMode"

    .line 433
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnBeltStatus()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnSrsUnbelted:Z

    .line 436
    :cond_5
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$yw3oFjuCiPTENci7T05LB4nD-Co;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$yw3oFjuCiPTENci7T05LB4nD-Co;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    const-wide/16 v4, 0x2710

    invoke-static {v0, v4, v5}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 445
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 446
    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDataSyncChangeListener(Lcom/xiaopeng/carcontrol/model/DataSyncModel$DataSyncChangeListener;)V

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    if-nez v0, :cond_6

    .line 449
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    .line 452
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    if-nez v0, :cond_7

    .line 453
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    .line 457
    :cond_7
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceVm-ThreadHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 459
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    .line 460
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$2hmHe7zPR3WNepeUCndXIkgTIPQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$2hmHe7zPR3WNepeUCndXIkgTIPQ;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 483
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    .line 484
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getUnlockReqSrc()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrUnlockReqRes:I

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructor mCurrUnlockReqRes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrUnlockReqRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getBonnetState()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrentBonnetClosed:Z

    .line 489
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    .line 491
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$HDeUiGZe3vZC5e7KyDMszQSIHNg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$HDeUiGZe3vZC5e7KyDMszQSIHNg;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 495
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkDoorBossKeySw()V

    .line 497
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->requestCarLicensePlate()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLastMirrorCtrl:I

    return p0
.end method

.method static synthetic access$1202(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I
    .locals 0

    .line 142
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLastMirrorCtrl:I

    return p1
.end method

.method static synthetic access$1500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;[I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleSeatWelcomeMode([I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;[I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handlePsnSeatWelcomeMode([I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mSsDoorStateCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsFindingKey:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsFindingKey:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsFindingKeyForPsn:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsFindingKeyForPsn:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;ZF)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkHighSpdCloseWinFunction(ZF)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreBrkPedalStatus:I

    return p0
.end method

.method static synthetic access$2102(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I
    .locals 0

    .line 142
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreBrkPedalStatus:I

    return p1
.end method

.method static synthetic access$2200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsBcmReadyEnabled:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsBcmReadyEnabled:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->dismissReadyDisableDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrUnlockReqRes:I

    return p0
.end method

.method static synthetic access$2402(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I
    .locals 0

    .line 142
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrUnlockReqRes:I

    return p1
.end method

.method static synthetic access$2500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/model/FunctionModel;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isSunShadeInitialized:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isSunShadeInitialized:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreviousAsMode:I

    return p0
.end method

.method static synthetic access$2702(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I
    .locals 0

    .line 142
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreviousAsMode:I

    return p1
.end method

.method static synthetic access$2800(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreviousDriveMode:I

    return p0
.end method

.method static synthetic access$2902(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I
    .locals 0

    .line 142
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreviousDriveMode:I

    return p1
.end method

.method static synthetic access$3000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreviousGear:I

    return p0
.end method

.method static synthetic access$3002(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I
    .locals 0

    .line 142
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreviousGear:I

    return p1
.end method

.method static synthetic access$3100(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Ljava/lang/Runnable;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mGearChangedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Landroid/os/Handler;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Ljava/lang/Runnable;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBonnetTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Ljava/lang/Runnable;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEpbRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreAutoShowMode:I

    return p0
.end method

.method static synthetic access$3502(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I
    .locals 0

    .line 142
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreAutoShowMode:I

    return p1
.end method

.method static synthetic access$3600(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I
    .locals 0

    .line 142
    iget p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreVcuBrkPedalStatus:I

    return p0
.end method

.method static synthetic access$3602(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I
    .locals 0

    .line 142
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreVcuBrkPedalStatus:I

    return p1
.end method

.method static synthetic access$3700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDiagnosticController:Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->showEpbDialog()V

    return-void
.end method

.method static synthetic access$3900(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleIgStatusChanged(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Z
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isLocalIgOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->showReadyDisableDialog()V

    return-void
.end method

.method static synthetic access$4202(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->BleKeyInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;[B)Ljava/lang/String;
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->parseBLEBytes2Switch([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleRemindWarningState(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleTboxAcChargeStChanged(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleIotBusinesstypeChanged(I)V

    return-void
.end method

.method static synthetic access$4702(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPhoneBleConnected:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPhoneLocationOutside:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    return-object p0
.end method

.method static synthetic access$4902(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Ljava/lang/Runnable;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuMirrorTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleSdcObstacleTips(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncXPilotParkingData()V

    return-void
.end method

.method static synthetic access$5300(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncXPilotDrivingData()V

    return-void
.end method

.method static synthetic access$5400(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->showTrdSeatRemindNotification:Z

    return p0
.end method

.method static synthetic access$5402(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->showTrdSeatRemindNotification:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleBossKeyDown()V

    return-void
.end method

.method static synthetic access$5600(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleBossKeyUp()V

    return-void
.end method

.method private calculatePsnWelcomeModeGoOffPosition()I
    .locals 6

    .line 3984
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatHorzPos()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ServiceViewModel"

    const/16 v3, 0x19

    if-le v0, v3, :cond_1

    const/16 v4, 0x2d

    if-le v0, v4, :cond_0

    add-int/lit8 v3, v0, -0x14

    .line 3987
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculatePsnWelcomeModeGoOffPosition start new SeatHorzPos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", curSeatHorzPos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3

    .line 3990
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculatePsnWelcomeModeGoOffPosition curSeatHorzPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", do not need adjust seat"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, -0x1

    return v0
.end method

.method private calculateWelcomeModeGoOffPosition()I
    .locals 1

    const/4 v0, 0x1

    .line 3895
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->calculateWelcomeModeGoOffPosition(Z)I

    move-result v0

    return v0
.end method

.method private calculateWelcomeModeGoOffPosition(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useCurrentPos"
        }
    .end annotation

    .line 3899
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatHorzPos()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3901
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvSeatSavedPos()[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3903
    aget v0, p1, v1

    :cond_0
    const-string p1, "ServiceViewModel"

    const/16 v2, 0x19

    if-le v0, v2, :cond_2

    const/16 v3, 0x2d

    if-le v0, v3, :cond_1

    add-int/lit8 v2, v0, -0x14

    .line 3908
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateWelcomeModeGoOffPosition start new SeatHorzPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curSeatHorzPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    .line 3911
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateWelcomeModeGoOffPosition curSeatHorzPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", do not need adjust seat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, -0x1

    return p1
.end method

.method private checkHighSpdCloseWinFunction(ZF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "speed"
        }
    .end annotation

    const-string v0, "ServiceViewModel"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "getHighSpdFuncThreshold"

    .line 4118
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    .line 4119
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsHighSpdRunnablePending:Z

    if-nez p1, :cond_1

    .line 4120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current speed="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", post delayed mHighSpdRunnable for 10s"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4121
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHighSpdRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 4122
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsHighSpdRunnablePending:Z

    goto :goto_0

    .line 4125
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsHighSpdRunnablePending:Z

    if-eqz p1, :cond_1

    const-string p1, "remove mHighSpdRunnable"

    .line 4126
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4127
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHighSpdRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4128
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsHighSpdRunnablePending:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private checkIfNeedSaveSeatPos()Z
    .locals 21

    move-object/from16 v0, p0

    .line 2644
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isDrvSeatSavedPosEmpty()Z

    move-result v1

    const-string v2, "ServiceViewModel"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const-string v1, "Drv Seat Saved Pos Empty, save current seat position"

    .line 2645
    invoke-static {v2, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 2646
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    .line 2647
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->saveDrvSeatPos([I)V

    const-string v2, "isSupportDomainControllerSeatWelcome"

    .line 2648
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v2, :cond_0

    .line 2649
    iget-object v8, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v9, 0x1

    aget v10, v1, v4

    aget v11, v1, v3

    aget v12, v1, v7

    aget v13, v1, v6

    aget v14, v1, v5

    invoke-interface/range {v8 .. v14}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositions(IIIIII)V

    goto :goto_0

    .line 2651
    :cond_0
    iget-object v15, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    aget v16, v1, v4

    aget v17, v1, v3

    aget v18, v1, v7

    aget v19, v1, v6

    aget v20, v1, v5

    invoke-interface/range {v15 .. v20}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositionsToMcu(IIIII)V

    :goto_0
    return v3

    .line 2655
    :cond_1
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "In guest mode, save current seat position"

    .line 2656
    invoke-static {v2, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2657
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvSeatPos(I)[I

    move-result-object v1

    .line 2658
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2, v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->saveDrvSeatPos(I[I)V

    return v3

    :cond_2
    const-string v1, "We have drv seat position, wait to resume"

    .line 2661
    invoke-static {v2, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v4
.end method

.method private checkReadyDisableStatus()V
    .locals 6

    .line 4208
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHasCheckReadyDisableTask:Z

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4209
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHasCheckReadyDisableTask:Z

    const-wide/16 v3, 0x0

    .line 4210
    iput-wide v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBrkPedalStartTime:J

    .line 4212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvSysReady()Z

    move-result v0

    .line 4213
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getBcmReadyEnableState()I

    move-result v3

    .line 4216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unlock req res: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrUnlockReqRes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", EvReady: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", BcmReadyEnable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsBcmReadyEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsBcmReadyEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_1

    .line 4219
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsBcmReadyEnabled:Z

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    .line 4231
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->showReadyDisableDialog()V

    goto :goto_0

    :cond_0
    const-string v0, "No need to check BcmReadyEnable, because mHasCheckReadyDisableTask is false"

    .line 4235
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkTelescopeMrr()V
    .locals 4

    .line 5216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5217
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckTelescopeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private convertSayhiAvasToLlu(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avasSayHiEffect"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method private dismissReadyDisableDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 4308
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->dismissReadyDisableDialog(Z)V

    return-void
.end method

.method private dismissTelescopeMrrDialog()V
    .locals 1

    .line 5222
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->dismissCloseMrrDialog()V

    return-void
.end method

.method private geekConfigMerge()V
    .locals 6

    const-string v0, "IsSupportGeekMode"

    .line 1138
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getGeekConfigStr()Ljava/lang/String;

    move-result-object v0

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeVcuModule geekConfigStr from sp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceViewModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDefaultGeekConfig()Ljava/lang/String;

    move-result-object v0

    .line 1143
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isUseAiPowerGeekConfig()Z

    move-result v1

    .line 1144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeVcuModule isUseAiPowerGeekConfig "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    .line 1146
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->buildAndUpdateCache(Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;)V

    .line 1147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->allToSavedStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAllDriveSubItem(Ljava/lang/String;)V

    .line 1148
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setUseAiPowerGeekConfig(Z)V

    goto :goto_0

    .line 1150
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->buildGeekConfig(Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;)V

    goto :goto_0

    .line 1153
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->buildGeekConfig(Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleBossKeyDown()V
    .locals 3

    .line 5930
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getDoorBossKeySw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5931
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBossKeyUpTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5932
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsBossKeyPressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "ServiceViewModel"

    const-string v2, "handleBossKeyDown"

    .line 5933
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5934
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$cl18-7501tCGttigUiclPY7dRBI;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$cl18-7501tCGttigUiclPY7dRBI;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    .line 5936
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsBossKeyPressed:Z

    :cond_1
    return-void
.end method

.method private handleBossKeyUp()V
    .locals 4

    .line 5942
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBossKeyUpTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleDelayShowPGearMenu()V
    .locals 4

    .line 5209
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDelayShowPGearMenuTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5210
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getParkDropdownMenuEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5211
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDelayShowPGearMenuTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private handleGearChanged()V
    .locals 3

    const-string v0, "isSupportMirrorMemory"

    .line 1752
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1753
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 1754
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->handleReverseMirror(Z)V

    :cond_1
    return-void
.end method

.method private handleIgStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 1739
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreIgState:I

    if-eq v0, p1, :cond_3

    .line 1740
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->onIgRemoteOn()V

    goto :goto_0

    .line 1736
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->onIgLocalOn()V

    goto :goto_0

    .line 1733
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->onIgOff()V

    .line 1748
    :cond_3
    :goto_0
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreIgState:I

    return-void
.end method

.method private handleIotBusinesstypeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4341
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    .line 4342
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->getTboxAcChargerSt()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 4343
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->tbox_ac_charge_unlock_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_0
    return-void
.end method

.method private handlePsnSeatWelcomeMode([I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorState"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3917
    aget v1, p1, v0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnDoorOpened:Z

    if-eqz v1, :cond_0

    .line 3919
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkPsnWelcomeModeGoOn()V

    goto :goto_0

    .line 3920
    :cond_0
    aget p1, p1, v0

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnDoorOpened:Z

    if-nez p1, :cond_1

    .line 3922
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkPsnWelcomeModeGoOff()V

    const-string p1, "isSupportAirSuspension"

    .line 3923
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized handleRemindWarningState(I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "ServiceViewModel"

    .line 5363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemindWarningState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getRemindWarningSw()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ServiceViewModel"

    const-string v0, "RemindWarningSw is off! "

    .line 5365
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5366
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5368
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isRemindWarningAllowed()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ServiceViewModel"

    const-string v0, "showStandardNotificationCardWithTts"

    .line 5369
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5370
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    const/16 v2, 0x401

    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->remind_warning_title:I

    .line 5371
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->remind_warning_content:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->remind_warning_tts:I

    .line 5372
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->remind_warning_btn_title:I

    .line 5373
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5374
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const/high16 v8, 0x4000000

    invoke-static {p1, v0, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 5370
    invoke-virtual/range {v1 .. v7}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showStandardNotificationCardWithTts(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 5375
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setRemindWarningTs(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5377
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleSdcObstacleTips(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 5914
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$H7agBqqdMkRmArFkF-05783JaEU;

    invoke-direct {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$H7agBqqdMkRmArFkF-05783JaEU;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleSeatWelcomeMode([I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorState"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3817
    aget v1, p1, v0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvDoorOpened:Z

    if-eqz v1, :cond_0

    .line 3819
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkWelcomeModeGoOn()V

    goto :goto_0

    .line 3820
    :cond_0
    aget p1, p1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvDoorOpened:Z

    if-nez p1, :cond_1

    .line 3823
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkWelcomeModeGoOff()V

    const-string p1, "isSupportAirSuspension"

    .line 3824
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :cond_1
    :goto_0
    return-void
.end method

.method private handleTboxAcChargeStChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4334
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    .line 4335
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->getIotBusinessType()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 4336
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->tbox_ac_charge_unlock_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_0
    return-void
.end method

.method private handleVolumeForZenMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enter"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "ServiceViewModel"

    if-eqz p1, :cond_0

    const-string v2, "Set audio volume for entering Zen mode"

    .line 1597
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v2, "Set audio volume for exiting Zen mode"

    .line 1599
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1601
    :goto_0
    new-instance v0, Landroid/media/AudioConfig/AudioConfig;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/AudioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    .line 1602
    invoke-virtual {v0, p1}, Landroid/media/AudioConfig/AudioConfig;->doZenVolumeProcess(Z)V

    return-void
.end method

.method private isDoorClosed(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1587
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorsState()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    const/4 v2, 0x3

    if-le p1, v2, :cond_0

    goto :goto_0

    .line 1592
    :cond_0
    aget p1, v0, p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private isDrvDoorOpened()Z
    .locals 4

    .line 3781
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorsState()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3782
    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 3783
    aget v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private isLccExamNotPass()Z
    .locals 2

    const-string v0, "isSupportCNgp"

    .line 5352
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "isSupportLidarSafeExam"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5353
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperLccSafeExamResult()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 5355
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLccSafeExamResult()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperLccSafeExamResult()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLocalIgOn()Z
    .locals 2

    .line 5926
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isMemExamNotPass()Z
    .locals 2

    const-string v0, "isSupportRelatedSwitchV5"

    .line 5341
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5342
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMemParkSafeExamResultV2()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const-string v0, "isSupportCNgp"

    .line 5344
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isSupportLidarSafeExam"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMemParkSafeExamResult()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 5347
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMemParkSafeExamResult()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperVpaSafeExamResult()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isPsnDoorOpened()Z
    .locals 4

    .line 3797
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorsState()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3798
    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 3799
    aget v0, v0, v2

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private isXngpExamNotPass()Z
    .locals 1

    .line 5359
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getXngpSafeExamResult()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$QFBlo7FzXHKdlMjRbADFy-oJdd8(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleGearChanged()V

    return-void
.end method

.method static synthetic lambda$handleBossKeyDown$18()V
    .locals 1

    .line 5934
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->controlPsnSeatMoveForwardStart()V

    return-void
.end method

.method static synthetic lambda$handleSdcObstacleTips$17(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "state"
        }
    .end annotation

    const/16 v0, 0x66

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 5916
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object p0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "xpCarControl_sdc_obstacle"

    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->showSdcObstacleTipsNotify(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 5919
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object p0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$new$15()V
    .locals 4

    .line 5189
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "xpCarControl_Seat"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->showPGearNotify(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$new$16()V
    .locals 1

    const-string v0, "isSupportMrrGeoFence"

    .line 5200
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5201
    invoke-static {}, Lcom/xiaopeng/carcontrol/IpcRouterService;->getMrrGeoFenceStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5203
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;->enterTelescopeRange()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$4()V
    .locals 1

    .line 337
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->restoreSeat()V

    return-void
.end method

.method static synthetic lambda$showEpbDialog$14()V
    .locals 8

    .line 4811
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->epb_title:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->emergency_epb_desc:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_ok:I

    .line 4812
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x0

    const/high16 v7, 0x4000000

    invoke-static {v1, v6, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    sget v6, Lcom/xiaopeng/carcontrolmodule/R$drawable;->popup_img_epb_parking:I

    const/16 v1, 0x301

    .line 4811
    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showPicNotificationCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public static synthetic lambda$ve_mhVK7iinZsTrR-Nil9kJ8aPo(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->dismissReadyDisableDialog()V

    return-void
.end method

.method private parseBLEBytes2Switch([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4289
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 4291
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4292
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    .line 4295
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4296
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 4302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseBLEBytes2Switch: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ServiceViewModel"

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private showEpbDialog()V
    .locals 3

    .line 4809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showEpbDialog: mIsEpbDialogShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsEpbDialogShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4810
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$-U7tjzINDVcBE8TM6jeSHj5bcXw;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$-U7tjzINDVcBE8TM6jeSHj5bcXw;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showReadyDisableDialog()V
    .locals 3

    const-string v0, "ServiceViewModel"

    const-string v1, "showReadyDisableDialog: mIsReadyDisableDialogShow"

    const/4 v2, 0x0

    .line 4241
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4242
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$0npHt66oUxspIxJNhgO6qa49Eyw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$0npHt66oUxspIxJNhgO6qa49Eyw;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private syncAtlDataExceptAtlSw(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "isSupportFullAtl"

    .line 2295
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ", currentValue: "

    const-string v5, "ServiceViewModel"

    const/4 v6, 0x0

    .line 2344
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v2, :cond_5

    .line 2296
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlBrightness()I

    move-result v2

    .line 2297
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAtlBright()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2298
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ATL manual brightness, save currentValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2299
    iget-object v8, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v8, v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlBright(I)V

    goto :goto_0

    .line 2301
    :cond_0
    iget-object v8, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v8}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlBright()I

    move-result v8

    .line 2302
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ATL manual brightness, resume saved value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v8, v2, :cond_1

    .line 2304
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v2, v8, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlBrightness(IZ)V

    .line 2308
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlEffect()Ljava/lang/String;

    move-result-object v2

    .line 2309
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAtlEffect()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2310
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ATL effect, save currentValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2311
    iget-object v8, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->fromAtlStatus(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->toDataSyncAtlCmd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlEffect(Ljava/lang/String;)V

    goto :goto_1

    .line 2313
    :cond_2
    iget-object v8, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v8}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v8

    .line 2314
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ATL effect, resume saved value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2315
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2316
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v2, v8, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlEffect(Ljava/lang/String;Z)V

    .line 2320
    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v2

    .line 2321
    iget-object v8, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v8, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isAtlDualColor(Ljava/lang/String;)Z

    move-result v8

    .line 2322
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAtlDualColorSw()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2323
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ATL dual color sw, save currentValue: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2324
    iget-object v9, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v9, v8}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlDualColorSw(Z)V

    goto :goto_2

    .line 2326
    :cond_4
    iget-object v9, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v9}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlDualColorSw()Z

    move-result v9

    .line 2327
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ATL dual color sw, resume saved value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v9, v8, :cond_6

    .line 2329
    iget-object v8, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v8, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isSupportDoubleThemeColor(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2330
    iget-object v8, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v8, v2, v9, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlDualColor(Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_5
    move-object v2, v3

    .line 2335
    :cond_6
    :goto_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v8

    const-class v9, Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;

    invoke-virtual {v8, v9}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;

    .line 2336
    invoke-interface {v8}, Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;->getAtlSingleColor()I

    move-result v9

    const-string v10, "isSupportAtlRgbColor"

    .line 2337
    invoke-static {v10}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_9

    .line 2338
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAtlRgbSingleColor()Z

    move-result v11

    if-nez v11, :cond_7

    .line 2339
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ATL RGB single color, save currentValue: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2340
    iget-object v11, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v11, v9, v6}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlRgbSingleColor(II)V

    goto/16 :goto_3

    .line 2342
    :cond_7
    iget-object v11, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v11}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlRgbSingleColor()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_8

    const v13, 0xb6eff    # 1.050008E-39f

    .line 2344
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v7, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 2345
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ATL RGB single color, resume saved value: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v11, :cond_b

    .line 2346
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v9, :cond_b

    .line 2347
    iget-object v9, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v9, v11, v6, v6, v12}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlRgbSingleColor(IIZZ)V

    goto :goto_3

    :cond_8
    const-string v9, "ATL RGB single color cfg not saved"

    .line 2350
    invoke-static {v5, v9, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 2354
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAtlSingleColor()Z

    move-result v11

    if-nez v11, :cond_a

    .line 2355
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ATL single color, save currentValue: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2356
    iget-object v11, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v11, v9}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlSingleColor(I)V

    goto :goto_3

    .line 2358
    :cond_a
    iget-object v11, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v11}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlSingleColor()I

    move-result v11

    .line 2359
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ATL single color, resume saved value: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v11, v9, :cond_b

    .line 2361
    iget-object v9, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v9, v2, v11, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSingleColor(Ljava/lang/String;IZ)V

    .line 2366
    :cond_b
    :goto_3
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2367
    invoke-interface {v8}, Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;->getAtlDualFirstColor()I

    move-result v1

    .line 2368
    invoke-interface {v8}, Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;->getAtlDualSecondColor()I

    move-result v8

    .line 2369
    invoke-static {v10}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x2

    const-string v11, ", "

    if-eqz v9, :cond_e

    .line 2370
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAtlRgbDualColor()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ATL RGB dual color, save currentValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2372
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2, v1, v8, v6}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlRgbDualColor(III)V

    goto/16 :goto_4

    .line 2374
    :cond_c
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlRgbDualColor()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 2376
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ATL RGB dual color, resume saved value: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2378
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2379
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, [I

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_12

    .line 2380
    array-length v2, v1

    if-lt v2, v10, :cond_12

    .line 2381
    iget-object v13, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    aget v14, v1, v6

    aget v15, v1, v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-interface/range {v13 .. v18}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlRgbDualColor(IIIZZ)V

    goto/16 :goto_4

    :cond_d
    const-string v1, "ATL RGB dual color cfg not saved"

    .line 2385
    invoke-static {v5, v1, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2389
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAtlDualColor()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ATL dual color, save currentValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2391
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2, v1, v8}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlDualColor(II)V

    goto :goto_4

    .line 2393
    :cond_f
    iget-object v3, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlDualColor()[I

    move-result-object v3

    if-eqz v3, :cond_11

    .line 2394
    array-length v7, v3

    if-lt v7, v10, :cond_11

    .line 2395
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ATL dual color, resume saved value: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v9, v3, v6

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v9, v3, v12

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2396
    aget v4, v3, v6

    if-ne v4, v1, :cond_10

    aget v1, v3, v12

    if-eq v1, v8, :cond_12

    .line 2397
    :cond_10
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    aget v4, v3, v6

    aget v3, v3, v12

    invoke-interface {v1, v2, v4, v3, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlDualColor(Ljava/lang/String;IIZ)V

    goto :goto_4

    :cond_11
    const-string v1, "ATL dual color cfg not saved"

    .line 2400
    invoke-static {v5, v1, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_12
    :goto_4
    return-void
.end method

.method private syncAvasData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 3031
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getLowSpdSoundType()I

    move-result v0

    .line 3032
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAvasEffect()Z

    move-result v1

    const-string v2, ", currentValue: "

    const/4 v3, 0x0

    const-string v4, "ServiceViewModel"

    if-nez v1, :cond_0

    .line 3033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AVAS effect, save currentValue: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3034
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAvasEffect(I)V

    goto :goto_0

    .line 3036
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAvasEffect()I

    move-result v1

    .line 3037
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AVAS effect, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_1

    .line 3039
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setLowSpdSoundType(I)V

    :cond_1
    :goto_0
    const-string v0, "isSupportLlu"

    .line 3054
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3055
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getFriendSoundType()I

    move-result v0

    .line 3056
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isSayHiEffect()Z

    move-result v1

    const/16 v5, 0xa

    if-nez v1, :cond_2

    .line 3057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Friend sayhi effect, save currentValue: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3058
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSayHiEffect(I)V

    .line 3059
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->convertSayhiAvasToLlu(I)I

    move-result v0

    invoke-interface {v1, v5, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEffect(II)V

    goto :goto_1

    .line 3061
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSayHiEffect()I

    move-result v1

    .line 3062
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Friend sayhi effect, resume saved value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_3

    .line 3064
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setFriendSoundType(I)V

    .line 3066
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->convertSayhiAvasToLlu(I)I

    move-result v1

    invoke-interface {v0, v5, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEffect(II)V

    goto :goto_1

    :cond_4
    const-string v0, "llu not support, force save default friend effect "

    .line 3069
    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setFriendSoundType(I)V

    .line 3084
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getBootSoundEffect()I

    move-result v0

    .line 3085
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isBootEffect()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Boot sound effect, save currentValue: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3087
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setBootEffect(I)V

    goto :goto_2

    .line 3089
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getBootEffect()I

    move-result v1

    .line 3090
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Boot sound effect, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_6

    .line 3092
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setBootSoundEffect(I)V

    .line 3096
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->getBootEffectBeforeSw()I

    move-result v0

    .line 3097
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isBootEffectBeforeSw()Z

    move-result p1

    const/4 v1, 0x2

    if-nez p1, :cond_8

    .line 3098
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Boot sound effect before Sw, save currentValue: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_7

    .line 3100
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setBootEffectBeforeSw(I)V

    goto :goto_3

    .line 3102
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setBootEffectBeforeSw(I)V

    goto :goto_3

    .line 3105
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getBootEffectBeforeSw()I

    move-result p1

    .line 3106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Boot sound effect before Sw, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_9

    .line 3108
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setBootEffectBeforeSw(I)V

    goto :goto_3

    :cond_9
    if-eq p1, v0, :cond_a

    .line 3110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setBootEffectBeforeSw(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method private syncAvmData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const-string p1, "isSupportAvm"

    .line 3674
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3676
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNarPerspective()Ljava/lang/Integer;

    move-result-object p1

    .line 3677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nar perspective index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 3679
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->setNarPerspectiveSelection(I)V

    goto :goto_0

    .line 3681
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->getNarPerspectiveSelection()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNarPerspective(I)V

    .line 3684
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getTasSw()Ljava/lang/Boolean;

    move-result-object p1

    .line 3685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tas sw: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    .line 3687
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->setSteeringImageFullState(Z)V

    goto :goto_1

    .line 3689
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->getSteeringImageFullState()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setTasSw(Z)V

    .line 3692
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getTasSelection()Ljava/lang/Integer;

    move-result-object p1

    .line 3693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tas selection: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    .line 3695
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->setSteeringImageFullSelection(I)V

    goto :goto_2

    .line 3697
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->getSteeringImageFullSelection()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setTasSelection(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private syncBcmData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const-string v0, "isSupportAutoLampHeight"

    .line 2035
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ServiceViewModel"

    if-eqz v0, :cond_1

    .line 2036
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isAutoLampHeight()Z

    move-result v0

    .line 2037
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAutoLampHeight()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto lamp height, save currentValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAutoLampHeight(Z)V

    goto :goto_0

    .line 2041
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isAutoLampHeight()Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 2043
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAutoLampHeight(Z)V

    :cond_1
    :goto_0
    const-string v0, "isSupportLampHeight"

    .line 2049
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2050
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLampHeightLevel()I

    move-result v0

    .line 2051
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isLampHeightLevel()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2052
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lamp height level, save currentValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLampHeightLevel(I)V

    goto :goto_1

    .line 2056
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isAutoLampHeight()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2057
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLampHeightLevel()I

    move-result v3

    if-eq v3, v0, :cond_4

    .line 2059
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLampHeightLevel(I)V

    goto :goto_1

    .line 2062
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncBcmData auto lamp height, skip set level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLampHeightLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2067
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLightMeHome()Z

    move-result v0

    .line 2068
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isLightMeHome()Z

    move-result v3

    const-string v4, ", currentValue: "

    if-nez v3, :cond_5

    .line 2069
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Light me home, save currentValue: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2070
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLightMeHome(Z)V

    goto :goto_2

    .line 2072
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLightMeHome()Z

    move-result v3

    .line 2073
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Light me home, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v3, v0, :cond_6

    .line 2075
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v3, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLightMeHome(ZZ)V

    .line 2079
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLightMeHomeTime()I

    move-result v0

    .line 2080
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isLightMeHomeTime()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2081
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Light me home time, save currentValue: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8

    const/4 v5, 0x3

    if-ne v0, v5, :cond_7

    goto :goto_3

    .line 2087
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLightMeHomeTime(I)V

    goto :goto_4

    .line 2085
    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLightMeHomeTime(I)V

    goto :goto_4

    .line 2090
    :cond_9
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLightMeHomeTime()I

    move-result v3

    .line 2091
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Light me home time, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2092
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLightMeHome()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eq v3, v0, :cond_a

    .line 2093
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v3, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLightMeHomeTime(IZ)V

    .line 2108
    :cond_a
    :goto_4
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    const-string v3, "isSupportDomeLightIndependentCtrl"

    .line 2109
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2110
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDomeLightBright()I

    move-result v3

    .line 2111
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isDomeLightBright()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dome light brightness is null, save currentValue: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDomeLightBright(I)V

    goto :goto_5

    .line 2115
    :cond_b
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDomeLightBright()I

    move-result v5

    .line 2116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dome light brightness, resume saved value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2117
    invoke-interface {v0, v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->setDomeLightBrightnessRaw(I)V

    :cond_c
    :goto_5
    const-string v0, "isSupportRearLogoLight"

    .line 2121
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRearLogoLightSw()Z

    move-result v0

    .line 2123
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isRearLogoLightSw()Z

    move-result p1

    if-nez p1, :cond_d

    .line 2124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rear logo light is null, save currentValue: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2125
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setRearLogoLightSw(Z)V

    goto :goto_6

    .line 2127
    :cond_d
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRearLogoLightSw()Z

    move-result p1

    .line 2128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rear logo light, resume saved value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq p1, v0, :cond_e

    .line 2130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setRearLogoLightSw(Z)V

    :cond_e
    :goto_6
    return-void
.end method

.method private syncChassisData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1858
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAvh()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ServiceViewModel"

    if-nez v0, :cond_0

    .line 1859
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->isAvhEnabled()Z

    move-result v0

    .line 1860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AVH, save currentValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1861
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAvh(Z)V

    .line 1863
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AVH, resume saved value: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAvh()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkAvhCondition()V

    const-string v0, "isSupportAsWelcomeMode"

    .line 1866
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v3, ", currentValue: "

    if-eqz v0, :cond_2

    .line 1867
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsWelcomeMode()Z

    move-result v0

    .line 1868
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAsWelcomeMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "As welcome mode sw is null, save currentValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1870
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAsWelcomeMode(Z)V

    goto :goto_0

    .line 1872
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAsWelcomeMode()Z

    move-result v4

    .line 1873
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "As welcome mode sw, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v4, v0, :cond_2

    .line 1875
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAsWelcomeMode(Z)V

    :cond_2
    :goto_0
    const-string v0, "isSupportCdcControl"

    .line 1879
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1880
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;->getCdcMode()I

    move-result v0

    .line 1881
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isCdcMode()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1882
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDC mode is null, save currentValue: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1883
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCdcMode(I)V

    goto :goto_1

    .line 1885
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCdcMode()I

    move-result p1

    .line 1886
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDC mode, resume saved value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq p1, v0, :cond_4

    .line 1888
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;->setCdcMode(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private syncChildLockStatue(ZZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentLeftLock",
            "currentRightLock",
            "targetLeftLock",
            "targetRightLock"
        }
    .end annotation

    .line 2529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child left lock, saved left value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentLeftValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", saved right value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentRightValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    if-ne p3, p4, :cond_2

    .line 2536
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    if-eqz p3, :cond_1

    const/4 v0, 0x6

    :cond_1
    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setChildLock(I)V

    goto :goto_1

    :cond_2
    if-eq p1, p3, :cond_3

    .line 2540
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v0, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setChildLock(ZZ)V

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    if-eq p2, p4, :cond_5

    if-eqz v0, :cond_4

    .line 2545
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    new-instance p2, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$9OitIrmPtFsjJQfjnexNLjUZmgY;

    invoke-direct {p2, p0, p4}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$9OitIrmPtFsjJQfjnexNLjUZmgY;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Z)V

    const-wide/16 p3, 0x28a

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2547
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v2, p4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setChildLock(ZZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private syncHabitMirrorPosData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const-string v0, "isSupportMirrorMemory"

    .line 3630
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3632
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isMirrorPos()Z

    move-result p1

    const-string v0, "ServiceViewModel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 3633
    new-instance p1, Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/bean/Mirror;-><init>()V

    .line 3634
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftMirrorLRPos(Z)I

    move-result v3

    iput v3, p1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    .line 3635
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftMirrorUDPos(Z)I

    move-result v3

    iput v3, p1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    .line 3636
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightMirrorLRPos(Z)I

    move-result v3

    iput v3, p1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    .line 3637
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightMirrorUDPos(Z)I

    move-result v2

    iput v2, p1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    .line 3638
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/Mirror;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mirror saved position is null, save current mirror data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3640
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMirrorData(Ljava/lang/String;)V

    goto :goto_0

    .line 3643
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mirror position, resume saved value: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMirrorData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3646
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMirrorRestoreFinished()V

    move v1, v2

    .line 3648
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMirrorData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->syncAccountMirrorPos(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private syncHabitSeatPosData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3597
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkIfNeedSaveSeatPos()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3598
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mRestoreDrvSeatTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3599
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvSeatSavedPos()[I

    move-result-object v1

    .line 3600
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v1, :cond_7

    .line 3602
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isDrvDoorClose()Z

    move-result v6

    const-string v7, "shouldIgnoreDrvOccupied"

    .line 3603
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isDrvSeatOccupied()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v4

    .line 3604
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isDrvDoorClosed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isDrvSeatOccupied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isGearP: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", saved seat position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3606
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ServiceViewModel"

    .line 3604
    invoke-static {v9, v8, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v8, "isSupportDomainControllerSeatWelcome"

    .line 3607
    invoke-static {v8}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v9, :cond_3

    .line 3608
    iget-object v12, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v13, 0x1

    aget v14, v1, v5

    aget v15, v1, v4

    aget v16, v1, v11

    aget v17, v1, v10

    aget v18, v1, v3

    invoke-interface/range {v12 .. v18}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositions(IIIIII)V

    goto :goto_3

    .line 3611
    :cond_3
    iget-object v9, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    aget v20, v1, v5

    aget v21, v1, v4

    aget v22, v1, v11

    aget v23, v1, v10

    aget v24, v1, v3

    move-object/from16 v19, v9

    invoke-interface/range {v19 .. v24}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositionsToMcu(IIIII)V

    :goto_3
    if-eqz v2, :cond_7

    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    .line 3616
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatHorzPos()I

    move-result v2

    aget v5, v1, v5

    if-ne v2, v5, :cond_5

    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 3617
    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatVerPos()I

    move-result v2

    aget v4, v1, v4

    if-ne v2, v4, :cond_5

    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 3618
    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatTiltPos()I

    move-result v2

    aget v4, v1, v11

    if-ne v2, v4, :cond_5

    const-string v2, "isSupportDrvLeg"

    .line 3619
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatLegPos()I

    move-result v2

    aget v4, v1, v10

    if-ne v2, v4, :cond_5

    :cond_4
    const-string v2, "isSupportDrvCushion"

    .line 3620
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatCushionPos()I

    move-result v2

    aget v1, v1, v3

    if-eq v2, v1, :cond_7

    .line 3621
    :cond_5
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mRestoreDrvSeatTask:Ljava/lang/Runnable;

    invoke-static {v8}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-wide/16 v3, 0x1f4

    goto :goto_4

    :cond_6
    const-wide/16 v3, 0x0

    :goto_4
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method

.method private syncHabitSteerPosData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const-string v0, "isSupportControlSteer"

    .line 3654
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3655
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isSteerPos()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "ServiceViewModel"

    if-nez p1, :cond_0

    .line 3656
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSteerPos()[I

    move-result-object p1

    .line 3657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "steer pos is null, save currentValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3658
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->saveSteerPos([I)V

    goto :goto_0

    .line 3660
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSteerSavedPos()[I

    move-result-object p1

    .line 3661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "steer pos, resume saved value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_1

    .line 3663
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSteerPos()[I

    move-result-object p1

    .line 3664
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->saveSteerPos([I)V

    goto :goto_0

    .line 3666
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSteerPos([II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private syncIcmData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1931
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getXKeyForCustomer()I

    move-result v0

    .line 1932
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isWheelXKey()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, ", currentValue: "

    const-string v4, "ServiceViewModel"

    const/4 v5, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 1934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wheel X key, save currentValue: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1935
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWheelXKey(I)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "Wheel X key, currentValue is disable, save default value: 0"

    .line 1937
    invoke-static {v4, v0, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1938
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWheelXKey(I)V

    goto/16 :goto_2

    .line 1941
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWheelXKey()I

    move-result v1

    .line 1942
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wheel X key, resume saved value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v6, 0x4

    const/16 v7, 0xd

    if-ne v1, v6, :cond_2

    const-string v6, "isSupportAutoParkForXKey"

    .line 1943
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_2
    const/16 v6, 0x9

    if-ne v1, v6, :cond_4

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    :goto_0
    move v0, v5

    goto/16 :goto_1

    :cond_4
    const/16 v6, 0xa

    if-ne v1, v6, :cond_5

    const-string v6, "isSupportNra"

    .line 1955
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_5
    const/4 v6, 0x2

    if-ne v1, v6, :cond_6

    const-string v6, "isSupportXSayHi"

    .line 1961
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    const/16 v6, 0x11

    if-eq v1, v6, :cond_7

    const/16 v6, 0x12

    if-ne v1, v6, :cond_8

    :cond_7
    const-string v6, "isSupportSdc"

    .line 1963
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_8
    const/16 v6, 0xf

    if-eq v1, v6, :cond_9

    const/16 v6, 0x10

    if-ne v1, v6, :cond_a

    :cond_9
    const-string v6, "isSupportSlideDoor"

    .line 1969
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_a
    const/16 v6, 0xe

    if-eq v1, v6, :cond_b

    if-ne v1, v7, :cond_c

    :cond_b
    const-string v8, "isSupportManulChargePortFeature"

    .line 1975
    invoke-static {v8}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v2, :cond_c

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_c
    if-ne v1, v6, :cond_d

    const-string v0, "isSingleChargePort"

    .line 1981
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v7

    goto :goto_1

    :cond_d
    move v0, v1

    .line 1984
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setXKeyForCustomer(I)V

    :goto_2
    const-string v0, "isSupportDoorKeySetting"

    .line 1987
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1988
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getDoorKeyForCustomer()I

    move-result v0

    .line 1989
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isDoorBossKey()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Door boss key, save currentValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1991
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDoorBossKey(I)V

    goto :goto_4

    .line 1993
    :cond_e
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDoorBossKey()I

    move-result v1

    .line 1994
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Door boss key, resume saved value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne v1, v2, :cond_10

    const-string v2, "isShowDoorKeySpeech"

    .line 1995
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz v0, :cond_f

    move v1, v0

    goto :goto_3

    :cond_f
    move v1, v5

    :cond_10
    :goto_3
    if-eq v1, v0, :cond_11

    .line 2003
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setDoorKeyForCustomer(I)V

    .line 2007
    :cond_11
    :goto_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getDoorBossKeySw()Z

    move-result v0

    .line 2008
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isDoorBossKey()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Door boss key sw, save currentValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2010
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDoorBossKeySw(Z)V

    goto :goto_5

    .line 2012
    :cond_12
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDoorBossKeySw()Z

    move-result v1

    .line 2013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Door boss key sw, resume saved value: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_13

    .line 2015
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setDoorBossKeySw(Z)V

    .line 2021
    :cond_13
    :goto_5
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isWheelKeyProtect()Z

    move-result p1

    if-nez p1, :cond_14

    .line 2022
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getWheelKeyProtectSw()Z

    move-result p1

    .line 2023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wheel key protect is null, save currentValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2024
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWheelKeyProtect(Z)V

    goto :goto_6

    .line 2026
    :cond_14
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWheelKeyProtect()Z

    move-result p1

    .line 2027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wheel key protect, resume saved value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2028
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setWheelKeyProtectSw(Z)V

    :goto_6
    return-void
.end method

.method private syncOtherData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 2831
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncHighSpdCloseWin(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 2833
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAutoWindowLockSw()Z

    move-result v0

    .line 2834
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isLockCloseWin()Z

    move-result v1

    const-string v2, ", currentValue: "

    const-string v3, "ServiceViewModel"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 2835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lock auto close win, save currentValue: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2836
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLockCloseWin(Z)V

    goto :goto_0

    .line 2838
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLockCloseWin()Z

    move-result v1

    .line 2839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lock auto close win, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_1

    .line 2841
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAutoWindowLockSw(Z)V

    .line 2845
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getWiperSensitivity()I

    move-result v0

    .line 2846
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isWiperSensitivity()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wiper sensitivity, save currentValue: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2848
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWiperSensitivity(I)V

    goto :goto_1

    .line 2850
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWiperSensitivity()I

    move-result v1

    .line 2851
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wiper sensitivity, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_3

    .line 2853
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v5, 0x1

    invoke-interface {v0, v1, v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWiperSensitivity(IZZ)V

    :cond_3
    :goto_1
    const-string v0, "isSupportControlSteer"

    .line 2871
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2872
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isSteerPos()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2873
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSteerPos()[I

    move-result-object v0

    .line 2874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "steer pos is null, save currentValue: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2875
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->saveSteerPos([I)V

    goto :goto_2

    .line 2877
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSteerSavedPos()[I

    move-result-object v0

    .line 2878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "steer pos, resume saved value: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_5

    .line 2880
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSteerPos()[I

    move-result-object v0

    .line 2881
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->saveSteerPos([I)V

    goto :goto_2

    .line 2883
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v5, 0x2

    invoke-interface {v1, v0, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSteerPos([II)V

    :cond_6
    :goto_2
    const-string v0, "isSupportCwc"

    .line 2890
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2891
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isCwcSwEnable()Z

    move-result v0

    .line 2892
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isCwcSw()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CWC sw is null, save currentValue: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2894
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCwcSw(Z)V

    goto :goto_3

    .line 2896
    :cond_7
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCwcSw()Z

    move-result v1

    .line 2897
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CWC sw, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_8

    .line 2899
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCwcSwEnable(Z)V

    :cond_8
    :goto_3
    const-string v0, "isSupportSdc"

    .line 2905
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2907
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isSdcBrakeCloseType()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDC brake close door cfg sw is null, save default value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2909
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSdcBrakeCloseDoorCfg(I)V

    goto :goto_4

    .line 2911
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSdcBrakeCloseCfg()I

    move-result v0

    .line 2912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDC brake close door cfg, resume saved value: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2913
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSdcBrakeCloseDoorCfg(I)V

    .line 2918
    :cond_a
    :goto_4
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    .line 2919
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;->isAutoSelfCheck()Z

    move-result v1

    .line 2920
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->getmIgOnAutoCheckSw()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2921
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auto Check sw is null, save default value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2922
    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;->setAutoSelfCheck(Z)V

    goto :goto_5

    .line 2924
    :cond_b
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAutoCheckSw()Z

    move-result v1

    .line 2925
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auto Check sw, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2926
    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;->setAutoSelfCheck(Z)V

    :goto_5
    const-string v0, "isSupportChildSeatRearBeltWarning"

    .line 2929
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2930
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getSecRowLeftSeatBeltWarning()Z

    move-result v0

    .line 2931
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->getSecLeftBeltWarningFlag()Z

    move-result v1

    if-nez v1, :cond_c

    .line 2932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecRowLeft is null, save current value: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2933
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSecRowLeftSeatBeltWarning(Z)V

    goto :goto_6

    .line 2935
    :cond_c
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSecRowLeftSeatBeltWarning()Z

    move-result v1

    .line 2936
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecRowLeft resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_d

    .line 2938
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setSecRowLeftSeatBeltWarning(Z)V

    .line 2942
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getSecRowMiddleSeatBeltWarning()Z

    move-result v0

    .line 2943
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->getSecMidBeltWarningFlag()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecRowMiddle is null, save current value: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2945
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSecRowMiddleSeatBeltWarning(Z)V

    goto :goto_7

    .line 2947
    :cond_e
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSecRowMiddleSeatBeltWarning()Z

    move-result v1

    .line 2948
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecRowMiddle resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_f

    .line 2950
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setSecRowMiddleSeatBeltWarning(Z)V

    .line 2954
    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getSecRowRightSeatBeltWarning()Z

    move-result v0

    .line 2955
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->getSecRightBeltWarningFlag()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecRowRight is null, save current value: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2957
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSecRowRightSeatBeltWarning(Z)V

    goto :goto_8

    .line 2959
    :cond_10
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSecRowRightSeatBeltWarning()Z

    move-result v1

    .line 2960
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecRowRight resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_11

    .line 2962
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setSecRowRightSeatBeltWarning(Z)V

    .line 2966
    :cond_11
    :goto_8
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getTrdRowLeftSeatBeltWarning()Z

    move-result v0

    .line 2967
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->getTrdLeftBeltWarningFlag()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TrdRowLeft is null, save current value: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2969
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setTrdRowLeftSeatBeltWarning(Z)V

    goto :goto_9

    .line 2971
    :cond_12
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getTrdRowLeftSeatBeltWarning()Z

    move-result v1

    .line 2972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TrdRowLeft resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_13

    .line 2974
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setTrdRowLeftSeatBeltWarning(Z)V

    .line 2978
    :cond_13
    :goto_9
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getTrdRowMiddleSeatBeltWarning()Z

    move-result v0

    .line 2979
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->getTrdMidBeltWarningFlag()Z

    move-result v1

    if-nez v1, :cond_14

    .line 2980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TrdRowMid is null, save current value: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2981
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setTrdRowMidSeatBeltWarning(Z)V

    goto :goto_a

    .line 2983
    :cond_14
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getTrdRowMidSeatBeltWarning()Z

    move-result v1

    .line 2984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TrdRowMid resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_15

    .line 2986
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setTrdRowMiddleSeatBeltWarning(Z)V

    .line 2990
    :cond_15
    :goto_a
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getTrdRowRightSeatBeltWarning()Z

    move-result v0

    .line 2991
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->getTrdRightBeltWarningFlag()Z

    move-result p1

    if-nez p1, :cond_16

    .line 2992
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrdRowRight is null, save current value: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2993
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setTrdRowRightSeatBeltWarning(Z)V

    goto :goto_b

    .line 2995
    :cond_16
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getTrdRowRightSeatBeltWarning()Z

    move-result p1

    .line 2996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TrdRowRight resume saved value: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq p1, v0, :cond_17

    .line 2998
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setTrdRowRightSeatBeltWarning(Z)V

    :cond_17
    :goto_b
    return-void
.end method

.method private syncSeatData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "isSupportMsmD"

    .line 2555
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ", currentValue: "

    const/4 v3, 0x1

    const-string v4, "ServiceViewModel"

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    .line 2556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Seat tilt moving safe :"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isDrvTiltMovingSafe()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkIfNeedSaveSeatPos()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2558
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mRestoreDrvSeatTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2559
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvSeatSavedPos()[I

    move-result-object v1

    .line 2560
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-eqz v1, :cond_7

    .line 2562
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isDrvDoorClose()Z

    move-result v8

    const-string v9, "shouldIgnoreDrvOccupied"

    .line 2563
    invoke-static {v9}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isDrvSeatOccupied()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v3

    .line 2564
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isDrvDoorClosed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isDrvSeatOccupied: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isGearP: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", saved seat position: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2566
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2564
    invoke-static {v4, v10, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v10, "isSupportDomainControllerSeatWelcome"

    .line 2567
    invoke-static {v10}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v11, :cond_3

    .line 2568
    iget-object v14, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const/4 v15, 0x1

    aget v16, v1, v5

    aget v17, v1, v3

    aget v18, v1, v13

    aget v19, v1, v12

    aget v20, v1, v7

    invoke-interface/range {v14 .. v20}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositions(IIIIII)V

    goto :goto_3

    .line 2571
    :cond_3
    iget-object v11, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    aget v22, v1, v5

    aget v23, v1, v3

    aget v24, v1, v13

    aget v25, v1, v12

    aget v26, v1, v7

    move-object/from16 v21, v11

    invoke-interface/range {v21 .. v26}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositionsToMcu(IIIII)V

    :goto_3
    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    .line 2576
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatHorzPos()I

    move-result v6

    aget v8, v1, v5

    if-ne v6, v8, :cond_5

    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 2577
    invoke-interface {v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatVerPos()I

    move-result v6

    aget v8, v1, v3

    if-ne v6, v8, :cond_5

    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 2578
    invoke-interface {v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatTiltPos()I

    move-result v6

    aget v8, v1, v13

    if-ne v6, v8, :cond_5

    const-string v6, "isSupportDrvLeg"

    .line 2579
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatLegPos()I

    move-result v6

    aget v8, v1, v12

    if-ne v6, v8, :cond_5

    :cond_4
    const-string v6, "isSupportDrvCushion"

    .line 2580
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatCushionPos()I

    move-result v6

    aget v1, v1, v7

    if-eq v6, v1, :cond_7

    .line 2581
    :cond_5
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mRestoreDrvSeatTask:Ljava/lang/Runnable;

    invoke-static {v10}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-wide/16 v7, 0x1f4

    goto :goto_4

    :cond_6
    const-wide/16 v7, 0x0

    :goto_4
    invoke-virtual {v1, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    const-string v1, "isSupportWelcomeMode"

    .line 2586
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2587
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v1

    const-class v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v1, v6}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    .line 2588
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->isWelcomeModeEnabled()Z

    move-result v6

    .line 2589
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isWelcomeMode()Z

    move-result v7

    if-nez v7, :cond_8

    .line 2590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Welcome mode, save currentValue: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2591
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v6}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWelcomeMode(Z)V

    goto :goto_5

    .line 2593
    :cond_8
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWelcomeMode()Z

    move-result v7

    .line 2594
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Welcome mode, resume saved value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v7, v6, :cond_a

    if-eqz v7, :cond_9

    .line 2596
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isExhibitionModeOn()Z

    move-result v6

    if-nez v6, :cond_a

    .line 2597
    :cond_9
    invoke-interface {v1, v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setWelcomeMode(Z)V

    :cond_a
    :goto_5
    const-string v1, "isSupportRearSeatWelcomeMode"

    .line 2606
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2607
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRearSeatWelcomeMode()Z

    move-result v1

    .line 2608
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rear seat welcome mode, resume saved value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2609
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v6, v1, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setRearSeatWelcomeMode(ZZ)V

    :cond_b
    const-string v1, "isSupportEsb"

    .line 2612
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2613
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getEsbEnable()Z

    move-result v1

    .line 2614
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isDrvSeatEsb()Z

    move-result v6

    if-nez v6, :cond_c

    .line 2615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Driver esb, save currentValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2616
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDrvSeatEsb(Z)V

    goto :goto_6

    .line 2618
    :cond_c
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvSeatEsb()Z

    move-result v6

    .line 2619
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Driver esb, resume saved value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2622
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->onFollowedVehicleLostConfigChanged(Z)V

    :cond_d
    :goto_6
    const-string v1, "isSupportRearBeltWarningSwitch"

    .line 2626
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "isSupportRsbWarningReset"

    .line 2627
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getResetRsbWarningSw()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2628
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isRsbWarning()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2629
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->isRsbWarningEnabled()Z

    move-result v1

    .line 2630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rsb is null, save currentValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2631
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setRsbWarning(Z)V

    goto :goto_7

    .line 2633
    :cond_f
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRsbWarning()Z

    move-result v1

    .line 2634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rsb, resume saved value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2635
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setBackBeltSw(Z)V

    .line 2640
    :cond_10
    :goto_7
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->updateSeatAntiFatigueSw(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    return-void
.end method

.method private syncTrunkData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const-string v0, "isSupportSensorTrunk"

    .line 2802
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2803
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isTrunkSensorEnable()Z

    move-result v0

    .line 2804
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isSensorTrunkSw()Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "ServiceViewModel"

    if-nez p1, :cond_0

    .line 2805
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor trunk sw is null, save currentValue: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2806
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSensorTrunkSw(Z)V

    goto :goto_0

    .line 2808
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSensorTrunkSw()Z

    move-result p1

    .line 2809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensor trunk sw, resume saved value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq p1, v0, :cond_1

    .line 2811
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setTrunkSensorEnable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private syncVcuData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1761
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "ServiceViewModel"

    if-eqz v0, :cond_7

    .line 1764
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isDriveMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1765
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getDriveMode()I

    move-result v0

    .line 1766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drive mode is null, save currentValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1767
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDriveMode(I)V

    .line 1770
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDriveMode()I

    .line 1771
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAntisick()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1772
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->isAntiSicknessEnabled()Z

    move-result v0

    .line 1773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Antisick sw is null, save currentValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1774
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAntiSickness(Z)V

    .line 1777
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isAntiSicknessEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    .line 1779
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAntiSickness(Z)V

    goto :goto_1

    .line 1781
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isXpedal()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 1783
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setXpedal(Z)V

    goto :goto_1

    .line 1785
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDriveMode()I

    move-result v0

    .line 1790
    :goto_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->isNewDriveXPedalModeEnabled()Z

    move-result v3

    .line 1791
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isSinglePedal()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Xpedal sw is null, save currentValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1793
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNewDriveXPedalMode(Z)V

    .line 1796
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume drive mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1798
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->resumeDriveMode(I)V

    .line 1799
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAllDriveSub()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1800
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getAllDriveSubItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAllDriveSubItem(Ljava/lang/String;)V

    .line 1802
    :cond_6
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAllDriveSubItem()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->setAllDriveSubItemByStr(Ljava/lang/String;)V

    .line 1803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncVcuData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAllDriveSubItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isLocalIgOn()Z

    move-result v4

    invoke-virtual {v3, v0, v4, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->resumeDriveModeSubItemByDataSync(IZZ)V

    goto :goto_2

    :cond_7
    const-string v0, "Not in park gear, do not sync VCU related settings"

    .line 1806
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1809
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getNGearWarningSwitchStatus()Z

    move-result v0

    .line 1810
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isNGearProtectSw()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1811
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "N gear protect sw is null, save currentValue: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1812
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNGearWarningSwitch(Z)V

    goto :goto_3

    .line 1814
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNGearWarningSwitch()Z

    move-result p1

    .line 1815
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "N gear protect, resume saved value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq p1, v0, :cond_9

    .line 1817
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setNGearWarningSwitch(Z)V

    :cond_9
    :goto_3
    return-void
.end method

.method private syncXPilotApa()Z
    .locals 6

    const-string v0, "ServiceViewModel"

    const-string v1, "syncXPilotApa"

    const/4 v2, 0x0

    .line 3232
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3234
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3235
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setAutoParkSw(Z)V

    const-string v1, "Not login,keep apa off."

    .line 3236
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    .line 3240
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->shouldUpdateApaSafeExam()Z

    move-result v1

    .line 3241
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAutoParkSw()Z

    move-result v3

    .line 3242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " shouldUpdateApaSafeExam: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 3244
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->updateApaSafeExamResult()V

    .line 3245
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAutoParkSw(Z)V

    .line 3248
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getApaSafeExamResult()Z

    move-result v1

    const-string v5, "isSupportXPilotSafeExam"

    .line 3249
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v1, "International version, examResult = true"

    .line 3250
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v4, v1

    .line 3253
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current APA exam result="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", autoPark="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    and-int v0, v3, v4

    .line 3255
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setAutoParkSw(Z)V

    return v0
.end method

.method private declared-synchronized syncXPilotData()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ServiceViewModel"

    const-string v1, "syncXPilotData start"

    const/4 v2, 0x0

    .line 3131
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "ServiceViewModel"

    const-string v1, "Gear level is NOT P, return!!!"

    .line 3133
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3134
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "isSupportXPilotSafeExam"

    .line 3138
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 3139
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    .line 3140
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->isLocalExamResultAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ServiceViewModel"

    const-string v1, "localExamResultAvailable is false!!!"

    .line 3141
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3142
    monitor-exit p0

    return-void

    .line 3144
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->resumeOrDataSyncMemExamResult(Z)V

    .line 3145
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->resumeOrDataSyncLccExamResult(Z)V

    .line 3147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-nez v0, :cond_2

    const-string v0, "ServiceViewModel"

    const-string v1, "User account data has not synced."

    .line 3148
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3149
    monitor-exit p0

    return-void

    .line 3152
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncXPilotSafetyData()V

    .line 3153
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncXPilotParkingData()V

    .line 3154
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncXPilotDrivingData()V

    .line 3155
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->resumeOrSyncNraState()V

    .line 3156
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->resumeOrSyncUserExperiencePlanState()V

    .line 3159
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3160
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setOverseasLkaMode(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3162
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized syncXPilotDrivingData()V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "ServiceViewModel"

    const-string v1, "syncXPilotDrivingData"

    const/4 v2, 0x0

    .line 3436
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3438
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3439
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpActivateModeSw()Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const-string v1, "ServiceViewModel"

    .line 3440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current activatemode sync value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    .line 3442
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpActivateModeEnable(Z)V

    goto :goto_1

    .line 3444
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpActivateModeState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpActivateModeSw(Z)V

    .line 3448
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncXPilotLcc()Z

    move-result v0

    const-string v1, "isSupportCNgp"

    .line 3450
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    .line 3451
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getTrafficLightSw()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    const-string v4, "ServiceViewModel"

    .line 3452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current trafficLight sync value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_5

    .line 3454
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setLccTrafficLightSw(Z)V

    goto :goto_5

    .line 3456
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getLccTrafficLightSw()I

    move-result v4

    if-ne v4, v3, :cond_6

    move v4, v3

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setTrafficLightSw(Z)V

    .line 3459
    :goto_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-nez v1, :cond_8

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCrossBarrierSw()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    :cond_8
    :goto_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    const-string v1, "ServiceViewModel"

    .line 3460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current crossBarrier sync value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_9

    .line 3462
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setLccCrossBarriersSw(Z)V

    goto :goto_9

    .line 3464
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getLccCrossBarriersSw()I

    move-result v1

    if-ne v1, v3, :cond_a

    move v1, v3

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCrossBarrierSw(Z)V

    .line 3469
    :cond_b
    :goto_9
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncXPilotNgp()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    .line 3470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current ngp sync value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_25

    const-string v1, "isSupportNgpAfl"

    .line 3472
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3473
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpAflFunctionVisibility()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3474
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_a

    :cond_c
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpAflState()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_b

    :cond_d
    :goto_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_b
    const-string v4, "ServiceViewModel"

    .line 3475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current afl sync value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_e

    .line 3477
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpAflEnable(Z)V

    goto :goto_d

    .line 3479
    :cond_e
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpAflState()I

    move-result v4

    if-ne v4, v3, :cond_f

    move v4, v3

    goto :goto_c

    :cond_f
    move v4, v2

    :goto_c
    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpAflEnable(Z)V

    goto :goto_d

    .line 3482
    :cond_10
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpAflEnable(Z)V

    :cond_11
    :goto_d
    const-string v1, "isSupportNgpAfl"

    .line 3487
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3489
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpNewAflState()Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "ServiceViewModel"

    .line 3490
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current newAfl sync value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_12

    .line 3492
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpNewAflEnable(Z)V

    goto :goto_e

    .line 3494
    :cond_12
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpNewAflState()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpNewAflEnable(Z)V

    .line 3498
    :cond_13
    :goto_e
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_f

    :cond_14
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpVoiceChangeLaneSw()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_10

    :cond_15
    :goto_f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_10
    const-string v4, "ServiceViewModel"

    .line 3499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current voiceChangeLane sync value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_16

    .line 3501
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpVoiceChangeLane(Z)V

    goto :goto_12

    .line 3503
    :cond_16
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpVoiceChangeLane()I

    move-result v4

    if-ne v4, v3, :cond_17

    move v4, v3

    goto :goto_11

    :cond_17
    move v4, v2

    :goto_11
    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpVoiceChangeLaneSw(Z)V

    :goto_12
    const-string v1, "isSupportCNgp"

    .line 3506
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3507
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_13

    :cond_18
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpFngpSw()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_14

    :cond_19
    :goto_13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_14
    const-string v4, "ServiceViewModel"

    .line 3508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current fngp sync value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_1b

    .line 3510
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getFreeNgpSafeExamResult()Z

    move-result v4

    const-string v5, "isSupportXPilotSafeExam"

    .line 3511
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v4, "ServiceViewModel"

    const-string v5, "International version, fngpExamResult = true"

    .line 3512
    invoke-static {v4, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v4, v3

    :cond_1a
    const-string v5, "ServiceViewModel"

    .line 3515
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Free-NGP value,fngpExamResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "fngpSw: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3516
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3517
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpFreeNgpEnable(Z)V

    goto :goto_15

    .line 3519
    :cond_1b
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpFreeNgpState()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpFngpSw(Z)V

    :cond_1c
    :goto_15
    const/4 v1, -0x1

    .line 3523
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const-string v1, "isSupportCNgp"

    .line 3524
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3525
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpTipsMode()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_17

    .line 3527
    :cond_1d
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_16

    .line 3530
    :cond_1e
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpTipsMode()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_17

    .line 3528
    :cond_1f
    :goto_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_17
    const-string v4, "ServiceViewModel"

    .line 3533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current tipsMode sync value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_20

    .line 3535
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpTipsMode(I)V

    goto :goto_18

    .line 3537
    :cond_20
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpTipsMode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpTipsMode(I)V

    .line 3540
    :goto_18
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_19

    :cond_21
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpTruckOffsetSw()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1a

    :cond_22
    :goto_19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1a
    const-string v1, "ServiceViewModel"

    .line 3541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current truckoffset sync value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_23

    .line 3543
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpTruckOffsetSw(Z)V

    goto :goto_1c

    .line 3545
    :cond_23
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpTruckOffsetSw()I

    move-result v1

    if-ne v1, v3, :cond_24

    goto :goto_1b

    :cond_24
    move v3, v2

    :goto_1b
    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpTruckOffsetSw(Z)V

    .line 3548
    :cond_25
    :goto_1c
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpOvertakeMode()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    .line 3549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current overtakeMode sync value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_26

    .line 3551
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpOvertakeMode(I)V

    goto :goto_1d

    .line 3553
    :cond_26
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpOvertakeMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpOvertakeMode(I)V

    .line 3556
    :goto_1d
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSpeedMode()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    .line 3557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current speedMode sync value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_27

    .line 3559
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpCustomSpeedMode(I)V

    goto :goto_1e

    .line 3561
    :cond_27
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpCustomSpeedMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSpeedMode(I)V

    .line 3564
    :goto_1e
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSpeedPercent()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    .line 3565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current speedPercent sync value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_28

    .line 3567
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpCustomSpeedPercent(I)V

    goto :goto_1f

    .line 3569
    :cond_28
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpCustomSpeedPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSpeedPercent(I)V

    .line 3572
    :goto_1f
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSpeedKph()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    .line 3573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current speedKph sync value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_29

    .line 3575
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpCustomSpeedKph(I)V

    goto :goto_20

    .line 3577
    :cond_29
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpCustomSpeedKph()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSpeedKph(I)V

    .line 3579
    :goto_20
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpPreferLaneCfg()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    .line 3580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current custompreferen sync value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2a

    .line 3582
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpPreferLaneCfg(I)V

    goto :goto_21

    .line 3584
    :cond_2a
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpPreferLaneCfg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpPreferLaneCfg(I)V

    .line 3587
    :goto_21
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpRemindMode()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    .line 3588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current remindMode sync value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2b

    .line 3590
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpRemindMode(I)V

    goto :goto_22

    .line 3592
    :cond_2b
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpRemindMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpRemindMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3594
    :goto_22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private syncXPilotLcc()Z
    .locals 7

    const-string v0, "ServiceViewModel"

    const-string v1, "syncXPilotLcc"

    const/4 v2, 0x0

    .line 3343
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3345
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "User  not login."

    .line 3346
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLccState(Z)V

    .line 3349
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setAlcState(Z)V

    return v2

    .line 3353
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLccSw()Z

    move-result v1

    .line 3354
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAlcSw()Z

    move-result v3

    .line 3355
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->shouldUpdateLccSafeExam()Z

    move-result v4

    .line 3356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to update lcc exam result ?, shouldUpdateLccSafeExam: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lccState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 3360
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->updateLccSafeExamResult()V

    .line 3361
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLccSw(Z)V

    :cond_1
    const-string v4, "isSupportCNgp"

    .line 3364
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "isSupportLidarSafeExam"

    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 3365
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperLccSafeExamResult()Z

    move-result v4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 3366
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperLccSafeExamResult()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLccSafeExamResult()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v5

    :goto_1
    const-string v6, "isSupportXPilotSafeExam"

    .line 3367
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v4, "International version, examResult = true"

    .line 3368
    invoke-static {v0, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    move v5, v4

    .line 3371
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current LCC exam result="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", lccEnable="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    and-int v0, v1, v5

    .line 3373
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLccState(Z)V

    and-int v1, v3, v0

    .line 3376
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setAlcState(Z)V

    return v0
.end method

.method private syncXPilotNgp()Ljava/lang/Boolean;
    .locals 9

    const-string v0, "ServiceViewModel"

    const-string v1, "syncXPilotNgp"

    const/4 v2, 0x0

    .line 3381
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3383
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Current not login, do not resume XPilot NGP sw"

    .line 3384
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3385
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpEnable(Z)V

    .line 3386
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 3389
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getXpuXpilotState()I

    move-result v1

    .line 3390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current xpilot st="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 3426
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSw(Z)V

    goto :goto_0

    .line 3394
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpState()I

    move-result v1

    .line 3395
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current XPU NGP state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne v1, v3, :cond_3

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const-string v1, "isSupportRelatedSwitchV5"

    .line 3401
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "isSupportCNgp"

    .line 3402
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpWithLidarSafeExamResultV2()Z

    move-result v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSafeExamResultV2()Z

    move-result v1

    goto :goto_1

    .line 3404
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSafeExamResult()Z

    move-result v1

    :goto_1
    const-string v3, "isSupportXPilotSafeExam"

    .line 3406
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v1, "International version, ngpExamResult = true"

    .line 3407
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v4

    .line 3410
    :cond_6
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLccSw()Z

    move-result v3

    .line 3411
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAlcSw()Z

    move-result v5

    .line 3412
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSw()Z

    move-result v6

    .line 3414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current NGP exam result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", LccSw="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AlcSw="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", NgpSw="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    move v4, v2

    .line 3417
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XPilot NGP Sw, resume saved value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3419
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpEnable(Z)V

    .line 3420
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized syncXPilotParkingData()V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "ServiceViewModel"

    const-string v1, "syncXPilotParkingData"

    const/4 v2, 0x0

    .line 3318
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3320
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncXPilotApa()Z

    move-result v0

    .line 3321
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncXPilotVpa()Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "ServiceViewModel"

    .line 3322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current vpa sync value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 3324
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getEnhancedParkSw()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    const-string v4, "ServiceViewModel"

    .line 3325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current enhancedPark sync value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_2

    .line 3327
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v4, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setPhoneParkSw(Z)V

    goto :goto_3

    .line 3329
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getPhoneParkSw()I

    move-result v4

    if-ne v4, v3, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setEnhancedParkSw(Z)V

    .line 3333
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getKeyParkSw()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    :cond_6
    :goto_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    const-string v1, "ServiceViewModel"

    .line 3334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current keyPark sync value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_7

    .line 3336
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setKeyParkSw(Z)V

    goto :goto_6

    .line 3338
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getKeyParkSw()I

    move-result v1

    if-ne v1, v3, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setKeyParkSw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3340
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized syncXPilotSafetyData()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "ServiceViewModel"

    const-string v1, "syncXPilotSafetyData"

    const/4 v2, 0x0

    .line 3165
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3167
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ServiceViewModel"

    const-string v1, "syncXPilotSafetyData isGuest return!!!"

    .line 3168
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3169
    monitor-exit p0

    return-void

    .line 3172
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLdwSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    .line 3173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current ldw sync value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3175
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLdwState(Z)V

    goto :goto_1

    .line 3177
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getLdwState()I

    move-result v3

    if-ne v3, v1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLdwSw(Z)V

    :goto_1
    const-string v0, "isSupportBsd"

    .line 3180
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3181
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getBsdSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "ServiceViewModel"

    .line 3182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current bsd sync value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_3

    .line 3184
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setBsdState(Z)V

    goto :goto_3

    .line 3186
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getBsdState()I

    move-result v3

    if-ne v3, v1, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setBsdSw(Z)V

    :cond_5
    :goto_3
    const-string v0, "isSupportDow"

    .line 3190
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3191
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDowSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "ServiceViewModel"

    .line 3192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current dow sync value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_6

    .line 3194
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDowSw(ZZ)V

    goto :goto_5

    .line 3196
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDowState()I

    move-result v3

    if-ne v3, v1, :cond_7

    move v3, v1

    goto :goto_4

    :cond_7
    move v3, v2

    :goto_4
    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDowSw(Z)V

    :cond_8
    :goto_5
    const-string v0, "isSupportRcw"

    .line 3200
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRcwSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "ServiceViewModel"

    .line 3202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current rcw sync value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_9

    .line 3204
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setRcwState(Z)V

    goto :goto_7

    .line 3206
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getRcwState()I

    move-result v3

    if-ne v3, v1, :cond_a

    move v3, v1

    goto :goto_6

    :cond_a
    move v3, v2

    :goto_6
    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setRcwSw(Z)V

    :cond_b
    :goto_7
    const-string v0, "isSupportRcta"

    .line 3210
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3211
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRctaSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "ServiceViewModel"

    .line 3212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current rcta sync value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_c

    .line 3214
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setRctaState(Z)V

    goto :goto_9

    .line 3216
    :cond_c
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getRctaState()I

    move-result v3

    if-ne v3, v1, :cond_d

    goto :goto_8

    :cond_d
    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setRctaSw(Z)V

    :cond_e
    :goto_9
    const-string v0, "isSupportSimpleSas"

    .line 3220
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3221
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSasState()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    .line 3222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current sas sync value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_f

    .line 3224
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setSimpleSasSw(I)V

    goto :goto_a

    .line 3226
    :cond_f
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getSimpleSasSw()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSasState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3229
    :cond_10
    :goto_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private syncXPilotVpa()Ljava/lang/Boolean;
    .locals 8

    const-string v0, "ServiceViewModel"

    const-string v1, "syncXPilotVpa"

    const/4 v2, 0x0

    .line 3260
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3262
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Current not login, do not resume XPilot MemPark sw"

    .line 3263
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3264
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemoryParkSw(Z)V

    .line 3265
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 3268
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getXpuXpilotState()I

    move-result v1

    .line 3269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current xpilot st="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 3308
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMemParkSw(Z)V

    goto :goto_0

    .line 3273
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getMemoryParkSw()I

    move-result v1

    .line 3274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current XPU MemPark state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne v1, v3, :cond_3

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const-string v1, "isSupportRelatedSwitchV5"

    .line 3280
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3281
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMemParkSafeExamResultV2()Z

    move-result v1

    goto :goto_2

    :cond_4
    const-string v1, "isSupportCNgp"

    .line 3283
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "isSupportLidarSafeExam"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3284
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperVpaSafeExamResult()Z

    move-result v1

    goto :goto_2

    .line 3286
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMemParkSafeExamResult()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSuperVpaSafeExamResult()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    :goto_1
    move v1, v4

    :goto_2
    const-string v3, "isSupportXPilotSafeExam"

    .line 3289
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v1, "International version, memParkExamResult = true"

    .line 3290
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v4

    .line 3293
    :cond_8
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAutoParkSw()Z

    move-result v3

    .line 3294
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMemParkSw()Z

    move-result v5

    .line 3295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current MemPark exam result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", AutoParkSw="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", MemParkSw="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_9

    if-eqz v3, :cond_9

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    move v4, v2

    .line 3298
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XPilot Mem Park Sw, resume saved value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3300
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemoryParkSw(Z)V

    .line 3301
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private tryRestoreEcuIfFactoryReset()V
    .locals 5

    .line 3754
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "factory_reset_for_carcontrol"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RestoreEcuIfFactoryReset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceViewModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3757
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3758
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleFactoryReset()V

    .line 3759
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "factory_reset"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3761
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setUseAiPowerGeekConfig(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "isSupportCameraAuthorize"

    .line 3764
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3765
    sget-object v0, Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;->NEW_INSTALL:Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/VersionUtils;->getInstallType()Lcom/xiaopeng/carcontrol/common/util/VersionUtils$InstallType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 3766
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_carcontrol_camera_auth_st"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 3768
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCarStatus()V
    .locals 3

    .line 502
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 506
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getChargeStatus()I

    move-result v1

    const-string v2, "charge_status"

    .line 505
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 507
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 508
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getAvailableMileage()I

    move-result v1

    const-string v2, "available_distance"

    .line 507
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 509
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getElecPercent()I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    const-string v2, "battery_percent"

    .line 512
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 515
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveModeByUser()I

    move-result v1

    const-string v2, "drive_mode"

    .line 514
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isCentralLocked()Z

    move-result v1

    const-string v2, "central_lock"

    .line 518
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 521
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isDrvSeatOccupied()Z

    move-result v1

    const-string v2, "drv_occupied"

    .line 520
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 523
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isPsnSeatOccupied()Z

    move-result v1

    const-string v2, "psn_occupied"

    .line 522
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private updateEnterPGear()V
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->closeSdsEnterPGear()V

    return-void
.end method


# virtual methods
.method protected checkBonnetOpened(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4151
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrentBonnetClosed:Z

    if-eqz v1, :cond_0

    .line 4153
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 4154
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBonnetTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4155
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBonnetTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 4158
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrentBonnetClosed:Z

    if-nez v1, :cond_1

    const-string v1, "ServiceViewModel"

    const-string v2, "Bonnet closed, remove check task"

    .line 4159
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4161
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->stop()V

    .line 4162
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 4163
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBonnetTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 4166
    :cond_2
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrentBonnetClosed:Z

    return-void
.end method

.method protected checkBrakeFluid(F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    .line 4134
    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLastSpd:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_2

    .line 4135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkBrakeFluid: current spd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last spd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLastSpd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4139
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getBrakeFluidLevelWarningMessage()I

    move-result v4

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 4141
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRawCarSpeedChanged checkBrakeFluid: isIgOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isBrakeFluidLow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 4144
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->showEpbDialog()V

    .line 4147
    :cond_2
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLastSpd:F

    return-void
.end method

.method protected checkBrkPedalStatus(I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 4170
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreBrkPedalStatus:I

    const-wide/16 v1, 0x3e8

    const-string v3, "ServiceViewModel"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    if-ne p1, v5, :cond_1

    .line 4172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bcm break pedal change to active, current unlock req src: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrUnlockReqRes:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4173
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrUnlockReqRes:I

    if-eq v0, v5, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 4188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 4189
    iput-boolean v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHasCheckReadyDisableTask:Z

    .line 4190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBrkPedalStartTime:J

    .line 4191
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckReadyDisableTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4178
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 4179
    iput-boolean v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHasCheckReadyDisableTask:Z

    .line 4180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBrkPedalStartTime:J

    .line 4181
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckReadyDisableTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4195
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreBrkPedalStatus:I

    if-ne v0, v5, :cond_2

    if-eq p1, v5, :cond_2

    .line 4197
    iget-wide v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBrkPedalStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v9, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBrkPedalStartTime:J

    sub-long/2addr v5, v9

    cmp-long v0, v5, v1

    if-gez v0, :cond_2

    const-string v0, "Bcm break pedal change to de-active within 1000ms, stop check BcmReadyEnable"

    .line 4198
    invoke-static {v3, v0, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4199
    iput-wide v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBrkPedalStartTime:J

    .line 4200
    iput-boolean v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHasCheckReadyDisableTask:Z

    .line 4201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckReadyDisableTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4204
    :cond_2
    :goto_0
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreBrkPedalStatus:I

    return-void
.end method

.method protected checkDoorBossKeySw()V
    .locals 5

    const-string v0, "ServiceViewModel"

    const-string v1, "isSupportBossKey"

    .line 527
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->getDoorBossKeySw()Z

    move-result v1

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDoorBossKeySw current sw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 531
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBossKeyListener:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;

    .line 532
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 531
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/input/InputManager;->registerListener(Lcom/xiaopeng/IXPKeyListener;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 534
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected checkPsnWelcomeModeGoOff()V
    .locals 10

    const-string v0, "isSupportCduWelcomeOff"

    .line 3930
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Cdu do not handle welcome mode go off"

    .line 3931
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 3935
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnSeatWelcomeMode()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PSN welcome mode off, do not handle welcome go off"

    .line 3936
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 3940
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    const-string v3, "meditation_mode"

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    goto/16 :goto_2

    .line 3947
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    const-string v5, "5d_cinema_mode"

    invoke-interface {v0, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_7

    if-ne v0, v4, :cond_3

    goto/16 :goto_1

    .line 3954
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isPsnHeadrestNormal()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Psn headrest is moved, do not handle welcome go off"

    .line 3955
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 3959
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    .line 3960
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v4

    .line 3961
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isPsnSeatOccupied()Z

    move-result v5

    .line 3962
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isPsnDoorOpened()Z

    move-result v6

    .line 3963
    iget-object v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v7}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnBeltStatus()I

    move-result v7

    .line 3964
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkPsnWelcomeModeGoOff currentGear="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", speed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", psnState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", doorState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", seatBeltState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_6

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    if-ne v7, v3, :cond_6

    .line 3969
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->calculatePsnWelcomeModeGoOffPosition()I

    move-result v0

    if-ltz v0, :cond_6

    const-string v1, "isSupportPsnLeg"

    .line 3971
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3973
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatVerPos()I

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 3974
    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPSeatTiltPos()I

    move-result v5

    .line 3973
    invoke-interface {v1, v0, v4, v5, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnAllPositions(IIII)V

    goto :goto_0

    .line 3976
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPSeatHorzPos(I)V

    .line 3980
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnWelcomeModeActiveSt(Z)V

    return-void

    :cond_7
    :goto_1
    const-string v0, "Under SCENARIO_5D_CINEMA_MODE, do not PSN handle welcome go off"

    .line 3950
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_8
    :goto_2
    const-string v0, "Under meditation mode, do not handle PSN welcome go off"

    .line 3943
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected checkPsnWelcomeModeGoOn()V
    .locals 0

    return-void
.end method

.method protected checkWelcomeModeGoOff()V
    .locals 14

    const-string v0, "isSupportControlSteer"

    .line 3834
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3835
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSteerVerPos(I)V

    :cond_0
    const-string v0, "isSupportCduWelcomeOff"

    .line 3838
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "ServiceViewModel"

    if-nez v0, :cond_1

    const-string v0, "Cdu do not handle welcome mode go off"

    .line 3839
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 3843
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getSeatWelcomeMode()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Welcome mode off, do not handle welcome go off"

    .line 3845
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 3849
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    const-string v3, "meditation_mode"

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto/16 :goto_2

    .line 3855
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    const-string v5, "5d_cinema_mode"

    invoke-interface {v0, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_8

    if-ne v0, v4, :cond_4

    goto/16 :goto_1

    .line 3862
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isDrvHeadrestNormal()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Drv headrest is moved, do not handle welcome go off"

    .line 3863
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 3867
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    .line 3868
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v4

    .line 3869
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isDrvSeatOccupied()Z

    move-result v5

    .line 3870
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isDrvDoorOpened()Z

    move-result v6

    .line 3871
    iget-object v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v7}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvBeltStatus()I

    move-result v7

    .line 3872
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkWelcomeModeGoOff currentGear="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", speed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", driverState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", doorState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", seatBeltState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_7

    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    if-ne v7, v3, :cond_7

    .line 3880
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->calculateWelcomeModeGoOffPosition()I

    move-result v9

    if-ltz v9, :cond_7

    const-string v0, "isSupportDrvCushion"

    .line 3882
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3884
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v8}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatVerPos()I

    move-result v10

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    .line 3885
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatTiltPos()I

    move-result v11

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatLegPos()I

    move-result v12

    const/4 v13, 0x0

    .line 3884
    invoke-interface/range {v8 .. v13}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverAllPositions(IIIII)V

    goto :goto_0

    .line 3887
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, v9}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatHorzPos(I)V

    .line 3891
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDrvWelcomeModeActiveSt(Z)V

    return-void

    :cond_8
    :goto_1
    const-string v0, "Under SCENARIO_5D_CINEMA_MODE, do not handle welcome go off"

    .line 3858
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_9
    :goto_2
    const-string v0, "Under meditation mode, do not handle welcome go off"

    .line 3852
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected checkWelcomeModeGoOn()V
    .locals 8

    const-string v0, "isSupportSdc"

    .line 4006
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4007
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleSeatBackWhenSdcDoorClosed()V

    .line 4009
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWelcomeMode()Z

    move-result v0

    .line 4010
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    .line 4011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNeedUpdateDrvSeat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mNeedUpdateDrvSeat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mDataSync.getWelcomeMode(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mDataSync.isGuest():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceViewModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4012
    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mNeedUpdateDrvSeat:Z

    if-eqz v2, :cond_9

    if-nez v0, :cond_9

    if-nez v1, :cond_9

    .line 4013
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkLogin()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4014
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentAccountInfo()Landroid/accounts/Account;

    move-result-object v0

    .line 4015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLogin currentAccountInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old account info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAccountInfo:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4016
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAccountInfo:Landroid/accounts/Account;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Account did not Change and No Need to Resume"

    .line 4040
    invoke-static {v3, v0, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 4017
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isDrvSeatSavedPosEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4018
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvSeatSavedPos()[I

    move-result-object v0

    .line 4019
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v1

    const/4 v2, 0x4

    const/4 v5, 0x1

    if-ne v1, v2, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v4

    .line 4020
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isDrvDoorClose()Z

    move-result v2

    const-string v6, "shouldIgnoreDrvOccupied"

    .line 4021
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isDrvSeatOccupied()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v5, v4

    .line 4022
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore Seat Position when Account Changed: isDrvDoorClosed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", isDrvSeatOccupied: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", isGearP: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", saved seat position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4024
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4022
    invoke-static {v3, v0, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4025
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->restoreSeat()V

    :cond_6
    const-string v0, "isSupportControlSteer"

    .line 4027
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4028
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSteerData(Z)[I

    move-result-object v0

    .line 4029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "steer pos, resume saved value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_7

    .line 4032
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSteerPos()[I

    move-result-object v0

    .line 4033
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->saveSteerPos([I)V

    goto :goto_3

    .line 4035
    :cond_7
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSteerPos([II)V

    .line 4038
    :cond_8
    :goto_3
    iput-boolean v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mNeedUpdateDrvSeat:Z

    goto :goto_4

    :cond_9
    const-string v0, "checkWelcomeModeGoOn isGuest"

    .line 4044
    invoke-static {v3, v0, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a
    :goto_4
    return-void
.end method

.method public dismissEpbDialog()V
    .locals 3

    const-string v0, "ServiceViewModel"

    const-string v1, "dismissEpbDialog"

    const/4 v2, 0x0

    .line 4818
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4819
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsEpbDialogShow:Z

    return-void
.end method

.method dismissMicrophoneDialog()V
    .locals 2

    const-string v0, "isSupportNapa"

    .line 4322
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4323
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mUnityDismissDialogData:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "speech_mute_dialog"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 4324
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mUnityDismissDialogData:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "speech_unmute_dialog"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 4326
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImplSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    if-eqz v0, :cond_1

    .line 4328
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;->dismissAllDialogs()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dismissReadyDisableDialog(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dismissFromNapa"
        }
    .end annotation

    const-string p1, "ServiceViewModel"

    const-string v0, "dismissReadyDisableDialog: mIsReadyDisableDialogShow="

    const/4 v1, 0x0

    .line 4312
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4313
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHasCheckReadyDisableTask:Z

    const-wide/16 v0, 0x0

    .line 4314
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBrkPedalStartTime:J

    .line 4315
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    .line 4316
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    .line 4317
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckReadyDisableTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4318
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAutoDismissDialogTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCarSpeed()F
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v0

    return v0
.end method

.method public getDriveMode()I
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v0

    return v0
.end method

.method public getShowParkDropDownData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPGearDropDownShowData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getShowSmartControlElementData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mShowSmartControlElementData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getShowSmartControlPanelData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mShowSmartControlPanelData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getShowSmartControlSceneData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mShowSmartControlSceneData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getUnityDismissDialogData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mUnityDismissDialogData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getUnityShowDialogData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mUnityShowDialogData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public handleEmergencyIgOff()V
    .locals 1

    .line 1093
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->handleEmergencyIgOff()V

    return-void
.end method

.method protected handleEspFaultChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation

    return-void
.end method

.method handleFactoryReset()V
    .locals 3

    const-string v0, "ServiceViewModel"

    const-string v1, "Move Seat/Rear Mirror/Steer/AS to Target Default Pos"

    const/4 v2, 0x0

    .line 3776
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3777
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->handleCarControlFactoryRestore()V

    return-void
.end method

.method protected handlePGearMenu(I)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gear"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "isSupportSecRowZeroGravity"

    .line 5148
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreviousGear:I

    if-eqz v2, :cond_4

    if-ne v2, v3, :cond_4

    if-eq v1, v3, :cond_4

    .line 5152
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getSecRowLTFuctionStatus()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 5153
    :goto_0
    iget-object v6, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getSecRowRTFuctionStatus()I

    move-result v6

    if-ne v6, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 5154
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePGearMenu: RlSeatInZero = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  RrSeatInZero = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ServiceViewModel"

    invoke-static {v7, v6, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    .line 5156
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v8

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v11, 0x7

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-string/jumbo v10, "xpCarControl_P_Gear"

    invoke-virtual/range {v8 .. v13}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->createGearChangeNotification(Landroid/content/Context;Ljava/lang/String;IZZ)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 5158
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v14

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const/16 v17, 0x7

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string/jumbo v16, "xpCarControl_P_Gear"

    invoke-virtual/range {v14 .. v19}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->createGearChangeNotification(Landroid/content/Context;Ljava/lang/String;IZZ)V

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    .line 5160
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v4

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string/jumbo v6, "xpCarControl_P_Gear"

    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->createGearChangeNotification(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 5166
    :cond_4
    :goto_2
    iget v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mPreviousGear:I

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_5

    if-ne v1, v3, :cond_5

    .line 5172
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleDelayShowPGearMenu()V

    .line 5173
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkTelescopeMrr()V

    goto :goto_4

    :cond_5
    if-eq v1, v3, :cond_8

    const-string v1, "isSupportPopPanel"

    .line 5175
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "isSupportPGearDropDownMenu"

    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5176
    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDelayShowPGearMenuTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5177
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "p_gear_menu"

    if-eqz v1, :cond_6

    .line 5178
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->dismiss(Ljava/lang/String;)V

    goto :goto_3

    .line 5180
    :cond_6
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/DropDownMenuManager;->dismiss(Ljava/lang/String;)V

    .line 5183
    :cond_7
    :goto_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    .line 5184
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->dismissTelescopeMrrDialog()V

    :cond_8
    :goto_4
    return-void
.end method

.method protected handleRearMirrorWhenGoOn()V
    .locals 3

    const-string v0, "isSupportMirrorMemory"

    .line 4058
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4059
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ConfigUtil;->isSopStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 4060
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isDrvSeatOccupied()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    .line 4061
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isCorrectRMirrorPosAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume rear mirror position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMirrorData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when drv door closed and drv seat occupied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ServiceViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4063
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMirrorData()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->syncAccountMirrorPos(Ljava/lang/String;Z)V

    .line 4064
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setRearMirrorPosCorrectTs(J)V

    :cond_0
    return-void
.end method

.method protected handleSeatBackWhenSdcDoorClosed()V
    .locals 11

    .line 4069
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isDrvSeatOccupied()Z

    move-result v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Do not handle seat move back when door closed and driver on seat"

    .line 4071
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4075
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    const-string v4, "meditation_mode"

    invoke-interface {v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_7

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    .line 4076
    invoke-interface {v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto/16 :goto_1

    .line 4081
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    const-string v6, "5d_cinema_mode"

    invoke-interface {v3, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_6

    if-ne v3, v4, :cond_2

    goto/16 :goto_0

    .line 4088
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isDrvHeadrestNormal()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "Drv headrest is moved, do not handle seat move back off"

    .line 4089
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4092
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getSeatWelcomeMode()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v0, "Welcome mode off, do not handle seat move back off"

    .line 4094
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4098
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v3

    .line 4099
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v6

    .line 4100
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isDrvDoorClose()Z

    move-result v7

    .line 4101
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v8}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvBeltStatus()I

    move-result v8

    .line 4102
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleSeatBackWhenSdcDoorClosed currentGear="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", speed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", driverOnSeat="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", doorState="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", seatBeltState="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x4

    if-ne v3, v0, :cond_5

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_5

    if-eqz v7, :cond_5

    if-ne v8, v5, :cond_5

    .line 4107
    invoke-direct {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->calculateWelcomeModeGoOffPosition(Z)I

    move-result v0

    .line 4108
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDSeatHorzPos()I

    move-result v3

    .line 4109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustSeatPos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", current horz pos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ltz v0, :cond_5

    if-ge v0, v3, :cond_5

    sub-int/2addr v3, v0

    .line 4111
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v4, :cond_5

    .line 4112
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDSeatHorzPos(I)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    const-string v0, "Under SCENARIO_5D_CINEMA_MODE, do not handle seat move back off"

    .line 4084
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_7
    :goto_1
    const-string v0, "Under meditation mode, do not handle seat move back off"

    .line 4077
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected handleSyncNewHabitSettings(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const-string v0, "ServiceViewModel"

    const-string v1, "Start to resume NewHabit settings"

    const/4 v2, 0x0

    .line 3747
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3748
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncHabitSeatPosData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3749
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncHabitMirrorPosData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3750
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncHabitSteerPosData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    return-void
.end method

.method handleSyncSettings(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const-string v0, "ServiceViewModel"

    const-string v1, "Start to resume account settings"

    const/4 v2, 0x0

    .line 3703
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3705
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncSeatData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3708
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncVcuData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3709
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncChassisData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3712
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncIcmData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3715
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncBcmData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3718
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncLluData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3721
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncAtlData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3724
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncLockData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3727
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncMirrorData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3730
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncTrunkData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3733
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncOtherData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3739
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncAvasData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 3741
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncAvmData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    const-string p1, "End of resume account settings"

    .line 3742
    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected handleXPilotWhenEnterParkGear()V
    .locals 10

    const-string v0, "isSupportXPilotSafeExam"

    .line 5227
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ServiceViewModel"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 5228
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    .line 5229
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->isLocalExamResultAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "localExamResultAvailable is false!!!"

    .line 5230
    invoke-static {v2, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string v1, "isSupportRelatedSwitchV5"

    .line 5235
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "isSupportCNgp"

    .line 5236
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpWithLidarSafeExamResultV2()Z

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSafeExamResultV2()Z

    move-result v4

    goto :goto_0

    .line 5238
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSafeExamResult()Z

    move-result v4

    :goto_0
    const-string v5, "isSupportNgp"

    .line 5240
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v7, "\u5207P\u6863\uff0c\u8054\u52a8\u5173\u95edngp\u5b50\u9879"

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 5241
    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v4, :cond_4

    .line 5242
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpState()I

    move-result v4

    .line 5243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Switch to Park gear, and current NGP state: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v4, v8, :cond_4

    const-string v4, "Turn off NGP by force since user logout,or user not pass exam"

    .line 5245
    invoke-static {v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5246
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpEnable(Z)V

    .line 5248
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5251
    invoke-static {v2, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5252
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpVoiceChangeLane(Z)V

    .line 5253
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpFreeNgpEnable(Z)V

    .line 5261
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isLccExamNotPass()Z

    move-result v4

    const-string v6, "isSupportLcc"

    .line 5262
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 5263
    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v4, :cond_8

    .line 5264
    :cond_5
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getLccState()I

    move-result v4

    .line 5265
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Switch to Park gear, and current LCC state: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v4, v8, :cond_8

    const-string v4, "Turn off LCC by force since user logout,or user not pass exam"

    .line 5267
    invoke-static {v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5268
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setLccState(Z)V

    .line 5269
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setAlcState(Z)V

    .line 5271
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "\u5207P\u6863\uff0c\u8054\u52a8\u5173\u95edlcc\u5b50\u9879"

    .line 5274
    invoke-static {v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5275
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setLccTrafficLightSw(Z)V

    .line 5276
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setLccCrossBarriersSw(Z)V

    .line 5279
    :cond_6
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5280
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpEnable(Z)V

    .line 5283
    :cond_7
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5286
    invoke-static {v2, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5287
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpVoiceChangeLane(Z)V

    .line 5288
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpFreeNgpEnable(Z)V

    :cond_8
    const-string v4, "isSupportMemPark"

    .line 5295
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 5296
    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isMemExamNotPass()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5297
    :cond_9
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getMemoryParkSw()I

    move-result v5

    .line 5298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Switch to Park gear, and current MemPark state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v5, v8, :cond_a

    const-string v5, "Turn off MemPark by force since user logout,or user not pass exam"

    .line 5300
    invoke-static {v2, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5301
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v5, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemoryParkSw(Z)V

    .line 5303
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "\u5207P\u6863\uff0c\u8054\u52a8\u5173\u95edapa\u5b50\u9879"

    .line 5306
    invoke-static {v2, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5307
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v5, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setPhoneParkSw(Z)V

    .line 5308
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v5, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setWogSw(Z)V

    :cond_a
    const-string v5, "isSupportAutoPark"

    .line 5314
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 5315
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getApaSafeExamResult()Z

    move-result v0

    if-nez v0, :cond_d

    .line 5316
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getAutoParkSw()I

    move-result v0

    .line 5317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switch to Park gear, and current APA state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v8, :cond_d

    const-string v0, "Turn off Apa by force since user logout"

    .line 5319
    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5320
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setAutoParkSw(Z)V

    .line 5321
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5322
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setMemoryParkSw(Z)V

    .line 5325
    :cond_c
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "\u5207P\u6863\uff0c\u8054\u52a8\u5173\u95edvpa\u5b50\u9879"

    .line 5328
    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5329
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setPhoneParkSw(Z)V

    .line 5330
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setWogSw(Z)V

    .line 5334
    :cond_d
    sget-boolean v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->PENDING_FOR_CLOSE_SMART_DRIVE_SCORE:Z

    if-eqz v0, :cond_e

    .line 5335
    sput-boolean v3, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->PENDING_FOR_CLOSE_SMART_DRIVE_SCORE:Z

    .line 5336
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->updateEnterPGear()V

    :cond_e
    return-void
.end method

.method public isCentralLocked()Z
    .locals 1

    .line 1612
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorLockState()Z

    move-result v0

    return v0
.end method

.method isDrvDoorClose()Z
    .locals 4

    .line 3789
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorsState()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3790
    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 3791
    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isDrvSeatOccupied()Z
    .locals 1

    .line 1635
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isDrvSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public isMirrorHeatEnabled()Z
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isMirrorHeatEnabled()Z

    move-result v0

    return v0
.end method

.method public isPsnSeatOccupied()Z
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->isPsnSeatOccupied()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$ServiceViewModel()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v0

    const-string v1, "getHighSpdFuncThreshold"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 232
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->handleHighSpeed()V

    :cond_0
    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsHighSpdRunnablePending:Z

    return-void
.end method

.method public synthetic lambda$new$1$ServiceViewModel()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getBonnetState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "ServiceViewModel"

    const-string v2, "Bonnet opened, play tts warning"

    .line 300
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 301
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->bonnet_opened_warning:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCheckBonnetTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$2$ServiceViewModel()V
    .locals 3

    const-string v0, "ServiceViewModel"

    const-string v1, "Delay time arrived, start to check EvReady and iBcm_ReadyEnable"

    const/4 v2, 0x0

    .line 320
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 321
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkReadyDisableStatus()V

    return-void
.end method

.method public synthetic lambda$new$3$ServiceViewModel()V
    .locals 3

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsBossKeyPressed:Z

    const-string v1, "ServiceViewModel"

    const-string v2, "handleBossKeyUp"

    .line 332
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 333
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->controlPsnSeatMoveForwardEnd()V

    return-void
.end method

.method public synthetic lambda$new$5$ServiceViewModel()V
    .locals 3

    .line 437
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isDrvDoorOpened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvDoorOpened:Z

    .line 438
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isPsnDoorOpened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnDoorOpened:Z

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getDrvBeltStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDrvSrsUnbelted:Z

    const-string v0, "isSupportPsnWelcomeMode"

    .line 440
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getPsnBeltStatus()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPsnSrsUnbelted:Z

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$6$ServiceViewModel()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$McuCallbackImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$ScuCallbackImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$XpuCallbackImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$EspCallbackImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$MsmCallbackImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvasCallbackImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 469
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mTboxCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$TboxCallbackImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 470
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mRemindController:Lcom/xiaopeng/carcontrol/carmanager/controller/IRemindController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mRemindCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$RemindCallbackImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IRemindController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDiagnosticController:Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDiagnosticCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DiagnosticCallbackImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    const-string v0, "isSupportLlu"

    .line 472
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$LluCallbackImpl;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 477
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleIgStatusChanged(I)V

    .line 480
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->updateCarStatus()V

    return-void
.end method

.method public synthetic lambda$new$8$ServiceViewModel()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getTaskCompleted()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$VjpoQGDDgXbI7MnBxCfir73tdA4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$VjpoQGDDgXbI7MnBxCfir73tdA4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic lambda$null$7$ServiceViewModel(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    const-string p1, "ServiceViewModel"

    const-string v0, "exam task completed"

    const/4 v1, 0x0

    .line 492
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 493
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncXPilotData()V

    return-void
.end method

.method public synthetic lambda$onAccountDataSynced$11$ServiceViewModel(Lcom/xiaopeng/xvs/xid/sync/api/SyncType;Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "syncType",
            "event"
        }
    .end annotation

    const-string v0, "ServiceViewModel"

    .line 1510
    :goto_0
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsInitComplete:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "Wait Resume save setting complete"

    .line 1512
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1513
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mResumeSaveSettingLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    const-string v1, "Resume save setting completed, resume pending sync process"

    .line 1514
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 1516
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1521
    :cond_0
    sget-object v0, Lcom/xiaopeng/xvs/xid/sync/api/SyncType;->ACCOUNT_CHANGED:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    if-ne p1, v0, :cond_1

    .line 1522
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    .line 1523
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;->clearRestoreState()V

    .line 1526
    :cond_1
    sget-object v0, Lcom/xiaopeng/xvs/xid/sync/api/SyncType;->ACCOUNT_CHANGED:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "isSupportSaberLight"

    .line 1527
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "isSupportClassicalFrontLightMode"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1528
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setParkLampIncludeFmB(Z)V

    .line 1531
    :cond_2
    sget-object v0, Lcom/xiaopeng/xvs/xid/sync/api/SyncType;->SYNC_GROUP_SELECTED:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    if-ne p1, v0, :cond_3

    .line 1532
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleSyncNewHabitSettings(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    goto :goto_1

    .line 1533
    :cond_3
    sget-object v0, Lcom/xiaopeng/xvs/xid/sync/api/SyncType;->SYNC_GENERAL_DATA_UPDATE:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    if-ne p1, v0, :cond_4

    .line 1534
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncXPilotData()V

    goto :goto_1

    .line 1536
    :cond_4
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleSyncSettings(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    .line 1538
    :goto_1
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mNeedUpdateDrvSeat:Z

    return-void
.end method

.method public synthetic lambda$onIgLocalOn$10$ServiceViewModel()V
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mSsDoorStateCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;->onInitSsDoor()V

    return-void
.end method

.method public synthetic lambda$resumeSaveSettings$9$ServiceViewModel()V
    .locals 3

    .line 686
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getChildRightLock()Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setChildLock(ZZZ)V

    return-void
.end method

.method public synthetic lambda$showReadyDisableDialog$13$ServiceViewModel()V
    .locals 8

    .line 4244
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPhoneBleConnected:Z

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->BleKeyInfo:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsPhoneLocationOutside:Z

    iget-boolean v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->firstShowNotReadyNotification:Z

    const-string/jumbo v2, "xpCarControl_Service"

    const/16 v3, 0x8

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->createReadyDisableNotification(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;ZZ)V

    const/4 v0, 0x0

    .line 4245
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->firstShowNotReadyNotification:Z

    return-void
.end method

.method public synthetic lambda$syncChildLockStatue$12$ServiceViewModel(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "targetRightLock"
        }
    .end annotation

    .line 2545
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setChildLock(ZZ)V

    return-void
.end method

.method public onAccountDataSynced(Lcom/xiaopeng/xvs/xid/sync/api/SyncType;Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "syncType",
            "event"
        }
    .end annotation

    .line 1497
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsLocalIgOn:Z

    if-nez v0, :cond_1

    const-string p1, "ServiceViewModel"

    const-string v0, "Car not local ig on, do not sync account settings"

    const/4 v1, 0x0

    .line 1498
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1499
    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isDataEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 1500
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDataSyncEmpty:Z

    const-string p2, "Current account has no setting saved"

    .line 1501
    invoke-static {p1, p2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1503
    :cond_0
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHasPendingUpdate:Z

    .line 1505
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkIfNeedSaveSeatPos()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mNeedUpdateDrvSeat:Z

    return-void

    .line 1509
    :cond_1
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$NSnpXNSOMuqcWQzAnh-ptNSiucM;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$NSnpXNSOMuqcWQzAnh-ptNSiucM;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/xvs/xid/sync/api/SyncType;Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onIgLocalOn()V
    .locals 5

    const-string v0, "ServiceViewModel"

    const-string v1, "Local ig on"

    const/4 v2, 0x0

    .line 1022
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    .line 1023
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->showTrdSeatRemindNotification:Z

    .line 1024
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->firstShowNotReadyNotification:Z

    .line 1025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrUnlockReqRes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrUnlockReqRes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1026
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsLocalIgOn:Z

    .line 1027
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->tryRestoreEcuIfFactoryReset()V

    .line 1028
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->resumeSaveSettings()V

    .line 1029
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkTelescopeMrr()V

    .line 1030
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsInitComplete:Z

    .line 1031
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mSsDoorStateCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    if-eqz v0, :cond_0

    const-string v0, "isSupportSdc"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$ervF7NtMx1OKr-LTAORHBP1beMA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$ervF7NtMx1OKr-LTAORHBP1beMA;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    const-wide/16 v3, 0x3e8

    invoke-static {v2, v0, v3, v4}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 1035
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setAirProtectTs(J)V

    .line 1036
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setIgonTime(J)V

    .line 1037
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setIgonNanoTime(J)V

    return-void
.end method

.method public onIgOff()V
    .locals 8

    const-string v0, "ServiceViewModel"

    const-string v1, "Ig off"

    const/4 v2, 0x0

    .line 1053
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1055
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->dismissReadyDisableDialog()V

    .line 1058
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsLocalIgOn:Z

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    const-string v1, "Ig off, reset unlock req src"

    .line 1059
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1060
    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrUnlockReqRes:I

    .line 1061
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    iget v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCurrUnlockReqRes:I

    invoke-virtual {v1, v5}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setUnlockReqSrc(I)V

    .line 1063
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setRequestCarPlateTs(J)V

    .line 1065
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsLocalIgOn:Z

    .line 1066
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsBcmReadyEnabled:Z

    .line 1069
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setRemindWarningTs(J)V

    .line 1070
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setTelescopeRemindTs(J)V

    .line 1071
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setImsModeChangeByUser(Z)V

    .line 1073
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->dismissTelescopeMrrDialog()V

    .line 1075
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mResumeSaveSettingLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-nez v1, :cond_2

    .line 1076
    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mResumeSaveSettingLock:Ljava/util/concurrent/CountDownLatch;

    .line 1078
    :cond_2
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsInitComplete:Z

    .line 1080
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->dismissMicrophoneDialog()V

    .line 1081
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkLogin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1082
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentAccountInfo()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAccountInfo:Landroid/accounts/Account;

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIgOff account info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAccountInfo:Landroid/accounts/Account;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v1, "onIgOff do not login"

    .line 1085
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 1086
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAccountInfo:Landroid/accounts/Account;

    :goto_0
    return-void
.end method

.method public onIgRemoteOn()V
    .locals 3

    const-string v0, "ServiceViewModel"

    const-string v1, "Remote ig on"

    const/4 v2, 0x0

    .line 1042
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1044
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsLocalIgOn:Z

    const-string v0, "isSupportFollowMeHomeWhenRemoteInOn"

    .line 1046
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v2, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLightMeHome(ZZ)V

    :cond_0
    return-void
.end method

.method public onShowDialog(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogScene"
        }
    .end annotation

    const-string v0, "isSupportNapa"

    .line 1708
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mUnityShowDialogData:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    .line 1709
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onShowSmartControlPanel(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 1715
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mShowSmartControlPanelData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onShowSmartControlPanel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mainPage",
            "subPage"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 1721
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mShowSmartControlSceneData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onShowSmartControlPanel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mainPage",
            "subPage",
            "element"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 1727
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mShowSmartControlElementData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public requestCarLicensePlate()V
    .locals 3

    .line 1655
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCarInfoController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;

    if-eqz v0, :cond_0

    .line 1656
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;->requestCarLicensePlate()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "ServiceViewModel"

    const-string v2, "requestCarLicensePlate failed, mCarInfoController is null"

    .line 1658
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method resumeChassisModule()V
    .locals 3

    const-string v0, "isSupportHdc"

    .line 1176
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setHdc(Z)V

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkAvhCondition()V

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkEspCondition()V

    const-string v0, "isSupportAirSuspension"

    .line 1185
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAsWelcomeMode()Z

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAsWelcomeMode(ZZ)V

    .line 1189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setEasyLoadingSwitch(Z)V

    .line 1190
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAutoEasyLoadStatus()Z

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setAutoEasyLoadMode(ZZ)V

    .line 1192
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAsLocationControlSw()Z

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAsLocationControlSw(ZZ)V

    :cond_2
    const-string v0, "isSupportTrailerMode"

    .line 1195
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setTrailerMode(Z)V

    .line 1197
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setTransportMode(Z)V

    :cond_3
    const-string v0, "isSupportTrailerHook"

    .line 1200
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getTrailerHitchStatus()Z

    move-result v0

    .line 1203
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setTrailerModeStatus(ZZ)V

    .line 1204
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEspTsmSwitchStatus(Z)V

    .line 1205
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAsTrailerModeSwitchStatus(Z)V

    :cond_4
    const-string v0, "isSupportCdcControl"

    .line 1207
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v0, :cond_5

    .line 1208
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mCdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCdcMode()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;->setCdcMode(IZ)V

    :cond_5
    const-string v0, "isSupportEspCst"

    .line 1211
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1213
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getEspCstSw()Z

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEspCstSw(ZZ)V

    :cond_6
    return-void
.end method

.method protected resumeOrDataSyncLccExamResult(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isResume"
        }
    .end annotation

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeOrDataSyncLccExamResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceViewModel"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "isSupportLidarSafeExam"

    .line 1321
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Not support Lidar safe exam, no resume super vpa"

    .line 1322
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string p1, "isSupportCNgp"

    .line 1325
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Not support Lidar, no resume super lcc"

    .line 1326
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    const-string p1, "isSupportLcc"

    .line 1329
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Not support lcc ,no resume super lcc"

    .line 1330
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    const-string p1, "isSupportXPilotSafeExam"

    .line 1333
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Not support lcc exam,no resume super lcc."

    .line 1334
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1337
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Not login,no resume super lcc."

    .line 1338
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1341
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLccSafeExamResult()Z

    move-result p1

    .line 1342
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->shouldUpdateSuperLccSafeExam()Z

    move-result v1

    .line 1343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldUpdateSuperLccSafeExam:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "oldLccExamResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    .line 1346
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->updateSuperLccSafeExamResult()V

    :cond_5
    return-void
.end method

.method protected resumeOrDataSyncMemExamResult(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isResume"
        }
    .end annotation

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeOrDataSyncMemExamResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceViewModel"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "isSupportLidarSafeExam"

    .line 1286
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Not support Lidar safe exam, no resume super vpa"

    .line 1287
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string p1, "isSupportCNgp"

    .line 1290
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Not support Lidar, no resume super vpa"

    .line 1291
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    const-string p1, "isSupportMemPark"

    .line 1294
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Not support Mem park,no resume super vpa"

    .line 1295
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    const-string p1, "isSupportXPilotSafeExam"

    .line 1298
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Not support mem exam,no resume super vpa."

    .line 1299
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1302
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean p1, p1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-nez p1, :cond_4

    const-string p1, "User account data has not synced,no resume super vpa"

    .line 1303
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1306
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Not login,no resume super vpa."

    .line 1307
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1310
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMemParkSafeExamResult()Z

    move-result p1

    .line 1311
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->shouldUpdateSuperVpaSafeExam()Z

    move-result v1

    .line 1312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldUpdateSuperVpaSafeExam:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "memParkExamResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    .line 1315
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->updateSuperApaSafeExamResult()V

    :cond_6
    return-void
.end method

.method protected resumeOrSyncNraState()V
    .locals 5

    const-string v0, "isSupportNra"

    .line 1351
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Not support nra."

    .line 1352
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-nez v0, :cond_1

    const-string v0, "User account data has not synced."

    .line 1356
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1359
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNraState()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 1363
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Nra sync value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1364
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNraSw()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNraState(I)V

    return-void
.end method

.method protected resumeOrSyncUserExperiencePlanState()V
    .locals 5

    .line 1368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "resumeOrSyncUserExperiencePlanState isGuest return!!!"

    .line 1369
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string v0, "isSupportPrivacyCollection"

    .line 1372
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "hideXpilotDataShareSwtich"

    .line 1374
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1376
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setXpilotUserExperiencePlanState(Z)V

    goto :goto_0

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getXpilotUserExperiencePlanState()Ljava/lang/Boolean;

    move-result-object v0

    .line 1379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current XpilotUserExperiencePlan sync value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1380
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setXpilotUserExperiencePlanState(Z)V

    .line 1383
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMapUserExperiencePlanState()Ljava/lang/Boolean;

    move-result-object v0

    .line 1384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current MapUserExperiencePlan sync value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1385
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setMapUserExperiencePlanState(Z)V

    :cond_2
    return-void
.end method

.method resumeOtherVcuFunction()V
    .locals 3

    const-string v0, "isSupportNeutralGearProtect"

    .line 1167
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNGearWarningSwitch()Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setNGearWarningSwitch(ZZ)V

    :cond_0
    return-void
.end method

.method public resumeSaveSettings()V
    .locals 20

    move-object/from16 v0, p0

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeSaveSettings start mIsDataSynced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v2, v2, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceViewModel"

    const/4 v3, 0x0

    .line 660
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 542
    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->resumeVcuModule()V

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->resumeOtherVcuFunction()V

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->resumeChassisModule()V

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->resumeWheelKeyModule()V

    .line 556
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setRearFogLamp(Z)V

    .line 557
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isHeadLampStateExisted()Z

    move-result v1

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setHeadLampState(I)V

    goto :goto_0

    .line 562
    :cond_0
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v5, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setHeadLampState(IZ)V

    .line 564
    :goto_0
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLedDrlEnable(Z)V

    .line 565
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    sget-boolean v5, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->EMERGENCY_BREAK_WARNING:Z

    invoke-interface {v1, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setEbwEnable(Z)V

    .line 567
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLightMeHome()Z

    move-result v1

    .line 569
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v5, v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLightMeHome(ZZ)V

    if-eqz v1, :cond_1

    .line 571
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLightMeHomeTime()I

    move-result v5

    invoke-interface {v1, v5, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLightMeHomeTime(IZ)V

    .line 574
    :cond_1
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDomeLight(I)V

    .line 577
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v1

    const-class v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    const-string v5, "isSupportDomeLightBrightnessCtrl"

    .line 578
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v5, v5, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v5, :cond_2

    .line 579
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDomeLightBright()I

    move-result v5

    invoke-interface {v1, v5, v3}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->setDomeLightBrightnessRaw(IZ)V

    :cond_2
    const-string v1, "isSupportRearLogoLight"

    .line 582
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_3

    .line 583
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRearLogoLightSw()Z

    move-result v5

    invoke-interface {v1, v5, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setRearLogoLightSw(ZZ)V

    :cond_3
    const-string v1, "isSupportSaberLightMode"

    .line 592
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "isSupportLlu"

    if-eqz v1, :cond_5

    .line 593
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_6

    .line 594
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getParkLampB()Z

    move-result v7

    invoke-interface {v1, v7, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setParkLampIncludeFmB(ZZ)V

    .line 595
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 596
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluSw()Z

    move-result v1

    .line 597
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v7, v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEnable(ZZ)V

    if-eqz v1, :cond_4

    .line 600
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluUnlockSw()Z

    move-result v7

    invoke-interface {v1, v7, v6, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluWakeWaitSwitch(ZZZ)V

    .line 601
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluLockSw()Z

    move-result v7

    invoke-interface {v1, v7, v6, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluSleepSwitch(ZZZ)V

    .line 602
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluChargeSw()Z

    move-result v7

    invoke-interface {v1, v7, v6, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluChargingSwitch(ZZZ)V

    goto :goto_1

    :cond_4
    const-string v1, "Set all llu sub effect sw to false, because llu sw is false"

    .line 604
    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 605
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v1, v3, v6, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluWakeWaitSwitch(ZZZ)V

    .line 606
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v1, v3, v6, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluSleepSwitch(ZZZ)V

    .line 607
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v1, v3, v6, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluChargingSwitch(ZZZ)V

    goto :goto_1

    :cond_5
    const-string v1, "Saber Light not support, force set Park lamp B to false "

    .line 612
    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v3, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setParkLampIncludeFmB(ZZ)V

    .line 615
    :cond_6
    :goto_1
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_7

    .line 616
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluEffectLockingMode()I

    move-result v1

    .line 617
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    const/16 v7, 0x14

    invoke-interface {v5, v7, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEffect(II)V

    :cond_7
    const-string v1, "isSupportLluSayHi"

    .line 619
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_8

    .line 620
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSayHiEffect()I

    move-result v1

    .line 621
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v5, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setFriendSoundType(I)V

    .line 622
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    const/16 v7, 0xa

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->convertSayhiAvasToLlu(I)I

    move-result v1

    invoke-interface {v5, v7, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEffect(II)V

    :cond_8
    const-string v1, "isSupportAtl"

    .line 626
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_e

    .line 628
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlSw()Z

    move-result v7

    invoke-interface {v1, v7, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSwEnable(ZZ)V

    .line 629
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    const-string v7, "isSupportFullAtl"

    .line 630
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v13, "isSupportAtlRgbColor"

    if-eqz v7, :cond_c

    .line 631
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget-object v8, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v8}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlBright()I

    move-result v8

    invoke-interface {v7, v8, v3, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlBrightness(IZZ)V

    .line 632
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v7, v1, v3, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlEffect(Ljava/lang/String;ZZ)V

    .line 634
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v7, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isSupportDoubleThemeColor(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 635
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget-object v8, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v8}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlDualColorSw()Z

    move-result v8

    invoke-interface {v7, v1, v8, v3, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlDualColor(Ljava/lang/String;ZZZ)V

    .line 637
    :cond_9
    invoke-static {v13}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_a

    .line 638
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlRgbDualColor()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 640
    invoke-interface {v7, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 641
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 642
    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    const-class v10, [I

    invoke-virtual {v9, v7, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    if-eqz v7, :cond_c

    .line 643
    array-length v9, v7

    if-lt v9, v8, :cond_c

    .line 644
    iget-object v14, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    aget v15, v7, v3

    aget v16, v7, v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-interface/range {v14 .. v19}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlRgbDualColor(IIIZZ)V

    goto :goto_2

    .line 649
    :cond_a
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlDualColor()[I

    move-result-object v7

    if-eqz v7, :cond_b

    .line 650
    array-length v9, v7

    if-lt v9, v8, :cond_b

    aget v8, v7, v3

    if-eqz v8, :cond_b

    aget v8, v7, v6

    if-eqz v8, :cond_b

    .line 651
    iget-object v8, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    aget v9, v7, v3

    aget v10, v7, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v8

    move-object v8, v1

    invoke-interface/range {v7 .. v12}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlDualColor(Ljava/lang/String;IIZZ)V

    goto :goto_2

    :cond_b
    const-string v7, "dualColor data abnormal!"

    .line 653
    invoke-static {v2, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_c
    :goto_2
    invoke-static {v13}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 658
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlRgbSingleColor()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_e

    const v7, 0xb6eff    # 1.050008E-39f

    .line 660
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 661
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_e

    .line 662
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1, v3, v3, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlRgbSingleColor(IIZZ)V

    goto :goto_3

    .line 666
    :cond_d
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlSingleColor()I

    move-result v7

    invoke-interface {v4, v1, v7, v3, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSingleColor(Ljava/lang/String;IZZ)V

    .line 671
    :cond_e
    :goto_3
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getRemindWarningSw()Z

    move-result v4

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setRemindWarningSwitch(Z)V

    .line 675
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_f

    .line 676
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDriveAutoLock()Z

    move-result v4

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setDriveAutoLock(Z)V

    .line 677
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getParkAutoUnlock()Z

    move-result v4

    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setParkingAutoUnlock(ZZ)V

    .line 679
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getUnlockResponse()I

    move-result v1

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resume Unlock Response value: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 681
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->setUnlockResponse(I)V

    .line 684
    :cond_f
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_10

    .line 685
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getChildLeftLock()Z

    move-result v4

    invoke-interface {v1, v6, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setChildLock(ZZZ)V

    .line 686
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBgHandler:Landroid/os/Handler;

    new-instance v4, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$lePMHroU_EhMMDzBkhQCBSlD0Yw;

    invoke-direct {v4, v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$lePMHroU_EhMMDzBkhQCBSlD0Yw;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    const-wide/16 v7, 0x28a

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 687
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAutoDhc()Z

    move-result v4

    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAutoDoorHandleEnable(ZZ)V

    :cond_10
    const-string v1, "isSupportSdc"

    .line 689
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 690
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSdcKeyCfg()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSdcKeyOpenCtrlCfg(I)V

    .line 691
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSdcKeyCloseCtrlCfg(I)V

    .line 692
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSdcWinAutoDown()Z

    move-result v4

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSdcWindowsAutoDownSwitch(Z)V

    .line 693
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSdcMaxAutoDoorOpeningAngle()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSdcMaxAutoDoorOpeningAngle(I)V

    .line 694
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_11

    .line 695
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSdcBrakeCloseCfg()I

    move-result v4

    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSdcBrakeCloseDoorCfg(IZ)V

    :cond_11
    const-string v1, "isSupportSlideDoor"

    .line 698
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 699
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLeftSlideDoorMode()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLeftSlideDoorMode(I)V

    .line 700
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRightSlideDoorMode()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setRightSlideDoorMode(I)V

    .line 704
    :cond_12
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v1

    const-class v4, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    .line 705
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v4, v4, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    const-string v7, "isSupportRearSeatWelcomeMode"

    const-string v8, "isSupportDomainControllerSeatWelcome"

    if-eqz v4, :cond_16

    const-string v4, "isSupportWelcomeMode"

    .line 706
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 707
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isExhibitionModeOn()Z

    move-result v4

    if-nez v4, :cond_14

    .line 708
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWelcomeMode()Z

    move-result v4

    .line 709
    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setWelcomeMode(ZZ)V

    if-eqz v4, :cond_15

    .line 711
    invoke-static {v8}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 712
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setDriverAllPositionsToDomain()V

    goto :goto_4

    .line 714
    :cond_13
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setDriverAllPositionsToMcu()V

    goto :goto_4

    .line 718
    :cond_14
    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setWelcomeMode(Z)V

    .line 721
    :cond_15
    :goto_4
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 722
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v9, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v9}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRearSeatWelcomeMode()Z

    move-result v9

    invoke-interface {v4, v9, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setRearSeatWelcomeMode(ZZ)V

    :cond_16
    const-string v4, "isSupportPsnWelcomeMode"

    .line 726
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 727
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isExhibitionModeOn()Z

    move-result v4

    if-nez v4, :cond_19

    .line 728
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getPsnWelcomeMode()Z

    move-result v4

    .line 729
    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setPsnWelcomeMode(ZZ)V

    if-eqz v4, :cond_18

    .line 731
    invoke-static {v8}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 732
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setPsnAllPositionsToDomain()V

    goto :goto_5

    .line 734
    :cond_17
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setPsnSeatAllPositionsToMcu()V

    goto :goto_5

    .line 737
    :cond_18
    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setPsnWelcomeMode(Z)V

    .line 741
    :cond_19
    :goto_5
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 742
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isExhibitionModeOn()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 743
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRearSeatWelcomeMode()Z

    move-result v4

    .line 744
    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setRearSeatWelcomeMode(ZZ)V

    if-eqz v4, :cond_1b

    .line 746
    invoke-static {v8}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 747
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setRLAllPositionsToDomain()V

    .line 748
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setRRAllPositionsToDomain()V

    goto :goto_6

    .line 750
    :cond_1a
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setRLSeatAllPositionsToMcu()V

    .line 751
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setRRSeatAllPositionsToMcu()V

    goto :goto_6

    .line 754
    :cond_1b
    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setRearSeatWelcomeMode(Z)V

    .line 758
    :cond_1c
    :goto_6
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->saveDrvTargetSeatPos([I)V

    .line 759
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->savePsnTargetSeatPos([I)V

    const-string v4, "isSupportCarpetLightWelcomeMode"

    .line 761
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 762
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCarpetLightWelcomeMode()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCarpetLightWelcomeMode(Z)V

    :cond_1d
    const-string v4, "isSupportPollingLightWelcomeMode"

    .line 764
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 765
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getPollingLightWelcomeMode()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setPollingLightWelcomeMode(Z)V

    :cond_1e
    const-string v4, "isSupportWelcomeSwitchOff"

    .line 768
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 769
    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setWelcomeMode(Z)V

    :cond_1f
    const-string v1, "isSupportSeatMassage"

    .line 772
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 773
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDrvLumbControlSw()Z

    move-result v4

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverSeatLumbControlSwitchEnable(Z)V

    .line 774
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getPsnLumbControlSw()Z

    move-result v4

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPassengerSeatLumbControlSwitchEnable(Z)V

    :cond_20
    const-string v1, "isSupportChildSeatRearBeltWarning"

    .line 776
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    const-string v4, "isSupportRsbWarningReset"

    .line 777
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getResetRsbWarningSw()Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "Rsb Warning Reset On"

    .line 778
    invoke-static {v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v4, v6}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setResetRsbWarningSw(Z)V

    .line 780
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v4, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setBackBeltSw(Z)V

    goto :goto_7

    :cond_21
    const-string v4, "Rsb Warning Reset User Memory"

    .line 782
    invoke-static {v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v4, v4, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v4, :cond_22

    .line 784
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getRsbWarning()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setBackBeltSw(Z)V

    .line 788
    :cond_22
    :goto_7
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 789
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_23

    .line 790
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSecRowLeftSeatBeltWarning()Z

    move-result v4

    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setSecRowLeftSeatBeltWarning(ZZ)V

    .line 791
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSecRowMiddleSeatBeltWarning()Z

    move-result v4

    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setSecRowMiddleSeatBeltWarning(ZZ)V

    .line 792
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSecRowRightSeatBeltWarning()Z

    move-result v4

    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setSecRowRightSeatBeltWarning(ZZ)V

    .line 793
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getTrdRowLeftSeatBeltWarning()Z

    move-result v4

    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setTrdRowLeftSeatBeltWarning(ZZ)V

    .line 794
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getTrdRowMidSeatBeltWarning()Z

    move-result v4

    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setTrdRowMiddleSeatBeltWarning(ZZ)V

    .line 795
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getTrdRowRightSeatBeltWarning()Z

    move-result v4

    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setTrdRowRightSeatBeltWarning(ZZ)V

    :cond_23
    const-string v1, "isSupportEsb"

    .line 798
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 800
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->onFollowedVehicleLostConfigChanged(Z)V

    const-string v1, "isFollowVehicleLostConfigUseNew"

    .line 801
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 802
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;

    move-result-object v1

    const-string v4, "2"

    invoke-virtual {v1, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatSmartControl;->setFollowedVehicleLostConfig(Ljava/lang/String;)V

    :cond_24
    const-string v1, "isSupportMirrorMemory"

    .line 820
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 821
    iget-boolean v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHasPendingUpdate:Z

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_26

    .line 822
    iput-boolean v3, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mHasPendingUpdate:Z

    .line 824
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMirrorData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 825
    new-instance v1, Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/bean/Mirror;-><init>()V

    .line 826
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v4, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftMirrorLRPos(Z)I

    move-result v4

    iput v4, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    .line 827
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v4, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftMirrorUDPos(Z)I

    move-result v4

    iput v4, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    .line 828
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v4, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightMirrorLRPos(Z)I

    move-result v4

    iput v4, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    .line 829
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v4, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightMirrorUDPos(Z)I

    move-result v4

    iput v4, v1, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    .line 830
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Mirror;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mirror position empty, save currentValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 832
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMirrorData(Ljava/lang/String;)V

    move v1, v3

    goto :goto_8

    .line 835
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Has pending update: resume mirror data: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMirrorData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 838
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMirrorRestoreFinished()V

    move v1, v6

    .line 840
    :goto_8
    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMirrorReverseMode()I

    move-result v5

    invoke-interface {v4, v5, v3, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setReverseMirrorMode(IZZ)V

    .line 842
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v4

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMirrorData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->syncAccountMirrorPos(Ljava/lang/String;Z)V

    :cond_26
    const-string v1, "isSupportCms"

    .line 846
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v4, ", currentValue: "

    if-eqz v1, :cond_2c

    .line 847
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_2c

    .line 849
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsAutoBrightSw()Z

    move-result v1

    .line 850
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsAutoBrightSw()Z

    move-result v5

    if-eq v1, v5, :cond_27

    .line 852
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v7, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsAutoBrightSw(Z)V

    .line 853
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cms AutoBrightSw, resume saved value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 857
    :cond_27
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSavedCmsLocation()[F

    move-result-object v1

    .line 858
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsLocation()[F

    move-result-object v5

    if-eqz v1, :cond_28

    .line 859
    invoke-static {v1, v5}, Lcom/xiaopeng/carcontrol/bean/Mirror;->isEquals([F[F)Z

    move-result v7

    if-nez v7, :cond_28

    .line 860
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v7, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsLocation([F)V

    .line 861
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cms Location/Pos, resume saved value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 865
    :cond_28
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsHighSpdSw()Z

    move-result v1

    .line 866
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsHighSpdAssistSw()Z

    move-result v5

    if-eq v1, v5, :cond_29

    .line 868
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v7, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsHighSpdAssistSw(Z)V

    .line 869
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cms HighSpdAssistSw, resume saved value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 883
    :cond_29
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsTurnSw()Z

    move-result v1

    .line 884
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsTurnAssistSw()Z

    move-result v5

    if-eq v1, v5, :cond_2a

    .line 886
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v7, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsTurnAssistSw(Z)V

    .line 887
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cms CmsTurnAssistSw, resume saved value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 891
    :cond_2a
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsViewAngle()I

    move-result v1

    .line 892
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsViewAngle()I

    move-result v5

    if-eqz v1, :cond_2b

    if-eq v1, v5, :cond_2b

    .line 894
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v7, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsViewAngle(I)V

    .line 895
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cms ViewAngle, resume saved value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 899
    :cond_2b
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsObjectRecognizeSw()Z

    move-result v1

    .line 900
    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsObjectRecognizeSw()Z

    move-result v5

    if-eq v1, v5, :cond_2c

    .line 902
    iget-object v7, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v7, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsObjectRecognizeSw(Z)V

    .line 903
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cms ObjectRecognizeSw, resume saved value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2c
    const-string v1, "isSupportMirrorAutoFoldOff"

    .line 930
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 931
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMirrorAutoFoldEnable()Z

    move-result v5

    invoke-interface {v1, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setMirrorAutoFoldEnable(Z)V

    .line 935
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->resumeTrunkSettings()V

    .line 938
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_2e

    .line 939
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isWinHighSpdEnabled()Z

    move-result v5

    invoke-interface {v1, v5, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setHighSpdCloseWin(ZZ)V

    .line 940
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLockCloseWin()Z

    move-result v5

    invoke-interface {v1, v5, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAutoWindowLockSw(ZZ)V

    .line 941
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWiperSensitivity()I

    move-result v5

    invoke-interface {v1, v5, v3, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWiperSensitivity(IZZ)V

    :cond_2e
    const-string v1, "isSupportCwc"

    .line 944
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 945
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_2f

    .line 946
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCwcSw()Z

    move-result v5

    invoke-interface {v1, v5, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCwcSwEnable(ZZ)V

    :cond_2f
    const-string v1, "isSupportCwcFR"

    .line 949
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 950
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCwcFRSw()Z

    move-result v5

    invoke-interface {v1, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCwcFRSwEnable(Z)V

    :cond_30
    const-string v1, "isSupportCwcRL"

    .line 952
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 953
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCwcRLSw()Z

    move-result v5

    invoke-interface {v1, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCwcRLSwEnable(Z)V

    :cond_31
    const-string v1, "isSupportCwcRR"

    .line 955
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 956
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCwcRRSw()Z

    move-result v5

    invoke-interface {v1, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCwcRRSwEnable(Z)V

    .line 958
    :cond_32
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v5, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getPhoneReminderSw()Z

    move-result v5

    invoke-interface {v1, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setPhoneReminderSw(Z)V

    .line 960
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_33

    .line 961
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAutoCheckSw()Z

    move-result v1

    .line 963
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v5

    const-class v7, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    invoke-virtual {v5, v7}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    .line 964
    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;->isAutoSelfCheck()Z

    move-result v7

    if-eq v1, v7, :cond_33

    .line 966
    invoke-interface {v5, v1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;->setAutoSelfCheck(ZZ)V

    .line 967
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ig-On Auto Check Sw, resume saved value: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 972
    :cond_33
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;->isSettingLowSpdEnable()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 973
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v1, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setLowSpdSoundEnable(Z)V

    .line 974
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_35

    .line 975
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAvasEffect()I

    move-result v4

    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setLowSpdSoundType(IZ)V

    goto :goto_9

    .line 979
    :cond_34
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setLowSpdSoundEnable(Z)V

    .line 983
    :cond_35
    :goto_9
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_36

    .line 984
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAvasController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getBootEffect()I

    move-result v4

    invoke-interface {v1, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;->setBootSoundEffect(IZ)V

    .line 989
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->resumeXPilotModule()V

    .line 991
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mFunctionModel:Lcom/xiaopeng/carcontrol/model/FunctionModel;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setChargePortRetryTime(I)V

    const-string v1, "isSupportNfc"

    .line 996
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "resume nfc key"

    .line 997
    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v4, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNfcKeyEnable()Z

    move-result v4

    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setStopNfcCardSw(Z)V

    .line 1005
    :cond_37
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getRemoteCameraSw()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1006
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setRemoteCameraSw(Z)V

    :cond_38
    const-string v1, "isSupportDsmCamera"

    .line 1010
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getDsmSwStatus()I

    move-result v1

    if-ne v1, v6, :cond_39

    .line 1011
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDsmSw(Z)V

    .line 1015
    :cond_39
    iput-boolean v3, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsDataSyncEmpty:Z

    const-string v1, "resumeSaveSettings end"

    .line 1017
    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method resumeTrunkSettings()V
    .locals 3

    .line 1270
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v0, :cond_0

    const-string v0, "isSupportSensorTrunk"

    .line 1271
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSensorTrunkSw()Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setTrunkSensorEnable(ZZ)V

    :cond_0
    return-void
.end method

.method resumeVcuModule()V
    .locals 6

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeVcuModule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v2, v2, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ServiceViewModel"

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-nez v0, :cond_0

    return-void

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDriveMode()I

    .line 1107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isAntiSicknessEnabled()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 1109
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAntiSickness(Z)V

    goto :goto_0

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isXpedal()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    .line 1113
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setXpedal(Z)V

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDriveMode()I

    move-result v0

    .line 1119
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resume drive mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isLocalIgOn()Z

    move-result v5

    invoke-virtual {v4, v0, v5, v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->resumeDriveMode(IZZ)V

    .line 1124
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->setCurDriveMode(I)V

    const-string v4, "isSupportSnowMode"

    .line 1126
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1128
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setSnowMode(Z)V

    .line 1131
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAllDriveSubItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAllDriveSubItem()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->setAllDriveSubItemByStr(Ljava/lang/String;)V

    .line 1134
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isLocalIgOn()Z

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->resumeDriveModeSubItemByDataSync(IZZ)V

    return-void
.end method

.method resumeWheelKeyModule()V
    .locals 7

    .line 1220
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWheelTouchDirection()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setTouchRotationDirection(I)V

    .line 1221
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWheelTouchSpeed()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setTouchRotationSpeed(IZ)V

    .line 1223
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    const-string v1, "ServiceViewModel"

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 1224
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWheelXKey()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    const-string v4, "isSupportAutoParkForXKey"

    .line 1225
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not support auto park, do not resume xkey for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1227
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setXKeyForCustomer(I)V

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x9

    if-ne v0, v4, :cond_1

    .line 1229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not support xsport, do not resume xkey for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1230
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setXKeyForCustomer(I)V

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    const-string v4, "isSupportNra"

    .line 1231
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not support nra, do not resume xkey for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1233
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setXKeyForCustomer(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    const-string v4, "isSupportXSayHi"

    .line 1234
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not support SayHi, do not resume xkey for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1236
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setXKeyForCustomer(I)V

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x11

    if-eq v0, v4, :cond_4

    const/16 v4, 0x12

    if-ne v0, v4, :cond_5

    :cond_4
    const-string v4, "isSupportSdc"

    .line 1237
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not support SDC, do not resume xkey for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1239
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setXKeyForCustomer(I)V

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0xf

    if-eq v0, v4, :cond_6

    const/16 v4, 0x10

    if-ne v0, v4, :cond_7

    :cond_6
    const-string v4, "isSupportSlideDoor"

    .line 1240
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not support SlideDoor, do not resume xkey for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1242
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setXKeyForCustomer(I)V

    goto :goto_0

    :cond_7
    const/16 v4, 0xd

    const/16 v5, 0xe

    if-eq v0, v5, :cond_8

    if-ne v0, v4, :cond_9

    :cond_8
    const-string v6, "isSupportManulChargePortFeature"

    .line 1243
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v2, :cond_9

    .line 1244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not support ChargePort, do not resume xkey for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1245
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setXKeyForCustomer(I)V

    goto :goto_0

    :cond_9
    if-ne v0, v5, :cond_a

    const-string v5, "isSingleChargePort"

    .line 1246
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not support SingleChargePort, do not resume xkey for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1248
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setXKeyForCustomer(I)V

    goto :goto_0

    .line 1250
    :cond_a
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v4, v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setXKeyForCustomer(IZ)V

    .line 1252
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWheelKeyProtect()Z

    move-result v4

    invoke-interface {v0, v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setWheelKeyProtectSw(ZZ)V

    :cond_b
    const-string v0, "isSupportDoorKeySetting"

    .line 1254
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1255
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v0, :cond_e

    .line 1256
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDoorBossKey()I

    move-result v0

    if-ne v0, v2, :cond_c

    const-string v2, "isShowDoorKeySpeech"

    .line 1257
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not support Speech, do not resume doorKey for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setDoorKeyForCustomer(I)V

    goto :goto_1

    .line 1261
    :cond_c
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v1, v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setDoorKeyForCustomer(IZ)V

    goto :goto_1

    :cond_d
    const-string v0, "isSupportRearScreen"

    .line 1264
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1265
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->setDoorKeyForCustomer(I)V

    :cond_e
    :goto_1
    return-void
.end method

.method resumeXPilotModule()V
    .locals 3

    .line 1391
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncXPilotData()V

    .line 1397
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setFcwState(Z)V

    const-string v0, "isSupportDsmCamera"

    .line 1399
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSupportForceOpenDsm"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ServiceViewModel"

    const-string v2, "Force open DSM after IGon!"

    .line 1400
    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setDsmSw(Z)V

    .line 1404
    :cond_0
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1406
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setOverseasElkMode(I)V

    :cond_1
    return-void
.end method

.method public setCentralLock(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation

    .line 1617
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorsState()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 1619
    array-length p1, v0

    const/4 v2, 0x4

    if-lt p1, v2, :cond_0

    aget p1, v0, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    aget v1, v0, p1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCentralLock(Z)V

    goto :goto_0

    .line 1626
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->central_lock_unable_with_door_open:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 1629
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCentralLock(Z)V

    :goto_0
    return-void
.end method

.method public setDriveMode(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_sport.wav"

    .line 1673
    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    const-string v3, "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_eco.wav"

    .line 1670
    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    const-string v3, "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_normal.wav"

    .line 1667
    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    .line 1678
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->getDriveMode()I

    move-result v1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_3

    if-ne v1, v3, :cond_3

    .line 1681
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_eco_plus_off:I

    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x7

    if-eq p1, v3, :cond_4

    if-ne v1, v3, :cond_4

    .line 1684
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_anti_sickness_off:I

    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_4
    :goto_1
    if-eq p1, v2, :cond_5

    if-eqz p1, :cond_5

    if-ne p1, v0, :cond_6

    .line 1689
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setDriveMode(I)V

    .line 1690
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setDriveModeChangedByUser(Z)V

    :cond_6
    return-void
.end method

.method public setMirrorHeatEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1645
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setMirrorHeat(Z)V

    return-void
.end method

.method public setSsDoorStateCallback(Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "isSupportSdc"

    .line 1701
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1702
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mSsDoorStateCallback:Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    :cond_0
    return-void
.end method

.method protected syncAtlData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const-string v0, "isSupportAtl"

    .line 2250
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2267
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isAtlSwEnabled()Z

    move-result v0

    .line 2268
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAtlSw()Z

    move-result v1

    const-string v2, "ServiceViewModel"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 2269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATL, save currentValue: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2270
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlSw(Z)V

    goto :goto_0

    .line 2272
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlSw()Z

    move-result v1

    .line 2273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ATL, resume saved value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    .line 2277
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncAtlDataExceptAtlSw(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    if-eq v1, v0, :cond_3

    .line 2279
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSwEnable(Z)V

    goto :goto_0

    :cond_1
    if-eq v1, v0, :cond_2

    .line 2283
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSwEnable(Z)V

    .line 2285
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncAtlDataExceptAtlSw(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected syncHighSpdCloseWin(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 3005
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isHighSpdCloseWinEnabled()Z

    move-result v0

    .line 3006
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isHighSpdCloseWin()Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "ServiceViewModel"

    if-nez p1, :cond_0

    .line 3007
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "High speed close win is null, save currentValue: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3008
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setHighSpdCloseWin(Z)V

    .line 3009
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setHighSpdCloseWin(Z)V

    goto :goto_0

    .line 3011
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isWinHighSpdEnabled()Z

    move-result p1

    .line 3012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "High speed close win, resume saved value: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3013
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setHighSpdCloseWin(Z)V

    :goto_0
    return-void
.end method

.method protected syncLluData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const-string v0, "isSupportSaberLightMode"

    .line 2152
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const-string v0, "isSupportLlu"

    .line 2153
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v3, ", currentValue: "

    if-eqz v0, :cond_d

    const-string v0, "isSupportLluAllOn"

    .line 2154
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 2155
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEnable(Z)V

    .line 2156
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLluSw(Z)V

    goto :goto_0

    .line 2158
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluEnabled()Z

    move-result v0

    .line 2159
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isLluSw()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LLU sw, save currentValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2161
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLluSw(Z)V

    goto :goto_0

    .line 2163
    :cond_1
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluSw()Z

    move-result v5

    .line 2164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LLU sw, resume saved value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v5, v0, :cond_2

    .line 2167
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEnable(Z)V

    .line 2172
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluEnabled()Z

    move-result v0

    .line 2174
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluWakeWaitEnable()Z

    move-result v5

    .line 2175
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isLluUnlockSw()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LLU unlock sw, save currentValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2177
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v6, v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLluUnlockSw(Z)V

    goto :goto_1

    .line 2179
    :cond_3
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluUnlockSw()Z

    move-result v6

    .line 2180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LLU unlock sw, resume saved value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_4

    if-eq v6, v5, :cond_5

    .line 2183
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v5, v6, v4, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluWakeWaitSwitch(ZZZ)V

    goto :goto_1

    .line 2186
    :cond_4
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v5, v2, v4, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluWakeWaitSwitch(ZZZ)V

    .line 2190
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluSleepEnable()Z

    move-result v5

    .line 2191
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isLluLockSw()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LLU lock sw, save currentValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2193
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v6, v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLluLockSw(Z)V

    goto :goto_2

    .line 2195
    :cond_6
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluLockSw()Z

    move-result v6

    .line 2196
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LLU lock sw, resume saved value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_7

    if-eq v6, v5, :cond_8

    .line 2199
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v5, v6, v4, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluSleepSwitch(ZZZ)V

    goto :goto_2

    .line 2202
    :cond_7
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v5, v2, v4, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluSleepSwitch(ZZZ)V

    .line 2206
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->isLluChargingEnable()Z

    move-result v5

    .line 2207
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isLluChargeSw()Z

    move-result v6

    if-nez v6, :cond_9

    .line 2208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LLU charge sw, save currentValue: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2209
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLluChargeSw(Z)V

    goto :goto_3

    .line 2211
    :cond_9
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluChargeSw()Z

    move-result v6

    .line 2212
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LLU charge sw, resume saved value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_a

    if-eq v6, v5, :cond_b

    .line 2215
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, v6, v4, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluChargingSwitch(ZZZ)V

    goto :goto_3

    .line 2218
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v0, v2, v4, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluChargingSwitch(ZZZ)V

    .line 2221
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    const/16 v4, 0x14

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->getLluEffect(I)I

    move-result v0

    .line 2222
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isLluEffectLockingMode()Z

    move-result v5

    if-nez v5, :cond_c

    .line 2223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LLU effect locking mode, save currentValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2224
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLluEffectLockingMode(I)V

    goto :goto_4

    .line 2226
    :cond_c
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluEffectLockingMode()I

    move-result v0

    .line 2227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LLU effect locking mode, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2228
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mLluController:Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;

    invoke-interface {v5, v4, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;->setLluEffect(II)V

    .line 2231
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isParkLampIncludeFmB()Z

    move-result v0

    .line 2232
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isParkLampB()Z

    move-result p1

    if-nez p1, :cond_e

    .line 2233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Park lamp B, save currentValue: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2234
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setParkLampB(Z)V

    goto :goto_5

    .line 2236
    :cond_e
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getParkLampB()Z

    move-result p1

    .line 2237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Park lamp B, resume saved value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "isSupportNewParkLampFmB"

    .line 2238
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    if-eq p1, v0, :cond_11

    .line 2239
    :cond_f
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setParkLampIncludeFmB(Z)V

    goto :goto_5

    :cond_10
    const-string p1, "llu not support, force save Park lamp B to false "

    .line 2243
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v2, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setParkLampIncludeFmB(ZZ)V

    :cond_11
    :goto_5
    return-void
.end method

.method protected syncLockData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 2421
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getParkingAutoUnlock()Z

    move-result v0

    .line 2422
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isParkAutoUnlock()Z

    move-result v1

    const-string v2, ", currentValue: "

    const-string v3, "ServiceViewModel"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 2423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Park auto unlock, save currentValue: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2424
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setParkAutoUnlock(Z)V

    goto :goto_0

    .line 2426
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getParkAutoUnlock()Z

    move-result v1

    .line 2427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Park auto unlock, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_1

    .line 2429
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setParkingAutoUnlock(Z)V

    :cond_1
    :goto_0
    const-string v0, "isSupportUnlockResponseSettings"

    .line 2454
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2476
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getUnlockResponseSp()I

    move-result v0

    .line 2477
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isUnlockResponse()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unlock response, save currentValue: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2479
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->setUnlockResponse(I)V

    goto :goto_1

    .line 2481
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getUnlockResponse()I

    move-result v1

    .line 2482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unlock response, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2483
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->setUnlockResponse(I)V

    .line 2488
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isAutoDoorHandleEnabled()Z

    move-result v0

    .line 2489
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isAutoDhc()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto door handle, save currentValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2491
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAutoDhc(Z)V

    goto :goto_2

    .line 2493
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAutoDhc()Z

    move-result v1

    .line 2494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auto door handle, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v1, v0, :cond_5

    .line 2496
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v1, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAutoDoorHandleEnable(ZZ)V

    .line 2513
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getChildLeftLock()Z

    move-result v0

    .line 2514
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isChildLeftLock()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child lock, save current value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2516
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setChildLeftLock(Z)V

    .line 2518
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getChildRightLock()Z

    move-result v1

    .line 2519
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isChildRightLock()Z

    move-result p1

    if-nez p1, :cond_7

    .line 2520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child right lock, save current value: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2521
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setChildRightLock(Z)V

    .line 2523
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getChildLeftLock()Z

    move-result p1

    .line 2524
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getChildRightLock()Z

    move-result v2

    .line 2525
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->syncChildLockStatue(ZZZZ)V

    return-void
.end method

.method protected syncMirrorData(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const-string v0, "isSupportMirrorMemory"

    .line 2667
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2669
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isMirrorPos()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2670
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/Mirror;-><init>()V

    .line 2671
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftMirrorLRPos(Z)I

    move-result v4

    iput v4, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftHPos:I

    .line 2672
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftMirrorUDPos(Z)I

    move-result v4

    iput v4, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->leftVPos:I

    .line 2673
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightMirrorLRPos(Z)I

    move-result v4

    iput v4, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightHPos:I

    .line 2674
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v4, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightMirrorUDPos(Z)I

    move-result v3

    iput v3, v0, Lcom/xiaopeng/carcontrol/bean/Mirror;->rightVPos:I

    .line 2675
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Mirror;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mirror saved position is null, save current mirror data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2677
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMirrorData(Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    .line 2680
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mirror position, resume saved value: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMirrorData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2683
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setMirrorRestoreFinished()V

    .line 2686
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getReverseMirrorMode()I

    move-result v0

    .line 2687
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isMirrorReverse()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mirror reverse mode, save currentValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2689
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v4, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setReverseMirrorMode(IZ)V

    goto :goto_1

    .line 2691
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMirrorReverseMode()I

    move-result v4

    .line 2692
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mirror reverse mode, resume saved value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currentValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2693
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v4, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setReverseMirrorMode(IZ)V

    .line 2696
    :goto_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getMirrorData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->syncAccountMirrorPos(Ljava/lang/String;Z)V

    :cond_2
    const-string v0, "isSupportCms"

    .line 2712
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2713
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isCmsPos()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2714
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsLocation()[F

    move-result-object v0

    .line 2715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, save location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2716
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->saveCmsLocation([F)V

    goto :goto_2

    .line 2718
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSavedCmsLocation()[F

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, set location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2721
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsLocation([F)V

    goto :goto_2

    .line 2723
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsLocation()[F

    move-result-object v0

    .line 2724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, save location2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2725
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->saveCmsLocation([F)V

    .line 2729
    :goto_2
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isCmsAutoBrightSw()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2730
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsAutoBrightSw()Z

    move-result v0

    .line 2731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, set AutoBrightSw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2732
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsAutoBrightSw(Z)V

    goto :goto_3

    .line 2734
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsAutoBrightSw()Z

    move-result v0

    .line 2735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, save AutoBrightSw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2736
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCmsAutoBrightSw(Z)V

    .line 2739
    :goto_3
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isCmsBright()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2740
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsBright()I

    move-result v0

    .line 2741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, set Brightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2742
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsBright(I)V

    goto :goto_4

    .line 2744
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsBright()I

    move-result v0

    .line 2745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, save Brightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2746
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCmsBright(I)V

    .line 2749
    :goto_4
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isCmsHighSpdSw()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2750
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsHighSpdSw()Z

    move-result v0

    .line 2751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, set HighSpdSw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2752
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsHighSpdAssistSw(Z)V

    goto :goto_5

    .line 2754
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsHighSpdAssistSw()Z

    move-result v0

    .line 2755
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, save HighSpdSw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2756
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCmsHighSpdSw(Z)V

    .line 2759
    :goto_5
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isCmsLowSpdSw()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2760
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsLowSpdSw()Z

    move-result v0

    .line 2761
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, set LowSpdSw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2762
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsLowSpdAssistSw(Z)V

    goto :goto_6

    .line 2764
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsLowSpdAssistSw()Z

    move-result v0

    .line 2765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, save LowSpdSw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2766
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCmsLowSpdSw(Z)V

    .line 2769
    :goto_6
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isCmsObjectRecognizeSw()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2770
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsObjectRecognizeSw()Z

    move-result v0

    .line 2771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, set ObjectRecognizeSw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2772
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsObjectRecognizeSw(Z)V

    goto :goto_7

    .line 2774
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsObjectRecognizeSw()Z

    move-result v0

    .line 2775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, save ObjectRecognizeSw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2776
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCmsObjectRecognizeSw(Z)V

    .line 2779
    :goto_7
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isCmsReverseSw()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2780
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsReverseSw()Z

    move-result v0

    .line 2781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, set ReverseSw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2782
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsReverseSw()Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsReverseAssistSw(Z)V

    goto :goto_8

    .line 2784
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsReverseAssistSw()Z

    move-result v0

    .line 2785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS sync, save ReverseSw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2786
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCmsReverseSw(Z)V

    .line 2789
    :goto_8
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->isCmsViewAngle()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2790
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCmsViewAngle()I

    move-result p1

    .line 2791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMS sync, set ViewAngle: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2792
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCmsViewAngle(I)V

    goto :goto_9

    .line 2794
    :cond_b
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCmsViewAngle()I

    move-result p1

    .line 2795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMS sync, save ViewAngle: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2796
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCmsViewAngle(I)V

    :cond_c
    :goto_9
    return-void
.end method

.method public syncXPilotNGP()V
    .locals 12

    .line 1412
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    const-string v1, "ServiceViewModel"

    if-nez v0, :cond_0

    const-string v0, "Data sync is not complete,ignore the follow step."

    .line 1413
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isGuest()Z

    move-result v0

    const-string/jumbo v2, "\u8d26\u53f7\u540c\u6b65\uff0c\u8054\u52a8\u5173\u95edngp\u5b50\u9879"

    const-string v3, "isSupportRelatedSwitchV5"

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const-string v0, "Current not login, do not resume XPilot NGP sw"

    .line 1418
    invoke-static {v1, v0, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1419
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpEnable(Z)V

    .line 1421
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1424
    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpVoiceChangeLane(Z)V

    .line 1426
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpFreeNgpEnable(Z)V

    :cond_1
    return-void

    .line 1431
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getXpuXpilotState()I

    move-result v0

    .line 1432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current xpilot st="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    goto/16 :goto_2

    .line 1486
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setNgpSw(Z)V

    goto/16 :goto_2

    .line 1436
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpState()I

    move-result v0

    .line 1437
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current XPU NGP state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne v0, v5, :cond_5

    goto/16 :goto_2

    .line 1443
    :cond_5
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "isSupportCNgp"

    if-eqz v5, :cond_7

    .line 1444
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpWithLidarSafeExamResultV2()Z

    move-result v5

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSafeExamResultV2()Z

    move-result v5

    goto :goto_0

    .line 1446
    :cond_7
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSafeExamResult()Z

    move-result v5

    .line 1448
    :goto_0
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v8}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLccSw()Z

    move-result v8

    .line 1449
    iget-object v9, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v9}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAlcSw()Z

    move-result v9

    .line 1451
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current NGP exam result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", LccSw="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", AlcSw="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v5, :cond_8

    if-eqz v8, :cond_8

    if-eqz v9, :cond_8

    goto :goto_1

    :cond_8
    move v6, v4

    :goto_1
    if-nez v0, :cond_9

    .line 1456
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getNgpSw()Z

    move-result v0

    .line 1457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current NGP saved sw="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    and-int/2addr v6, v0

    .line 1460
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XPilot NGP Sw, resume saved value: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1462
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpEnable(Z)V

    .line 1464
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v6, :cond_a

    .line 1468
    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setNgpVoiceChangeLane(Z)V

    .line 1470
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpFreeNgpEnable(Z)V

    goto :goto_2

    .line 1472
    :cond_a
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getFreeNgpSafeExamResult()Z

    move-result v0

    .line 1474
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getNgpFreeNgpState()Z

    move-result v2

    .line 1475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Free-NGP value,fngpExamResult: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "fngpSw: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1476
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    and-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setNgpFreeNgpEnable(Z)V

    :cond_b
    :goto_2
    return-void
.end method

.method protected updateApaSafeExamResult()V
    .locals 1

    .line 1569
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->updateApaSafeExamResult()V

    return-void
.end method

.method protected updateLccSafeExamResult()V
    .locals 1

    .line 1561
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->updateLccSafeExamResult()V

    return-void
.end method

.method updateSeatAntiFatigueSw(Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const-string v0, "IsSupportSeatAntiFatigue"

    .line 1543
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1544
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->getSeatAntiFatigueFlag()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1545
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getDriverSeatAntiFatigueSw()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDriverSeatAntiFatigueSw(Z)V

    goto :goto_0

    .line 1547
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDriverSeatAntiFatigueSw()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setDriverSeatAntiFatigueSw(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateSuperApaSafeExamResult()V
    .locals 1

    .line 1573
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->updateSuperVpaSafeExamResult()V

    return-void
.end method

.method protected updateSuperLccSafeExamResult()V
    .locals 1

    .line 1577
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->updateSuperLccSafeExamResult()V

    return-void
.end method

.method protected updateXngpSafeExamResult()V
    .locals 1

    .line 1565
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->accountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->updateXngpSafeExamResult()V

    return-void
.end method
